/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"

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

#line 101 "syntax_analyzer.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif


/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    ERROR = 258,                   /* ERROR  */
    ADD = 259,                     /* ADD  */
    SUB = 260,                     /* SUB  */
    MUL = 261,                     /* MUL  */
    EXC = 262,                     /* EXC  */
    DIV = 263,                     /* DIV  */
    LT = 264,                      /* LT  */
    LTE = 265,                     /* LTE  */
    GT = 266,                      /* GT  */
    GTE = 267,                     /* GTE  */
    EQ = 268,                      /* EQ  */
    NEQ = 269,                     /* NEQ  */
    ASSIGN = 270,                  /* ASSIGN  */
    SEMICOLON = 271,               /* SEMICOLON  */
    COMMA = 272,                   /* COMMA  */
    LPAREN = 273,                  /* LPAREN  */
    RPAREN = 274,                  /* RPAREN  */
    LBRACKET = 275,                /* LBRACKET  */
    RBRACKET = 276,                /* RBRACKET  */
    LBRACE = 277,                  /* LBRACE  */
    RBRACE = 278,                  /* RBRACE  */
    ELSE = 279,                    /* ELSE  */
    IF = 280,                      /* IF  */
    INT = 281,                     /* INT  */
    RETURN = 282,                  /* RETURN  */
    VOID = 283,                    /* VOID  */
    WHILE = 284,                   /* WHILE  */
    FLOAT = 285,                   /* FLOAT  */
    PER = 286,                     /* PER  */
    Ident = 287,                   /* Ident  */
    IntConst = 288,                /* IntConst  */
    FloatConst = 289,              /* FloatConst  */
    BREAK = 290,                   /* BREAK  */
    CONST = 291,                   /* CONST  */
    CONTINUE = 292,                /* CONTINUE  */
    OR = 293,                      /* OR  */
    AND = 294                      /* AND  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 34 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"

    syntax_tree_node *node;

#line 191 "syntax_analyzer.tab.c"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);



/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_ERROR = 3,                      /* ERROR  */
  YYSYMBOL_ADD = 4,                        /* ADD  */
  YYSYMBOL_SUB = 5,                        /* SUB  */
  YYSYMBOL_MUL = 6,                        /* MUL  */
  YYSYMBOL_EXC = 7,                        /* EXC  */
  YYSYMBOL_DIV = 8,                        /* DIV  */
  YYSYMBOL_LT = 9,                         /* LT  */
  YYSYMBOL_LTE = 10,                       /* LTE  */
  YYSYMBOL_GT = 11,                        /* GT  */
  YYSYMBOL_GTE = 12,                       /* GTE  */
  YYSYMBOL_EQ = 13,                        /* EQ  */
  YYSYMBOL_NEQ = 14,                       /* NEQ  */
  YYSYMBOL_ASSIGN = 15,                    /* ASSIGN  */
  YYSYMBOL_SEMICOLON = 16,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 17,                     /* COMMA  */
  YYSYMBOL_LPAREN = 18,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 19,                    /* RPAREN  */
  YYSYMBOL_LBRACKET = 20,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 21,                  /* RBRACKET  */
  YYSYMBOL_LBRACE = 22,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 23,                    /* RBRACE  */
  YYSYMBOL_ELSE = 24,                      /* ELSE  */
  YYSYMBOL_IF = 25,                        /* IF  */
  YYSYMBOL_INT = 26,                       /* INT  */
  YYSYMBOL_RETURN = 27,                    /* RETURN  */
  YYSYMBOL_VOID = 28,                      /* VOID  */
  YYSYMBOL_WHILE = 29,                     /* WHILE  */
  YYSYMBOL_FLOAT = 30,                     /* FLOAT  */
  YYSYMBOL_PER = 31,                       /* PER  */
  YYSYMBOL_Ident = 32,                     /* Ident  */
  YYSYMBOL_IntConst = 33,                  /* IntConst  */
  YYSYMBOL_FloatConst = 34,                /* FloatConst  */
  YYSYMBOL_BREAK = 35,                     /* BREAK  */
  YYSYMBOL_CONST = 36,                     /* CONST  */
  YYSYMBOL_CONTINUE = 37,                  /* CONTINUE  */
  YYSYMBOL_OR = 38,                        /* OR  */
  YYSYMBOL_AND = 39,                       /* AND  */
  YYSYMBOL_YYACCEPT = 40,                  /* $accept  */
  YYSYMBOL_CompUnit = 41,                  /* CompUnit  */
  YYSYMBOL_Decl = 42,                      /* Decl  */
  YYSYMBOL_ConstDecl = 43,                 /* ConstDecl  */
  YYSYMBOL_ComConstDef = 44,               /* ComConstDef  */
  YYSYMBOL_ConstDef = 45,                  /* ConstDef  */
  YYSYMBOL_ConstInitVal = 46,              /* ConstInitVal  */
  YYSYMBOL_ConstInitValList = 47,          /* ConstInitValList  */
  YYSYMBOL_VarDecl = 48,                   /* VarDecl  */
  YYSYMBOL_ComVarDef = 49,                 /* ComVarDef  */
  YYSYMBOL_VarDef = 50,                    /* VarDef  */
  YYSYMBOL_ConstExplist = 51,              /* ConstExplist  */
  YYSYMBOL_InitVal = 52,                   /* InitVal  */
  YYSYMBOL_InitValList = 53,               /* InitValList  */
  YYSYMBOL_FuncDef = 54,                   /* FuncDef  */
  YYSYMBOL_FuncFParams = 55,               /* FuncFParams  */
  YYSYMBOL_FuncFParamlist = 56,            /* FuncFParamlist  */
  YYSYMBOL_FuncFParam = 57,                /* FuncFParam  */
  YYSYMBOL_Explist = 58,                   /* Explist  */
  YYSYMBOL_Block = 59,                     /* Block  */
  YYSYMBOL_BlockItemList = 60,             /* BlockItemList  */
  YYSYMBOL_BlockItem = 61,                 /* BlockItem  */
  YYSYMBOL_Stmt = 62,                      /* Stmt  */
  YYSYMBOL_Exp = 63,                       /* Exp  */
  YYSYMBOL_Cond = 64,                      /* Cond  */
  YYSYMBOL_LVal = 65,                      /* LVal  */
  YYSYMBOL_PrimaryExp = 66,                /* PrimaryExp  */
  YYSYMBOL_Number = 67,                    /* Number  */
  YYSYMBOL_UnaryExp = 68,                  /* UnaryExp  */
  YYSYMBOL_UnaryOp = 69,                   /* UnaryOp  */
  YYSYMBOL_ComExp = 70,                    /* ComExp  */
  YYSYMBOL_FuncRParams = 71,               /* FuncRParams  */
  YYSYMBOL_MulExp = 72,                    /* MulExp  */
  YYSYMBOL_AddExp = 73,                    /* AddExp  */
  YYSYMBOL_RelExp = 74,                    /* RelExp  */
  YYSYMBOL_EqExp = 75,                     /* EqExp  */
  YYSYMBOL_LAndExp = 76,                   /* LAndExp  */
  YYSYMBOL_LOrExp = 77,                    /* LOrExp  */
  YYSYMBOL_ConstExp = 78                   /* ConstExp  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  17
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   299

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  40
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  39
/* YYNRULES -- Number of rules.  */
#define YYNRULES  101
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  202

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   294


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    50,    50,    54,    58,    62,    69,    73,    78,    82,
      87,    92,    98,   102,   107,   111,   115,   121,   125,   130,
     134,   140,   145,   149,   153,   158,   163,   167,   171,   175,
     179,   185,   189,   194,   198,   202,   206,   210,   214,   220,
     225,   230,   234,   238,   242,   246,   251,   256,   260,   265,
     270,   274,   278,   283,   287,   291,   295,   299,   303,   307,
     311,   315,   319,   323,   328,   333,   338,   343,   347,   351,
     356,   360,   365,   369,   373,   377,   382,   386,   390,   395,
     400,   404,   409,   413,   417,   421,   426,   430,   434,   439,
     443,   447,   451,   455,   460,   464,   468,   473,   477,   482,
     486,   491
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "ERROR", "ADD", "SUB",
  "MUL", "EXC", "DIV", "LT", "LTE", "GT", "GTE", "EQ", "NEQ", "ASSIGN",
  "SEMICOLON", "COMMA", "LPAREN", "RPAREN", "LBRACKET", "RBRACKET",
  "LBRACE", "RBRACE", "ELSE", "IF", "INT", "RETURN", "VOID", "WHILE",
  "FLOAT", "PER", "Ident", "IntConst", "FloatConst", "BREAK", "CONST",
  "CONTINUE", "OR", "AND", "$accept", "CompUnit", "Decl", "ConstDecl",
  "ComConstDef", "ConstDef", "ConstInitVal", "ConstInitValList", "VarDecl",
  "ComVarDef", "VarDef", "ConstExplist", "InitVal", "InitValList",
  "FuncDef", "FuncFParams", "FuncFParamlist", "FuncFParam", "Explist",
  "Block", "BlockItemList", "BlockItem", "Stmt", "Exp", "Cond", "LVal",
  "PrimaryExp", "Number", "UnaryExp", "UnaryOp", "ComExp", "FuncRParams",
  "MulExp", "AddExp", "RelExp", "EqExp", "LAndExp", "LOrExp", "ConstExp", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-164)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      83,   -20,     8,    62,    26,    27,  -164,  -164,  -164,  -164,
      46,    78,    14,    92,    78,    67,    67,  -164,  -164,  -164,
       0,   265,    44,    84,   113,    42,    58,   114,    23,   115,
     115,   109,   101,   102,   117,   118,  -164,  -164,  -164,   265,
     103,  -164,  -164,  -164,  -164,  -164,  -164,   265,     5,    20,
     119,   220,   122,    78,  -164,   109,   120,   109,   124,  -164,
     225,   129,    67,   130,   131,    71,  -164,   125,   128,   109,
      32,  -164,   132,    20,   230,   265,  -164,  -164,   265,   265,
     265,   265,   265,   122,   183,  -164,  -164,  -164,  -164,   109,
    -164,   109,   189,  -164,  -164,   225,   115,  -164,  -164,  -164,
     134,    84,   261,   137,    84,   133,   150,  -164,  -164,   127,
      71,  -164,   152,   154,   151,   156,  -164,   118,  -164,  -164,
     153,   160,   159,  -164,  -164,  -164,     5,     5,  -164,  -164,
      11,  -164,  -164,  -164,   158,   162,  -164,  -164,   265,  -164,
     157,   265,  -164,  -164,  -164,  -164,  -164,   265,   169,   169,
    -164,   265,  -164,  -164,   169,   220,  -164,    12,   225,  -164,
     172,    20,   116,    33,   161,   164,  -164,   173,   179,  -164,
    -164,   153,  -164,  -164,   220,  -164,  -164,   149,   265,   265,
     265,   265,   265,   265,   265,   265,   149,  -164,  -164,  -164,
     174,    20,    20,    20,    20,   116,   116,    33,   161,  -164,
     149,  -164
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,     0,     0,     0,     0,     2,     6,     7,     3,
      26,    22,     0,    26,    22,     0,     0,     1,     4,     5,
       0,     0,    23,     0,     0,     0,     0,     0,     0,    11,
      11,     0,     0,     0,     0,    41,    76,    77,    78,     0,
      47,    70,    71,    68,    72,    69,    82,     0,    86,   101,
       0,     0,    26,    22,    19,     0,     0,     0,     0,    20,
       0,     0,     0,     0,     0,    50,    34,    42,    43,     0,
       0,    39,     0,    64,     0,     0,    66,    75,     0,     0,
       0,     0,     0,    26,     0,    24,    27,    21,    33,     0,
      35,     0,     0,    12,    14,     0,    11,     8,     9,    55,
       0,     0,     0,     0,     0,     0,     0,    51,    56,     0,
      50,    52,     0,    68,     0,     0,    36,    41,    67,    74,
      80,     0,     0,    83,    84,    85,    87,    88,    25,    30,
       0,    38,    37,    15,    18,     0,    13,    10,     0,    62,
       0,     0,    60,    61,    48,    49,    54,     0,    47,    47,
      40,     0,    81,    73,    47,     0,    29,     0,     0,    16,
       0,    89,    94,    97,    99,    65,    63,     0,     0,    44,
      45,    80,    46,    32,     0,    28,    17,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    53,    79,    31,
      57,    90,    92,    91,    93,    95,    96,    98,   100,    59,
       0,    58
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -164,  -164,    15,  -164,   -26,    -8,   -51,    39,  -164,    -4,
      -2,   -23,   -82,  -164,   194,    54,    86,   138,  -132,   -24,
      94,  -164,  -163,   -33,    68,   -62,  -164,  -164,     3,  -164,
      43,  -164,     4,   -21,   -92,    29,    25,  -164,   197
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     5,   107,     7,    63,    29,   134,   135,     8,    24,
      11,    22,    85,   157,     9,    34,    71,    35,    76,   108,
     109,   110,   111,   112,   160,    43,    44,    45,    46,    47,
     152,   121,    48,    73,   162,   163,   164,   165,    94
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      49,    14,   130,   113,    64,    61,    72,    66,    30,    93,
      27,    78,    10,    79,   190,     6,   169,   170,    86,    31,
      18,    53,   172,   199,    81,    82,    32,    17,   155,   174,
      33,    88,    25,    90,   156,   175,    80,   201,    60,    49,
      12,   120,   122,    21,   136,   116,   182,   183,   113,    87,
      77,    86,    15,     1,    96,     2,    16,     3,    32,    51,
     128,    55,    33,     4,    20,   131,    21,   132,    32,   140,
     137,    49,    33,   173,    49,    36,    37,    57,    38,    56,
      58,   123,   124,   125,    32,   126,   127,    99,    33,    39,
     195,   196,   189,    65,    13,    23,   100,   101,   102,    28,
     103,   104,    14,    40,    41,    42,   105,     4,   106,     1,
      26,     2,    21,     3,   168,   113,    52,   161,   171,     4,
     161,    74,    86,    75,   113,   178,   179,   180,   181,    54,
      59,    65,    62,    67,    68,    70,    69,    49,   113,    89,
      83,    86,    21,    91,    95,   114,    97,    98,   115,   142,
     144,   118,   138,    36,    37,   141,    38,   191,   192,   193,
     194,   161,   161,   161,   161,    99,   143,    39,   146,   147,
     151,    65,   148,   166,   100,   158,   102,   149,   103,   153,
     154,    40,    41,    42,   105,   159,   106,    36,    37,    75,
      38,   177,   186,    36,    37,   187,    38,   176,   200,    19,
     184,    39,   185,   150,   145,    84,   129,    39,   117,   167,
     198,    92,   133,   197,   188,    40,    41,    42,    50,     0,
       0,    40,    41,    42,    36,    37,     0,    38,     0,    36,
      37,     0,    38,     0,    36,    37,     0,    38,    39,     0,
       0,     0,    84,    39,     0,     0,     0,    92,    39,   119,
       0,     0,    40,    41,    42,     0,     0,    40,    41,    42,
       0,     0,    40,    41,    42,    36,    37,     0,    38,    36,
      37,     0,    38,     0,     0,     0,     0,   139,     0,    39,
       0,     0,     0,    39,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    40,    41,    42,     0,    40,    41,    42
};

