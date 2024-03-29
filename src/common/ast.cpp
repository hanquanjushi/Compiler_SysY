#include "ast.hpp"

#include <cstring>
#include <iostream>
#include <queue>
#include <map>
#define _AST_NODE_ERROR_                                   \
    std::cerr << "Abort due to node cast error."           \
                 "Contact with TAs to solve your problem." \
              << std::endl;                                \
    std::abort();
#define _STR_EQ(a, b) (strcmp((a), (b)) == 0)

std::map<std::string, std::string> ConstMap;

void AST::run_visitor(ASTVisitor &visitor) { root->accept(visitor); }
AST::AST(syntax_tree *s)
{
    if (s == nullptr)
    {
        std::cerr << "empty input tree!" << std::endl;
        std::abort();
    }
    auto node = transform_node_iter(s->root);
    del_syntax_tree(s);
    root = std::shared_ptr<ASTSTARTPOINT>(static_cast<ASTSTARTPOINT *>(node));
}
ASTNode *AST::transform_node_iter(syntax_tree_node *n)
{
    if (_STR_EQ(n->name, "STARTPOINT"))
    {
        auto node = new ASTSTARTPOINT();
        auto child_node = static_cast<ASTCompUnit *>(transform_node_iter(n->children[0]));
        auto child_node_shared = std::shared_ptr<ASTCompUnit>(child_node);
        node->comp_unit = child_node_shared;
        return node;
    }
    /*
    CompUnit:  Decl | FuncDef | CompUnit Decl | CompUnit FuncDef
*/
    else if (_STR_EQ(n->name, "CompUnit"))
    {
        auto node = new ASTCompUnit();
        std::queue<syntax_tree_node *> q;
        int m = n->children_num;
        for (int i = 0; i < m; i++)
        {
            q.push(n->children[i]);
        }
        while (!q.empty())
        {
            if (_STR_EQ(q.front()->name, "CompUnit"))
            {
                auto child_node = static_cast<ASTCompUnit *>(transform_node_iter(q.front()));
                auto child_node_shared = std::shared_ptr<ASTCompUnit>(child_node);
                node->comp_units.push_back(child_node_shared);
            }

            else if (_STR_EQ(q.front()->name, "Decl"))
            {
                // 看孩子是 ConstDecl 还是 VarDecl
                auto child_node = static_cast<ASTDecl *>(transform_node_iter(q.front()->children[0]));
                auto child_node_shared = std::shared_ptr<ASTDecl>(child_node);
                node->comp_units.push_back(child_node_shared);
            }
            else if (_STR_EQ(q.front()->name, "FuncDef"))
            {
                auto child_node = static_cast<ASTFuncDef *>(transform_node_iter(q.front()));
                auto child_node_shared = std::shared_ptr<ASTFuncDef>(child_node);
                node->comp_units.push_back(child_node_shared);
            }
            q.pop();
        }
        return node;
    }
    else if (_STR_EQ(n->name, "Decl"))
    {
        return transform_node_iter(n->children[0]); // ConstDecl or VarDecl
    }
    else if (_STR_EQ(n->name, "ConstDecl"))
    {
        auto node = new ASTConstDecl();           // 声明一下这个-->e.g. CONST INT num_a[100]=10,num_b[50]=9;)
        if (_STR_EQ(n->children[1]->name, "INT")) // num_a,num_b即IDENT
            node->type = TYPE_CONSTINT;           // BTYPE分为INT，FLOAT(const类型):怎么处理const?是否定义CONSTINT,CONSTFLOAT?
        else
            node->type = TYPE_CONSTFLOAT; // 建议可以定义一下
        std::queue<syntax_tree_node *> q; // ConstDef队列
        q.push(n->children[2]);           // 存ConstDef:再声明下ASTConstDef:shared_ptr

        auto list_ptr = n->children[3]; // ComConstDef
        while (list_ptr->children_num == 3)
        { // COMMA ConstDef ComConstDef
            q.push(list_ptr->children[1]);
            list_ptr = list_ptr->children[2]; // ComConstDef
        }
        // 建立一个ConstSymtable成员变量,进行存储ConstDef形式的push_back
        while (!q.empty())
        {
            auto child_node = static_cast<ASTConstDef *>(transform_node_iter(q.front())); // “先进”
            auto child_node_shared = std::shared_ptr<ASTConstDef>(child_node);
            node->const_defs.push_back(child_node_shared);
            q.pop();
        }
        return node;
    }
    else if (_STR_EQ(n->name, "ConstDef"))
    {
        auto node = new ASTConstDef();
        node->id = n->children[0]->name;

        if (n->children_num == 3)
        {
            auto temp = n->children[2];

            while (temp->children_num == 1)
            {
                temp = temp->children[0];
            }

            ConstMap.insert(std::make_pair(node->id, temp->name));
        }
        if (n->children_num == 4)
        {
            auto list_ptr = n->children[1];
            std::queue<syntax_tree_node *> q;
            while (list_ptr->children_num == 4)
            {
                q.push(list_ptr->children[1]);
                list_ptr = list_ptr->children[3];
            }

            q.push(list_ptr->children[1]);

            while (!q.empty())
            {
                auto child_node = static_cast<ASTAddExp *>(transform_node_iter(q.front()));
                auto child_node_shared = std::shared_ptr<ASTAddExp>(child_node);
                node->ConstExps.push_back(child_node_shared);
                q.pop();
            }
        }
        // 进行深度优先遍历，把子树信息存进node->info
        auto n_info = n->children[n->children_num - 1]; // n_info是ConstInitVal
        functiona(n_info, node);
        return node;
    }

    else if (_STR_EQ(n->name, "VarDef"))
    {
        auto node = new ASTVarDef();
        node->id = n->children[0]->name;

        if (n->children_num == 2 || n->children_num == 4)
        {
            auto temp = n->children[1]->children[1];
            auto temp_father = temp;
            while (temp->children_num == 1)
            {
                temp_father = temp;
                temp = temp->children[0];
            }
            if (_STR_EQ(temp->name, "LVal"))
            {
                std::string tname = temp->children[0]->name;
                if (ConstMap.find(tname) != ConstMap.end())
                {
                    auto val_name = ConstMap[tname];
                    //  del_syntax_tree_node(temp,1);
                    
                    del_syntax_tree_node(temp->children[0], 1);
                    del_syntax_tree_node(temp->children[1], 1);
                    // 把孩子的name改成val_name
                    auto name =  val_name.c_str();
                    if (name)
                        strncpy(temp->name, name, SYNTAX_TREE_NODE_NAME_MAX);
                    temp->children_num = 0;
                    //   syntax_tree_node *number_node = new_syntax_tree_node(val_name.c_str());
                    //     syntax_tree_add_child(temp_father,number_node);
                }
            }
        }

        if (n->children_num == 1)
        {
            return node;
        }

        if (n->children_num == 2)
        {
            auto list_ptr = n->children[1];
            std::queue<syntax_tree_node *> q;
            while (list_ptr->children_num == 4)
            {
                q.push(list_ptr->children[1]);
                list_ptr = list_ptr->children[3];
            }

            q.push(list_ptr->children[1]);

            while (!q.empty())
            {
                auto child_node = static_cast<ASTAddExp *>(transform_node_iter(q.front()));
                auto child_node_shared = std::shared_ptr<ASTAddExp>(child_node);
                node->ConstExps.push_back(child_node_shared);
                q.pop();
            }

            return node;
        }
        if (n->children_num == 4)
        {
            auto list_ptr = n->children[1];
            std::queue<syntax_tree_node *> q;
            while (list_ptr->children_num == 4)
            {
                q.push(list_ptr->children[1]);
                list_ptr = list_ptr->children[3];
            }

            q.push(list_ptr->children[1]);

            while (!q.empty())
            {
                auto child_node = static_cast<ASTAddExp *>(transform_node_iter(q.front()));
                auto child_node_shared = std::shared_ptr<ASTAddExp>(child_node);
                node->ConstExps.push_back(child_node_shared);
                q.pop();
            }
        }
        // 进行深度优先遍历，把子树信息存进node->info
        auto n_info = n->children[n->children_num - 1]; // n_info是ConstInitVal
        functionb(n_info, node);
        return node;
    }
    else if (_STR_EQ(n->name, "VarDecl"))
    {
        // VarDecl: INT VarDef ComVarDef SEMICOLON| FLOAT VarDef ComVarDef SEMICOLON
        auto node = new ASTVarDecl();
        if (_STR_EQ(n->children[0]->name, "int"))
            node->type = TYPE_INT;
        else
            node->type = TYPE_FLOAT;
        std::queue<syntax_tree_node *> q;
        q.push(n->children[1]);
        auto list_ptr = n->children[2];
        // ComVarDef: COMMA VarDef ComVarDef|ε
        while (list_ptr->children_num == 3)
        {
            q.push(list_ptr->children[1]);
            list_ptr = list_ptr->children[2];
        }
        while (!q.empty())
        {
            auto child_node = static_cast<ASTVarDef *>(transform_node_iter(q.front()));
            auto child_node_shared = std::shared_ptr<ASTVarDef>(child_node);
            node->var_defs.push_back(child_node_shared);
            q.pop();
        }
        return node;
    }

    else if (_STR_EQ(n->name, "FuncDef"))
    {
        auto node = new ASTFuncDef();
        if (_STR_EQ(n->children[0]->name, "int"))
        {
            node->type = TYPE_INT;
        }
        else if (_STR_EQ(n->children[0]->name, "float"))
        {
            node->type = TYPE_FLOAT;
        }
        else
        {
            node->type = TYPE_VOID;
        }

        node->id = n->children[1]->name;
        if (n->children_num == 5)
        {
            // 没有params
            auto stmt_node =
                static_cast<ASTBlock *>(transform_node_iter(n->children[4]));
            node->block = std::shared_ptr<ASTBlock>(stmt_node);
            return node;
        }
        // flatten params
        // n->children[3]是FuncFParams
        // FuncFParams: FuncFParam FuncFParamlist
        // FuncFParamlist: COMMA FuncFParam FuncFParamlist | ε
        std::queue<syntax_tree_node *> s;
        auto list_ptr = n->children[3];
        // list_ptr是FuncFParams
        s.push(list_ptr->children[0]);
        list_ptr = list_ptr->children[1];
        while (list_ptr->children_num == 3)
        {
            s.push(list_ptr->children[1]);
            list_ptr = list_ptr->children[2];
        }
        while (!s.empty())
        {
            auto child_node =
                static_cast<ASTFuncFParam *>(transform_node_iter(s.front()));

            auto child_node_shared = std::shared_ptr<ASTFuncFParam>(child_node);
            node->params.push_back(child_node_shared);
            s.pop();
        }

        auto stmt_node =
            static_cast<ASTBlock *>(transform_node_iter(n->children[5]));
        node->block = std::shared_ptr<ASTBlock>(stmt_node);
        return node;
    }
    else if (_STR_EQ(n->name, "FuncFParam"))
    {
        auto node = new ASTFuncFParam();
        if (_STR_EQ(n->children[0]->name, "int"))
        {
            node->type = TYPE_INT;
        }
        else if (_STR_EQ(n->children[0]->name, "float"))
        {
            node->type = TYPE_FLOAT;
        }
        else
        {
            node->type = TYPE_VOID;
        }
        if (n->children_num > 2 && n->children[2]->name[0] == '[')
            node->isarray = true;
        node->id = n->children[1]->name;
        if (n->children_num == 5)
        {
            std::queue<syntax_tree_node *> q;
            auto list_ptr = n->children[4];
            if (list_ptr->children_num == 4)
            {
                while (list_ptr->children_num == 4)
                {
                    q.push(list_ptr->children[1]);
                    list_ptr = list_ptr->children[3];
                }
            }
            while (!q.empty())
            {
                auto child_node = static_cast<ASTExp *>(transform_node_iter(q.front()->children[0])); // “先进”
                auto child_node_shared = std::shared_ptr<ASTExp>(child_node);
                node->Exps.push_back(child_node_shared);
                q.pop();
            }
        }
        return node;
    }
    else if (_STR_EQ(n->name, "Block"))
    {
        auto node = new ASTBlock();
        auto list_ptr = n->children[1];
        std::queue<syntax_tree_node *> q;
        if (list_ptr->children_num == 2)
        {
            while (list_ptr->children_num == 2)
            {
                q.push(list_ptr->children[0]);
                list_ptr = list_ptr->children[1];
            }
        }
        while (!q.empty())
        {
            if (_STR_EQ(q.front()->children[0]->name, "Decl"))
            {
                auto child_node = static_cast<ASTDecl *>(transform_node_iter(q.front()->children[0]));
                auto child_node_shared = std::shared_ptr<ASTDecl>(child_node);
                node->Decls.push_back(child_node_shared);
            }
            if (_STR_EQ(q.front()->children[0]->name, "Stmt"))
            {
                auto child_node = static_cast<ASTDecl *>(transform_node_iter(q.front()->children[0]));
                auto child_node_shared = std::shared_ptr<ASTDecl>(child_node);
                node->Decls.push_back(child_node_shared);
            }
            q.pop();
        }
        return node;
    }
    else if (_STR_EQ(n->name, "Stmt"))
    {
        if (_STR_EQ(n->children[0]->name, ";"))
        {
            auto node = new ASTEmptyStmt();
            return node;
        }
        if (_STR_EQ(n->children[0]->name, "return"))
        {
            auto node = new ASTReturnStmt();
            if (n->children_num == 3)
            {
                auto child_node = static_cast<ASTExp *>(transform_node_iter(n->children[1]));
                auto child_node_shared = std::shared_ptr<ASTExp>(child_node);
                node->expression = child_node_shared;
            }
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "if"))
        {
            auto node = new ASTIfStmt();
            auto cond_node = static_cast<ASTLOrExp *>(transform_node_iter(n->children[2]->children[0]));
            node->expression = std::shared_ptr<ASTLOrExp>(cond_node);
            node->if_statement = std::shared_ptr<ASTStmt>(static_cast<ASTStmt *>(transform_node_iter(n->children[4])));
            if (n->children_num == 7)
            {
                node->else_statement = std::shared_ptr<ASTStmt>(static_cast<ASTStmt *>(transform_node_iter(n->children[6])));
            }
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "continue"))
        {

            auto m = new ASTContinueStmt();
            m->type = "continue";
            return m;
        }
        else if (_STR_EQ(n->children[0]->name, "break"))
        {
            auto m = new ASTBreakStmt();
            m->type = "break";
            return m;
        }
        else if (_STR_EQ(n->children[0]->name, "LVal"))
        {
            auto node = new ASTAssignExpression();
            node->var = std::shared_ptr<ASTLVal>(static_cast<ASTLVal *>(transform_node_iter(n->children[0])));
            node->expression = std::shared_ptr<ASTExp>(static_cast<ASTExp *>(transform_node_iter(n->children[2]->children[0])));
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "Exp"))
        {
            auto node = new ASTAddExp();
            node->add_exp = std::shared_ptr<ASTAddExp>(static_cast<ASTAddExp *>(transform_node_iter(n->children[0]->children[0])));
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "Block"))
        {
            return transform_node_iter(n->children[0]);
        }
        else if (_STR_EQ(n->children[0]->name, "while"))
        {
            auto node = new ASTWhileStmt();
            node->expression = std::shared_ptr<ASTLOrExp>(static_cast<ASTLOrExp *>(transform_node_iter(n->children[2]->children[0])));
            node->statement = std::shared_ptr<ASTStmt>(static_cast<ASTStmt *>(transform_node_iter(n->children[4]->children[0])));
            return node;
        }
    }
    // LVal : Ident Explist
    // Explist : LBRACKET Exp RBRACKET Explist | ε
    else if (_STR_EQ(n->name, "LVal"))
    {
        auto node = new ASTLVal();
        node->id = n->children[0]->name;
        auto n_explist = n->children[1];

        while (n_explist->children_num == 4)
        {
            auto child_node = static_cast<ASTExp *>(transform_node_iter(n_explist->children[1]));
            auto child_node_shared = std::shared_ptr<ASTExp>(child_node);
            node->Exps.push_back(child_node_shared);
            n_explist = n_explist->children[3];
        }

        return node;
    }

    else if (_STR_EQ(n->name, "UnaryExp"))
    {

        if (n->children_num == 1) // PrimaryExp
        {
            auto node = new ASTUnaryExp();
            auto newnode = n->children[0];

            // PrimaryExp: LPAREN Exp RPAREN | LVal | IntConst |FloatConst

            if (newnode->children_num == 3)
            {
                node->exp = std::shared_ptr<ASTExp>(static_cast<ASTExp *>(transform_node_iter(newnode->children[1])));
            }
            if (newnode->children_num == 1)
            {
                if (_STR_EQ(newnode->children[0]->name, "LVal"))
                {
                    node->lval = std::shared_ptr<ASTLVal>(static_cast<ASTLVal *>(transform_node_iter(newnode->children[0])));
                }
                else
                {
                    auto name = newnode->children[0]->name;
                    auto num_node = new ASTNumber();
                    num_node->type = TYPE_INT;
                    // 把name转成数字后,判断是不是整数
                    for (int i = 0; i < strlen(name); i++)
                    {
                        if (name[i] == '.')
                        {
                            num_node->type = TYPE_FLOAT;
                            break;
                        }
                    }
                    if (num_node->type == TYPE_INT)
                    // 判断是不是16进制
                    {
                        if (name[0] == '0' && name[1] == 'x' || name[1] == 'X')
                        {
                            // 取第二位到最后一位
                            std::string str = std::string(name).substr(2);
                            num_node->i_val = std::stoi(str, 0, 16);
                        }
                        // 长度大于1且第一位是0
                        else if (name[0] == '0' && strlen(name) > 1)
                        {
                            std::string str = std::string(name).substr(1);
                            num_node->i_val = std::stoi(str, 0, 8);
                        }
                        else
                        {
                            num_node->i_val = std::stoi(name);
                        }
                    }
                    else
                        num_node->f_val = std::stod(name);
                    node->number = std::shared_ptr<ASTNumber>(num_node);
                }
            }
            return node;
        }
        else if (n->children_num == 2) // UnaryOp UnaryExp
        {
            auto node = new ASTUnaryExp();
            if (_STR_EQ(n->children[0]->children[0]->name, "-"))
            {
                node->unary_op = OP_NEG;
            }
            if (_STR_EQ(n->children[0]->children[0]->name, "!"))
            {
                node->unary_op = OP_NOT;
            }
            if (_STR_EQ(n->children[0]->children[0]->name, "+"))
            {
                node->unary_op = OP_POS;
            }
            node->unary_exp = std::shared_ptr<ASTUnaryExp>(static_cast<ASTUnaryExp *>(transform_node_iter(n->children[1])));
            return node;
        }
        else if (n->children_num == 3) // Ident ()
        {
            auto node = new ASTUnaryExp();
            node->id = n->children[0]->name;
            return node;
        }
        else if (n->children_num == 4) // Ident (FuncRParams)
        {
            auto node = new ASTUnaryExp();
            node->id = n->children[0]->name;
            // flatten args
            if (_STR_EQ(n->children[2]->name, "FuncRParams"))
            {
                auto list_ptr = n->children[2];
                // list_ptr是FuncRParams
                auto s = std::queue<syntax_tree_node *>();
                // FuncRParams : Exp ComExp
                s.push(list_ptr->children[0]);
                list_ptr = list_ptr->children[1];
                // ComExp : COMMA Exp ComExp | ε
                while (list_ptr->children_num == 3)
                {
                    s.push(list_ptr->children[1]);
                    list_ptr = list_ptr->children[2];
                }

                while (!s.empty())
                {
                    auto expr_node =
                        static_cast<ASTExp *>(transform_node_iter(s.front()));
                    auto expr_node_ptr = std::shared_ptr<ASTExp>(expr_node);
                    node->args.push_back(expr_node_ptr);
                    s.pop();
                }
            }
            return node;
        }
    }
    else if (_STR_EQ(n->name, "MulExp"))
    {
        auto node = new ASTMulExp();
        if (n->children_num == 3)
        {
            if (_STR_EQ(n->children[1]->name, "*"))
            {
                node->mul_op = OP_MUL;
            }
            if (_STR_EQ(n->children[1]->name, "/"))
            {
                node->mul_op = OP_DIV;
            }
            if (_STR_EQ(n->children[1]->name, "%"))
            {
                node->mul_op = OP_MOD;
            }
        }
        if (n->children_num == 1)
        {
            node->unary_exp = std::shared_ptr<ASTUnaryExp>(static_cast<ASTUnaryExp *>(transform_node_iter(n->children[n->children_num - 1])));
        }
        if (n->children_num == 3)
        {
            node->mul_exp = std::shared_ptr<ASTMulExp>(static_cast<ASTMulExp *>(transform_node_iter(n->children[0])));
            node->unary_exp = std::shared_ptr<ASTUnaryExp>(static_cast<ASTUnaryExp *>(transform_node_iter(n->children[2])));
        }

        return node;
    }
    else if (_STR_EQ(n->name, "AddExp"))
    {
        // AddExp → MulExp | AddExp ('+' | '−') MulExp
        auto node = new ASTAddExp();
        if (n->children_num == 1)
        {
            node->mul_exp = std::shared_ptr<ASTMulExp>(static_cast<ASTMulExp *>(transform_node_iter(n->children[0])));
            return node;
        }
        else if (n->children_num == 3)
        {
            if (_STR_EQ(n->children[1]->name, "+"))
            {
                node->add_op = OP_PLUS;
            }
            if (_STR_EQ(n->children[1]->name, "-"))
            {
                node->add_op = OP_MINUS;
            }
            node->add_exp = std::shared_ptr<ASTAddExp>(static_cast<ASTAddExp *>(transform_node_iter(n->children[0])));

            node->mul_exp = std::shared_ptr<ASTMulExp>(static_cast<ASTMulExp *>(transform_node_iter(n->children[2])));
        }
        return node;
    }

    else if (_STR_EQ(n->name, "RelExp"))
    {
        auto node = new ASTRelExp();
        if (n->children_num == 3)
        {
            if (_STR_EQ(n->children[1]->name, "<"))
            {
                node->rel_op = OP_LT;
            }
            if (_STR_EQ(n->children[1]->name, ">"))
            {
                node->rel_op = OP_GT;
            }
            if (_STR_EQ(n->children[1]->name, "<="))
            {
                node->rel_op = OP_LE;
            }
            if (_STR_EQ(n->children[1]->name, ">="))
            {
                node->rel_op = OP_GE; // 需要定义
            }
        }
        node->add_exp = std::shared_ptr<ASTAddExp>(static_cast<ASTAddExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if (n->children_num == 3)
        {
            node->rel_exp = std::shared_ptr<ASTRelExp>(static_cast<ASTRelExp *>(transform_node_iter(n->children[0])));
        }
        return node;
    }
    else if (_STR_EQ(n->name, "EqExp"))
    {
        auto node = new ASTEqExp();
        if (n->children_num == 3)
        {
            if (_STR_EQ(n->children[1]->name, "=="))
            {
                node->eq_op = OP_EQ;
            }
            if (_STR_EQ(n->children[1]->name, "!="))
            {
                node->eq_op = OP_NEQ;
            }
        }
        node->rel_exp = std::shared_ptr<ASTRelExp>(static_cast<ASTRelExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if (n->children_num == 3)
        {
            node->eq_exp = std::shared_ptr<ASTEqExp>(static_cast<ASTEqExp *>(transform_node_iter(n->children[0])));
        }

        return node;
    }
    else if (_STR_EQ(n->name, "LAndExp"))
    {
        auto node = new ASTLAndExp();
        node->eq_exp = std::shared_ptr<ASTEqExp>(static_cast<ASTEqExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if (n->children_num == 3)
        {
            node->land_exp = std::shared_ptr<ASTLAndExp>(static_cast<ASTLAndExp *>(transform_node_iter(n->children[0])));
        }
        return node;
    }
    else if (_STR_EQ(n->name, "LOrExp"))
    {
        auto node = new ASTLOrExp();
        node->land_exp = std::shared_ptr<ASTLAndExp>(static_cast<ASTLAndExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if (n->children_num == 3)
        {
            node->lor_exp = std::shared_ptr<ASTLOrExp>(static_cast<ASTLOrExp *>(transform_node_iter(n->children[0])));
        }
        return node;
    }
    else if (_STR_EQ(n->name, "Exp"))
    {
        return transform_node_iter(n->children[0]);
    }
    else if (_STR_EQ(n->name, "ConstExp"))
    {
        return transform_node_iter(n->children[0]);
    }
}
Value *ASTSTARTPOINT::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTCompUnit::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTConstDef ::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTFuncDef ::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTConstDecl::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTVarDecl::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTVarDef::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTInitVal::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTFuncFParam::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTBlock::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTLVal::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTNumber::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTUnaryExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTAddExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTRelExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTEqExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTLAndExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTLOrExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTMulExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTAssignExpression::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTReturnStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTIfStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTContinueStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTBreakStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTWhileStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTEmptyStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
#define _DEBUG_PRINT_N_(N)                \
    {                                     \
        std::cout << std::string(N, '-'); \
    }

Value *ASTPrinter::visit(ASTSTARTPOINT &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "startpoint" << std::endl;
    add_depth();
    node.comp_unit->accept(*this);
    remove_depth();
}
Value *ASTPrinter::visit(ASTCompUnit &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "program" << std::endl;
    add_depth();
    for (auto decl : node.comp_units)
    {
        decl->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTConstDecl &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "const decl" << std::endl;
    add_depth();
    for (auto const_def : node.const_defs)
    {
        const_def->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTConstDef &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "const def" << std::endl;
    add_depth();
    std::cout << node.id << std::endl;
    if (node.ConstExps.size() > 0)
    {
        for (auto const_exp : node.ConstExps)
        {
            const_exp->accept(*this);
        }
    }
    for (auto const_exp : node.RConstExps)
    {
        const_exp->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTVarDecl &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "var decl" << std::endl;
    add_depth();
    for (auto var_def : node.var_defs)
    {
        var_def->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTVarDef &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "var def" << std::endl;
    add_depth();
    std::cout << node.id << std::endl;
    if (node.ConstExps.size() > 0)
    {
        for (auto const_exp : node.ConstExps)
        {
            const_exp->accept(*this);
        }
    }
    for (auto const_exp : node.RConstExps)
    {
        const_exp->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTInitVal &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "init val" << std::endl;
    add_depth();
    if (node.init_vals.size() > 0)
    {
        for (auto init_val : node.init_vals)
        {
            init_val->accept(*this);
        }
    }
    else
    {
        node.expression->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTFuncDef &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "func def" << std::endl;
    add_depth();
    std::cout << node.id << std::endl;
    for (auto func_fparam : node.params)
    {
        func_fparam->accept(*this);
    }
    node.block->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTFuncFParam &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "func fparam" << std::endl;
    add_depth();
    std::cout << node.id << std::endl;
    if (node.Exps.size() > 0)
    {
        for (auto exp : node.Exps)
        {
            exp->accept(*this);
        }
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTBlock &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "block" << std::endl;
    add_depth();
    for (auto decl : node.Decls)
    {
        decl->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTReturnStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "return stmt" << std::endl;
    add_depth();
    if (node.expression != nullptr)
    {
        node.expression->accept(*this);
    }
    remove_depth();

    return nullptr;
}
Value *ASTPrinter::visit(ASTEmptyStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "empty stmt" << std::endl;
    add_depth();
    remove_depth();

    return nullptr;
}

Value *ASTPrinter::visit(ASTIfStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "if stmt" << std::endl;
    add_depth();
    node.expression->accept(*this);
    node.if_statement->accept(*this);
    if (node.else_statement != nullptr)
    {
        node.else_statement->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTWhileStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "iteration-stmt" << std::endl;
    add_depth();
    node.expression->accept(*this);
    node.statement->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTContinueStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "continue stmt" << std::endl;
    return nullptr;
}

Value *ASTPrinter::visit(ASTBreakStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "break stmt" << std::endl;
    return nullptr;
}

Value *ASTPrinter::visit(ASTAssignExpression &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "assignment stmt" << std::endl;
    add_depth();
    node.var->accept(*this);
    node.expression->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTLVal &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "lval" << std::endl;
    add_depth();
    std::cout << node.id << std::endl;
    if (node.Exps.size() > 0)
    {
        for (auto exp : node.Exps)
        {
            exp->accept(*this);
        }
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTNumber &node)
{
    _DEBUG_PRINT_N_(depth);
    if (node.type == TYPE_INT)
    {
        std::cout << "num (int): " << node.i_val << std::endl;
    }
    else if (node.type == TYPE_FLOAT)
    {
        std::cout << "num (float): " << node.f_val << std::endl;
    }
    else
    {
        _AST_NODE_ERROR_
    }
    return nullptr;
}

Value *ASTPrinter::visit(ASTUnaryExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "unary exp" << std::endl;
    add_depth();
    if (node.unary_exp != nullptr)
    {
        if (node.unary_op == OP_NEG)
        {
            std::cout << "minus" << std::endl;
        }
        else if (node.unary_op == OP_NOT)
        {
            std::cout << "not" << std::endl;
        }
        else if (node.unary_op == OP_POS)
        {
            std::cout << "plus" << std::endl;
        }
        node.unary_exp->accept(*this);
    }

    if (node.lval != nullptr)
    {
        node.lval->accept(*this);
    }
    if (node.number != nullptr)
    {
        node.number->accept(*this);
    }

    if (node.id != "")
    {
        std::cout << "call: " << node.id << std::endl;
        for (auto exp : node.args)
        {
            exp->accept(*this);
        }
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTMulExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "mul exp" << std::endl;
    add_depth();
    if (node.mul_exp != nullptr)
    {
        node.mul_exp->accept(*this);
    }
    node.unary_exp->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTAddExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "add exp" << std::endl;
    add_depth();
    if (node.add_exp != nullptr)
    {
        node.add_exp->accept(*this);
    }
    node.mul_exp->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTRelExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "rel exp" << std::endl;
    add_depth();
    if (node.rel_exp != nullptr)
    {
        node.rel_exp->accept(*this);
    }
    node.add_exp->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTEqExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "eq exp" << std::endl;
    add_depth();
    if (node.eq_exp != nullptr)
    {
        node.eq_exp->accept(*this);
    }
    node.rel_exp->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTLAndExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "land exp" << std::endl;
    add_depth();
    if (node.land_exp != nullptr)
    {
        node.land_exp->accept(*this);
    }
    node.eq_exp->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTLOrExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "lor exp" << std::endl;
    add_depth();
    if (node.lor_exp != nullptr)
    {
        node.lor_exp->accept(*this);
    }
    node.land_exp->accept(*this);
    remove_depth();
    return nullptr;
}
void AST::functiona(_syntax_tree_node *n_info, ASTConstDef *node)
{
    if (n_info == nullptr)
    {
        return;
    }

    if (_STR_EQ(n_info->name, "ConstInitVal"))
    {
        if (n_info->children_num == 1)
        {
            auto child_node = std::shared_ptr<ASTAddExp>(static_cast<ASTAddExp *>(transform_node_iter(n_info->children[0]->children[0])));
            auto child_node_shared = std::shared_ptr<ASTAddExp>(child_node);
            node->RConstExps.push_back(child_node_shared);
            node->info.push_back("ConstExp");
        }
        else if (n_info->children_num == 2)
        {
            node->info.push_back("LBRACE");
            node->info.push_back("RBRACE");
        }
        else
        {
            node->info.push_back("LBRACE");
            auto n_info3 = n_info->children[1];
            functiona(n_info3, node);
            node->info.push_back("RBRACE");
        }
    }

    else if (_STR_EQ(n_info->name, "ConstInitValList"))
    {
        if (n_info->children_num == 1)
        {
            n_info = n_info->children[0];
            functiona(n_info, node);
        }
        else if (n_info->children_num == 3)
        {

            auto n_info1 = n_info->children[0];
            auto n_info2 = n_info->children[2];
            functiona(n_info1, node);

            functiona(n_info2, node);
        }
    }
}

void AST::functionb(_syntax_tree_node *n_info, ASTVarDef *node)
{
    if (n_info == nullptr)
    {
        return;
    }

    if (_STR_EQ(n_info->name, "InitVal"))
    {
        if (n_info->children_num == 1)
        {
            auto child_node = std::shared_ptr<ASTAddExp>(static_cast<ASTAddExp *>(transform_node_iter(n_info->children[0]->children[0])));
            auto child_node_shared = std::shared_ptr<ASTAddExp>(child_node);
            node->RConstExps.push_back(child_node_shared);
            node->info.push_back("ConstExp");
        }
        else if (n_info->children_num == 2)
        {
            node->info.push_back("LBRACE");
            node->info.push_back("RBRACE");
        }
        else
        {
            node->info.push_back("LBRACE");
            auto n_info3 = n_info->children[1];
            functionb(n_info3, node);
            node->info.push_back("RBRACE");
        }
    }

    else if (_STR_EQ(n_info->name, "InitValList"))
    {
        if (n_info->children_num == 1)
        {
            n_info = n_info->children[0];
            functionb(n_info, node);
        }
        else if (n_info->children_num == 3)
        {

            auto n_info1 = n_info->children[0];
            auto n_info2 = n_info->children[2];
            functionb(n_info1, node);
            functionb(n_info2, node);
        }
    }
}