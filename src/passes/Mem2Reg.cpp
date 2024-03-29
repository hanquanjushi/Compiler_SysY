#include "Mem2Reg.hpp"
#include "IRBuilder.hpp"
#include "Mem2Reg.hpp"
#include "IRBuilder.hpp"
#include "Value.hpp"
#include <memory>

std::map<Value *, std::vector<Value *>> global_stack;

void Mem2Reg::run()
{
    // 创建支配树分析 Pass 的实例
    dominators_ = std::make_unique<Dominators>(m_);
    // 建立支配树
    dominators_->run();
    // 以函数为单元遍历实现 Mem2Reg 算法
    for (auto &f : m_->get_functions())
    {
        if (f.is_declaration())
            continue;
        func_ = &f;
        if (func_->get_basic_blocks().size() >= 1)
        {
            // 对应伪代码中 phi 指令插入的阶段
            generate_phi();
            // 对应伪代码中重命名阶段
            rename(func_->get_entry_block());
        }
        // 后续 DeadCode 将移除冗余的局部变量的分配空间
    }
}

std::vector<std::pair<Value *, Value *>> phi_pair;
void Mem2Reg::generate_phi()
{
    // TODO
    // 步骤一：找到活跃在多个 block 的全局名字集合，以及它们所属的 bb 块

    std::set<Value *> global_vars;
    std::map<Value *, std::set<BasicBlock *>> Defs;
    for (auto &bb : func_->get_basic_blocks())
    {
        for (auto &inst : bb.get_instructions())
        {
            if (inst.is_store())
            {
                auto lval = static_cast<StoreInst *>(&inst)->get_lval();
                if (!dynamic_cast<GlobalVariable *>(lval) && !dynamic_cast<GetElementPtrInst *>(lval))
                {
                    global_vars.insert(lval);
                    Defs[lval].insert(&bb);
                }
            }
        }
    }

    // 步骤二：从支配树获取支配边界信息，并在对应位置插入 phi 指令
    std::map<std::pair<BasicBlock *, Value *>, bool> F;
    for (auto var : global_vars)
    {
        std::vector<BasicBlock *> W;
        W.assign(Defs[var].begin(), Defs[var].end());
        for (int i = 0; i < W.size(); i++)
        {
            auto bb = W[i];
            for (auto Y : dominators_->get_dominance_frontier(bb))
            {
                if (F.find({Y, var}) == F.end())
                {

                    auto phi = PhiInst::create_phi(var->get_type()->get_pointer_element_type(), Y);
                    phi_pair.push_back({phi, var});
                    Y->add_instr_begin(phi);
                    F[{Y, var}] = true;
                    W.push_back(Y);
                }
            }
        }
    }
}

void Mem2Reg::rename(BasicBlock *bb)
{
    // TODO
    std::vector<Instruction *> waitlist;
    for (auto &inst : bb->get_instructions())
    {
        // 步骤三：将 phi 指令作为 lval 的最新定值，lval 即是为局部变量 alloca 出的地址空间
        if (inst.is_phi())
        {
            for (auto pair : phi_pair)
            {
                if (pair.first == &inst)
                {
                    auto lval = pair.second;
                    global_stack[lval].push_back(&inst);
                }
            }
        }
        // 步骤四：用 lval 最新的定值替代对应的load指令
        if (inst.is_load())
        {
            auto lval = static_cast<LoadInst *>(&inst)->get_lval();

            if (!dynamic_cast<GlobalVariable *>(lval) && !dynamic_cast<GetElementPtrInst *>(lval))
            {
                if (global_stack.find(lval) != global_stack.end())
                {
                    inst.replace_all_use_with(global_stack[lval].back());
                    waitlist.push_back(&inst);
                }
            }
        }
        // 步骤五：将 store 指令的 rval，也即被存入内存的值，作为 lval 的最新定值
        if (inst.is_store())
        {
            auto lval = static_cast<StoreInst *>(&inst)->get_lval();
            if (!dynamic_cast<GlobalVariable *>(lval) && !dynamic_cast<GetElementPtrInst *>(lval))
            {
                global_stack[lval].push_back(static_cast<StoreInst *>(&inst)->get_rval());
                waitlist.push_back(&inst);
            }
        }
    }

    // 步骤六：为 lval 对应的 phi 指令参数补充完整
    for (auto succ_bb : bb->get_succ_basic_blocks())
    {
        for (auto &inst : succ_bb->get_instructions())
        {
            if (inst.is_phi())
            {
                for (auto pair : phi_pair)
                {
                    if (pair.first == &inst)
                    {
                        if (global_stack.find(pair.second) != global_stack.end())
                        {
                            static_cast<PhiInst *>(&inst)->add_phi_pair_operand(global_stack[pair.second].back(), bb);
                        }
                    }
                }
            }
        }
    }

    // 步骤七：对 bb 在支配树上的所有后继节点，递归执行 re_name 操作
    for (auto dom_succ_bb : dominators_->get_dom_tree_succ_blocks(bb))
    {
        rename(dom_succ_bb);
    }

    // 步骤八：pop出 lval 的最新定值
    for (auto &inst : bb->get_instructions())
    {
        if (inst.is_phi())
        {

            for (auto pair : phi_pair)
            {
                if (pair.first == &inst)
                {
                    global_stack[pair.second].pop_back();
                }
            }
        }
        if (inst.is_store())
        {
            auto lval = static_cast<StoreInst *>(&inst)->get_lval();
            if (!dynamic_cast<GlobalVariable *>(lval) && !dynamic_cast<GetElementPtrInst *>(lval))
            {
                global_stack[lval].pop_back();
            }
        }
    }

    // 步骤九：清除冗余的指令
    for (auto inst : waitlist)
    {
        bb->erase_instr(inst);
    }
}