static const yytype_int16 yycheck[] =
{
      21,     3,    84,    65,    30,    28,    39,    31,    16,    60,
      14,     6,    32,     8,   177,     0,   148,   149,    51,    19,
       5,    23,   154,   186,     4,     5,    26,     0,    17,    17,
      30,    55,    18,    57,    23,    23,    31,   200,    15,    60,
      32,    74,    75,    20,    95,    69,    13,    14,   110,    53,
      47,    84,    26,    26,    62,    28,    30,    30,    26,    15,
      83,    19,    30,    36,    18,    89,    20,    91,    26,   102,
      96,    92,    30,   155,    95,     4,     5,    19,     7,    25,
      26,    78,    79,    80,    26,    81,    82,    16,    30,    18,
     182,   183,   174,    22,    32,    17,    25,    26,    27,    32,
      29,    30,   104,    32,    33,    34,    35,    36,    37,    26,
      18,    28,    20,    30,   147,   177,    32,   138,   151,    36,
     141,    18,   155,    20,   186,     9,    10,    11,    12,    16,
      16,    22,    17,    32,    32,    17,    19,   158,   200,    19,
      21,   174,    20,    19,    15,    20,    16,    16,    20,    16,
      23,    19,    18,     4,     5,    18,     7,   178,   179,   180,
     181,   182,   183,   184,   185,    16,    16,    18,    16,    15,
      17,    22,    21,    16,    25,    17,    27,    21,    29,    19,
      21,    32,    33,    34,    35,    23,    37,     4,     5,    20,
       7,    19,    19,     4,     5,    16,     7,   158,    24,     5,
      39,    18,    38,   117,   110,    22,    23,    18,    70,   141,
     185,    22,    23,   184,   171,    32,    33,    34,    21,    -1,
      -1,    32,    33,    34,     4,     5,    -1,     7,    -1,     4,
       5,    -1,     7,    -1,     4,     5,    -1,     7,    18,    -1,
      -1,    -1,    22,    18,    -1,    -1,    -1,    22,    18,    19,
      -1,    -1,    32,    33,    34,    -1,    -1,    32,    33,    34,
      -1,    -1,    32,    33,    34,     4,     5,    -1,     7,     4,
       5,    -1,     7,    -1,    -1,    -1,    -1,    16,    -1,    18,
      -1,    -1,    -1,    18,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    32,    33,    34,    -1,    32,    33,    34
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    26,    28,    30,    36,    41,    42,    43,    48,    54,
      32,    50,    32,    32,    50,    26,    30,     0,    42,    54,
      18,    20,    51,    17,    49,    18,    18,    49,    32,    45,
      45,    19,    26,    30,    55,    57,     4,     5,     7,    18,
      32,    33,    34,    65,    66,    67,    68,    69,    72,    73,
      78,    15,    32,    50,    16,    19,    55,    19,    55,    16,
      15,    51,    17,    44,    44,    22,    59,    32,    32,    19,
      17,    56,    63,    73,    18,    20,    58,    68,     6,     8,
      31,     4,     5,    21,    22,    52,    63,    49,    59,    19,
      59,    19,    22,    46,    78,    15,    45,    16,    16,    16,
      25,    26,    27,    29,    30,    35,    37,    42,    59,    60,
      61,    62,    63,    65,    20,    20,    59,    57,    19,    19,
      63,    71,    63,    68,    68,    68,    72,    72,    51,    23,
      52,    59,    59,    23,    46,    47,    46,    44,    18,    16,
      63,    18,    16,    16,    23,    60,    16,    15,    21,    21,
      56,    17,    70,    19,    21,    17,    23,    53,    17,    23,
      64,    73,    74,    75,    76,    77,    16,    64,    63,    58,
      58,    63,    58,    52,    17,    23,    47,    19,     9,    10,
      11,    12,    13,    14,    39,    38,    19,    16,    70,    52,
      62,    73,    73,    73,    73,    74,    74,    75,    76,    62,
      24,    62
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    40,    41,    41,    41,    41,    42,    42,    43,    43,
      44,    44,    45,    45,    46,    46,    46,    47,    47,    48,
      48,    49,    49,    50,    50,    51,    51,    52,    52,    52,
      52,    53,    53,    54,    54,    54,    54,    54,    54,    55,
      56,    56,    57,    57,    57,    57,    58,    58,    59,    60,
      60,    61,    61,    62,    62,    62,    62,    62,    62,    62,
      62,    62,    62,    62,    63,    64,    65,    66,    66,    66,
      67,    67,    68,    68,    68,    68,    69,    69,    69,    70,
      70,    71,    72,    72,    72,    72,    73,    73,    73,    74,
      74,    74,    74,    74,    75,    75,    75,    76,    76,    77,
      77,    78
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     2,     2,     1,     1,     5,     5,
       3,     0,     3,     4,     1,     2,     3,     3,     1,     4,
       4,     3,     0,     2,     4,     4,     0,     1,     4,     3,
       2,     3,     2,     5,     5,     5,     6,     6,     6,     2,
       3,     0,     2,     2,     5,     5,     4,     0,     3,     2,
       0,     1,     1,     4,     2,     1,     1,     5,     7,     5,
       2,     2,     2,     3,     1,     1,     2,     3,     1,     1,
       1,     1,     1,     4,     3,     2,     1,     1,     1,     3,
       0,     2,     1,     3,     3,     3,     1,     3,     3,     1,
       3,     3,     3,     3,     1,     3,     3,     1,     3,     1,
       3,     1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* CompUnit: Decl  */
#line 51 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    gt->root = node("CompUnit", 1, (yyvsp[0].node));
}
#line 1404 "syntax_analyzer.tab.c"
    break;

  case 3: /* CompUnit: FuncDef  */
