; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/85_long_code.sy"

@n = global i32  zeroinitializer
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

define i32  @bubblesort(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  %op3 = alloca i32 
  store i32  0, i32 * %op2
  br label %label4
label4:                                                ; preds = %label_entry, %label38
  %op5 = load i32 , i32 * %op2
  %op6 = load i32 , i32 * @n
  %op7 = sub i32  %op6, 1
  %op8 = icmp slt i32  %op5, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label12
label11:                                                ; preds = %label4
  store i32  0, i32 * %op3
  br label %label13
label12:                                                ; preds = %label4
  ret i32  0
label13:                                                ; preds = %label11, %label66
  %op14 = load i32 , i32 * %op3
  %op15 = load i32 , i32 * @n
  %op16 = load i32 , i32 * %op2
  %op17 = sub i32  %op15, %op16
  %op18 = sub i32  %op17, 1
  %op19 = icmp slt i32  %op14, %op18
  %op20 = zext i1  %op19 to i32 
  %op21 = icmp ne i32  %op20, 0
  br i1  %op21, label %label22, label %label38
label22:                                                ; preds = %label13
  %op23 = load i32 , i32 * %op3
  %op24 = load i32 , i32 * %op3
  %op25 = load i32 *, i32 ** %op1
  %op26 = getelementptr i32 , i32 * %op25, i32  %op23
  %op27 = load i32 , i32 * %op26
  %op28 = load i32 , i32 * %op3
  %op29 = add i32  %op28, 1
  %op30 = load i32 , i32 * %op3
  %op31 = add i32  %op30, 1
  %op32 = load i32 *, i32 ** %op1
  %op33 = getelementptr i32 , i32 * %op32, i32  %op29
  %op34 = load i32 , i32 * %op33
  %op35 = icmp sgt i32  %op27, %op34
  %op36 = zext i1  %op35 to i32 
  %op37 = icmp ne i32  %op36, 0
  br i1  %op37, label %label41, label %label66
label38:                                                ; preds = %label13
  %op39 = load i32 , i32 * %op2
  %op40 = add i32  %op39, 1
  store i32  %op40, i32 * %op2
  br label %label4
label41:                                                ; preds = %label22
  %op42 = alloca i32 
  %op43 = load i32 , i32 * %op3
  %op44 = add i32  %op43, 1
  %op45 = load i32 , i32 * %op3
  %op46 = add i32  %op45, 1
  %op47 = load i32 *, i32 ** %op1
  %op48 = getelementptr i32 , i32 * %op47, i32  %op44
  %op49 = load i32 , i32 * %op48
  store i32  %op49, i32 * %op42
  %op50 = load i32 , i32 * %op3
  %op51 = load i32 , i32 * %op3
  %op52 = load i32 *, i32 ** %op1
  %op53 = getelementptr i32 , i32 * %op52, i32  %op50
  %op54 = load i32 , i32 * %op53
  %op55 = load i32 , i32 * %op3
  %op56 = add i32  %op55, 1
  %op57 = load i32 , i32 * %op3
  %op58 = add i32  %op57, 1
  %op59 = load i32 *, i32 ** %op1
  %op60 = getelementptr i32 , i32 * %op59, i32  %op56
  store i32  %op54, i32 * %op60
  %op61 = load i32 , i32 * %op42
  %op62 = load i32 , i32 * %op3
  %op63 = load i32 , i32 * %op3
  %op64 = load i32 *, i32 ** %op1
  %op65 = getelementptr i32 , i32 * %op64, i32  %op62
  store i32  %op61, i32 * %op65
  br label %label66
label66:                                                ; preds = %label22, %label41
  %op67 = load i32 , i32 * %op3
  %op68 = add i32  %op67, 1
  store i32  %op68, i32 * %op3
  br label %label13
}
define i32  @insertsort(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label40
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @n
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label19
label9:                                                ; preds = %label3
  %op10 = alloca i32 
  %op11 = load i32 , i32 * %op2
  %op12 = load i32 , i32 * %op2
  %op13 = load i32 *, i32 ** %op1
  %op14 = getelementptr i32 , i32 * %op13, i32  %op11
  %op15 = load i32 , i32 * %op14
  store i32  %op15, i32 * %op10
  %op16 = alloca i32 
  %op17 = load i32 , i32 * %op2
  %op18 = sub i32  %op17, 1
  store i32  %op18, i32 * %op16
  br label %label20
label19:                                                ; preds = %label3
  ret i32  0
label20:                                                ; preds = %label9, %label26
  %op21 = load i32 , i32 * %op16
  %op22 = mul i32  1, -1
  %op23 = icmp sgt i32  %op21, %op22
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label50, label %label40
label26:                                                ; preds = %label50
  %op27 = load i32 , i32 * %op16
  %op28 = load i32 , i32 * %op16
  %op29 = load i32 *, i32 ** %op1
  %op30 = getelementptr i32 , i32 * %op29, i32  %op27
  %op31 = load i32 , i32 * %op30
  %op32 = load i32 , i32 * %op16
  %op33 = add i32  %op32, 1
  %op34 = load i32 , i32 * %op16
  %op35 = add i32  %op34, 1
  %op36 = load i32 *, i32 ** %op1
  %op37 = getelementptr i32 , i32 * %op36, i32  %op33
  store i32  %op31, i32 * %op37
  %op38 = load i32 , i32 * %op16
  %op39 = sub i32  %op38, 1
  store i32  %op39, i32 * %op16
  br label %label20
label40:                                                ; preds = %label20, %label50
  %op41 = load i32 , i32 * %op10
  %op42 = load i32 , i32 * %op16
  %op43 = add i32  %op42, 1
  %op44 = load i32 , i32 * %op16
  %op45 = add i32  %op44, 1
  %op46 = load i32 *, i32 ** %op1
  %op47 = getelementptr i32 , i32 * %op46, i32  %op43
  store i32  %op41, i32 * %op47
  %op48 = load i32 , i32 * %op2
  %op49 = add i32  %op48, 1
  store i32  %op49, i32 * %op2
  br label %label3
label50:                                                ; preds = %label20
  %op51 = load i32 , i32 * %op10
  %op52 = load i32 , i32 * %op16
  %op53 = load i32 , i32 * %op16
  %op54 = load i32 *, i32 ** %op1
  %op55 = getelementptr i32 , i32 * %op54, i32  %op52
  %op56 = load i32 , i32 * %op55
  %op57 = icmp slt i32  %op51, %op56
  %op58 = zext i1  %op57 to i32 
  %op59 = icmp ne i32  %op58, 0
  br i1  %op59, label %label26, label %label40
}
define i32  @QuickSort(i32 * %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * %op5
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label22
label11:                                                ; preds = %label_entry
  %op12 = alloca i32 
  %op13 = load i32 , i32 * %op4
  store i32  %op13, i32 * %op12
  %op14 = alloca i32 
  %op15 = load i32 , i32 * %op5
  store i32  %op15, i32 * %op14
  %op16 = alloca i32 
  %op17 = load i32 , i32 * %op4
  %op18 = load i32 , i32 * %op4
  %op19 = load i32 *, i32 ** %op3
  %op20 = getelementptr i32 , i32 * %op19, i32  %op17
  %op21 = load i32 , i32 * %op20
  store i32  %op21, i32 * %op16
  br label %label23
label22:                                                ; preds = %label_entry, %label30
  ret i32  0
label23:                                                ; preds = %label11, %label125
  %op24 = load i32 , i32 * %op12
  %op25 = load i32 , i32 * %op14
  %op26 = icmp slt i32  %op24, %op25
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label29, label %label30
label29:                                                ; preds = %label23
  br label %label49
label30:                                                ; preds = %label23
  %op31 = load i32 , i32 * %op16
  %op32 = load i32 , i32 * %op12
  %op33 = load i32 , i32 * %op12
  %op34 = load i32 *, i32 ** %op3
  %op35 = getelementptr i32 , i32 * %op34, i32  %op32
  store i32  %op31, i32 * %op35
  %op36 = alloca i32 
  %op37 = load i32 , i32 * %op12
  %op38 = sub i32  %op37, 1
  store i32  %op38, i32 * %op36
  %op39 = load i32 *, i32 ** %op3
  %op40 = load i32 , i32 * %op4
  %op41 = load i32 , i32 * %op36
  %op42 = call i32  @QuickSort(i32 * %op39, i32  %op40, i32  %op41)
  store i32  %op42, i32 * %op36
  %op43 = load i32 , i32 * %op12
  %op44 = add i32  %op43, 1
  store i32  %op44, i32 * %op36
  %op45 = load i32 *, i32 ** %op3
  %op46 = load i32 , i32 * %op36
  %op47 = load i32 , i32 * %op5
  %op48 = call i32  @QuickSort(i32 * %op45, i32  %op46, i32  %op47)
  store i32  %op48, i32 * %op36
  br label %label22
label49:                                                ; preds = %label29, %label55
  %op50 = load i32 , i32 * %op12
  %op51 = load i32 , i32 * %op14
  %op52 = icmp slt i32  %op50, %op51
  %op53 = zext i1  %op52 to i32 
  %op54 = icmp ne i32  %op53, 0
  br i1  %op54, label %label64, label %label58
label55:                                                ; preds = %label64
  %op56 = load i32 , i32 * %op14
  %op57 = sub i32  %op56, 1
  store i32  %op57, i32 * %op14
  br label %label49
label58:                                                ; preds = %label49, %label64
  %op59 = load i32 , i32 * %op12
  %op60 = load i32 , i32 * %op14
  %op61 = icmp slt i32  %op59, %op60
  %op62 = zext i1  %op61 to i32 
  %op63 = icmp ne i32  %op62, 0
  br i1  %op63, label %label75, label %label87
label64:                                                ; preds = %label49
  %op65 = load i32 , i32 * %op14
  %op66 = load i32 , i32 * %op14
  %op67 = load i32 *, i32 ** %op3
  %op68 = getelementptr i32 , i32 * %op67, i32  %op65
  %op69 = load i32 , i32 * %op68
  %op70 = load i32 , i32 * %op16
  %op71 = sub i32  %op70, 1
  %op72 = icmp sgt i32  %op69, %op71
  %op73 = zext i1  %op72 to i32 
  %op74 = icmp ne i32  %op73, 0
  br i1  %op74, label %label55, label %label58
label75:                                                ; preds = %label58
  %op76 = load i32 , i32 * %op14
  %op77 = load i32 , i32 * %op14
  %op78 = load i32 *, i32 ** %op3
  %op79 = getelementptr i32 , i32 * %op78, i32  %op76
  %op80 = load i32 , i32 * %op79
  %op81 = load i32 , i32 * %op12
  %op82 = load i32 , i32 * %op12
  %op83 = load i32 *, i32 ** %op3
  %op84 = getelementptr i32 , i32 * %op83, i32  %op81
  store i32  %op80, i32 * %op84
  %op85 = load i32 , i32 * %op12
  %op86 = add i32  %op85, 1
  store i32  %op86, i32 * %op12
  br label %label87
label87:                                                ; preds = %label58, %label75
  br label %label88
label88:                                                ; preds = %label87, %label94
  %op89 = load i32 , i32 * %op12
  %op90 = load i32 , i32 * %op14
  %op91 = icmp slt i32  %op89, %op90
  %op92 = zext i1  %op91 to i32 
  %op93 = icmp ne i32  %op92, 0
  br i1  %op93, label %label103, label %label97
label94:                                                ; preds = %label103
  %op95 = load i32 , i32 * %op12
  %op96 = add i32  %op95, 1
  store i32  %op96, i32 * %op12
  br label %label88
label97:                                                ; preds = %label88, %label103
  %op98 = load i32 , i32 * %op12
  %op99 = load i32 , i32 * %op14
  %op100 = icmp slt i32  %op98, %op99
  %op101 = zext i1  %op100 to i32 
  %op102 = icmp ne i32  %op101, 0
  br i1  %op102, label %label113, label %label125
label103:                                                ; preds = %label88
  %op104 = load i32 , i32 * %op12
  %op105 = load i32 , i32 * %op12
  %op106 = load i32 *, i32 ** %op3
  %op107 = getelementptr i32 , i32 * %op106, i32  %op104
  %op108 = load i32 , i32 * %op107
  %op109 = load i32 , i32 * %op16
  %op110 = icmp slt i32  %op108, %op109
  %op111 = zext i1  %op110 to i32 
  %op112 = icmp ne i32  %op111, 0
  br i1  %op112, label %label94, label %label97
label113:                                                ; preds = %label97
  %op114 = load i32 , i32 * %op12
  %op115 = load i32 , i32 * %op12
  %op116 = load i32 *, i32 ** %op3
  %op117 = getelementptr i32 , i32 * %op116, i32  %op114
  %op118 = load i32 , i32 * %op117
  %op119 = load i32 , i32 * %op14
  %op120 = load i32 , i32 * %op14
  %op121 = load i32 *, i32 ** %op3
  %op122 = getelementptr i32 , i32 * %op121, i32  %op119
  store i32  %op118, i32 * %op122
  %op123 = load i32 , i32 * %op14
  %op124 = sub i32  %op123, 1
  store i32  %op124, i32 * %op14
  br label %label125
label125:                                                ; preds = %label97, %label113
  br label %label23
}
define i32  @getMid(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  %op3 = load i32 , i32 * @n
  %op4 = srem i32  %op3, 2
  %op5 = icmp eq i32  %op4, 0
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label25
label8:                                                ; preds = %label_entry
  %op9 = load i32 , i32 * @n
  %op10 = sdiv i32  %op9, 2
  store i32  %op10, i32 * %op2
  %op11 = load i32 , i32 * %op2
  %op12 = load i32 , i32 * %op2
  %op13 = load i32 *, i32 ** %op1
  %op14 = getelementptr i32 , i32 * %op13, i32  %op11
  %op15 = load i32 , i32 * %op14
  %op16 = load i32 , i32 * %op2
  %op17 = sub i32  %op16, 1
  %op18 = load i32 , i32 * %op2
  %op19 = sub i32  %op18, 1
  %op20 = load i32 *, i32 ** %op1
  %op21 = getelementptr i32 , i32 * %op20, i32  %op17
  %op22 = load i32 , i32 * %op21
  %op23 = add i32  %op15, %op22
  %op24 = sdiv i32  %op23, 2
  ret i32  %op24
label25:                                                ; preds = %label_entry
  %op26 = load i32 , i32 * @n
  %op27 = sdiv i32  %op26, 2
  store i32  %op27, i32 * %op2
  %op28 = load i32 , i32 * %op2
  %op29 = load i32 , i32 * %op2
  %op30 = load i32 *, i32 ** %op1
  %op31 = getelementptr i32 , i32 * %op30, i32  %op28
  %op32 = load i32 , i32 * %op31
  ret i32  %op32
}
define i32  @getMost(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca [1000 x i32 ]
  %op3 = alloca i32 
  store i32  0, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label9
  %op5 = load i32 , i32 * %op3
  %op6 = icmp slt i32  %op5, 1000
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label15
label9:                                                ; preds = %label4
  %op10 = load i32 , i32 * %op3
  %op11 = load i32 , i32 * %op3
  %op12 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op10
  store i32  0, i32 * %op12
  %op13 = load i32 , i32 * %op3
  %op14 = add i32  %op13, 1
  store i32  %op14, i32 * %op3
  br label %label4
label15:                                                ; preds = %label4
  store i32  0, i32 * %op3
  %op16 = alloca i32 
  %op17 = alloca i32 
  store i32  0, i32 * %op16
  br label %label18
label18:                                                ; preds = %label15, %label55
  %op19 = load i32 , i32 * %op3
  %op20 = load i32 , i32 * @n
  %op21 = icmp slt i32  %op19, %op20
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label24, label %label47
label24:                                                ; preds = %label18
  %op25 = alloca i32 
  %op26 = load i32 , i32 * %op3
  %op27 = load i32 , i32 * %op3
  %op28 = load i32 *, i32 ** %op1
  %op29 = getelementptr i32 , i32 * %op28, i32  %op26
  %op30 = load i32 , i32 * %op29
  store i32  %op30, i32 * %op25
  %op31 = load i32 , i32 * %op25
  %op32 = load i32 , i32 * %op25
  %op33 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op31
  %op34 = load i32 , i32 * %op33
  %op35 = add i32  %op34, 1
  %op36 = load i32 , i32 * %op25
  %op37 = load i32 , i32 * %op25
  %op38 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op36
  store i32  %op35, i32 * %op38
  %op39 = load i32 , i32 * %op25
  %op40 = load i32 , i32 * %op25
  %op41 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op39
  %op42 = load i32 , i32 * %op41
  %op43 = load i32 , i32 * %op16
  %op44 = icmp sgt i32  %op42, %op43
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label49, label %label55
label47:                                                ; preds = %label18
  %op48 = load i32 , i32 * %op17
  ret i32  %op48
label49:                                                ; preds = %label24
  %op50 = load i32 , i32 * %op25
  %op51 = load i32 , i32 * %op25
  %op52 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op50
  %op53 = load i32 , i32 * %op52
  store i32  %op53, i32 * %op16
  %op54 = load i32 , i32 * %op25
  store i32  %op54, i32 * %op17
  br label %label55
label55:                                                ; preds = %label24, %label49
  %op56 = load i32 , i32 * %op3
  %op57 = add i32  %op56, 1
  store i32  %op57, i32 * %op3
  br label %label18
}
define i32  @revert(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  %op3 = alloca i32 
  %op4 = alloca i32 
  store i32  0, i32 * %op3
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label11
  %op6 = load i32 , i32 * %op3
  %op7 = load i32 , i32 * %op4
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label35
label11:                                                ; preds = %label5
  %op12 = load i32 , i32 * %op3
  %op13 = load i32 , i32 * %op3
  %op14 = load i32 *, i32 ** %op1
  %op15 = getelementptr i32 , i32 * %op14, i32  %op12
  %op16 = load i32 , i32 * %op15
  store i32  %op16, i32 * %op2
  %op17 = load i32 , i32 * %op4
  %op18 = load i32 , i32 * %op4
  %op19 = load i32 *, i32 ** %op1
  %op20 = getelementptr i32 , i32 * %op19, i32  %op17
  %op21 = load i32 , i32 * %op20
  %op22 = load i32 , i32 * %op3
  %op23 = load i32 , i32 * %op3
  %op24 = load i32 *, i32 ** %op1
  %op25 = getelementptr i32 , i32 * %op24, i32  %op22
  store i32  %op21, i32 * %op25
  %op26 = load i32 , i32 * %op2
  %op27 = load i32 , i32 * %op4
  %op28 = load i32 , i32 * %op4
  %op29 = load i32 *, i32 ** %op1
  %op30 = getelementptr i32 , i32 * %op29, i32  %op27
  store i32  %op26, i32 * %op30
  %op31 = load i32 , i32 * %op3
  %op32 = add i32  %op31, 1
  store i32  %op32, i32 * %op3
  %op33 = load i32 , i32 * %op4
  %op34 = sub i32  %op33, 1
  store i32  %op34, i32 * %op4
  br label %label5
label35:                                                ; preds = %label5
  ret i32  0
}
define i32  @arrCopy(i32 * %arg0, i32 * %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 *
  store i32 * %arg1, i32 ** %op3
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label11
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * @n
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label23
label11:                                                ; preds = %label5
  %op12 = load i32 , i32 * %op4
  %op13 = load i32 , i32 * %op4
  %op14 = load i32 *, i32 ** %op2
  %op15 = getelementptr i32 , i32 * %op14, i32  %op12
  %op16 = load i32 , i32 * %op15
  %op17 = load i32 , i32 * %op4
  %op18 = load i32 , i32 * %op4
  %op19 = load i32 *, i32 ** %op3
  %op20 = getelementptr i32 , i32 * %op19, i32  %op17
  store i32  %op16, i32 * %op20
  %op21 = load i32 , i32 * %op4
  %op22 = add i32  %op21, 1
  store i32  %op22, i32 * %op4
  br label %label5
label23:                                                ; preds = %label5
  ret i32  0
}
define i32  @calSum(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  %op5 = alloca i32 
  store i32  0, i32 * %op5
  br label %label6
label6:                                                ; preds = %label_entry, %label40
  %op7 = load i32 , i32 * %op5
  %op8 = load i32 , i32 * @n
  %op9 = icmp slt i32  %op7, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label28
label12:                                                ; preds = %label6
  %op13 = load i32 , i32 * %op4
  %op14 = load i32 , i32 * %op5
  %op15 = load i32 , i32 * %op5
  %op16 = load i32 *, i32 ** %op2
  %op17 = getelementptr i32 , i32 * %op16, i32  %op14
  %op18 = load i32 , i32 * %op17
  %op19 = add i32  %op13, %op18
  store i32  %op19, i32 * %op4
  %op20 = load i32 , i32 * %op5
  %op21 = load i32 , i32 * %op3
  %op22 = srem i32  %op20, %op21
  %op23 = load i32 , i32 * %op3
  %op24 = sub i32  %op23, 1
  %op25 = icmp ne i32  %op22, %op24
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label29, label %label34
label28:                                                ; preds = %label6
  ret i32  0
label29:                                                ; preds = %label12
  %op30 = load i32 , i32 * %op5
  %op31 = load i32 , i32 * %op5
  %op32 = load i32 *, i32 ** %op2
  %op33 = getelementptr i32 , i32 * %op32, i32  %op30
  store i32  0, i32 * %op33
  br label %label40
label34:                                                ; preds = %label12
  %op35 = load i32 , i32 * %op4
  %op36 = load i32 , i32 * %op5
  %op37 = load i32 , i32 * %op5
  %op38 = load i32 *, i32 ** %op2
  %op39 = getelementptr i32 , i32 * %op38, i32  %op36
  store i32  %op35, i32 * %op39
  store i32  0, i32 * %op4
  br label %label40
label40:                                                ; preds = %label29, %label34
  %op41 = load i32 , i32 * %op5
  %op42 = add i32  %op41, 1
  store i32  %op42, i32 * %op5
  br label %label6
}
define i32  @avgPooling(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = alloca i32 
  store i32  0, i32 * %op5
  store i32  0, i32 * %op4
  %op6 = alloca i32 
  br label %label7
label7:                                                ; preds = %label_entry, %label40
  %op8 = load i32 , i32 * %op5
  %op9 = load i32 , i32 * @n
  %op10 = icmp slt i32  %op8, %op9
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label20
label13:                                                ; preds = %label7
  %op14 = load i32 , i32 * %op5
  %op15 = load i32 , i32 * %op3
  %op16 = sub i32  %op15, 1
  %op17 = icmp slt i32  %op14, %op16
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label25, label %label33
label20:                                                ; preds = %label7
  %op21 = load i32 , i32 * @n
  %op22 = load i32 , i32 * %op3
  %op23 = sub i32  %op21, %op22
  %op24 = add i32  %op23, 1
  store i32  %op24, i32 * %op5
  br label %label87
label25:                                                ; preds = %label13
  %op26 = load i32 , i32 * %op4
  %op27 = load i32 , i32 * %op5
  %op28 = load i32 , i32 * %op5
  %op29 = load i32 *, i32 ** %op2
  %op30 = getelementptr i32 , i32 * %op29, i32  %op27
  %op31 = load i32 , i32 * %op30
  %op32 = add i32  %op26, %op31
  store i32  %op32, i32 * %op4
  br label %label40
label33:                                                ; preds = %label13
  %op34 = load i32 , i32 * %op5
  %op35 = load i32 , i32 * %op3
  %op36 = sub i32  %op35, 1
  %op37 = icmp eq i32  %op34, %op36
  %op38 = zext i1  %op37 to i32 
  %op39 = icmp ne i32  %op38, 0
  br i1  %op39, label %label43, label %label52
label40:                                                ; preds = %label25, %label86
  %op41 = load i32 , i32 * %op5
  %op42 = add i32  %op41, 1
  store i32  %op42, i32 * %op5
  br label %label7
label43:                                                ; preds = %label33
  %op44 = load i32 *, i32 ** %op2
  %op45 = getelementptr i32 , i32 * %op44, i32  0
  %op46 = load i32 , i32 * %op45
  store i32  %op46, i32 * %op6
  %op47 = load i32 , i32 * %op4
  %op48 = load i32 , i32 * %op3
  %op49 = sdiv i32  %op47, %op48
  %op50 = load i32 *, i32 ** %op2
  %op51 = getelementptr i32 , i32 * %op50, i32  0
  store i32  %op49, i32 * %op51
  br label %label86
label52:                                                ; preds = %label33
  %op53 = load i32 , i32 * %op4
  %op54 = load i32 , i32 * %op5
  %op55 = load i32 , i32 * %op5
  %op56 = load i32 *, i32 ** %op2
  %op57 = getelementptr i32 , i32 * %op56, i32  %op54
  %op58 = load i32 , i32 * %op57
  %op59 = add i32  %op53, %op58
  %op60 = load i32 , i32 * %op6
  %op61 = sub i32  %op59, %op60
  store i32  %op61, i32 * %op4
  %op62 = load i32 , i32 * %op5
  %op63 = load i32 , i32 * %op3
  %op64 = sub i32  %op62, %op63
  %op65 = add i32  %op64, 1
  %op66 = load i32 , i32 * %op5
  %op67 = load i32 , i32 * %op3
  %op68 = sub i32  %op66, %op67
  %op69 = add i32  %op68, 1
  %op70 = load i32 *, i32 ** %op2
  %op71 = getelementptr i32 , i32 * %op70, i32  %op65
  %op72 = load i32 , i32 * %op71
  store i32  %op72, i32 * %op6
  %op73 = load i32 , i32 * %op4
  %op74 = load i32 , i32 * %op3
  %op75 = sdiv i32  %op73, %op74
  %op76 = load i32 , i32 * %op5
  %op77 = load i32 , i32 * %op3
  %op78 = sub i32  %op76, %op77
  %op79 = add i32  %op78, 1
  %op80 = load i32 , i32 * %op5
  %op81 = load i32 , i32 * %op3
  %op82 = sub i32  %op80, %op81
  %op83 = add i32  %op82, 1
  %op84 = load i32 *, i32 ** %op2
  %op85 = getelementptr i32 , i32 * %op84, i32  %op79
  store i32  %op75, i32 * %op85
  br label %label86
label86:                                                ; preds = %label43, %label52
  br label %label40
label87:                                                ; preds = %label20, %label93
  %op88 = load i32 , i32 * %op5
  %op89 = load i32 , i32 * @n
  %op90 = icmp slt i32  %op88, %op89
  %op91 = zext i1  %op90 to i32 
  %op92 = icmp ne i32  %op91, 0
  br i1  %op92, label %label93, label %label100
label93:                                                ; preds = %label87
  %op94 = load i32 , i32 * %op5
  %op95 = load i32 , i32 * %op5
  %op96 = load i32 *, i32 ** %op2
  %op97 = getelementptr i32 , i32 * %op96, i32  %op94
  store i32  0, i32 * %op97
  %op98 = load i32 , i32 * %op5
  %op99 = add i32  %op98, 1
  store i32  %op99, i32 * %op5
  br label %label87
label100:                                                ; preds = %label87
  ret i32  0
}
define i32  @main() {
label_entry:
  store i32  32, i32 * @n
  %op0 = alloca [32 x i32 ]
  %op1 = alloca [32 x i32 ]
  %op2 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  store i32  7, i32 * %op2
  %op3 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  1
  store i32  23, i32 * %op3
  %op4 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  2
  store i32  89, i32 * %op4
  %op5 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  3
  store i32  26, i32 * %op5
  %op6 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  4
  store i32  282, i32 * %op6
  %op7 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  5
  store i32  254, i32 * %op7
  %op8 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  6
  store i32  27, i32 * %op8
  %op9 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  7
  store i32  5, i32 * %op9
  %op10 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  8
  store i32  83, i32 * %op10
  %op11 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  9
  store i32  273, i32 * %op11
  %op12 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  10
  store i32  574, i32 * %op12
  %op13 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  11
  store i32  905, i32 * %op13
  %op14 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  12
  store i32  354, i32 * %op14
  %op15 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  13
  store i32  657, i32 * %op15
  %op16 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  14
  store i32  935, i32 * %op16
  %op17 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  15
  store i32  264, i32 * %op17
  %op18 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  16
  store i32  639, i32 * %op18
  %op19 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  17
  store i32  459, i32 * %op19
  %op20 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  18
  store i32  29, i32 * %op20
  %op21 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  19
  store i32  68, i32 * %op21
  %op22 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  20
  store i32  929, i32 * %op22
  %op23 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  21
  store i32  756, i32 * %op23
  %op24 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  22
  store i32  452, i32 * %op24
  %op25 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  23
  store i32  279, i32 * %op25
  %op26 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  24
  store i32  58, i32 * %op26
  %op27 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  25
  store i32  87, i32 * %op27
  %op28 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  26
  store i32  96, i32 * %op28
  %op29 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  27
  store i32  36, i32 * %op29
  %op30 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  28
  store i32  39, i32 * %op30
  %op31 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  29
  store i32  28, i32 * %op31
  %op32 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  30
  store i32  1, i32 * %op32
  %op33 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  31
  store i32  290, i32 * %op33
  %op34 = alloca i32 
  %op35 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op36 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op37 = call i32  @arrCopy(i32 * %op35, i32 * %op36)
  store i32  %op37, i32 * %op34
  %op38 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op39 = call i32  @revert(i32 * %op38)
  store i32  %op39, i32 * %op34
  %op40 = alloca i32 
  store i32  0, i32 * %op40
  br label %label41
label41:                                                ; preds = %label_entry, %label46
  %op42 = load i32 , i32 * %op40
  %op43 = icmp slt i32  %op42, 32
  %op44 = zext i1  %op43 to i32 
  %op45 = icmp ne i32  %op44, 0
  br i1  %op45, label %label46, label %label54
label46:                                                ; preds = %label41
  %op47 = load i32 , i32 * %op40
  %op48 = load i32 , i32 * %op40
  %op49 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op47
  %op50 = load i32 , i32 * %op49
  store i32  %op50, i32 * %op34
  %op51 = load i32 , i32 * %op34
  call void @putint(i32  %op51)
  %op52 = load i32 , i32 * %op40
  %op53 = add i32  %op52, 1
  store i32  %op53, i32 * %op40
  br label %label41
label54:                                                ; preds = %label41
  %op55 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op56 = call i32  @bubblesort(i32 * %op55)
  store i32  %op56, i32 * %op34
  store i32  0, i32 * %op40
  br label %label57
label57:                                                ; preds = %label54, %label62
  %op58 = load i32 , i32 * %op40
  %op59 = icmp slt i32  %op58, 32
  %op60 = zext i1  %op59 to i32 
  %op61 = icmp ne i32  %op60, 0
  br i1  %op61, label %label62, label %label70
label62:                                                ; preds = %label57
  %op63 = load i32 , i32 * %op40
  %op64 = load i32 , i32 * %op40
  %op65 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op63
  %op66 = load i32 , i32 * %op65
  store i32  %op66, i32 * %op34
  %op67 = load i32 , i32 * %op34
  call void @putint(i32  %op67)
  %op68 = load i32 , i32 * %op40
  %op69 = add i32  %op68, 1
  store i32  %op69, i32 * %op40
  br label %label57
label70:                                                ; preds = %label57
  %op71 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op72 = call i32  @getMid(i32 * %op71)
  store i32  %op72, i32 * %op34
  %op73 = load i32 , i32 * %op34
  call void @putint(i32  %op73)
  %op74 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op75 = call i32  @getMost(i32 * %op74)
  store i32  %op75, i32 * %op34
  %op76 = load i32 , i32 * %op34
  call void @putint(i32  %op76)
  %op77 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op78 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op79 = call i32  @arrCopy(i32 * %op77, i32 * %op78)
  store i32  %op79, i32 * %op34
  %op80 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op81 = call i32  @bubblesort(i32 * %op80)
  store i32  %op81, i32 * %op34
  store i32  0, i32 * %op40
  br label %label82
label82:                                                ; preds = %label70, %label87
  %op83 = load i32 , i32 * %op40
  %op84 = icmp slt i32  %op83, 32
  %op85 = zext i1  %op84 to i32 
  %op86 = icmp ne i32  %op85, 0
  br i1  %op86, label %label87, label %label95
label87:                                                ; preds = %label82
  %op88 = load i32 , i32 * %op40
  %op89 = load i32 , i32 * %op40
  %op90 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op88
  %op91 = load i32 , i32 * %op90
  store i32  %op91, i32 * %op34
  %op92 = load i32 , i32 * %op34
  call void @putint(i32  %op92)
  %op93 = load i32 , i32 * %op40
  %op94 = add i32  %op93, 1
  store i32  %op94, i32 * %op40
  br label %label82
label95:                                                ; preds = %label82
  %op96 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op97 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op98 = call i32  @arrCopy(i32 * %op96, i32 * %op97)
  store i32  %op98, i32 * %op34
  %op99 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op100 = call i32  @insertsort(i32 * %op99)
  store i32  %op100, i32 * %op34
  store i32  0, i32 * %op40
  br label %label101
label101:                                                ; preds = %label95, %label106
  %op102 = load i32 , i32 * %op40
  %op103 = icmp slt i32  %op102, 32
  %op104 = zext i1  %op103 to i32 
  %op105 = icmp ne i32  %op104, 0
  br i1  %op105, label %label106, label %label114
label106:                                                ; preds = %label101
  %op107 = load i32 , i32 * %op40
  %op108 = load i32 , i32 * %op40
  %op109 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op107
  %op110 = load i32 , i32 * %op109
  store i32  %op110, i32 * %op34
  %op111 = load i32 , i32 * %op34
  call void @putint(i32  %op111)
  %op112 = load i32 , i32 * %op40
  %op113 = add i32  %op112, 1
  store i32  %op113, i32 * %op40
  br label %label101
label114:                                                ; preds = %label101
  %op115 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op116 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op117 = call i32  @arrCopy(i32 * %op115, i32 * %op116)
  store i32  %op117, i32 * %op34
  store i32  0, i32 * %op40
  store i32  31, i32 * %op34
  %op118 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op119 = load i32 , i32 * %op40
  %op120 = load i32 , i32 * %op34
  %op121 = call i32  @QuickSort(i32 * %op118, i32  %op119, i32  %op120)
  store i32  %op121, i32 * %op34
  br label %label122
label122:                                                ; preds = %label114, %label127
  %op123 = load i32 , i32 * %op40
  %op124 = icmp slt i32  %op123, 32
  %op125 = zext i1  %op124 to i32 
  %op126 = icmp ne i32  %op125, 0
  br i1  %op126, label %label127, label %label135
label127:                                                ; preds = %label122
  %op128 = load i32 , i32 * %op40
  %op129 = load i32 , i32 * %op40
  %op130 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op128
  %op131 = load i32 , i32 * %op130
  store i32  %op131, i32 * %op34
  %op132 = load i32 , i32 * %op34
  call void @putint(i32  %op132)
  %op133 = load i32 , i32 * %op40
  %op134 = add i32  %op133, 1
  store i32  %op134, i32 * %op40
  br label %label122
label135:                                                ; preds = %label122
  %op136 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op137 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op138 = call i32  @arrCopy(i32 * %op136, i32 * %op137)
  store i32  %op138, i32 * %op34
  %op139 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op140 = call i32  @calSum(i32 * %op139, i32  4)
  store i32  %op140, i32 * %op34
  store i32  0, i32 * %op40
  br label %label141
label141:                                                ; preds = %label135, %label146
  %op142 = load i32 , i32 * %op40
  %op143 = icmp slt i32  %op142, 32
  %op144 = zext i1  %op143 to i32 
  %op145 = icmp ne i32  %op144, 0
  br i1  %op145, label %label146, label %label154
label146:                                                ; preds = %label141
  %op147 = load i32 , i32 * %op40
  %op148 = load i32 , i32 * %op40
  %op149 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op147
  %op150 = load i32 , i32 * %op149
  store i32  %op150, i32 * %op34
  %op151 = load i32 , i32 * %op34
  call void @putint(i32  %op151)
  %op152 = load i32 , i32 * %op40
  %op153 = add i32  %op152, 1
  store i32  %op153, i32 * %op40
  br label %label141
label154:                                                ; preds = %label141
  %op155 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op156 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op157 = call i32  @arrCopy(i32 * %op155, i32 * %op156)
  store i32  %op157, i32 * %op34
  %op158 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op159 = call i32  @avgPooling(i32 * %op158, i32  3)
  store i32  %op159, i32 * %op34
  store i32  0, i32 * %op40
  br label %label160
label160:                                                ; preds = %label154, %label165
  %op161 = load i32 , i32 * %op40
  %op162 = icmp slt i32  %op161, 32
  %op163 = zext i1  %op162 to i32 
  %op164 = icmp ne i32  %op163, 0
  br i1  %op164, label %label165, label %label173
label165:                                                ; preds = %label160
  %op166 = load i32 , i32 * %op40
  %op167 = load i32 , i32 * %op40
  %op168 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op166
  %op169 = load i32 , i32 * %op168
  store i32  %op169, i32 * %op34
  %op170 = load i32 , i32 * %op34
  call void @putint(i32  %op170)
  %op171 = load i32 , i32 * %op40
  %op172 = add i32  %op171, 1
  store i32  %op172, i32 * %op40
  br label %label160
label173:                                                ; preds = %label160
  ret i32  0
}
