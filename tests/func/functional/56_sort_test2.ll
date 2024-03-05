; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/56_sort_test2.sy"

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
  %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  %op13 = call i32  @insertsort(i32 * %op12)
  store i32  %op13, i32 * %op11
  br label %label14
label14:                                                ; preds = %label_entry, %label20
  %op15 = load i32 , i32 * %op11
  %op16 = load i32 , i32 * @n
  %op17 = icmp slt i32  %op15, %op16
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label20, label %label31
label20:                                                ; preds = %label14
  %op21 = alloca i32 
  %op22 = load i32 , i32 * %op11
  %op23 = load i32 , i32 * %op11
  %op24 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op22
  %op25 = load i32 , i32 * %op24
  store i32  %op25, i32 * %op21
  %op26 = load i32 , i32 * %op21
  call void @putint(i32  %op26)
  store i32  10, i32 * %op21
  %op27 = load i32 , i32 * %op21
  %op28 = trunc i32  %op27 to i8 
  call void @putch(i8  %op28)
  %op29 = load i32 , i32 * %op11
  %op30 = add i32  %op29, 1
  store i32  %op30, i32 * %op11
  br label %label14
label31:                                                ; preds = %label14
  ret i32  0
}