#line 55 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    gt->root = node("CompUnit", 1, (yyvsp[0].node));
}
#line 1412 "syntax_analyzer.tab.c"
    break;

  case 4: /* CompUnit: CompUnit Decl  */
#line 59 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    gt->root = node("CompUnit", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1420 "syntax_analyzer.tab.c"
    break;

  case 5: /* CompUnit: CompUnit FuncDef  */
#line 63 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    gt->root = node("CompUnit", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1428 "syntax_analyzer.tab.c"
    break;

  case 6: /* Decl: ConstDecl  */
#line 70 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Decl", 1, (yyvsp[0].node));
}
#line 1436 "syntax_analyzer.tab.c"
    break;

  case 7: /* Decl: VarDecl  */
#line 74 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Decl",  1, (yyvsp[0].node));
}
#line 1444 "syntax_analyzer.tab.c"
    break;

  case 8: /* ConstDecl: CONST INT ConstDef ComConstDef SEMICOLON  */
#line 79 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstDecl", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1452 "syntax_analyzer.tab.c"
    break;

  case 9: /* ConstDecl: CONST FLOAT ConstDef ComConstDef SEMICOLON  */
#line 83 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstDecl", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1460 "syntax_analyzer.tab.c"
    break;

  case 10: /* ComConstDef: COMMA ConstDef ComConstDef  */
