; ModuleID = 'cminus'
source_filename = "/home/hq/Test/SysY/tests/func/functional/70_dijkstra.sy"

@INF = constant i32  65535
@e = global [256 x i32 ] zeroinitializer
@book = global [16 x i32 ] zeroinitializer
@dis = global [16 x i32 ] zeroinitializer
@n = global i32  zeroinitializer
@m = global i32  zeroinitializer
@v1 = global i32  zeroinitializer
@v2 = global i32  zeroinitializer
@w = global i32  zeroinitializer
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

define void @Dijkstra() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  store i32  1, i32 * %op0
  br label %label2
label2:                                                ; preds = %label_entry, %label8
  %op3 = load i32 , i32 * %op0
  %op4 = load i32 , i32 * @n
  %op5 = icmp sle i32  %op3, %op4
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label20
label8:                                                ; preds = %label2
  %op9 = load i32 , i32 * %op0
  %op10 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  1
  %op11 = load i32 , i32 * %op10
  %op12 = load i32 , i32 * %op0
  %op13 = load i32 , i32 * %op0
  %op14 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op12
  store i32  %op11, i32 * %op14
  %op15 = load i32 , i32 * %op0
  %op16 = load i32 , i32 * %op0
  %op17 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op15
  store i32  0, i32 * %op17
  %op18 = load i32 , i32 * %op0
  %op19 = add i32  %op18, 1
  store i32  %op19, i32 * %op0
  br label %label2
label20:                                                ; preds = %label2
  %op21 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  1
  store i32  1, i32 * %op21
  store i32  1, i32 * %op0
  br label %label22
label22:                                                ; preds = %label20, %label88
  %op23 = load i32 , i32 * %op0
  %op24 = load i32 , i32 * @n
  %op25 = sub i32  %op24, 1
  %op26 = icmp sle i32  %op23, %op25
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label29, label %label34
label29:                                                ; preds = %label22
  %op30 = load i32 , i32 * @INF
  %op31 = alloca i32 
  store i32  %op30, i32 * %op31
  %op32 = alloca i32 
  store i32  0, i32 * %op32
  %op33 = alloca i32 
  store i32  1, i32 * %op33
  br label %label35
label34:                                                ; preds = %label22
  ret void
label35:                                                ; preds = %label29, %label61
  %op36 = load i32 , i32 * %op33
  %op37 = load i32 , i32 * @n
  %op38 = icmp sle i32  %op36, %op37
  %op39 = zext i1  %op38 to i32 
  %op40 = icmp ne i32  %op39, 0
  br i1  %op40, label %label41, label %label50
label41:                                                ; preds = %label35
  %op42 = load i32 , i32 * %op31
  %op43 = load i32 , i32 * %op33
  %op44 = load i32 , i32 * %op33
  %op45 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op43
  %op46 = load i32 , i32 * %op45
  %op47 = icmp sgt i32  %op42, %op46
  %op48 = zext i1  %op47 to i32 
  %op49 = icmp ne i32  %op48, 0
  br i1  %op49, label %label64, label %label61
label50:                                                ; preds = %label35
  %op51 = load i32 , i32 * %op32
  %op52 = load i32 , i32 * %op32
  %op53 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op51
  store i32  1, i32 * %op53
  %op54 = alloca i32 
  store i32  1, i32 * %op54
  br label %label72
label55:                                                ; preds = %label64
  %op56 = load i32 , i32 * %op33
  %op57 = load i32 , i32 * %op33
  %op58 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op56
  %op59 = load i32 , i32 * %op58
  store i32  %op59, i32 * %op31
  %op60 = load i32 , i32 * %op33
  store i32  %op60, i32 * %op32
  br label %label61
label61:                                                ; preds = %label41, %label64, %label55
  %op62 = load i32 , i32 * %op33
  %op63 = add i32  %op62, 1
  store i32  %op63, i32 * %op33
  br label %label35
label64:                                                ; preds = %label41
  %op65 = load i32 , i32 * %op33
  %op66 = load i32 , i32 * %op33
  %op67 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op65
  %op68 = load i32 , i32 * %op67
  %op69 = icmp eq i32  %op68, 0
  %op70 = zext i1  %op69 to i32 
  %op71 = icmp ne i32  %op70, 0
  br i1  %op71, label %label55, label %label61
label72:                                                ; preds = %label50, %label109
  %op73 = load i32 , i32 * %op54
  %op74 = load i32 , i32 * @n
  %op75 = icmp sle i32  %op73, %op74
  %op76 = zext i1  %op75 to i32 
  %op77 = icmp ne i32  %op76, 0
  br i1  %op77, label %label78, label %label88
label78:                                                ; preds = %label72
  %op79 = load i32 , i32 * %op32
  %op80 = load i32 , i32 * %op32
  %op81 = load i32 , i32 * %op54
  %op82 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op79
  %op83 = load i32 , i32 * %op82
  %op84 = load i32 , i32 * @INF
  %op85 = icmp slt i32  %op83, %op84
  %op86 = zext i1  %op85 to i32 
  %op87 = icmp ne i32  %op86, 0
  br i1  %op87, label %label91, label %label109
label88:                                                ; preds = %label72
  %op89 = load i32 , i32 * %op0
  %op90 = add i32  %op89, 1
  store i32  %op90, i32 * %op0
  br label %label22
