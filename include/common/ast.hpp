#pragma once

extern "C"
{
#include "syntax_tree.h"
    extern syntax_tree *parse(const char *input);
}
#include "User.hpp"
#include <memory>
#include <string>
#include <vector>

enum SysYType
{
    TYPE_INT,
    TYPE_FLOAT,
    TYPE_VOID,
    TYPE_CONSTINT,
    TYPE_CONSTFLOAT
};

enum RelOp
{
    // <=
    OP_LE,
    // <
    OP_LT,
    // >
    OP_GT,
    // >=
    OP_GE

};

enum EqOp
{
    // ==
    OP_EQ,
    // !=
    OP_NEQ
};

enum AddOp
{
    // +
    OP_PLUS,
    // -
    OP_MINUS
};

enum MulOp
{
    // *
    OP_MUL,
    // /
    OP_DIV,
    // %
    OP_MOD
};

class AST;
struct ASTCompUnit;
struct ASTDecl;
struct ASTConstDecl;
struct ASTBType;
struct ASTConstDef;
struct ASTConstInitVal;
struct ASTVarDecl;
struct ASTVarDef;
struct ASTInitVal;
struct ASTFuncDef;
struct ASTFuncType;
struct ASTFuncFParams;
struct ASTFuncFParam;
struct ASTBlock;
struct ASTBlockItem;
struct ASTStmt;
struct ASTExp;
struct ASTCond;
struct ASTLVal;
struct ASTPrimaryExp;
struct ASTNumber;
struct ASTUnaryExp;
struct ASTUnaryOp;
struct ASTFuncRParams;
struct ASTMulExp;
struct ASTAddExp;
struct ASTRelExp;
struct ASTEqExp;
struct ASTLAndExp;
struct ASTLOrExp;
struct ASTConstExp;

struct ASTNode;

class ASTVisitor;

class AST
{
public:
    AST() = delete;
    AST(syntax_tree *);
    AST(AST &&tree)
    {
        root = tree.root;
        tree.root = nullptr;
    };
    ASTCompUnit *get_root() { return root.get(); }
    void run_visitor(ASTVisitor &visitor);

private:
    ASTNode *transform_node_iter(syntax_tree_node *);
    std::shared_ptr<ASTCompUnit> root = nullptr;
};

struct ASTNode
{
    virtual Value *accept(ASTVisitor &) = 0;
    virtual ~ASTNode() = default;
};

struct ASTCompUnit : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTCompUnit() = default;
    std::vector<std::shared_ptr<ASTDecl>> decls;
    std ::vector<std::shared_ptr<ASTFuncDef>> func_defs;
};

struct ASTDecl : ASTNode
{

    virtual ~ASTDecl() = default;
};

struct ASTConstDecl : ASTDecl
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTConstDecl() = default;
    SysYType type;
    std::vector<std::shared_ptr<ASTConstDef>> const_defs;
};

// struct ASTBType : ASTNode
// {
//     virtual Value *accept(ASTVisitor &) override final;
//     virtual ~ASTBType() = default;
//     CminType type;
// };

struct ASTConstDef : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTConstDef() = default;
    std::string id;
    std::shared_ptr<ASTConstInitVal> const_init_val;
    std::vector<std::shared_ptr<ASTConstExp>>ConstExps;
};

struct ASTConstInitVal : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTConstInitVal() = default;
    std::shared_ptr<ASTConstExp> const_exp;
};

struct ASTConstInitValList : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTConstInitValList() = default;
}; 

struct ASTVarDecl : ASTDecl
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTVarDecl() = default;
    SysYType type;
    std::vector<std::shared_ptr<ASTVarDef>> var_defs;
};

struct ASTVarDef : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTVarDef() = default;
    std::string id;
    std::shared_ptr<ASTInitVal> init_val;
    std::vector<std::shared_ptr<ASTConstExp>>ConstExprs;
};