#line 88 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ComConstDef", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1468 "syntax_analyzer.tab.c"
    break;

  case 11: /* ComConstDef: %empty  */
#line 92 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ComConstDef", 0);
}
#line 1476 "syntax_analyzer.tab.c"
    break;

  case 12: /* ConstDef: Ident ASSIGN ConstInitVal  */
#line 99 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstDef", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1484 "syntax_analyzer.tab.c"
    break;

  case 13: /* ConstDef: Ident ConstExplist ASSIGN ConstInitVal  */
#line 103 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstDef",  4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1492 "syntax_analyzer.tab.c"
    break;

  case 14: /* ConstInitVal: ConstExp  */
#line 108 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstInitVal", 1, (yyvsp[0].node));
}
#line 1500 "syntax_analyzer.tab.c"
    break;

  case 15: /* ConstInitVal: LBRACE RBRACE  */
#line 112 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstInitVal", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1508 "syntax_analyzer.tab.c"
    break;

  case 16: /* ConstInitVal: LBRACE ConstInitValList RBRACE  */
#line 116 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstInitVal", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1516 "syntax_analyzer.tab.c"
    break;

  case 17: /* ConstInitValList: ConstInitVal COMMA ConstInitValList  */
#line 122 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstInitValList", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1524 "syntax_analyzer.tab.c"
    break;

  case 18: /* ConstInitValList: ConstInitVal  */
