; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/93_nested_calls.sy"

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

define i32  @func1(i32  %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 
  store i32  %arg0, i32 * %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op5
  %op7 = icmp eq i32  %op6, 0
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label14
label10:                                                ; preds = %label_entry
  %op11 = load i32 , i32 * %op3
  %op12 = load i32 , i32 * %op4
  %op13 = mul i32  %op11, %op12
  ret i32  %op13
label14:                                                ; preds = %label_entry
  %op15 = load i32 , i32 * %op3
  %op16 = load i32 , i32 * %op4
  %op17 = load i32 , i32 * %op5
  %op18 = sub i32  %op16, %op17
  %op19 = call i32  @func1(i32  %op15, i32  %op18, i32  0)
  ret i32  %op19
}
define i32  @func2(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op3
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label11
label6:                                                ; preds = %label_entry
  %op7 = load i32 , i32 * %op2
  %op8 = load i32 , i32 * %op3
  %op9 = srem i32  %op7, %op8
  %op10 = call i32  @func2(i32  %op9, i32  0)
  ret i32  %op10
label11:                                                ; preds = %label_entry
  %op12 = load i32 , i32 * %op2
  ret i32  %op12
}
define i32  @func3(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op3
  %op5 = icmp eq i32  %op4, 0
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label11
label8:                                                ; preds = %label_entry
  %op9 = load i32 , i32 * %op2
  %op10 = add i32  %op9, 1
  ret i32  %op10
label11:                                                ; preds = %label_entry
  %op12 = load i32 , i32 * %op2
  %op13 = load i32 , i32 * %op3
  %op14 = add i32  %op12, %op13
  %op15 = call i32  @func3(i32  %op14, i32  0)
  ret i32  %op15
}
define i32  @func4(i32  %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 
  store i32  %arg0, i32 * %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op3
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label10
label8:                                                ; preds = %label_entry
  %op9 = load i32 , i32 * %op4
  ret i32  %op9
label10:                                                ; preds = %label_entry
  %op11 = load i32 , i32 * %op5
  ret i32  %op11
}
define i32  @func5(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = mul i32  %op2, -1
  ret i32  %op3
}
define i32  @func6(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label8, label %label7
label6:                                                ; preds = %label8
  ret i32  1
label7:                                                ; preds = %label_entry, %label8
  ret i32  0
label8:                                                ; preds = %label_entry
  %op9 = load i32 , i32 * %op3
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label6, label %label7
}
define i32  @func7(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = icmp eq i32  %op2, 0
  br i1  %op3, label %label4, label %label5
label4:                                                ; preds = %label_entry
  ret i32  1
label5:                                                ; preds = %label_entry
  ret i32  0
}
define i32  @main() {
label_entry:
  %op0 = call i32  @getint()
  %op1 = alloca i32 
  store i32  %op0, i32 * %op1
  %op2 = call i32  @getint()
  %op3 = alloca i32 
  store i32  %op2, i32 * %op3
  %op4 = call i32  @getint()
  %op5 = alloca i32 
  store i32  %op4, i32 * %op5
  %op6 = call i32  @getint()
  %op7 = alloca i32 
  store i32  %op6, i32 * %op7
  %op8 = alloca [10 x i32 ]
  %op9 = alloca i32 
  store i32  0, i32 * %op9
  br label %label10
label10:                                                ; preds = %label_entry, %label15
  %op11 = load i32 , i32 * %op9
  %op12 = icmp slt i32  %op11, 10
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label22
label15:                                                ; preds = %label10
  %op16 = call i32  @getint()
  %op17 = load i32 , i32 * %op9
  %op18 = load i32 , i32 * %op9
  %op19 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  %op17
  store i32  %op16, i32 * %op19
  %op20 = load i32 , i32 * %op9
  %op21 = add i32  %op20, 1
  store i32  %op21, i32 * %op9
  br label %label10
label22:                                                ; preds = %label10
  %op23 = load i32 , i32 * %op1
  %op24 = call i32  @func7(i32  %op23)
  %op25 = load i32 , i32 * %op3
  %op26 = call i32  @func5(i32  %op25)
  %op27 = call i32  @func6(i32  %op24, i32  %op26)
  %op28 = load i32 , i32 * %op5
  %op29 = call i32  @func2(i32  %op27, i32  %op28)
  %op30 = load i32 , i32 * %op7
  %op31 = call i32  @func3(i32  %op29, i32  %op30)
  %op32 = call i32  @func5(i32  %op31)
  %op33 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  0
  %op34 = load i32 , i32 * %op33
  %op35 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  1
  %op36 = load i32 , i32 * %op35
  %op37 = call i32  @func5(i32  %op36)
  %op38 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  2
  %op39 = load i32 , i32 * %op38
  %op40 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  3
  %op41 = load i32 , i32 * %op40
  %op42 = call i32  @func7(i32  %op41)
  %op43 = call i32  @func6(i32  %op39, i32  %op42)
  %op44 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  4
  %op45 = load i32 , i32 * %op44
  %op46 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  5
  %op47 = load i32 , i32 * %op46
  %op48 = call i32  @func7(i32  %op47)
  %op49 = call i32  @func2(i32  %op45, i32  %op48)
  %op50 = call i32  @func4(i32  %op37, i32  %op43, i32  %op49)
  %op51 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  6
  %op52 = load i32 , i32 * %op51
  %op53 = call i32  @func3(i32  %op50, i32  %op52)
  %op54 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  7
  %op55 = load i32 , i32 * %op54
  %op56 = call i32  @func2(i32  %op53, i32  %op55)
  %op57 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  8
  %op58 = load i32 , i32 * %op57
  %op59 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  9
  %op60 = load i32 , i32 * %op59
  %op61 = call i32  @func7(i32  %op60)
  %op62 = call i32  @func3(i32  %op58, i32  %op61)
  %op63 = load i32 , i32 * %op1
  %op64 = call i32  @func1(i32  %op56, i32  %op62, i32  %op63)
  %op65 = call i32  @func4(i32  %op32, i32  %op34, i32  %op64)
  %op66 = load i32 , i32 * %op3
  %op67 = load i32 , i32 * %op5
  %op68 = call i32  @func7(i32  %op67)
  %op69 = load i32 , i32 * %op7
  %op70 = call i32  @func3(i32  %op68, i32  %op69)
  %op71 = call i32  @func2(i32  %op66, i32  %op70)
  %op72 = call i32  @func3(i32  %op65, i32  %op71)
  %op73 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  0
  %op74 = load i32 , i32 * %op73
  %op75 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  1
  %op76 = load i32 , i32 * %op75
  %op77 = call i32  @func1(i32  %op72, i32  %op74, i32  %op76)
  %op78 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  2
  %op79 = load i32 , i32 * %op78
  %op80 = call i32  @func2(i32  %op77, i32  %op79)
  %op81 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  3
  %op82 = load i32 , i32 * %op81
  %op83 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  4
  %op84 = load i32 , i32 * %op83
  %op85 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  5
  %op86 = load i32 , i32 * %op85
  %op87 = call i32  @func5(i32  %op86)
  %op88 = call i32  @func3(i32  %op84, i32  %op87)
  %op89 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  6
  %op90 = load i32 , i32 * %op89
  %op91 = call i32  @func5(i32  %op90)
  %op92 = call i32  @func2(i32  %op88, i32  %op91)
  %op93 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  7
  %op94 = load i32 , i32 * %op93
  %op95 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  8
  %op96 = load i32 , i32 * %op95
  %op97 = call i32  @func7(i32  %op96)
  %op98 = call i32  @func1(i32  %op92, i32  %op94, i32  %op97)
  %op99 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  9
  %op100 = load i32 , i32 * %op99
  %op101 = call i32  @func5(i32  %op100)
  %op102 = call i32  @func2(i32  %op98, i32  %op101)
  %op103 = load i32 , i32 * %op1
  %op104 = call i32  @func3(i32  %op102, i32  %op103)
  %op105 = call i32  @func1(i32  %op80, i32  %op82, i32  %op104)
  %op106 = alloca i32 
  store i32  %op105, i32 * %op106
  %op107 = load i32 , i32 * %op106
  ret i32  %op107
}
