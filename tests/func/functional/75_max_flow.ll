; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/75_max_flow.sy"

@INF = constant i32  1879048192
@size = global [10 x i32 ] zeroinitializer
@to = global [100 x i32 ] zeroinitializer
@cap = global [100 x i32 ] zeroinitializer
@rev = global [100 x i32 ] zeroinitializer
@used = global [10 x i32 ] zeroinitializer
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

define void @my_memset(i32 * %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = alloca i32 
  store i32  0, i32 * %op6
  br label %label7
label7:                                                ; preds = %label_entry, %label13
  %op8 = load i32 , i32 * %op6
  %op9 = load i32 , i32 * %op5
  %op10 = icmp slt i32  %op8, %op9
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label21
label13:                                                ; preds = %label7
  %op14 = load i32 , i32 * %op4
  %op15 = load i32 , i32 * %op6
  %op16 = load i32 , i32 * %op6
  %op17 = load i32 *, i32 ** %op3
  %op18 = getelementptr i32 , i32 * %op17, i32  %op15
  store i32  %op14, i32 * %op18
  %op19 = load i32 , i32 * %op6
  %op20 = add i32  %op19, 1
  store i32  %op20, i32 * %op6
  br label %label7
label21:                                                ; preds = %label7
  ret void
}
define void @add_node(i32  %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 
  store i32  %arg0, i32 * %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * %op3
  %op8 = load i32 , i32 * %op3
  %op9 = load i32 , i32 * %op3
  %op10 = load i32 , i32 * %op3
  %op11 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op9
  %op12 = load i32 , i32 * %op11
  %op13 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op7
  store i32  %op6, i32 * %op13
  %op14 = load i32 , i32 * %op5
  %op15 = load i32 , i32 * %op3
  %op16 = load i32 , i32 * %op3
  %op17 = load i32 , i32 * %op3
  %op18 = load i32 , i32 * %op3
  %op19 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op17
  %op20 = load i32 , i32 * %op19
  %op21 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op15
  store i32  %op14, i32 * %op21
  %op22 = load i32 , i32 * %op4
  %op23 = load i32 , i32 * %op4
  %op24 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op22
  %op25 = load i32 , i32 * %op24
  %op26 = load i32 , i32 * %op3
  %op27 = load i32 , i32 * %op3
  %op28 = load i32 , i32 * %op3
  %op29 = load i32 , i32 * %op3
  %op30 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op28
  %op31 = load i32 , i32 * %op30
  %op32 = getelementptr [100 x i32 ], [100 x i32 ]* @rev, i32  0, i32  %op26
  store i32  %op25, i32 * %op32
  %op33 = load i32 , i32 * %op3
  %op34 = load i32 , i32 * %op4
  %op35 = load i32 , i32 * %op4
  %op36 = load i32 , i32 * %op4
  %op37 = load i32 , i32 * %op4
  %op38 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op36
  %op39 = load i32 , i32 * %op38
  %op40 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op34
  store i32  %op33, i32 * %op40
  %op41 = load i32 , i32 * %op4
  %op42 = load i32 , i32 * %op4
  %op43 = load i32 , i32 * %op4
  %op44 = load i32 , i32 * %op4
  %op45 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op43
  %op46 = load i32 , i32 * %op45
  %op47 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op41
  store i32  0, i32 * %op47
  %op48 = load i32 , i32 * %op3
  %op49 = load i32 , i32 * %op3
  %op50 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op48
  %op51 = load i32 , i32 * %op50
  %op52 = load i32 , i32 * %op4
  %op53 = load i32 , i32 * %op4
  %op54 = load i32 , i32 * %op4
  %op55 = load i32 , i32 * %op4
  %op56 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op54
  %op57 = load i32 , i32 * %op56
  %op58 = getelementptr [100 x i32 ], [100 x i32 ]* @rev, i32  0, i32  %op52
  store i32  %op51, i32 * %op58
  %op59 = load i32 , i32 * %op3
  %op60 = load i32 , i32 * %op3
  %op61 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op59
  %op62 = load i32 , i32 * %op61
  %op63 = add i32  %op62, 1
  %op64 = load i32 , i32 * %op3
  %op65 = load i32 , i32 * %op3
  %op66 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op64
  store i32  %op63, i32 * %op66
  %op67 = load i32 , i32 * %op4
  %op68 = load i32 , i32 * %op4
  %op69 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op67
  %op70 = load i32 , i32 * %op69
  %op71 = add i32  %op70, 1
  %op72 = load i32 , i32 * %op4
  %op73 = load i32 , i32 * %op4
  %op74 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op72
  store i32  %op71, i32 * %op74
  ret void
}
define i32  @dfs(i32  %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 
  store i32  %arg0, i32 * %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op3
  %op7 = load i32 , i32 * %op4
  %op8 = icmp eq i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label13
label11:                                                ; preds = %label_entry
  %op12 = load i32 , i32 * %op5
  ret i32  %op12
label13:                                                ; preds = %label_entry
  %op14 = load i32 , i32 * %op3
  %op15 = load i32 , i32 * %op3
  %op16 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  %op14
  store i32  1, i32 * %op16
  %op17 = alloca i32 
  store i32  0, i32 * %op17
  br label %label18
label18:                                                ; preds = %label13, %label138
  %op19 = load i32 , i32 * %op17
  %op20 = load i32 , i32 * %op3
  %op21 = load i32 , i32 * %op3
  %op22 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op20
  %op23 = load i32 , i32 * %op22
  %op24 = icmp slt i32  %op19, %op23
  %op25 = zext i1  %op24 to i32 
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label27, label %label41
label27:                                                ; preds = %label18
  %op28 = load i32 , i32 * %op3
  %op29 = load i32 , i32 * %op3
  %op30 = load i32 , i32 * %op17
  %op31 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op28
  %op32 = load i32 , i32 * %op31
  %op33 = load i32 , i32 * %op3
  %op34 = load i32 , i32 * %op3
  %op35 = load i32 , i32 * %op17
  %op36 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op33
  %op37 = load i32 , i32 * %op36
  %op38 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  %op32
  %op39 = load i32 , i32 * %op38
  %op40 = icmp ne i32  %op39, 0
  br i1  %op40, label %label42, label %label45
label41:                                                ; preds = %label18
  ret i32  0
label42:                                                ; preds = %label27
  %op43 = load i32 , i32 * %op17
  %op44 = add i32  %op43, 1
  store i32  %op44, i32 * %op17
  br label %label45
label45:                                                ; preds = %label27, %label42
  %op46 = load i32 , i32 * %op3
  %op47 = load i32 , i32 * %op3
  %op48 = load i32 , i32 * %op17
  %op49 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op46
  %op50 = load i32 , i32 * %op49
  %op51 = icmp sle i32  %op50, 0
  %op52 = zext i1  %op51 to i32 
  %op53 = icmp ne i32  %op52, 0
  br i1  %op53, label %label54, label %label57
label54:                                                ; preds = %label45
  %op55 = load i32 , i32 * %op17
  %op56 = add i32  %op55, 1
  store i32  %op56, i32 * %op17
  br label %label57
label57:                                                ; preds = %label45, %label54
  %op58 = alloca i32 
  %op59 = load i32 , i32 * %op5
  %op60 = load i32 , i32 * %op3
  %op61 = load i32 , i32 * %op3
  %op62 = load i32 , i32 * %op17
  %op63 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op60
  %op64 = load i32 , i32 * %op63
  %op65 = icmp slt i32  %op59, %op64
  %op66 = zext i1  %op65 to i32 
  %op67 = icmp ne i32  %op66, 0
  br i1  %op67, label %label68, label %label70
label68:                                                ; preds = %label57
  %op69 = load i32 , i32 * %op5
  store i32  %op69, i32 * %op58
  br label %label76
label70:                                                ; preds = %label57
  %op71 = load i32 , i32 * %op3
  %op72 = load i32 , i32 * %op3
  %op73 = load i32 , i32 * %op17
  %op74 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op71
  %op75 = load i32 , i32 * %op74
  store i32  %op75, i32 * %op58
  br label %label76
label76:                                                ; preds = %label68, %label70
  %op77 = load i32 , i32 * %op3
  %op78 = load i32 , i32 * %op3
  %op79 = load i32 , i32 * %op17
  %op80 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op77
  %op81 = load i32 , i32 * %op80
  %op82 = load i32 , i32 * %op4
  %op83 = load i32 , i32 * %op58
  %op84 = call i32  @dfs(i32  %op81, i32  %op82, i32  %op83)
  %op85 = alloca i32 
  store i32  %op84, i32 * %op85
  %op86 = load i32 , i32 * %op85
  %op87 = icmp sgt i32  %op86, 0
  %op88 = zext i1  %op87 to i32 
  %op89 = icmp ne i32  %op88, 0
  br i1  %op89, label %label90, label %label138
label90:                                                ; preds = %label76
  %op91 = load i32 , i32 * %op3
  %op92 = load i32 , i32 * %op3
  %op93 = load i32 , i32 * %op17
  %op94 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op91
  %op95 = load i32 , i32 * %op94
  %op96 = load i32 , i32 * %op85
  %op97 = sub i32  %op95, %op96
  %op98 = load i32 , i32 * %op3
  %op99 = load i32 , i32 * %op3
  %op100 = load i32 , i32 * %op17
  %op101 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op98
  store i32  %op97, i32 * %op101
  %op102 = load i32 , i32 * %op3
  %op103 = load i32 , i32 * %op3
  %op104 = load i32 , i32 * %op17
  %op105 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op102
  %op106 = load i32 , i32 * %op105
  %op107 = load i32 , i32 * %op3
  %op108 = load i32 , i32 * %op3
  %op109 = load i32 , i32 * %op17
  %op110 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op107
  %op111 = load i32 , i32 * %op110
  %op112 = load i32 , i32 * %op3
  %op113 = load i32 , i32 * %op3
  %op114 = load i32 , i32 * %op17
  %op115 = getelementptr [100 x i32 ], [100 x i32 ]* @rev, i32  0, i32  %op112
  %op116 = load i32 , i32 * %op115
  %op117 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op106
  %op118 = load i32 , i32 * %op117
  %op119 = load i32 , i32 * %op85
  %op120 = add i32  %op118, %op119
  %op121 = load i32 , i32 * %op3
  %op122 = load i32 , i32 * %op3
  %op123 = load i32 , i32 * %op17
  %op124 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op121
  %op125 = load i32 , i32 * %op124
  %op126 = load i32 , i32 * %op3
  %op127 = load i32 , i32 * %op3
  %op128 = load i32 , i32 * %op17
  %op129 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op126
  %op130 = load i32 , i32 * %op129
  %op131 = load i32 , i32 * %op3
  %op132 = load i32 , i32 * %op3
  %op133 = load i32 , i32 * %op17
  %op134 = getelementptr [100 x i32 ], [100 x i32 ]* @rev, i32  0, i32  %op131
  %op135 = load i32 , i32 * %op134
  %op136 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op125
  store i32  %op120, i32 * %op136
  %op137 = load i32 , i32 * %op85
  ret i32  %op137
label138:                                                ; preds = %label76
  %op139 = load i32 , i32 * %op17
  %op140 = add i32  %op139, 1
  store i32  %op140, i32 * %op17
  br label %label18
}
define i32  @max_flow(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label21
  %op6 = icmp ne i32  1, 0
  br i1  %op6, label %label7, label %label18
label7:                                                ; preds = %label5
  %op8 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  0
  call void @my_memset(i32 * %op8, i32  0, i32  10)
  %op9 = load i32 , i32 * %op2
  %op10 = load i32 , i32 * %op3
  %op11 = load i32 , i32 * @INF
  %op12 = call i32  @dfs(i32  %op9, i32  %op10, i32  %op11)
  %op13 = alloca i32 
  store i32  %op12, i32 * %op13
  %op14 = load i32 , i32 * %op13
  %op15 = icmp eq i32  %op14, 0
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label19, label %label21
label18:                                                ; preds = %label5
  ret i32  0
label19:                                                ; preds = %label7
  %op20 = load i32 , i32 * %op4
  ret i32  %op20
label21:                                                ; preds = %label7
  %op22 = load i32 , i32 * %op4
  %op23 = load i32 , i32 * %op13
  %op24 = add i32  %op22, %op23
  store i32  %op24, i32 * %op4
  br label %label5
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  %op2 = call i32  @getint()
  store i32  %op2, i32 * %op0
  %op3 = call i32  @getint()
  store i32  %op3, i32 * %op1
  %op4 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  0
  call void @my_memset(i32 * %op4, i32  0, i32  10)
  br label %label5
label5:                                                ; preds = %label_entry, %label10
  %op6 = load i32 , i32 * %op1
  %op7 = icmp sgt i32  %op6, 0
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label22
label10:                                                ; preds = %label5
  %op11 = alloca i32 
  %op12 = alloca i32 
  %op13 = call i32  @getint()
  store i32  %op13, i32 * %op11
  %op14 = call i32  @getint()
  store i32  %op14, i32 * %op12
  %op15 = call i32  @getint()
  %op16 = alloca i32 
  store i32  %op15, i32 * %op16
  %op17 = load i32 , i32 * %op11
  %op18 = load i32 , i32 * %op12
  %op19 = load i32 , i32 * %op16
  call void @add_node(i32  %op17, i32  %op18, i32  %op19)
  %op20 = load i32 , i32 * %op1
  %op21 = sub i32  %op20, 1
  store i32  %op21, i32 * %op1
  br label %label5
label22:                                                ; preds = %label5
  %op23 = load i32 , i32 * %op0
  %op24 = call i32  @max_flow(i32  1, i32  %op23)
  call void @putint(i32  %op24)
  %op25 = trunc i32  10 to i8 
  call void @putch(i8  %op25)
  ret i32  0
}