#line 126 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstInitValList", 1, (yyvsp[0].node));
}
#line 1532 "syntax_analyzer.tab.c"
    break;

  case 19: /* VarDecl: INT VarDef ComVarDef SEMICOLON  */
#line 131 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("VarDecl", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1540 "syntax_analyzer.tab.c"
    break;

  case 20: /* VarDecl: FLOAT VarDef ComVarDef SEMICOLON  */
#line 135 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("VarDecl", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1548 "syntax_analyzer.tab.c"
    break;

  case 21: /* ComVarDef: COMMA VarDef ComVarDef  */
#line 141 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ComVarDef", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1556 "syntax_analyzer.tab.c"
    break;

  case 22: /* ComVarDef: %empty  */
#line 145 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ComVarDef", 0);
}
#line 1564 "syntax_analyzer.tab.c"
    break;

  case 23: /* VarDef: Ident ConstExplist  */
#line 150 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("VarDef", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1572 "syntax_analyzer.tab.c"
    break;

  case 24: /* VarDef: Ident ConstExplist ASSIGN InitVal  */
#line 154 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("VarDef", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1580 "syntax_analyzer.tab.c"
    break;

  case 25: /* ConstExplist: LBRACKET ConstExp RBRACKET ConstExplist  */
#line 159 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstExplist", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1588 "syntax_analyzer.tab.c"
    break;

  case 26: /* ConstExplist: %empty  */