struct ASTInitVal : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTInitVal() = default;
    std::shared_ptr<ASTExp> exp;
};
struct ASTInitValList : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTInitValList() = default;
}; 
struct ASTFuncDef : ASTDecl
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTFuncDef() = default;
    SysYType type;
    std::string id;
    std::vector<std::shared_ptr<ASTFuncFParam>> func_fparams;
    //std::shared_ptr<ASTBlock> block;
};

// struct ASTFuncType : ASTNode
// {
//     virtual Value *accept(ASTVisitor &) override final;
//     virtual ~ASTFuncType() = default;
//     std::shared_ptr<ASTBType> btype;
// };

// struct ASTFuncFParams : ASTNode
// {
//     virtual Value *accept(ASTVisitor &) override final;
//     virtual ~ASTFuncFParams() = default;
//     std::vector<std::shared_ptr<ASTFuncFParam>> func_fparams;
// };

struct ASTFuncFParam : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTFuncFParam() = default;
    SysYType type;
    std::string id;
    std::vector<std::shared_ptr<ASTExp>> Exps;
};

struct ASTBlock : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTBlock() = default;
    //std::vector<std::shared_ptr<ASTBlockItem>> block_items;
    std::vector<std::shared_ptr<ASTDecl>> Decls;
    std::vector<std::shared_ptr<ASTStmt>> Stmts;
};

// struct ASTBlockItem : ASTNode
// {

//     virtual ~ASTBlockItem() = default;
// };

struct ASTStmt : ASTBlock
{
    //virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTStmt() = default;
};

struct ASTExp : ASTNode
{

    virtual ~ASTExp() = default;
};

struct ASTCond : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTCond() = default;
};

struct ASTLVal : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTLVal() = default;
};

struct ASTPrimaryExp : ASTExp
{

    virtual ~ASTPrimaryExp() = default;
};

struct ASTNumber : ASTPrimaryExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTNumber() = default;
    int value;
};

struct ASTUnaryExp : ASTPrimaryExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTUnaryExp() = default;
    std::shared_ptr<ASTUnaryOp> unary_op;
    std::shared_ptr<ASTExp> exp;
};

struct ASTUnaryOp : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTUnaryOp() = default;
    int op;
};

struct ASTFuncRParams : ASTPrimaryExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTFuncRParams() = default;
    std::vector<std::shared_ptr<ASTExp>> exps;
};

struct ASTMulExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTMulExp() = default;
    std::shared_ptr<ASTMulExp> mul_exp;
    std::shared_ptr<ASTUnaryExp> unary_exp;
    std::shared_ptr<MulOp> mul_op;
};

struct ASTAddExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTAddExp() = default;
    std::shared_ptr<ASTAddExp> add_exp;
    std::shared_ptr<ASTMulExp> mul_exp;
    std::shared_ptr<AddOp> add_op;
};

struct ASTRelExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTRelExp() = default;
    std::shared_ptr<ASTRelExp> rel_exp;
    std::shared_ptr<ASTAddExp> add_exp;
    std::shared_ptr<RelOp> rel_op;
};

struct ASTEqExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTEqExp() = default;
    std::shared_ptr<ASTEqExp> eq_exp;
    std::shared_ptr<ASTRelExp> rel_exp;
    std::shared_ptr<EqOp> eq_op;
};

struct ASTLAndExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTLAndExp() = default;
    std::shared_ptr<ASTLAndExp> land_exp;
    std::shared_ptr<ASTEqExp> eq_exp;
};

struct ASTLOrExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTLOrExp() = default;
    std::shared_ptr<ASTLOrExp> lor_exp;
    std::shared_ptr<ASTLAndExp> land_exp;
};

struct ASTConstExp : ASTExp
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTConstExp() = default;
    std::shared_ptr<ASTLOrExp> lor_exp;
};

