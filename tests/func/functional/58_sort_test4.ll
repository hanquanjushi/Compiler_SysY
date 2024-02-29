; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/58_sort_test4.sy"

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

define i32  @select_sort(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = alloca i32 
  %op6 = alloca i32 
  store i32  0, i32 * %op4
  br label %label7
label7:                                                ; preds = %label_entry, %label71
  %op8 = load i32 , i32 * %op4
  %op9 = load i32 , i32 * %op3
  %op10 = sub i32  %op9, 1
  %op11 = icmp slt i32  %op8, %op10
  %op12 = zext i1  %op11 to i32 
  %op13 = icmp ne i32  %op12, 0
  br i1  %op13, label %label14, label %label18
label14:                                                ; preds = %label7
  %op15 = load i32 , i32 * %op4
  store i32  %op15, i32 * %op6
  %op16 = load i32 , i32 * %op4
  %op17 = add i32  %op16, 1
  store i32  %op17, i32 * %op5
  br label %label19
label18:                                                ; preds = %label7
  ret i32  0
label19:                                                ; preds = %label14, %label47
  %op20 = load i32 , i32 * %op5
  %op21 = load i32 , i32 * %op3
  %op22 = icmp slt i32  %op20, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label25, label %label39
label25:                                                ; preds = %label19
  %op26 = load i32 , i32 * %op6
  %op27 = load i32 , i32 * %op6
  %op28 = load i32 *, i32 ** %op2
  %op29 = getelementptr i32 , i32 * %op28, i32  %op26
  %op30 = load i32 , i32 * %op29
  %op31 = load i32 , i32 * %op5
  %op32 = load i32 , i32 * %op5
  %op33 = load i32 *, i32 ** %op2
  %op34 = getelementptr i32 , i32 * %op33, i32  %op31
  %op35 = load i32 , i32 * %op34
  %op36 = icmp sgt i32  %op30, %op35
  %op37 = zext i1  %op36 to i32 
  %op38 = icmp ne i32  %op37, 0
  br i1  %op38, label %label45, label %label47
label39:                                                ; preds = %label19
  %op40 = load i32 , i32 * %op6
  %op41 = load i32 , i32 * %op4
  %op42 = icmp ne i32  %op40, %op41
  %op43 = zext i1  %op42 to i32 
  %op44 = icmp ne i32  %op43, 0
  br i1  %op44, label %label50, label %label71
label45:                                                ; preds = %label25
  %op46 = load i32 , i32 * %op5
  store i32  %op46, i32 * %op6
  br label %label47
label47:                                                ; preds = %label25, %label45
  %op48 = load i32 , i32 * %op5
  %op49 = add i32  %op48, 1
  store i32  %op49, i32 * %op5
  br label %label19
label50:                                                ; preds = %label39
  %op51 = alloca i32 
  %op52 = load i32 , i32 * %op6
  %op53 = load i32 , i32 * %op6
  %op54 = load i32 *, i32 ** %op2
  %op55 = getelementptr i32 , i32 * %op54, i32  %op52
  %op56 = load i32 , i32 * %op55
  store i32  %op56, i32 * %op51
  %op57 = load i32 , i32 * %op4
  %op58 = load i32 , i32 * %op4
  %op59 = load i32 *, i32 ** %op2
  %op60 = getelementptr i32 , i32 * %op59, i32  %op57
  %op61 = load i32 , i32 * %op60
  %op62 = load i32 , i32 * %op6
  %op63 = load i32 , i32 * %op6
  %op64 = load i32 *, i32 ** %op2
  %op65 = getelementptr i32 , i32 * %op64, i32  %op62
  store i32  %op61, i32 * %op65
  %op66 = load i32 , i32 * %op51
  %op67 = load i32 , i32 * %op4
  %op68 = load i32 , i32 * %op4
  %op69 = load i32 *, i32 ** %op2
  %op70 = getelementptr i32 , i32 * %op69, i32  %op67
  store i32  %op66, i32 * %op70
  br label %label71
label71:                                                ; preds = %label39, %label50
  %op72 = load i32 , i32 * %op4
  %op73 = add i32  %op72, 1
  store i32  %op73, i32 * %op4
  br label %label7
}
define i32  @main() {
label_entry:
  store i32  10, i32 * @n
  %op0 = alloca [10 x i32 ]
  %op1 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  store i32  4, i32 * %op1
  %op2 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  1
  store i32  3, i32 * %op2
  %op3 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  2
  store i32  9, i32 * %op3
  %op4 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  3
  store i32  2, i32 * %op4
  %op5 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  4
  store i32  0, i32 * %op5
  %op6 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  5
  store i32  1, i32 * %op6
  %op7 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  6
  store i32  6, i32 * %op7
  %op8 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  7
  store i32  5, i32 * %op8
  %op9 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  8
  store i32  7, i32 * %op9
  %op10 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  9
  store i32  8, i32 * %op10
  %op11 = alloca i32 
  store i32  0, i32 * %op11
  %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  %op13 = load i32 , i32 * @n
  %op14 = call i32  @select_sort(i32 * %op12, i32  %op13)
  store i32  %op14, i32 * %op11
  br label %label15
label15:                                                ; preds = %label_entry, %label21
  %op16 = load i32 , i32 * %op11
  %op17 = load i32 , i32 * @n
  %op18 = icmp slt i32  %op16, %op17
  %op19 = zext i1  %op18 to i32 
  %op20 = icmp ne i32  %op19, 0
  br i1  %op20, label %label21, label %label32
label21:                                                ; preds = %label15
  %op22 = alloca i32 
  %op23 = load i32 , i32 * %op11
  %op24 = load i32 , i32 * %op11
  %op25 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op23
  %op26 = load i32 , i32 * %op25
  store i32  %op26, i32 * %op22
  %op27 = load i32 , i32 * %op22
  call void @putint(i32  %op27)
  store i32  10, i32 * %op22
  %op28 = load i32 , i32 * %op22
  %op29 = trunc i32  %op28 to i8 
  call void @putch(i8  %op29)
  %op30 = load i32 , i32 * %op11
  %op31 = add i32  %op30, 1
  store i32  %op31, i32 * %op11
  br label %label15
label32:                                                ; preds = %label15
  ret i32  0
}