#line 163 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstExplist", 0);
}
#line 1596 "syntax_analyzer.tab.c"
    break;

  case 27: /* InitVal: Exp  */
#line 168 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("InitVal", 1, (yyvsp[0].node));
}
#line 1604 "syntax_analyzer.tab.c"
    break;

  case 28: /* InitVal: LBRACE InitVal InitValList RBRACE  */
#line 172 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("InitVal",  4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1612 "syntax_analyzer.tab.c"
    break;

  case 29: /* InitVal: LBRACE InitVal RBRACE  */
#line 176 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("InitVal",  3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1620 "syntax_analyzer.tab.c"
    break;

  case 30: /* InitVal: LBRACE RBRACE  */
#line 180 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("InitVal", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1628 "syntax_analyzer.tab.c"
    break;

  case 31: /* InitValList: InitValList COMMA InitVal  */
#line 186 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("InitValList", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1636 "syntax_analyzer.tab.c"
    break;

  case 32: /* InitValList: COMMA InitVal  */
#line 190 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("InitValList", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1644 "syntax_analyzer.tab.c"
    break;

  case 33: /* FuncDef: VOID Ident LPAREN RPAREN Block  */
#line 195 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncDef", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1652 "syntax_analyzer.tab.c"
    break;

  case 34: /* FuncDef: INT Ident LPAREN RPAREN Block  */
#line 199 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncDef", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1660 "syntax_analyzer.tab.c"
    break;

  case 35: /* FuncDef: FLOAT Ident LPAREN RPAREN Block  */
#line 203 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncDef", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1668 "syntax_analyzer.tab.c"
    break;

  case 36: /* FuncDef: INT Ident LPAREN FuncFParams RPAREN Block  */
#line 207 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncDef", 6, (yyvsp[-5].node), (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1676 "syntax_analyzer.tab.c"
    break;

  case 37: /* FuncDef: FLOAT Ident LPAREN FuncFParams RPAREN Block  */
#line 211 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncDef", 6, (yyvsp[-5].node), (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1684 "syntax_analyzer.tab.c"
    break;

  case 38: /* FuncDef: VOID Ident LPAREN FuncFParams RPAREN Block  */
#line 215 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncDef", 6, (yyvsp[-5].node), (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1692 "syntax_analyzer.tab.c"
    break;

  case 39: /* FuncFParams: FuncFParam FuncFParamlist  */
#line 221 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncFParams", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1700 "syntax_analyzer.tab.c"
    break;

  case 40: /* FuncFParamlist: COMMA FuncFParam FuncFParamlist  */
#line 226 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncFParamlist", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1708 "syntax_analyzer.tab.c"
    break;

  case 41: /* FuncFParamlist: %empty  */
#line 230 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncFParamlist", 0);
}
#line 1716 "syntax_analyzer.tab.c"
    break;

  case 42: /* FuncFParam: INT Ident  */
#line 235 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncFParam", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1724 "syntax_analyzer.tab.c"
    break;

  case 43: /* FuncFParam: FLOAT Ident  */
#line 239 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncFParam", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1732 "syntax_analyzer.tab.c"
    break;

  case 44: /* FuncFParam: INT Ident LBRACKET RBRACKET Explist  */
#line 243 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncFParam", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1740 "syntax_analyzer.tab.c"
    break;

  case 45: /* FuncFParam: FLOAT Ident LBRACKET RBRACKET Explist  */
#line 247 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncFParam", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1748 "syntax_analyzer.tab.c"
    break;

  case 46: /* Explist: LBRACKET Exp RBRACKET Explist  */
#line 252 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Explist", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1756 "syntax_analyzer.tab.c"
    break;

  case 47: /* Explist: %empty  */
