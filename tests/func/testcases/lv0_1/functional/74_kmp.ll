; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/testcases/lv0_1/functional/74_kmp.sy"

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

define void @get_next(i32 * %arg0, i32 * %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 *
  store i32 * %arg1, i32 ** %op3
  %op4 = load i32 *, i32 ** %op3
  %op5 = getelementptr i32 , i32 * %op4, i32  0
  store i32  -1, i32 * %op5
  %op6 = alloca i32 
  store i32  0, i32 * %op6
  %op7 = alloca i32 
  store i32  -1, i32 * %op7
  br label %label8
label8:                                                ; preds = %label_entry, %label37
  %op9 = load i32 , i32 * %op6
  %op10 = load i32 , i32 * %op6
  %op11 = load i32 *, i32 ** %op2
  %op12 = getelementptr i32 , i32 * %op11, i32  %op9
  %op13 = load i32 , i32 * %op12
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label20
label15:                                                ; preds = %label8
  %op16 = load i32 , i32 * %op7
  %op17 = icmp eq i32  %op16, -1
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label21, label %label38
label20:                                                ; preds = %label8
  ret void
label21:                                                ; preds = %label15, %label38
  %op22 = load i32 , i32 * %op7
  %op23 = add i32  %op22, 1
  store i32  %op23, i32 * %op7
  %op24 = load i32 , i32 * %op6
  %op25 = add i32  %op24, 1
  store i32  %op25, i32 * %op6
  %op26 = load i32 , i32 * %op7
  %op27 = load i32 , i32 * %op6
  %op28 = load i32 , i32 * %op6
  %op29 = load i32 *, i32 ** %op3
  %op30 = getelementptr i32 , i32 * %op29, i32  %op27
  store i32  %op26, i32 * %op30
  br label %label37
label31:                                                ; preds = %label38
  %op32 = load i32 , i32 * %op7
  %op33 = load i32 , i32 * %op7
  %op34 = load i32 *, i32 ** %op3
  %op35 = getelementptr i32 , i32 * %op34, i32  %op32
  %op36 = load i32 , i32 * %op35
  store i32  %op36, i32 * %op7
  br label %label37
label37:                                                ; preds = %label21, %label31
  br label %label8
label38:                                                ; preds = %label15
  %op39 = load i32 , i32 * %op6
  %op40 = load i32 , i32 * %op6
  %op41 = load i32 *, i32 ** %op2
  %op42 = getelementptr i32 , i32 * %op41, i32  %op39
  %op43 = load i32 , i32 * %op42
  %op44 = load i32 , i32 * %op7
  %op45 = load i32 , i32 * %op7
  %op46 = load i32 *, i32 ** %op2
  %op47 = getelementptr i32 , i32 * %op46, i32  %op44
  %op48 = load i32 , i32 * %op47
  %op49 = icmp eq i32  %op43, %op48
  %op50 = zext i1  %op49 to i32 
  %op51 = icmp ne i32  %op50, 0
  br i1  %op51, label %label21, label %label31
}
define i32  @KMP(i32 * %arg0, i32 * %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 *
  store i32 * %arg1, i32 ** %op3
  %op4 = alloca [4096 x i32 ]
  %op5 = load i32 *, i32 ** %op2
  %op6 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op4, i32  0, i32  0
  call void @get_next(i32 * %op5, i32 * %op6)
  %op7 = alloca i32 
  store i32  0, i32 * %op7
  %op8 = alloca i32 
  store i32  0, i32 * %op8
  br label %label9
label9:                                                ; preds = %label_entry, %label51
  %op10 = load i32 , i32 * %op8
  %op11 = load i32 , i32 * %op8
  %op12 = load i32 *, i32 ** %op3
  %op13 = getelementptr i32 , i32 * %op12, i32  %op10
  %op14 = load i32 , i32 * %op13
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label30
label16:                                                ; preds = %label9
  %op17 = load i32 , i32 * %op7
  %op18 = load i32 , i32 * %op7
  %op19 = load i32 *, i32 ** %op2
  %op20 = getelementptr i32 , i32 * %op19, i32  %op17
  %op21 = load i32 , i32 * %op20
  %op22 = load i32 , i32 * %op8
  %op23 = load i32 , i32 * %op8
  %op24 = load i32 *, i32 ** %op3
  %op25 = getelementptr i32 , i32 * %op24, i32  %op22
  %op26 = load i32 , i32 * %op25
  %op27 = icmp eq i32  %op21, %op26
  %op28 = zext i1  %op27 to i32 
  %op29 = icmp ne i32  %op28, 0
  br i1  %op29, label %label31, label %label42
label30:                                                ; preds = %label9
  ret i32  -1
label31:                                                ; preds = %label16
  %op32 = load i32 , i32 * %op7
  %op33 = add i32  %op32, 1
  store i32  %op33, i32 * %op7
  %op34 = load i32 , i32 * %op8
  %op35 = add i32  %op34, 1
  store i32  %op35, i32 * %op8
  %op36 = load i32 , i32 * %op7
  %op37 = load i32 , i32 * %op7
  %op38 = load i32 *, i32 ** %op2
  %op39 = getelementptr i32 , i32 * %op38, i32  %op36
  %op40 = load i32 , i32 * %op39
  %op41 = icmp eq i32  %op40, 0
  br i1  %op41, label %label52, label %label54
label42:                                                ; preds = %label16
  %op43 = load i32 , i32 * %op7
  %op44 = load i32 , i32 * %op7
  %op45 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op4, i32  0, i32  %op43
  %op46 = load i32 , i32 * %op45
  store i32  %op46, i32 * %op7
  %op47 = load i32 , i32 * %op7
  %op48 = icmp eq i32  %op47, -1
  %op49 = zext i1  %op48 to i32 
  %op50 = icmp ne i32  %op49, 0
  br i1  %op50, label %label55, label %label60
label51:                                                ; preds = %label54, %label60
  br label %label9
label52:                                                ; preds = %label31
  %op53 = load i32 , i32 * %op8
  ret i32  %op53
label54:                                                ; preds = %label31
  br label %label51
label55:                                                ; preds = %label42
  %op56 = load i32 , i32 * %op7
  %op57 = add i32  %op56, 1
  store i32  %op57, i32 * %op7
  %op58 = load i32 , i32 * %op8
  %op59 = add i32  %op58, 1
  store i32  %op59, i32 * %op8
  br label %label60
label60:                                                ; preds = %label42, %label55
  br label %label51
}
define i32  @read_str(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label27
  %op4 = icmp ne i32  1, 0
  br i1  %op4, label %label5, label %label20
label5:                                                ; preds = %label3
  %op6 = call i8  @getch()
  %op7 = load i32 , i32 * %op2
  %op8 = load i32 , i32 * %op2
  %op9 = load i32 *, i32 ** %op1
  %op10 = getelementptr i32 , i32 * %op9, i32  %op7
  %op11 = zext i8  %op6 to i32 
  store i32  %op11, i32 * %op10
  %op12 = load i32 , i32 * %op2
  %op13 = load i32 , i32 * %op2
  %op14 = load i32 *, i32 ** %op1
  %op15 = getelementptr i32 , i32 * %op14, i32  %op12
  %op16 = load i32 , i32 * %op15
  %op17 = icmp eq i32  %op16, 10
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label26, label %label27
label20:                                                ; preds = %label3, %label26
  %op21 = load i32 , i32 * %op2
  %op22 = load i32 , i32 * %op2
  %op23 = load i32 *, i32 ** %op1
  %op24 = getelementptr i32 , i32 * %op23, i32  %op21
  store i32  0, i32 * %op24
  %op25 = load i32 , i32 * %op2
  ret i32  %op25
label26:                                                ; preds = %label5
  br label %label20
label27:                                                ; preds = %label5
  %op28 = load i32 , i32 * %op2
  %op29 = add i32  %op28, 1
  store i32  %op29, i32 * %op2
  br label %label3
}
define i32  @main() {
label_entry:
  %op0 = alloca [4096 x i32 ]
  %op1 = alloca [4096 x i32 ]
  %op2 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op0, i32  0, i32  0
  %op3 = call i32  @read_str(i32 * %op2)
  %op4 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op1, i32  0, i32  0
  %op5 = call i32  @read_str(i32 * %op4)
  %op6 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op0, i32  0, i32  0
  %op7 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op1, i32  0, i32  0
  %op8 = call i32  @KMP(i32 * %op6, i32 * %op7)
  call void @putint(i32  %op8)
  %op9 = trunc i32  10 to i8 
  call void @putch(i8  %op9)
  ret i32  0
}
