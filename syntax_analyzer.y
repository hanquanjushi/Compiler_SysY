%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include "syntax_tree.h"

// external functions from lex
extern int yylex();
extern int yyparse();
extern int yyrestart();
extern FILE * yyin;

// external variables from lexical_analyzer module
extern int lines;
extern char * yytext;
extern int pos_end;
extern int pos_start;

// Global syntax tree
syntax_tree *gt;

// Error reporting
void yyerror(const char *s);

// Helper functions written for you with love
syntax_tree_node *node(const char *node_name, int children_num, ...);
%}

/* TODO: Complete this definition.
   Hint: See pass_node(), node(), and syntax_tree.h.
         Use forward declaring. */
%union {
    syntax_tree_node *node;
}

/* TODO: Your tokens here. */
%token <node> ERROR ADD SUB MUL DIV LT LTE GT GTE EQ NEQ ASSIGN SEMICOLON COMMA LPAREN RPAREN LBRACKET RBRACKET LBRACE RBRACE ELSE IF INT RETURN VOID WHILE FLOAT ID INTEGER FLOATPOINT
%type <node> type-specifier relop addop mulop declaration-list declaration var-declaration fun-declaration local-declarations compound-stmt statement-list statement expression-stmt iteration-stmt selection-stmt return-stmt expression simple-expression var additive-expression term factor INTEGER float call params param-list param args arg-list

%start CompUnit

%%
/* TODO: Your rules here. */

/* Example:

*/
CompUnit:  Decl
{
    gt->root = node("CompUnit", 1, $1);
}
| CompUnit Decl
{
    gt->root = node("CompUnit", 2, $1, $2);
}
| CompUnit FunDef
{
    gt->root = node("CompUnit", 2, $1, $2);
}
| FunDef
{
    gt->root = node("CompUnit", 1, $1);
}


Decl: ConstDecl 
{
    $$ = node("Decl", 1, $1);
}
| VarDecl
{
    $$ = node("Decl",  1, $1);
}

ConstDecl: CONST BType ConstDef SEMIConstDef SEMICOLON
{
    $$ = node("ConstDecl", 5, $1, $2, $3, $4, $5);
}

ComConstDef: COMMA ConstDef ComConstDef
{
    $$ = node("ComConstDef", 3, $1, $2, $3);
}
| 
{
    $$ = node("ComConstDef", 0);
}

BType: INT
{
    $$ = node("BType", 1, $1);
}
| FLOAT
{
    $$ = node("BType", 1, $1);
}

ConstDef: Ident ASSIGN ConstInitVal
{
    $$ = node("ConstDef", 3, $1, $2, $3);
}
|Ident LBRACKET ConstExp RBRACKET ASSIGN ConstInitVal
{
    $$ = node("ConstDef", 6, $1, $2, $3, $4, $5, $6);
}

ConstInitVal: ConstExp
{
    $$ = node("ConstInitVal", 1, $1);
}
|   LBRACE ConstInitValList RBRACE
{
    $$ = node("ConstInitVal", 3, $1, $2, $3);
}
| LBRACE RBRACE
{
    $$ = node("ConstInitVal", 2, $1, $2);
}

ConstInitValList: ConstInitVal COMMA ConstInitValList
{
    $$ = node("ConstInitValList", 3, $1, $2, $3);
}
| ConstInitVal
{
    $$ = node("ConstInitValList", 1, $1);
}

VarDecl: BType VarDef SEMIVarDef SEMICOLON
{
    $$ = node("VarDecl", 4, $1, $2, $3, $4);
}
SEMIVarDef: SEMICOLON VarDef SEMIVarDef
{
    $$ = node("SEMIVarDef", 3, $1, $2, $3);
}
|
{
    $$ = node("SEMIVarDef", 0);
}

VarDef: Ident ConstExplist
{
    $$ = node("VarDef", 2, $1, $2);
}
| Ident ConstExplist ASSIGN InitVal
{
    $$ = node("VarDef", 4, $1, $2, $3, $4);
}

ConstExplist: LBRACKET ConstExp RBRACKET ConstExplist
{
    $$ = node("ConstExplist", 4, $1, $2, $3, $4);
}
|
{
    $$ = node("ConstExplist", 0);
}