#line 256 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Explist", 0);
}
#line 1764 "syntax_analyzer.tab.c"
    break;

  case 48: /* Block: LBRACE BlockItemList RBRACE  */
#line 261 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Block", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1772 "syntax_analyzer.tab.c"
    break;

  case 49: /* BlockItemList: BlockItem BlockItemList  */
#line 266 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("BlockItemList", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1780 "syntax_analyzer.tab.c"
    break;

  case 50: /* BlockItemList: %empty  */
#line 270 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("BlockItemList", 0);
}
#line 1788 "syntax_analyzer.tab.c"
    break;

  case 51: /* BlockItem: Decl  */
#line 275 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("BlockItem", 1, (yyvsp[0].node));
}
#line 1796 "syntax_analyzer.tab.c"
    break;

  case 52: /* BlockItem: Stmt  */
#line 279 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("BlockItem", 1, (yyvsp[0].node));
}
#line 1804 "syntax_analyzer.tab.c"
    break;

  case 53: /* Stmt: LVal ASSIGN Exp SEMICOLON  */
#line 284 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Stmt", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1812 "syntax_analyzer.tab.c"
    break;

  case 54: /* Stmt: Exp SEMICOLON  */
#line 288 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Stmt", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1820 "syntax_analyzer.tab.c"
    break;

  case 55: /* Stmt: SEMICOLON  */
#line 292 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Stmt", 1, (yyvsp[0].node));
}
#line 1828 "syntax_analyzer.tab.c"
    break;

  case 56: /* Stmt: Block  */
#line 296 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Stmt", 1, (yyvsp[0].node));
}
#line 1836 "syntax_analyzer.tab.c"
    break;

  case 57: /* Stmt: IF LPAREN Cond RPAREN Stmt  */
#line 300 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Stmt", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1844 "syntax_analyzer.tab.c"
    break;

  case 58: /* Stmt: IF LPAREN Cond RPAREN Stmt ELSE Stmt  */
#line 304 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Stmt", 7, (yyvsp[-6].node), (yyvsp[-5].node), (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1852 "syntax_analyzer.tab.c"
    break;

  case 59: /* Stmt: WHILE LPAREN Cond RPAREN Stmt  */
#line 308 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Stmt", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1860 "syntax_analyzer.tab.c"
    break;

  case 60: /* Stmt: BREAK SEMICOLON  */
#line 312 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Stmt", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1868 "syntax_analyzer.tab.c"
    break;

  case 61: /* Stmt: CONTINUE SEMICOLON  */
#line 316 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Stmt", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1876 "syntax_analyzer.tab.c"
    break;

  case 62: /* Stmt: RETURN SEMICOLON  */
#line 320 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Stmt", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1884 "syntax_analyzer.tab.c"
    break;

  case 63: /* Stmt: RETURN Exp SEMICOLON  */
#line 324 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Stmt", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1892 "syntax_analyzer.tab.c"
    break;

  case 64: /* Exp: AddExp  */
#line 329 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Exp", 1, (yyvsp[0].node));
}
#line 1900 "syntax_analyzer.tab.c"
    break;

  case 65: /* Cond: LOrExp  */
#line 334 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Cond", 1, (yyvsp[0].node));
}
#line 1908 "syntax_analyzer.tab.c"
    break;

  case 66: /* LVal: Ident Explist  */
#line 339 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("LVal", 2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1916 "syntax_analyzer.tab.c"
    break;

  case 67: /* PrimaryExp: LPAREN Exp RPAREN  */
#line 344 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("PrimaryExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1924 "syntax_analyzer.tab.c"
    break;

  case 68: /* PrimaryExp: LVal  */
#line 348 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("PrimaryExp", 1, (yyvsp[0].node));
}
#line 1932 "syntax_analyzer.tab.c"
    break;

  case 69: /* PrimaryExp: Number  */
#line 352 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("PrimaryExp", 1, (yyvsp[0].node));
}
#line 1940 "syntax_analyzer.tab.c"
    break;

  case 70: /* Number: IntConst  */
#line 357 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Number", 1, (yyvsp[0].node));
}
#line 1948 "syntax_analyzer.tab.c"
    break;

  case 71: /* Number: FloatConst  */
#line 361 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("Number", 1, (yyvsp[0].node));
}
#line 1956 "syntax_analyzer.tab.c"
    break;

  case 72: /* UnaryExp: PrimaryExp  */
#line 366 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("UnaryExp",1, (yyvsp[0].node));
}
#line 1964 "syntax_analyzer.tab.c"
    break;

  case 73: /* UnaryExp: Ident LPAREN FuncRParams RPAREN  */
#line 370 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("UnaryExp",4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1972 "syntax_analyzer.tab.c"
    break;

  case 74: /* UnaryExp: Ident LPAREN RPAREN  */
