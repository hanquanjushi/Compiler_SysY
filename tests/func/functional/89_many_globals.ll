; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/89_many_globals.sy"

@a0 = global i32  zeroinitializer
@a1 = global i32  zeroinitializer
@a2 = global i32  zeroinitializer
@a3 = global i32  zeroinitializer
@a4 = global i32  zeroinitializer
@a5 = global i32  zeroinitializer
@a6 = global i32  zeroinitializer
@a7 = global i32  zeroinitializer
@a8 = global i32  zeroinitializer
@a9 = global i32  zeroinitializer
@a10 = global i32  zeroinitializer
@a11 = global i32  zeroinitializer
@a12 = global i32  zeroinitializer
@a13 = global i32  zeroinitializer
@a14 = global i32  zeroinitializer
@a15 = global i32  zeroinitializer
@a16 = global i32  zeroinitializer
@a17 = global i32  zeroinitializer
@a18 = global i32  zeroinitializer
@a19 = global i32  zeroinitializer
@a20 = global i32  zeroinitializer
@a21 = global i32  zeroinitializer
@a22 = global i32  zeroinitializer
@a23 = global i32  zeroinitializer
@a24 = global i32  zeroinitializer
@a25 = global i32  zeroinitializer
@a26 = global i32  zeroinitializer
@a27 = global i32  zeroinitializer
@a28 = global i32  zeroinitializer
@a29 = global i32  zeroinitializer
@a30 = global i32  zeroinitializer
@a31 = global i32  zeroinitializer
@a32 = global i32  zeroinitializer
@a33 = global i32  zeroinitializer
@a34 = global i32  zeroinitializer
@a35 = global i32  zeroinitializer
@a36 = global i32  zeroinitializer
@a37 = global i32  zeroinitializer
@a38 = global i32  zeroinitializer
@a39 = global i32  zeroinitializer
declare i32  @getint()

declare i8  @getch()

declare i32  @getarray(i32 *)

declare float @getfloat()

declare float @getfarray(float*)

declare void @putint(i32 )

declare void @putfloat(float)

declare void @putch(i8 )

declare void @putf(i8 )

declare void @putarray(i32 )

declare void @putfarray(float)

