#include "ast.hpp"

#include <cstring>
#include <iostream>
#include <stack>
#include <queue>
#define _AST_NODE_ERROR_                                                       \
    std::cerr << "Abort due to node cast error."                               \
                 "Contact with TAs to solve your problem."                     \
              << std::endl;                                                    \
    std::abort();
#define _STR_EQ(a, b) (strcmp((a), (b)) == 0)

void AST::run_visitor(ASTVisitor &visitor) { root->accept(visitor); }
AST::AST(syntax_tree *s) {
    if (s == nullptr) {
        std::cerr << "empty input tree!" << std::endl;
        std::abort();
    }
    auto node = transform_node_iter(s->root);
    del_syntax_tree(s);
    root = std::shared_ptr<ASTCompUnit>(static_cast<ASTCompUnit *>(node));
}
ASTNode *AST::transform_node_iter(syntax_tree_node *n)
{
    if(_STR_EQ(n->name,"CompUnit"))//这里分为两组, 按照syntax_analyzer.y的定义，将Decl(FuncDef)和CompUnit Decl进行栈上操作
    {
        //return transform_node_iter(n->children[0]);//Decl
        auto node = new ASTCompUnit();
        std::stack<syntax_tree_node *> s;//Decl栈
        auto list_ptr = n;
        if(list_ptr->children_num == 2)//---->children
        {
            s.push(list_ptr->children[1]);//Decl(FuncDef)
            list_ptr=list_ptr->children[0];
        }
        s.push(list_ptr->children[0]);//Decl(FuncDef)
        while (!s.empty()) {
            if(_STR_EQ(s.top()->name,"Decl"))// 有两种可能的属性：Decl,FuncDef  
            {//想到了一个很严重的问题，这个拆分会不会导致顺序混乱
                auto child_node = static_cast<ASTDecl *>(transform_node_iter(s.top()));
                auto child_node_shared =std::shared_ptr<ASTDecl>(child_node);
                node->decls.push_back(child_node_shared);//CompUnit有个成员变量，存声明：名字可修改
            }
            else if(_STR_EQ(s.top()->name,"FuncDef"))
            {
                auto child_node = static_cast<ASTFuncDef *>(transform_node_iter(s.top()));
                auto child_node_shared =std::shared_ptr<ASTFuncDef>(child_node);
                node->func_defs.push_back(child_node_shared);//另一个成员变量
            }
            s.pop();
        }
        return node;
    }
    else if(_STR_EQ(n->name,"Decl"))
    {
        return transform_node_iter(n->children[0]);//ConstDecl or VarDecl
    }
    else if(_STR_EQ(n->name,"ConstDecl"))
    {
        auto node = new ASTConstDecl();//声明一下这个-->e.g. CONST INT num_a[100]=10,num_b[50]=9;)
        if(_STR_EQ(n-> children[1]-> name,"INT"))//num_a,num_b即IDENT
        node->type = TYPE_CONSTINT;//BTYPE分为INT，FLOAT(const类型):怎么处理const?是否定义CONSTINT,CONSTFLOAT?
        else node->type = TYPE_CONSTFLOAT;//建议可以定义一下
        std::queue<syntax_tree_node *> q;//ConstDef队列
        q.push(n->children[2]);//存ConstDef:再声明下ASTConstDef:shared_ptr
        auto list_ptr = n->children[3];//ComConstDef
        while (list_ptr->children_num == 3) {//COMMA ConstDef ComConstDef
            q.push(list_ptr->children[1]);
            list_ptr = list_ptr->children[2];//ComConstDef
        }
        //建立一个ConstSymtable成员变量,进行存储ConstDef形式的push_back
        while(!q.empty())
        {
            auto child_node = static_cast<ASTConstDef *>(transform_node_iter(q.front()));//“先进”
            auto child_node_shared =std::shared_ptr<ASTConstDef>(child_node);
            node->const_defs.push_back(child_node_shared);
            q.pop();
        }       
        return node;
    }
    else if(_STR_EQ(n->name,"ConstDef"))//ConstDef → Ident { '[' ConstExp ']' } '=' ConstInitVal.问题是ConstDef的Type是否要指定。
    {
        auto node = new ASTConstDef();//
        node->id = n-> children[0]-> name;//IDENT
        auto const_init_val_node = static_cast<ASTConstInitVal*>(transform_node_iter(n-> children[n->children_num - 1]));
        node->const_init_val = std::shared_ptr<ASTConstInitVal>(const_init_val_node);
        if(n->children_num == 4)
        {
            
            
            auto list_ptr = n-> children[1];//ConstExpList，在这里利用队列直接存数组了
            std::queue<syntax_tree_node *> q;//ConstDef队列
            while (list_ptr->children_num == 4) {//LBRACKET ConstExp RBRACKET ConstExplist
            q.push(list_ptr->children[1]);
            list_ptr = list_ptr->children[3];//ConstInitValList
            }
            //剩下的就是list_ptr->children_num==3
            q.push(list_ptr->children[1]);    
            //建立一个ConstExpSymtable成员变量,进行存储ConstExp形式的push_back
            while(!q.empty())
            {
                auto child_node = static_cast<ASTConstExp *>(transform_node_iter(q.front()));//“先进”
                auto child_node_shared =std::shared_ptr<ASTConstExp>(child_node);
                node->ConstExps.push_back(child_node_shared);
                q.pop();           
            }
        }
        return node;
    }
    else if(_STR_EQ(n->name,"VarDef"))//
    {
        auto node = new ASTVarDef();//
        node->id = n-> children[0]-> name;//IDENT
        if(n->children_num == 3 || n->children_num == 4)
        {
            auto init_val_node = static_cast<ASTInitVal*>(transform_node_iter(n-> children[n->children_num - 1]));
            node->init_val = std::shared_ptr<ASTInitVal>(init_val_node);
        }
        else{};
        if(n->children_num == 4||n->children_num == 2)//Ident ConstExplist
        {

            auto list_ptr = n-> children[1];//ConstExpList，在这里利用队列直接存数组了
            std::queue<syntax_tree_node *> q;//ConstDef队列
            while (list_ptr->children_num == 4){//LBRACKET ConstExp RBRACKET ConstExplist
            q.push(list_ptr->children[1]);
            list_ptr = list_ptr->children[3];//ConstInitValList
             }
            //剩下的就是children_num==3
            q.push(list_ptr->children[1]);    
            //建立一个ConstExpSymtable成员变量,进行存储ConstExp形式的push_back
            while(!q.empty())
            {
                auto child_node = static_cast<ASTConstExp *>(transform_node_iter(q.front()));//“先进”
                auto child_node_shared =std::shared_ptr<ASTConstExp>(child_node);
                node->ConstExprs.push_back(child_node_shared);
                q.pop();           
            }
        }
        return node;
    }
    else if(_STR_EQ(n->name,"VarDecl"))
    {
        auto node = new ASTVarDecl();//声明一下这个-->e.g. INT num_a[100]=10,num_b[50]=9;)
        if(_STR_EQ(n-> children[0]-> name,"INT"))//num_a,num_b即IDENT
            node->type = TYPE_INT;//BTYPE分为INT，FLOAT
        else node->type = TYPE_FLOAT;
        std::queue<syntax_tree_node *> q;//VarDef队列
        q.push(n->children[1]);//存VarDef:再声明下ASTVarDef
        auto list_ptr = n->children[2];//ComVarDef
        while (list_ptr->children_num == 3) {//COMMA VarDef ComVarDef
            q.push(list_ptr->children[1]);
            list_ptr = list_ptr->children[2];//ComVarDef
        }
        //建立一个VarSymtable成员变量,进行存储VarDef形式的push_back
        while(!q.empty())
        {
            auto child_node = static_cast<ASTVarDef *>(transform_node_iter(q.front()));//“先进”
            auto child_node_shared =std::shared_ptr<ASTVarDef>(child_node);
            node->var_defs.push_back(child_node_shared);
            q.pop();
        }       
        return node;
    }
    else if(_STR_EQ(n->name,"ConstInitval"))//写的不好,打算重写，这里单纯递归不太行
    {
        auto node = new ASTConstInitVal();
        if(n->children_num == 1)
        {
            node->const_exp = std::shared_ptr<ASTConstExp>(static_cast<ASTConstExp *>(transform_node_iter(n->children[0])));
            return node;
        }
        else if(n->children_num == 2)
        {
            //nop
            return node;
        }
        else if (n->children_num == 3)
        {            
            node->const_init_val_Lists = std::shared_ptr<ASTConstInitValList>(static_cast<ASTConstInitValList *>(transform_node_iter(n->children[1])));
        }
    }
    else if(_STR_EQ(n->name, "ConstInitValList"))
    {
            auto node = new ASTConstInitValList();
            node->const_init_vals = std::shared_ptr<ASTConstInitVal>(static_cast<ASTConstInitVal *>(transform_node_iter(n->children[0])));
        if (n->children_num == 3)
        {
            node->const_init_valLists = std::shared_ptr<ASTConstInitValList>(static_cast<ASTConstInitValList *>(transform_node_iter(n->children[2])));
            //auto rest = transform_node_iter(n->children[2]);       
        } 

        return node;
    }
    else if(_STR_EQ(n->name,"Initval"))//写的不好,打算重写(发现一个很有意思的问题：ConstInitval和Initval明明结构相似，在Bison的实现却不同)
    {
        auto node = new ASTInitVal();
        if(n->children_num == 1)
        {
            node-> exp = std::shared_ptr<ASTExp>(static_cast<ASTExp *>(transform_node_iter(n->children[0])));
            return node;
        }
        else if(n->children_num == 2)
        {
            //nop
            return node;
        }
        else if(n->children_num == 3)
        {
            node->init_vals = std::shared_ptr<ASTInitVal>(static_cast<ASTInitVal *>(transform_node_iter(n->children[1])));
        }
        else if (n->children_num == 4)
        {            
            node->init_val_Lists = std::shared_ptr<ASTInitValList>(static_cast<ASTInitValList *>(transform_node_iter(n->children[2])));
        }
    }
    else if(_STR_EQ(n->name, "InitValList"))
    {
        auto node = new ASTInitValList();
        node->init_vals = std::shared_ptr<ASTInitVal>(static_cast<ASTInitVal *>(transform_node_iter(n->children[n->children_num - 1])));
        if (n->children_num == 3)
        {
            node->init_valLists = std::shared_ptr<ASTInitValList>(static_cast<ASTInitValList *>(transform_node_iter(n->children[0])));
            //auto rest = transform_node_iter(n->children[2]);       
        } 

        return node;
    }
    else if (_STR_EQ(n->name, "FuncDef"))
    {
        auto node = new ASTFuncDef();
        if (_STR_EQ(n->children[0]->name, "INT")) {
            node->type = TYPE_INT;
        } else if (_STR_EQ(n->children[0]->name, "FLOAT")) {
            node->type = TYPE_FLOAT;
        } else {
            node->type = TYPE_VOID;
        }
            node->id = n-> children[1]->name;
            std::queue<syntax_tree_node *> q;
            auto list_ptr = n->children[3];
            q.push(list_ptr->children[0]);
            if (list_ptr->children_num == 3) {
                while (list_ptr->children_num == 3) {
                    q.push(list_ptr->children[1]);
                    list_ptr = list_ptr->children[2];
                }
            }
            while(!q.empty())
        {
            auto child_node = static_cast<ASTFuncFParam *>(transform_node_iter(q.front()));//“先进”
            auto child_node_shared =std::shared_ptr<ASTFuncFParam>(child_node);
            node->func_fparams.push_back(child_node_shared);
            q.pop();
        }       
        return node;
    }
    else if (_STR_EQ(n->name, "FuncFParam"))
    {
        auto node = new ASTFuncFParam();
        if (_STR_EQ(n->children[0]->name, "INT")) {
            node->type = TYPE_INT;
        } else if (_STR_EQ(n->children[0]->name, "FLOAT")) {
            node->type = TYPE_FLOAT;
        } else {
            node->type = TYPE_VOID;
        }
            node->id = n-> children[1]->name;
        if(n->children_num == 5)
        {
            std::queue<syntax_tree_node *> q;
            auto list_ptr = n->children[4];
            if (list_ptr->children_num == 4) {
                while (list_ptr->children_num == 4) {
                    q.push(list_ptr->children[1]);
                    list_ptr = list_ptr->children[3];
                }
            }
            while(!q.empty())//是否要传达数组这一消息？有疑问
            {
                auto child_node = static_cast<ASTExp *>(transform_node_iter(q.front()->children[0]));//“先进”
                auto child_node_shared =std::shared_ptr<ASTExp>(child_node);
                node->Exps.push_back(child_node_shared);
                q.pop();
            }       

        }
        return node;        
    }
    else if(_STR_EQ(n->name,"Block"))
    {
        auto node = new ASTBlock();
        auto list_ptr= n->children[1];
        std::queue<syntax_tree_node *> q;
        if (list_ptr->children_num == 2) {
                while (list_ptr->children_num == 2) {
                    q.push(list_ptr->children[0]);
                    list_ptr = list_ptr->children[1];
            }
        }
        while(!q.empty())
            {
                if(_STR_EQ(q.front()->children[0]->name,"Decl"))//想到了一个很严重的问题，这个拆分会不会导致顺序混乱
                {
                    auto child_node = static_cast<ASTDecl *>(transform_node_iter(q.front()->children[0]));//“先进”
                    auto child_node_shared =std::shared_ptr<ASTDecl>(child_node);
                    node->Decls.push_back(child_node_shared);
                }
                if(_STR_EQ(q.front()->children[0]->name,"Stmt"))
                {
                    auto child_node = static_cast<ASTStmt *>(transform_node_iter(q.front()->children[0]));//“先进”
                    auto child_node_shared =std::shared_ptr<ASTStmt>(child_node);
                    node->Stmts.push_back(child_node_shared);
                }
                q.pop();
            } 
            return node;      
        
    }
    else if(_STR_EQ(n->name,"Stmt"))
    {
        
        if(_STR_EQ(n->children[0]->name,"RETURN"))
        {
            auto node = new ASTReturnStmt();
            if(n->children_num == 3)
            {
                auto child_node = static_cast<ASTExp *>(transform_node_iter(n->children[1]));
                auto child_node_shared = std::shared_ptr<ASTExp>(child_node);
                node -> returnValue = child_node_shared;
            }
                return node;
        }
        else if(_STR_EQ(n->children[0]->name,"IF"))
        { 
            auto node = new ASTIfStmt();
            auto cond_node =static_cast<ASTCond *>(transform_node_iter(n->children[2]));
            node ->condition = std::shared_ptr<ASTCond>(cond_node);
            node ->ifStatement= std::shared_ptr<ASTStmt>(static_cast<ASTStmt *>(transform_node_iter(n->children[4])));
            if(n->children_num  == 7)
            {
                node -> elseStatement = std::shared_ptr<ASTStmt>(static_cast<ASTStmt *>(transform_node_iter(n->children[6])));
            }
            return node;
        }
        else if(_STR_EQ(n->children[0]->name,"CONTINUE"))
        {
            return new ASTContinueStmt();
        }
        else if(_STR_EQ(n->children[0]->name,"BREAK"))
        {
            return new ASTBreakStmt();
        }
        else if(_STR_EQ(n->children[1]->name,"ASSIGN"))
        {
            auto node = new ASTAssignmentStmt();
            node->lval =  std::shared_ptr<ASTLVal>(static_cast<ASTLVal *>(transform_node_iter(n->children[0]))); 
            node->exp =  std::shared_ptr<ASTExp>(static_cast<ASTExp *>(transform_node_iter(n->children[2])));
            return node; 
        }
        else if(_STR_EQ(n->children[0]->name,"Block"))
        {

        }

    }
    else if(_STR_EQ(n->name,"Cond"))
    {

    }
    else if(_STR_EQ(n->name,"LVal"))
    {
        auto node = new ASTLVal();
        node->id = n->children[0]->name;
        std::queue<syntax_tree_node *> q;
        auto list_ptr = n ->children[1];
        while(list_ptr->children_num == 4)
        {
            q.push(list_ptr->children[1]);
            list_ptr = list_ptr -> children[3];
        }
        
    }
    else if(_STR_EQ(n->name,"PrimaryExp"))//number的处理有意思
    {

    }
    else if(_STR_EQ(n->name,"UnaryExp"))//UnaryOp
    {

    }
    else if(_STR_EQ(n->name,"MulExp"))
    {
        auto node =new ASTMulExp();
        if(n->children_num == 3)
        {
            if(_STR_EQ(n->children[1]->name,"MUL"))
            {
                node->mul_op = OP_MUL;
            }
            if(_STR_EQ(n->children[1]->name,"DIV"))
            {
                node->mul_op = OP_DIV;
            }
            if(_STR_EQ(n->children[1]->name,"PER"))
            {
                node->mul_op = OP_MOD;
            }
        }
        node->unary_exp = std::shared_ptr<ASTUnaryExp>(static_cast<ASTUnaryExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if(n->children_num == 3)
        {
            node->mul_exp = std::shared_ptr<ASTMulExp>(static_cast<ASTMulExp *>(transform_node_iter(n->children[0])));
        }
        
        return node;
    }
    else if(_STR_EQ(n->name,"AddExp"))
    {
        auto node =new ASTAddExp();
        if(n->children_num == 3)
        {
            if(_STR_EQ(n->children[1]->name,"ADD"))
            {
                node->add_op =OP_PLUS;
            }
            if(_STR_EQ(n->children[1]->name,"SUB"))
            {
                node->add_op = OP_MINUS;
            }           
        }
        node->mul_exp = std::shared_ptr<ASTMulExp>(static_cast<ASTMulExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if(n->children_num == 3)
        {
            node->add_exp = std::shared_ptr<ASTAddExp>(static_cast<ASTAddExp *>(transform_node_iter(n->children[0])));
        }
        
        return node;
    }
    else if(_STR_EQ(n->name,"RelExp"))
    {
         auto node =new ASTRelExp();
        if(n->children_num == 3)
        {
            if(_STR_EQ(n->children[1]->name,"LT"))
            {
                node->rel_op =OP_LT;
            }
            if(_STR_EQ(n->children[1]->name,"GT"))
            {
                node->rel_op = OP_GT;
            }
            if(_STR_EQ(n->children[1]->name,"LTE"))
            {
                node->rel_op = OP_LE;
            }
            if(_STR_EQ(n->children[1]->name,"GTE"))
            {
                node->rel_op = OP_GE;//需要定义
            }

        }
        node->add_exp = std::shared_ptr<ASTAddExp>(static_cast<ASTAddExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if(n->children_num == 3)
        {
            node->rel_exp = std::shared_ptr<ASTRelExp>(static_cast<ASTRelExp *>(transform_node_iter(n->children[0])));
        }
        return node;
    }
    else if(_STR_EQ(n->name,"EqExp"))
    {
        auto node =new ASTEqExp();
        if(n->children_num == 3)
        {
            if(_STR_EQ(n->children[1]->name,"EQ"))
            {
                node->eq_op = OP_EQ;
            }
            if(_STR_EQ(n->children[1]->name,"NEQ"))
            {
                node->eq_op = OP_NEQ;
            }           
        }
        node->rel_exp = std::shared_ptr<ASTRelExp>(static_cast<ASTRelExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if(n->children_num == 3)
        {
            node->eq_exp = std::shared_ptr<ASTEqExp>(static_cast<ASTEqExp *>(transform_node_iter(n->children[0])));
        }
        
        return node;
    }
    else if(_STR_EQ(n->name,"LAndExp"))
    {
        auto node = new ASTLAndExp();
        node->eq_exp = std::shared_ptr<ASTEqExp>(static_cast<ASTEqExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if(n->children_num == 3)
        {
            node->land_exp = std::shared_ptr<ASTLAndExp>(static_cast<ASTLAndExp *>(transform_node_iter(n->children[0])));
        }
        return node; 
    }
     else if(_STR_EQ(n->name,"LOrExp"))
    {
        auto node = new ASTLOrExp();
        node->land_exp = std::shared_ptr<ASTLAndExp>(static_cast<ASTLAndExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if(n->children_num == 3)
        {
            node->lor_exp = std::shared_ptr<ASTLOrExp>(static_cast<ASTLOrExp *>(transform_node_iter(n->children[0])));
        }
        return node; 
    }
    else if(_STR_EQ(n->name,"Exp"))
    {
        return transform_node_iter(n->children[0]);
    }
    else if(_STR_EQ(n->name,"ConstExp"))
    {
        return transform_node_iter(n->children[0]);
    }
}
//Value* ASTCompUnit::accept(ASTVisitor &visitor) { return visitor.visit(*this); }// 等等