class ASTVisitor
{
public:
    virtual Value *visit(ASTCompUnit &) = 0;
    virtual Value *visit(ASTDecl &) = 0;
    virtual Value *visit(ASTConstDecl &) = 0;
    virtual Value *visit(ASTBType &) = 0;
    virtual Value *visit(ASTConstDef &) = 0;
    virtual Value *visit(ASTConstInitVal &) = 0;
    virtual Value *visit(ASTVarDecl &) = 0;
    virtual Value *visit(ASTVarDef &) = 0;
    virtual Value *visit(ASTInitVal &) = 0;
    virtual Value *visit(ASTFuncDef &) = 0;
    virtual Value *visit(ASTFuncType &) = 0;
    virtual Value *visit(ASTFuncFParams &) = 0;
    virtual Value *visit(ASTFuncFParam &) = 0;
    virtual Value *visit(ASTBlock &) = 0;
    virtual Value *visit(ASTBlockItem &) = 0;
    virtual Value *visit(ASTStmt &) = 0;
    virtual Value *visit(ASTExp &) = 0;
    virtual Value *visit(ASTCond &) = 0;
    virtual Value *visit(ASTLVal &) = 0;
    virtual Value *visit(ASTPrimaryExp &) = 0;
    virtual Value *visit(ASTNumber &) = 0;
    virtual Value *visit(ASTUnaryExp &) = 0;
    virtual Value *visit(ASTUnaryOp &) = 0;
    virtual Value *visit(ASTFuncRParams &) = 0;
    virtual Value *visit(ASTMulExp &) = 0;
    virtual Value *visit(ASTAddExp &) = 0;
    virtual Value *visit(ASTRelExp &) = 0;
    virtual Value *visit(ASTEqExp &) = 0;
    virtual Value *visit(ASTLAndExp &) = 0;
    virtual Value *visit(ASTLOrExp &) = 0;
    virtual Value *visit(ASTConstExp &) = 0;
};

class ASTPrinter : public ASTVisitor
{
public:
    virtual Value *visit(ASTCompUnit &) override final;
    virtual Value *visit(ASTDecl &) override final;
    virtual Value *visit(ASTConstDecl &) override final;
    virtual Value *visit(ASTBType &) override final;
    virtual Value *visit(ASTConstDef &) override final;
    virtual Value *visit(ASTConstInitVal &) override final;
    virtual Value *visit(ASTVarDecl &) override final;
    virtual Value *visit(ASTVarDef &) override final;
    virtual Value *visit(ASTInitVal &) override final;
    virtual Value *visit(ASTFuncDef &) override final;
    virtual Value *visit(ASTFuncType &) override final;
    virtual Value *visit(ASTFuncFParams &) override final;
    virtual Value *visit(ASTFuncFParam &) override final;
    virtual Value *visit(ASTBlock &) override final;
    virtual Value *visit(ASTBlockItem &) override final;
    virtual Value *visit(ASTStmt &) override final;
    virtual Value *visit(ASTExp &) override final;
    virtual Value *visit(ASTCond &) override final;
    virtual Value *visit(ASTLVal &) override final;
    virtual Value *visit(ASTPrimaryExp &) override final;
    virtual Value *visit(ASTNumber &) override final;
    virtual Value *visit(ASTUnaryExp &) override final;
    virtual Value *visit(ASTUnaryOp &) override final;
    virtual Value *visit(ASTFuncRParams &) override final;
    virtual Value *visit(ASTMulExp &) override final;
    virtual Value *visit(ASTAddExp &) override final;
    virtual Value *visit(ASTRelExp &) override final;
    virtual Value *visit(ASTEqExp &) override final;
    virtual Value *visit(ASTLAndExp &) override final;
    virtual Value *visit(ASTLOrExp &) override final;
    virtual Value *visit(ASTConstExp &) override final;

    void add_depth() { depth += 2; }
    void remove_depth() { depth -= 2; }

private:
    int depth = 0;
};
