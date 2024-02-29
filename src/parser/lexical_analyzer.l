%option noyywrap
%{
/*****************声明和选项设置  begin*****************/
#include <stdio.h>
#include <stdlib.h>

#include "syntax_tree.h"
#include "syntax_analyzer.h"

int lines=1;
int pos_start=1;
int pos_end=1;

void pass_node(char *text){
     yylval.node = new_syntax_tree_node(text);
}

/*****************声明和选项设置  end*****************/

%}

%x COMMENT
%x SINGLE_LINE_COMMENT
%%
 /* to do for students */
 /* two cases for you, pass_node will send flex's token to bison */

\+ 	{pos_start = pos_end; pos_end += 1; pass_node(yytext); return ADD;}
\%   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return PER;}
\!   {pos_start = pos_end; pos_end += 1; pass_node(yytext); return EXC;}
\-    { pos_start = pos_end; pos_end += 1; pass_node(yytext); return SUB; }
\*     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return MUL; }
\/     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return DIV; }
\<     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return LT; }
\<=    { pos_start = pos_end; pos_end += 2; pass_node(yytext); return LTE; }
\>     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return GT; }
\>=    { pos_start = pos_end; pos_end += 2; pass_node(yytext); return GTE; }
==    { pos_start = pos_end; pos_end += 2; pass_node(yytext); return EQ; }
!=    { pos_start = pos_end; pos_end += 2; pass_node(yytext); return NEQ; }
=     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return ASSIGN; }
;     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return SEMICOLON; }
,     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return COMMA; }
\(     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return LPAREN; }
\)     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return RPAREN; }
\[     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return LBRACKET; }
\]     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return RBRACKET; }
\{     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return LBRACE; }
\}     { pos_start = pos_end; pos_end += 1; pass_node(yytext); return RBRACE; }
\|\| { pos_start = pos_end; pos_end += 2; pass_node(yytext); return OR; }
\&\&  { pos_start = pos_end; pos_end += 2; pass_node(yytext); return AND; }


" "|\t   {pos_start = pos_end; pos_end += 1;}
\n  {lines++; pos_start = 1; pos_end = 1;}
\r { pos_start = pos_end; pos_end += 1; }
else { pos_start = pos_end; pos_end += 4; pass_node(yytext); return ELSE; }
if   { pos_start = pos_end; pos_end += 2; pass_node(yytext); return IF; }
int { pos_start = pos_end; pos_end += 3; pass_node(yytext); return INT; }
return { pos_start = pos_end; pos_end += 6; pass_node(yytext); return RETURN; }
void { pos_start = pos_end; pos_end += 4; pass_node(yytext); return VOID; }
while { pos_start = pos_end; pos_end += 5; pass_node(yytext); return WHILE; }
break { pos_start = pos_end; pos_end += 5; pass_node(yytext); return BREAK; }
continue  {pos_start = pos_end; pos_end += 5; pass_node(yytext); return CONTINUE;} 
float { pos_start = pos_end ;pos_end += 5;pass_node(yytext); return FLOAT; }
const { pos_start = pos_end; pos_end += 5; pass_node(yytext); return CONST; }
continue { pos_start = pos_end; pos_end += 8; pass_node(yytext); return CONTINUE; }
[a-zA-Z_][a-zA-Z0-9_]*    { pos_start = pos_end; pos_end += strlen(yytext); pass_node(yytext); return Ident; }
([0-9]+([.][0-9]*)?([eE][\+\-]?[0-9]+)?|[.][0-9]+([eE][\+\-]?[0-9]+)?) {pos_start = pos_end; pos_end += strlen(yytext); pass_node(yytext); return FloatConst;}
([0-9]+)|0[0-7]+|0x[0-9a-fA-F]+|0X[0-9A-F] {pos_start = pos_end; pos_end += strlen(yytext); pass_node(yytext); return IntConst; }


"//"             { BEGIN(SINGLE_LINE_COMMENT); }
<SINGLE_LINE_COMMENT>. { pos_start = pos_end; pos_start += 1; }
<SINGLE_LINE_COMMENT>\n { BEGIN(INITIAL); lines++; }

"/*"             { pos_start = pos_end; pos_end += 2; BEGIN(COMMENT); }
<COMMENT>"*/"    { pos_start = pos_end; pos_end += 2; BEGIN(INITIAL); }
<COMMENT>.  { pos_start = pos_end; pos_start += 1; }
<COMMENT>\n { pos_start = 1; pos_end = 1; lines++; }
. { pos_start = pos_end; pos_end++; return ERROR; }
 /****请在此补全所有flex的模式与动作 /*  end******/
%%