#line 374 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("UnaryExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1980 "syntax_analyzer.tab.c"
    break;

  case 75: /* UnaryExp: UnaryOp UnaryExp  */
#line 378 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("UnaryExp",2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 1988 "syntax_analyzer.tab.c"
    break;

  case 76: /* UnaryOp: ADD  */
#line 383 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("UnaryOp",1, (yyvsp[0].node));
}
#line 1996 "syntax_analyzer.tab.c"
    break;

  case 77: /* UnaryOp: SUB  */
#line 387 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("UnaryOp",1, (yyvsp[0].node));
}
#line 2004 "syntax_analyzer.tab.c"
    break;

  case 78: /* UnaryOp: EXC  */
#line 391 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("UnaryOp",1, (yyvsp[0].node));
}
#line 2012 "syntax_analyzer.tab.c"
    break;

  case 79: /* ComExp: COMMA Exp ComExp  */
#line 396 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ComExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2020 "syntax_analyzer.tab.c"
    break;

  case 80: /* ComExp: %empty  */
#line 400 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ComExp",0);
}
#line 2028 "syntax_analyzer.tab.c"
    break;

  case 81: /* FuncRParams: Exp ComExp  */
#line 405 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("FuncRParams",2, (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2036 "syntax_analyzer.tab.c"
    break;

  case 82: /* MulExp: UnaryExp  */
#line 410 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("MulExp",1, (yyvsp[0].node));
}
#line 2044 "syntax_analyzer.tab.c"
    break;

  case 83: /* MulExp: MulExp MUL UnaryExp  */
#line 414 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("MulExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2052 "syntax_analyzer.tab.c"
    break;

  case 84: /* MulExp: MulExp DIV UnaryExp  */
#line 418 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("MulExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2060 "syntax_analyzer.tab.c"
    break;

  case 85: /* MulExp: MulExp PER UnaryExp  */
#line 422 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("MulExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2068 "syntax_analyzer.tab.c"
    break;

  case 86: /* AddExp: MulExp  */
#line 427 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("AddExp", 1, (yyvsp[0].node));
}
#line 2076 "syntax_analyzer.tab.c"
    break;

  case 87: /* AddExp: AddExp ADD MulExp  */
#line 431 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("AddExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2084 "syntax_analyzer.tab.c"
    break;

  case 88: /* AddExp: AddExp SUB MulExp  */
#line 435 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("AddExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2092 "syntax_analyzer.tab.c"
    break;

  case 89: /* RelExp: AddExp  */
#line 440 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("RelExp",1, (yyvsp[0].node));
}
#line 2100 "syntax_analyzer.tab.c"
    break;

  case 90: /* RelExp: RelExp LT AddExp  */
#line 444 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("RelExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2108 "syntax_analyzer.tab.c"
    break;

  case 91: /* RelExp: RelExp GT AddExp  */
#line 448 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("RelExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2116 "syntax_analyzer.tab.c"
    break;

  case 92: /* RelExp: RelExp LTE AddExp  */
#line 452 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("RelExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2124 "syntax_analyzer.tab.c"
    break;

  case 93: /* RelExp: RelExp GTE AddExp  */
#line 456 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("RelExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2132 "syntax_analyzer.tab.c"
    break;

  case 94: /* EqExp: RelExp  */
#line 461 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("EqExp",1, (yyvsp[0].node));
}
#line 2140 "syntax_analyzer.tab.c"
    break;

  case 95: /* EqExp: EqExp EQ RelExp  */
#line 465 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("EqExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));   
}
#line 2148 "syntax_analyzer.tab.c"
    break;

  case 96: /* EqExp: EqExp NEQ RelExp  */
#line 469 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("EqExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));
}
#line 2156 "syntax_analyzer.tab.c"
    break;

  case 97: /* LAndExp: EqExp  */
#line 474 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("LAndExp",1, (yyvsp[0].node));
}
#line 2164 "syntax_analyzer.tab.c"
    break;

  case 98: /* LAndExp: LAndExp AND EqExp  */
#line 478 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("LAndExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node)); 
}
#line 2172 "syntax_analyzer.tab.c"
    break;

  case 99: /* LOrExp: LAndExp  */
#line 483 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("LOrExp",1, (yyvsp[0].node));
}
#line 2180 "syntax_analyzer.tab.c"
    break;

  case 100: /* LOrExp: LOrExp OR LAndExp  */
#line 487 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("LOrExp",3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node)); 
}
#line 2188 "syntax_analyzer.tab.c"
    break;

  case 101: /* ConstExp: AddExp  */
#line 492 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"
{
    (yyval.node) = node("ConstExp",1, (yyvsp[0].node));
}
#line 2196 "syntax_analyzer.tab.c"
    break;


#line 2200 "syntax_analyzer.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 495 "/home/hq/Test/SysY/src/parser/syntax_analyzer.y"


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