InitVal: Exp
{
    $$ = node("InitVal", 1, $1);
}
| LBRACE InitValList RBRACE
{
    $$ = node("InitVal", 3, $1, $2, $3);
}
| LBRACE RBRACE
{
    $$ = node("InitVal", 2, $1, $2);
}


InitValList: InitVal COMMA InitValList
{
    $$ = node("InitValList", 3, $1, $2, $3);
}
| InitVal
{
    $$ = node("InitValList", 1, $1);
}

FunDef: FuncType Ident LPAREN FuncFParams RPAREN Block
{
    $$ = node("FunDef", 6, $1, $2, $3, $4, $5, $6);
}
| FuncType Ident LPAREN RPAREN Block
{
    $$ = node("FunDef", 5, $1, $2, $3, $4, $5);
}

FuncType: VOID
{
    $$ = node("FuncType", 1, $1);
}
| INT
{
    $$ = node("FuncType", 1, $1);
}
| FLOAT
{
    $$ = node("FuncType", 1, $1);
}

FuncFParams: FuncFParam FuncFParamlist
{
    $$ = node("FuncFParams", 2, $1, $2);
}

FuncFParamlist: COMMA FuncFParam FuncFParamlist
{
    $$ = node("FuncFParamlist", 3, $1, $2, $3);
}
|
{
    $$ = node("FuncFParamlist", 0);
}

FuncFParam: BType Ident
{
    $$ = node("FuncFParam", 2, $1, $2);
}
| BType Ident LBRACKET RBRACKET Explist 
{
    $$ = node("FuncFParam", 5, $1, $2, $3, $4, $5);
}

Explist : Exp  Explist
{
    $$ = node("Explist", 2, $1, $2);
}
|
{
    $$ = node("Explist", 0);
}

Block: LBRACE BlockItemList RBRACE
{
    $$ = node("Block", 3, $1, $2, $3);
}

BlockItemList: BlockItem BlockItemList
{
    $$ = node("BlockItemList", 2, $1, $2);
}
|
{
    $$ = node("BlockItemList", 0);
}

BlockItem: Decl
{
    $$ = node("BlockItem", 1, $1);
}
| Stmt
{
    $$ = node("BlockItem", 1, $1);
}

Stmt: LVal ASSIGN Exp SEMICOLON
{
    $$ = node("Stmt", 4, $1, $2, $3, $4);
}
| Exp SEMICOLON
{
    $$ = node("Stmt", 2, $1, $2);
}
| SEMICOLON
{
    $$ = node("Stmt", 1, $1);
}
| Block
{
    $$ = node("Stmt", 1, $1);
}
| IF LPAREN Cond RPAREN Stmt
{
    $$ = node("Stmt", 5, $1, $2, $3, $4, $5);
}
| IF LPAREN Cond RPAREN Stmt ELSE Stmt
{
    $$ = node("Stmt", 7, $1, $2, $3, $4, $5, $6, $7);
}
| WHILE LPAREN Cond RPAREN Stmt
{
    $$ = node("Stmt", 5, $1, $2, $3, $4, $5);
}
| BREAK SEMICOLON
{
    $$ = node("Stmt", 2, $1, $2);
}
| CONTINUE SEMICOLON
{
    $$ = node("Stmt", 2, $1, $2);
}
| RETURN SEMICOLON
{
    $$ = node("Stmt", 2, $1, $2);
}
| RETURN Exp SEMICOLON
{
    $$ = node("Stmt", 3, $1, $2, $3);
}

Exp: AddExp
{
    $$ = node("Exp", 1, $1);
}

Cond : LOrExp
{
    $$ = node("Cond", 1, $1);
}

LVal : Ident Explist
{
    $$ = node("LVal", 2, $1, $2);
}

PrimaryExp: LPAREN Exp RPAREN
{
    $$ = node("PrimaryExp", 3, $1, $2, $3);
}
| LVal
{
    $$ = node("PrimaryExp", 1, $1);
}
| Number
{
    $$ = node("PrimaryExp", 1, $1);
}

Number: IntConst
{
    $$ = node("Number", 1, $1);
}
| FloatConst
{
    $$ = node("Number", 1, $1);
}