label91:                                                ; preds = %label78
  %op92 = load i32 , i32 * %op54
  %op93 = load i32 , i32 * %op54
  %op94 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op92
  %op95 = load i32 , i32 * %op94
  %op96 = load i32 , i32 * %op32
  %op97 = load i32 , i32 * %op32
  %op98 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op96
  %op99 = load i32 , i32 * %op98
  %op100 = load i32 , i32 * %op32
  %op101 = load i32 , i32 * %op32
  %op102 = load i32 , i32 * %op54
  %op103 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op100
  %op104 = load i32 , i32 * %op103
  %op105 = add i32  %op99, %op104
  %op106 = icmp sgt i32  %op95, %op105
  %op107 = zext i1  %op106 to i32 
  %op108 = icmp ne i32  %op107, 0
  br i1  %op108, label %label112, label %label126
label109:                                                ; preds = %label78, %label126
  %op110 = load i32 , i32 * %op54
  %op111 = add i32  %op110, 1
  store i32  %op111, i32 * %op54
  br label %label72
label112:                                                ; preds = %label91
  %op113 = load i32 , i32 * %op32
  %op114 = load i32 , i32 * %op32
  %op115 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op113
  %op116 = load i32 , i32 * %op115
  %op117 = load i32 , i32 * %op32
  %op118 = load i32 , i32 * %op32
  %op119 = load i32 , i32 * %op54
  %op120 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op117
  %op121 = load i32 , i32 * %op120
  %op122 = add i32  %op116, %op121
  %op123 = load i32 , i32 * %op54
  %op124 = load i32 , i32 * %op54
  %op125 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op123
  store i32  %op122, i32 * %op125
  br label %label126
label126:                                                ; preds = %label91, %label112
  br label %label109
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * @n
  %op2 = call i32  @getint()
  store i32  %op2, i32 * @m
  store i32  1, i32 * %op0
  br label %label3
label3:                                                ; preds = %label_entry, %label24
  %op4 = load i32 , i32 * %op0
  %op5 = load i32 , i32 * @n
  %op6 = icmp sle i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label11
label9:                                                ; preds = %label3
  %op10 = alloca i32 
  store i32  1, i32 * %op10
  br label %label12
label11:                                                ; preds = %label3
  store i32  1, i32 * %op0
  br label %label41
label12:                                                ; preds = %label9, %label38
  %op13 = load i32 , i32 * %op10
  %op14 = load i32 , i32 * @n
  %op15 = icmp sle i32  %op13, %op14
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label18, label %label24
label18:                                                ; preds = %label12
  %op19 = load i32 , i32 * %op0
  %op20 = load i32 , i32 * %op10
  %op21 = icmp eq i32  %op19, %op20
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label27, label %label32
label24:                                                ; preds = %label12
  %op25 = load i32 , i32 * %op0
  %op26 = add i32  %op25, 1
  store i32  %op26, i32 * %op0
  br label %label3
label27:                                                ; preds = %label18
  %op28 = load i32 , i32 * %op0
  %op29 = load i32 , i32 * %op0
  %op30 = load i32 , i32 * %op10
  %op31 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op28
  store i32  0, i32 * %op31
  br label %label38
label32:                                                ; preds = %label18
  %op33 = load i32 , i32 * @INF
  %op34 = load i32 , i32 * %op0
  %op35 = load i32 , i32 * %op0
  %op36 = load i32 , i32 * %op10
  %op37 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op34
  store i32  %op33, i32 * %op37
  br label %label38
label38:                                                ; preds = %label27, %label32
  %op39 = load i32 , i32 * %op10
  %op40 = add i32  %op39, 1
  store i32  %op40, i32 * %op10
  br label %label12
label41:                                                ; preds = %label11, %label47
  %op42 = load i32 , i32 * %op0
  %op43 = load i32 , i32 * @m
  %op44 = icmp sle i32  %op42, %op43
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label47, label %label59
label47:                                                ; preds = %label41
  %op48 = call i32  @getint()
  %op49 = alloca i32 
  store i32  %op48, i32 * %op49
  %op50 = call i32  @getint()
  %op51 = alloca i32 
  store i32  %op50, i32 * %op51
  %op52 = call i32  @getint()
  %op53 = load i32 , i32 * %op49
  %op54 = load i32 , i32 * %op49
  %op55 = load i32 , i32 * %op51
  %op56 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op53
  store i32  %op52, i32 * %op56
  %op57 = load i32 , i32 * %op0
  %op58 = add i32  %op57, 1
  store i32  %op58, i32 * %op0
  br label %label41
label59:                                                ; preds = %label41
  call void @Dijkstra()
  store i32  1, i32 * %op0
  br label %label60
label60:                                                ; preds = %label59, %label66
  %op61 = load i32 , i32 * %op0
  %op62 = load i32 , i32 * @n
  %op63 = icmp sle i32  %op61, %op62
  %op64 = zext i1  %op63 to i32 
  %op65 = icmp ne i32  %op64, 0
  br i1  %op65, label %label66, label %label74
label66:                                                ; preds = %label60
  %op67 = load i32 , i32 * %op0
  %op68 = load i32 , i32 * %op0
  %op69 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op67
  %op70 = load i32 , i32 * %op69
  call void @putint(i32  %op70)
  %op71 = trunc i32  32 to i8 
  call void @putch(i8  %op71)
  %op72 = load i32 , i32 * %op0
  %op73 = add i32  %op72, 1
  store i32  %op73, i32 * %op0
  br label %label60
label74:                                                ; preds = %label60
  %op75 = trunc i32  10 to i8 
  call void @putch(i8  %op75)
  ret i32  0
}
