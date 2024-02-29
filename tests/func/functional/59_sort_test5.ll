; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/59_sort_test5.sy"

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

define i32  @swap(i32 * %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = alloca i32 
  %op7 = load i32 , i32 * %op4
  %op8 = load i32 , i32 * %op4
  %op9 = load i32 *, i32 ** %op3
  %op10 = getelementptr i32 , i32 * %op9, i32  %op7
  %op11 = load i32 , i32 * %op10
  store i32  %op11, i32 * %op6
  %op12 = load i32 , i32 * %op5
  %op13 = load i32 , i32 * %op5
  %op14 = load i32 *, i32 ** %op3
  %op15 = getelementptr i32 , i32 * %op14, i32  %op12
  %op16 = load i32 , i32 * %op15
  %op17 = load i32 , i32 * %op4
  %op18 = load i32 , i32 * %op4
  %op19 = load i32 *, i32 ** %op3
  %op20 = getelementptr i32 , i32 * %op19, i32  %op17
  store i32  %op16, i32 * %op20
  %op21 = load i32 , i32 * %op6
  %op22 = load i32 , i32 * %op5
  %op23 = load i32 , i32 * %op5
  %op24 = load i32 *, i32 ** %op3
  %op25 = getelementptr i32 , i32 * %op24, i32  %op22
  store i32  %op21, i32 * %op25
  ret i32  0
}
define i32  @heap_ajust(i32 * %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = alloca i32 
  %op7 = load i32 , i32 * %op4
  store i32  %op7, i32 * %op6
  %op8 = alloca i32 
  %op9 = load i32 , i32 * %op6
  %op10 = mul i32  %op9, 2
  %op11 = add i32  %op10, 1
  store i32  %op11, i32 * %op8
  br label %label12
label12:                                                ; preds = %label_entry, %label69
  %op13 = load i32 , i32 * %op8
  %op14 = load i32 , i32 * %op5
  %op15 = add i32  %op14, 1
  %op16 = icmp slt i32  %op13, %op15
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label19, label %label25
label19:                                                ; preds = %label12
  %op20 = load i32 , i32 * %op8
  %op21 = load i32 , i32 * %op5
  %op22 = icmp slt i32  %op20, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label43, label %label29
label25:                                                ; preds = %label12
  ret i32  0
label26:                                                ; preds = %label43
  %op27 = load i32 , i32 * %op8
  %op28 = add i32  %op27, 1
  store i32  %op28, i32 * %op8
  br label %label29
label29:                                                ; preds = %label19, %label43, %label26
  %op30 = load i32 , i32 * %op6
  %op31 = load i32 , i32 * %op6
  %op32 = load i32 *, i32 ** %op3
  %op33 = getelementptr i32 , i32 * %op32, i32  %op30
  %op34 = load i32 , i32 * %op33
  %op35 = load i32 , i32 * %op8
  %op36 = load i32 , i32 * %op8
  %op37 = load i32 *, i32 ** %op3
  %op38 = getelementptr i32 , i32 * %op37, i32  %op35
  %op39 = load i32 , i32 * %op38
  %op40 = icmp sgt i32  %op34, %op39
  %op41 = zext i1  %op40 to i32 
  %op42 = icmp ne i32  %op41, 0
  br i1  %op42, label %label59, label %label60
label43:                                                ; preds = %label19
  %op44 = load i32 , i32 * %op8
  %op45 = load i32 , i32 * %op8
  %op46 = load i32 *, i32 ** %op3
  %op47 = getelementptr i32 , i32 * %op46, i32  %op44
  %op48 = load i32 , i32 * %op47
  %op49 = load i32 , i32 * %op8
  %op50 = add i32  %op49, 1
  %op51 = load i32 , i32 * %op8
  %op52 = add i32  %op51, 1
  %op53 = load i32 *, i32 ** %op3
  %op54 = getelementptr i32 , i32 * %op53, i32  %op50
  %op55 = load i32 , i32 * %op54
  %op56 = icmp slt i32  %op48, %op55
  %op57 = zext i1  %op56 to i32 
  %op58 = icmp ne i32  %op57, 0
  br i1  %op58, label %label26, label %label29
label59:                                                ; preds = %label29
  ret i32  0
label60:                                                ; preds = %label29
  %op61 = load i32 *, i32 ** %op3
  %op62 = load i32 , i32 * %op6
  %op63 = load i32 , i32 * %op8
  %op64 = call i32  @swap(i32 * %op61, i32  %op62, i32  %op63)
  store i32  %op64, i32 * %op6
  %op65 = load i32 , i32 * %op8
  store i32  %op65, i32 * %op6
  %op66 = load i32 , i32 * %op6
  %op67 = mul i32  %op66, 2
  %op68 = add i32  %op67, 1
  store i32  %op68, i32 * %op8
  br label %label69
label69:                                                ; preds = %label60
  br label %label12
}
define i32  @heap_sort(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = alloca i32 
  %op6 = load i32 , i32 * %op3
  %op7 = sdiv i32  %op6, 2
  %op8 = sub i32  %op7, 1
  store i32  %op8, i32 * %op4
  br label %label9
label9:                                                ; preds = %label_entry, %label15
  %op10 = load i32 , i32 * %op4
  %op11 = mul i32  1, -1
  %op12 = icmp sgt i32  %op10, %op11
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label24
label15:                                                ; preds = %label9
  %op16 = load i32 , i32 * %op3
  %op17 = sub i32  %op16, 1
  store i32  %op17, i32 * %op5
  %op18 = load i32 *, i32 ** %op2
  %op19 = load i32 , i32 * %op4
  %op20 = load i32 , i32 * %op5
  %op21 = call i32  @heap_ajust(i32 * %op18, i32  %op19, i32  %op20)
  store i32  %op21, i32 * %op5
  %op22 = load i32 , i32 * %op4
  %op23 = sub i32  %op22, 1
  store i32  %op23, i32 * %op4
  br label %label9
label24:                                                ; preds = %label9
  %op25 = load i32 , i32 * %op3
  %op26 = sub i32  %op25, 1
  store i32  %op26, i32 * %op4
  br label %label27
label27:                                                ; preds = %label24, %label32
  %op28 = load i32 , i32 * %op4
  %op29 = icmp sgt i32  %op28, 0
  %op30 = zext i1  %op29 to i32 
  %op31 = icmp ne i32  %op30, 0
  br i1  %op31, label %label32, label %label46
label32:                                                ; preds = %label27
  %op33 = alloca i32 
  store i32  0, i32 * %op33
  %op34 = load i32 *, i32 ** %op2
  %op35 = load i32 , i32 * %op33
  %op36 = load i32 , i32 * %op4
  %op37 = call i32  @swap(i32 * %op34, i32  %op35, i32  %op36)
  store i32  %op37, i32 * %op5
  %op38 = load i32 , i32 * %op4
  %op39 = sub i32  %op38, 1
  store i32  %op39, i32 * %op5
  %op40 = load i32 *, i32 ** %op2
  %op41 = load i32 , i32 * %op33
  %op42 = load i32 , i32 * %op5
  %op43 = call i32  @heap_ajust(i32 * %op40, i32  %op41, i32  %op42)
  store i32  %op43, i32 * %op5
  %op44 = load i32 , i32 * %op4
  %op45 = sub i32  %op44, 1
  store i32  %op45, i32 * %op4
  br label %label27
label46:                                                ; preds = %label27
  ret i32  0
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
  %op14 = call i32  @heap_sort(i32 * %op12, i32  %op13)
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