UnaryExp: PrimaryExp
{
    $$ = node("UnaryExp",1, $1);
}
| Ident LPAREN FuncRParams RPAREN
{
    $$ = node("UnaryExp",4, $1, $2, $3, $4);
}
| UnaryOp UnaryExp
{
    $$ = node("UnaryExp",2, $1, $2);
}

UnaryOp: ADD
{
    $$ = node("UnaryOp",1, $1);
}
| SUB
{
    $$ = node("UnaryOp",1, $1);
}
| EXC
{
    $$ = node("UnaryOp",1, $1);
}

ComExp : COMMA Exp ComExp
{
    $$ = node("ComExp",3, $1, $2, $3);
}
|
{
    $$ = node("ComExp",0);
}

FuncRParams : Exp ComExp
{
    $$ = node("FuncRParams",2, $1, $2);
}

MulExp: UnaryExp
{
    $$ = node("MulExp",1, $1);
}
| MulExp MUL UnaryExp
{
    $$ = node("MulExp",3, $1, $2, $3);
}
| MulExp DIV UnaryExp
{
    $$ = node("MulExp",3, $1, $2, $3);
}
| MulExp PER UnaryExp
{
    $$ = node("MulExp",3, $1, $2, $3);
}

AddExp: MulExp
{
    $$ = node("AddExp",3, $1, $2, $3);
}
| AddExp ADD MulExp
{
    $$ = node("AddExp",3, $1, $2, $3);
}
| AddExp SUB MulExp
{
    $$ = node("AddExp",3, $1, $2, $3);
}

RelExp: AddExp
{
    $$ = node("RelExp",1, $1);
}
| RelExp LT AddExp
{
    $$ = node("RelExp",3, $1, $2, $3);
}
| RelExp GT AddExp
{
    $$ = node("RelExp",3, $1, $2, $3);
}
| RelExp LET AddExp
{
    $$ = node("RelExp",3, $1, $2, $3);
}
| RelExp GET AddExp
{
    $$ = node("RelExp",3, $1, $2, $3);
}

EqExp: RelExp
{
    $$ = node("EqExp",1, $1);
}
|EqExp EQ RelExp
{
    $$ = node("EqExp",3, $1, $2, $3);   
}
|EqExp NEQ RelExp
{
    $$ = node("EqExp",3, $1, $2, $3);
}

LAndExp:  EqExp
{
    $$ = node("LAndExp",1, $1);
}
| LAndExp AND EqExp
{
    $$ = node("LAndExp",3, $1, $2, $3); 
}

LOrExp:  LAndExp
{
    $$ = node("LOrExp",1, $1);
}
| LOrExp OR LAndExp
{
    $$ = node("LOrExp",3, $1, $2, $3); 
}

ConstExp: AddExp
{
    $$ = node("ConstExp",1, $1);
}
%%

/// The error reporting function.
void yyerror(const char * s)
{
    // TO STUDENTS: This is just an example.
    // You can customize it as you like.
    fprintf(stderr, "error at line %d column %d: %s\n", lines, pos_start, s);
}

/// Parse input from file `input_path`, and prints the parsing results
/// to stdout.  If input_path is NULL, read from stdin.
///
/// This function initializes essential states before running yyparse().
syntax_tree *parse(const char *input_path)
{
    if (input_path != NULL) {
        if (!(yyin = fopen(input_path, "r"))) {
            fprintf(stderr, "[ERR] Open input file %s failed.\n", input_path);
            exit(1);
        }
    } else {
        yyin = stdin;
    }

    lines = pos_start = pos_end = 1;
    gt = new_syntax_tree();
    yyrestart(yyin);
    yyparse();
    return gt;
}

/// A helper function to quickly construct a tree node.
///
/// e.g. $$ = node("program", 1, $1);
syntax_tree_node *node(const char *name, int children_num, ...)
{
    syntax_tree_node *p = new_syntax_tree_node(name);
    syntax_tree_node *child;
    if (children_num == 0) {
        child = new_syntax_tree_node("epsilon");
        syntax_tree_add_child(p, child);
    } else {
        va_list ap;
        va_start(ap, children_num);
        for (int i = 0; i < children_num; ++i) {
            child = va_arg(ap, syntax_tree_node *);
            syntax_tree_add_child(p, child);
        }
        va_end(ap);
    }
    return p;
}