define i32  @testParam8(i32  %arg0, i32  %arg1, i32  %arg2, i32  %arg3, i32  %arg4, i32  %arg5, i32  %arg6, i32  %arg7) {
label_entry:
  %op8 = alloca i32 
  store i32  %arg0, i32 * %op8
  %op9 = alloca i32 
  store i32  %arg1, i32 * %op9
  %op10 = alloca i32 
  store i32  %arg2, i32 * %op10
  %op11 = alloca i32 
  store i32  %arg3, i32 * %op11
  %op12 = alloca i32 
  store i32  %arg4, i32 * %op12
  %op13 = alloca i32 
  store i32  %arg5, i32 * %op13
  %op14 = alloca i32 
  store i32  %arg6, i32 * %op14
  %op15 = alloca i32 
  store i32  %arg7, i32 * %op15
  %op16 = load i32 , i32 * %op8
  %op17 = load i32 , i32 * %op9
  %op18 = add i32  %op16, %op17
  %op19 = load i32 , i32 * %op10
  %op20 = add i32  %op18, %op19
  %op21 = load i32 , i32 * %op11
  %op22 = add i32  %op20, %op21
  %op23 = load i32 , i32 * %op12
  %op24 = add i32  %op22, %op23
  %op25 = load i32 , i32 * %op13
  %op26 = add i32  %op24, %op25
  %op27 = load i32 , i32 * %op14
  %op28 = add i32  %op26, %op27
  %op29 = load i32 , i32 * %op15
  %op30 = add i32  %op28, %op29
  ret i32  %op30
}
define i32  @testParam16(i32  %arg0, i32  %arg1, i32  %arg2, i32  %arg3, i32  %arg4, i32  %arg5, i32  %arg6, i32  %arg7, i32  %arg8, i32  %arg9, i32  %arg10, i32  %arg11, i32  %arg12, i32  %arg13, i32  %arg14, i32  %arg15) {
label_entry:
  %op16 = alloca i32 
  store i32  %arg0, i32 * %op16
  %op17 = alloca i32 
  store i32  %arg1, i32 * %op17
  %op18 = alloca i32 
  store i32  %arg2, i32 * %op18
  %op19 = alloca i32 
  store i32  %arg3, i32 * %op19
  %op20 = alloca i32 
  store i32  %arg4, i32 * %op20
  %op21 = alloca i32 
  store i32  %arg5, i32 * %op21
  %op22 = alloca i32 
  store i32  %arg6, i32 * %op22
  %op23 = alloca i32 
  store i32  %arg7, i32 * %op23
  %op24 = alloca i32 
  store i32  %arg8, i32 * %op24
  %op25 = alloca i32 
  store i32  %arg9, i32 * %op25
  %op26 = alloca i32 
  store i32  %arg10, i32 * %op26
  %op27 = alloca i32 
  store i32  %arg11, i32 * %op27
  %op28 = alloca i32 
  store i32  %arg12, i32 * %op28
  %op29 = alloca i32 
  store i32  %arg13, i32 * %op29
  %op30 = alloca i32 
  store i32  %arg14, i32 * %op30
  %op31 = alloca i32 
  store i32  %arg15, i32 * %op31
  %op32 = load i32 , i32 * %op16
  %op33 = load i32 , i32 * %op17
  %op34 = add i32  %op32, %op33
  %op35 = load i32 , i32 * %op18
  %op36 = add i32  %op34, %op35
  %op37 = load i32 , i32 * %op19
  %op38 = sub i32  %op36, %op37
  %op39 = load i32 , i32 * %op20
  %op40 = sub i32  %op38, %op39
  %op41 = load i32 , i32 * %op21
  %op42 = sub i32  %op40, %op41
  %op43 = load i32 , i32 * %op22
  %op44 = sub i32  %op42, %op43
  %op45 = load i32 , i32 * %op23
  %op46 = sub i32  %op44, %op45
  %op47 = load i32 , i32 * %op24
  %op48 = add i32  %op46, %op47
  %op49 = load i32 , i32 * %op25
  %op50 = add i32  %op48, %op49
  %op51 = load i32 , i32 * %op26
  %op52 = add i32  %op50, %op51
  %op53 = load i32 , i32 * %op27
  %op54 = add i32  %op52, %op53
  %op55 = load i32 , i32 * %op28
  %op56 = add i32  %op54, %op55
  %op57 = load i32 , i32 * %op29
  %op58 = add i32  %op56, %op57
  %op59 = load i32 , i32 * %op30
  %op60 = add i32  %op58, %op59
  %op61 = load i32 , i32 * %op31
  %op62 = add i32  %op60, %op61
  ret i32  %op62
}
define i32  @testParam32(i32  %arg0, i32  %arg1, i32  %arg2, i32  %arg3, i32  %arg4, i32  %arg5, i32  %arg6, i32  %arg7, i32  %arg8, i32  %arg9, i32  %arg10, i32  %arg11, i32  %arg12, i32  %arg13, i32  %arg14, i32  %arg15, i32  %arg16, i32  %arg17, i32  %arg18, i32  %arg19, i32  %arg20, i32  %arg21, i32  %arg22, i32  %arg23, i32  %arg24, i32  %arg25, i32  %arg26, i32  %arg27, i32  %arg28, i32  %arg29, i32  %arg30, i32  %arg31) {
label_entry:
  %op32 = alloca i32 
  store i32  %arg0, i32 * %op32
  %op33 = alloca i32 
  store i32  %arg1, i32 * %op33
  %op34 = alloca i32 
  store i32  %arg2, i32 * %op34
  %op35 = alloca i32 
  store i32  %arg3, i32 * %op35
  %op36 = alloca i32 
  store i32  %arg4, i32 * %op36
  %op37 = alloca i32 
  store i32  %arg5, i32 * %op37
  %op38 = alloca i32 
  store i32  %arg6, i32 * %op38
  %op39 = alloca i32 
  store i32  %arg7, i32 * %op39
  %op40 = alloca i32 
  store i32  %arg8, i32 * %op40
  %op41 = alloca i32 
  store i32  %arg9, i32 * %op41
  %op42 = alloca i32 
  store i32  %arg10, i32 * %op42
  %op43 = alloca i32 
  store i32  %arg11, i32 * %op43
  %op44 = alloca i32 
  store i32  %arg12, i32 * %op44
  %op45 = alloca i32 
  store i32  %arg13, i32 * %op45
  %op46 = alloca i32 
  store i32  %arg14, i32 * %op46
  %op47 = alloca i32 
  store i32  %arg15, i32 * %op47
  %op48 = alloca i32 
  store i32  %arg16, i32 * %op48
  %op49 = alloca i32 
  store i32  %arg17, i32 * %op49
  %op50 = alloca i32 
  store i32  %arg18, i32 * %op50
  %op51 = alloca i32 
  store i32  %arg19, i32 * %op51
  %op52 = alloca i32 
  store i32  %arg20, i32 * %op52
  %op53 = alloca i32 
  store i32  %arg21, i32 * %op53
  %op54 = alloca i32 
  store i32  %arg22, i32 * %op54
  %op55 = alloca i32 
  store i32  %arg23, i32 * %op55
  %op56 = alloca i32 
  store i32  %arg24, i32 * %op56
  %op57 = alloca i32 
  store i32  %arg25, i32 * %op57
  %op58 = alloca i32 
  store i32  %arg26, i32 * %op58
  %op59 = alloca i32 
  store i32  %arg27, i32 * %op59
  %op60 = alloca i32 
  store i32  %arg28, i32 * %op60
  %op61 = alloca i32 
  store i32  %arg29, i32 * %op61
  %op62 = alloca i32 
  store i32  %arg30, i32 * %op62
  %op63 = alloca i32 
  store i32  %arg31, i32 * %op63
  %op64 = load i32 , i32 * %op32
  %op65 = load i32 , i32 * %op33
  %op66 = add i32  %op64, %op65
  %op67 = load i32 , i32 * %op34
  %op68 = add i32  %op66, %op67
  %op69 = load i32 , i32 * %op35
  %op70 = add i32  %op68, %op69
  %op71 = load i32 , i32 * %op36
  %op72 = add i32  %op70, %op71
  %op73 = load i32 , i32 * %op37
  %op74 = add i32  %op72, %op73
  %op75 = load i32 , i32 * %op38
  %op76 = add i32  %op74, %op75
  %op77 = load i32 , i32 * %op39
  %op78 = add i32  %op76, %op77
  %op79 = load i32 , i32 * %op40
  %op80 = add i32  %op78, %op79
  %op81 = load i32 , i32 * %op41
  %op82 = add i32  %op80, %op81
  %op83 = load i32 , i32 * %op42
  %op84 = add i32  %op82, %op83
  %op85 = load i32 , i32 * %op43
  %op86 = add i32  %op84, %op85
  %op87 = load i32 , i32 * %op44
  %op88 = add i32  %op86, %op87
  %op89 = load i32 , i32 * %op45
  %op90 = add i32  %op88, %op89
  %op91 = load i32 , i32 * %op46
  %op92 = add i32  %op90, %op91
  %op93 = load i32 , i32 * %op47
  %op94 = add i32  %op92, %op93
  %op95 = load i32 , i32 * %op48
  %op96 = add i32  %op94, %op95
  %op97 = load i32 , i32 * %op49
  %op98 = add i32  %op96, %op97
  %op99 = load i32 , i32 * %op50
  %op100 = sub i32  %op98, %op99
  %op101 = load i32 , i32 * %op51
  %op102 = sub i32  %op100, %op101
  %op103 = load i32 , i32 * %op52
  %op104 = sub i32  %op102, %op103
  %op105 = load i32 , i32 * %op53
  %op106 = sub i32  %op104, %op105
  %op107 = load i32 , i32 * %op54
  %op108 = sub i32  %op106, %op107
  %op109 = load i32 , i32 * %op55
  %op110 = add i32  %op108, %op109
  %op111 = load i32 , i32 * %op56
  %op112 = add i32  %op110, %op111
  %op113 = load i32 , i32 * %op57
  %op114 = add i32  %op112, %op113
  %op115 = load i32 , i32 * %op58
  %op116 = add i32  %op114, %op115
  %op117 = load i32 , i32 * %op59
  %op118 = add i32  %op116, %op117
  %op119 = load i32 , i32 * %op60
  %op120 = add i32  %op118, %op119
  %op121 = load i32 , i32 * %op61
  %op122 = add i32  %op120, %op121
  %op123 = load i32 , i32 * %op62
  %op124 = add i32  %op122, %op123
  %op125 = load i32 , i32 * %op63
  %op126 = add i32  %op124, %op125
  ret i32  %op126
}
define i32  @main() {
label_entry:
  store i32  0, i32 * @a0
  store i32  1, i32 * @a1
  store i32  2, i32 * @a2
  store i32  3, i32 * @a3
  store i32  4, i32 * @a4
  store i32  5, i32 * @a5
  store i32  6, i32 * @a6
  store i32  7, i32 * @a7
  store i32  8, i32 * @a8
  store i32  9, i32 * @a9
  store i32  0, i32 * @a10
  store i32  1, i32 * @a11
  store i32  2, i32 * @a12
  store i32  3, i32 * @a13
  store i32  4, i32 * @a14
  store i32  5, i32 * @a15
  store i32  6, i32 * @a16
  store i32  7, i32 * @a17
  store i32  8, i32 * @a18
  store i32  9, i32 * @a19
  store i32  0, i32 * @a20
  store i32  1, i32 * @a21
  store i32  2, i32 * @a22
  store i32  3, i32 * @a23
  store i32  4, i32 * @a24
  store i32  5, i32 * @a25
  store i32  6, i32 * @a26
  store i32  7, i32 * @a27
  store i32  8, i32 * @a28
  store i32  9, i32 * @a29
  store i32  0, i32 * @a30
  store i32  1, i32 * @a31
  store i32  4, i32 * @a32
  store i32  5, i32 * @a33
  store i32  6, i32 * @a34
  store i32  7, i32 * @a35
  store i32  8, i32 * @a36
  store i32  9, i32 * @a37
  store i32  0, i32 * @a38
  store i32  1, i32 * @a39
  %op0 = load i32 , i32 * @a0
  %op1 = load i32 , i32 * @a1
  %op2 = load i32 , i32 * @a2
  %op3 = load i32 , i32 * @a3
  %op4 = load i32 , i32 * @a4
  %op5 = load i32 , i32 * @a5
  %op6 = load i32 , i32 * @a6
  %op7 = load i32 , i32 * @a7
  %op8 = call i32  @testParam8(i32  %op0, i32  %op1, i32  %op2, i32  %op3, i32  %op4, i32  %op5, i32  %op6, i32  %op7)
  store i32  %op8, i32 * @a0
  %op9 = load i32 , i32 * @a0
  call void @putint(i32  %op9)
  %op10 = load i32 , i32 * @a32
  %op11 = load i32 , i32 * @a33
  %op12 = load i32 , i32 * @a34
  %op13 = load i32 , i32 * @a35
  %op14 = load i32 , i32 * @a36
  %op15 = load i32 , i32 * @a37
  %op16 = load i32 , i32 * @a38
  %op17 = load i32 , i32 * @a39
  %op18 = load i32 , i32 * @a8
  %op19 = load i32 , i32 * @a9
  %op20 = load i32 , i32 * @a10
  %op21 = load i32 , i32 * @a11
  %op22 = load i32 , i32 * @a12
  %op23 = load i32 , i32 * @a13
  %op24 = load i32 , i32 * @a14
  %op25 = load i32 , i32 * @a15
  %op26 = call i32  @testParam16(i32  %op10, i32  %op11, i32  %op12, i32  %op13, i32  %op14, i32  %op15, i32  %op16, i32  %op17, i32  %op18, i32  %op19, i32  %op20, i32  %op21, i32  %op22, i32  %op23, i32  %op24, i32  %op25)
  store i32  %op26, i32 * @a0
  %op27 = load i32 , i32 * @a0
  call void @putint(i32  %op27)
  %op28 = load i32 , i32 * @a0
  %op29 = load i32 , i32 * @a1
  %op30 = load i32 , i32 * @a2
  %op31 = load i32 , i32 * @a3
  %op32 = load i32 , i32 * @a4
  %op33 = load i32 , i32 * @a5
  %op34 = load i32 , i32 * @a6
  %op35 = load i32 , i32 * @a7
  %op36 = load i32 , i32 * @a8
  %op37 = load i32 , i32 * @a9
  %op38 = load i32 , i32 * @a10
  %op39 = load i32 , i32 * @a11
  %op40 = load i32 , i32 * @a12
  %op41 = load i32 , i32 * @a13
  %op42 = load i32 , i32 * @a14
  %op43 = load i32 , i32 * @a15
  %op44 = load i32 , i32 * @a16
  %op45 = load i32 , i32 * @a17
  %op46 = load i32 , i32 * @a18
  %op47 = load i32 , i32 * @a19
  %op48 = load i32 , i32 * @a20
  %op49 = load i32 , i32 * @a21
  %op50 = load i32 , i32 * @a22
  %op51 = load i32 , i32 * @a23
  %op52 = load i32 , i32 * @a24
  %op53 = load i32 , i32 * @a25
  %op54 = load i32 , i32 * @a26
  %op55 = load i32 , i32 * @a27
  %op56 = load i32 , i32 * @a28
  %op57 = load i32 , i32 * @a29
  %op58 = load i32 , i32 * @a30
  %op59 = load i32 , i32 * @a31
  %op60 = call i32  @testParam32(i32  %op28, i32  %op29, i32  %op30, i32  %op31, i32  %op32, i32  %op33, i32  %op34, i32  %op35, i32  %op36, i32  %op37, i32  %op38, i32  %op39, i32  %op40, i32  %op41, i32  %op42, i32  %op43, i32  %op44, i32  %op45, i32  %op46, i32  %op47, i32  %op48, i32  %op49, i32  %op50, i32  %op51, i32  %op52, i32  %op53, i32  %op54, i32  %op55, i32  %op56, i32  %op57, i32  %op58, i32  %op59)
  store i32  %op60, i32 * @a0
  %op61 = load i32 , i32 * @a0
  call void @putint(i32  %op61)
  ret i32  0
}
