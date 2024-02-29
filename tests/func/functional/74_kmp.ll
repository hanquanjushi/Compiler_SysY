; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/74_kmp.sy"

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
  %op4 = mul i32  1, -1
  %op5 = load i32 *, i32 ** %op3
  %op6 = getelementptr i32 , i32 * %op5, i32  0
  store i32  %op4, i32 * %op6
  %op7 = alloca i32 
  store i32  0, i32 * %op7
  %op8 = mul i32  1, -1
  %op9 = alloca i32 
  store i32  %op8, i32 * %op9
  br label %label10
label10:                                                ; preds = %label_entry, %label40
  %op11 = load i32 , i32 * %op7
  %op12 = load i32 , i32 * %op7
  %op13 = load i32 *, i32 ** %op2
  %op14 = getelementptr i32 , i32 * %op13, i32  %op11
  %op15 = load i32 , i32 * %op14
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label17, label %label23
label17:                                                ; preds = %label10
  %op18 = load i32 , i32 * %op9
  %op19 = mul i32  1, -1
  %op20 = icmp eq i32  %op18, %op19
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label24, label %label41
label23:                                                ; preds = %label10
  ret void
label24:                                                ; preds = %label17, %label41
  %op25 = load i32 , i32 * %op9
  %op26 = add i32  %op25, 1
  store i32  %op26, i32 * %op9
  %op27 = load i32 , i32 * %op7
  %op28 = add i32  %op27, 1
  store i32  %op28, i32 * %op7
  %op29 = load i32 , i32 * %op9
  %op30 = load i32 , i32 * %op7
  %op31 = load i32 , i32 * %op7
  %op32 = load i32 *, i32 ** %op3
  %op33 = getelementptr i32 , i32 * %op32, i32  %op30
  store i32  %op29, i32 * %op33
  br label %label40
label34:                                                ; preds = %label41
  %op35 = load i32 , i32 * %op9
  %op36 = load i32 , i32 * %op9
  %op37 = load i32 *, i32 ** %op3
  %op38 = getelementptr i32 , i32 * %op37, i32  %op35
  %op39 = load i32 , i32 * %op38
  store i32  %op39, i32 * %op9
  br label %label40
label40:                                                ; preds = %label24, %label34
  br label %label10
label41:                                                ; preds = %label17
  %op42 = load i32 , i32 * %op7
  %op43 = load i32 , i32 * %op7
  %op44 = load i32 *, i32 ** %op2
  %op45 = getelementptr i32 , i32 * %op44, i32  %op42
  %op46 = load i32 , i32 * %op45
  %op47 = load i32 , i32 * %op9
  %op48 = load i32 , i32 * %op9
  %op49 = load i32 *, i32 ** %op2
  %op50 = getelementptr i32 , i32 * %op49, i32  %op47
  %op51 = load i32 , i32 * %op50
  %op52 = icmp eq i32  %op46, %op51
  %op53 = zext i1  %op52 to i32 
  %op54 = icmp ne i32  %op53, 0
  br i1  %op54, label %label24, label %label34
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
label9:                                                ; preds = %label_entry, %label53
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
  br i1  %op29, label %label32, label %label43
label30:                                                ; preds = %label9
  %op31 = mul i32  1, -1
  ret i32  %op31
label32:                                                ; preds = %label16
  %op33 = load i32 , i32 * %op7
  %op34 = add i32  %op33, 1
  store i32  %op34, i32 * %op7
  %op35 = load i32 , i32 * %op8
  %op36 = add i32  %op35, 1
  store i32  %op36, i32 * %op8
  %op37 = load i32 , i32 * %op7
  %op38 = load i32 , i32 * %op7
  %op39 = load i32 *, i32 ** %op2
  %op40 = getelementptr i32 , i32 * %op39, i32  %op37
  %op41 = load i32 , i32 * %op40
  %op42 = icmp eq i32  %op41, 0
  br i1  %op42, label %label54, label %label56
label43:                                                ; preds = %label16
  %op44 = load i32 , i32 * %op7
  %op45 = load i32 , i32 * %op7
  %op46 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op4, i32  0, i32  %op44
  %op47 = load i32 , i32 * %op46
  store i32  %op47, i32 * %op7
  %op48 = load i32 , i32 * %op7
  %op49 = mul i32  1, -1
  %op50 = icmp eq i32  %op48, %op49
  %op51 = zext i1  %op50 to i32 
  %op52 = icmp ne i32  %op51, 0
  br i1  %op52, label %label57, label %label62
label53:                                                ; preds = %label56, %label62
  br label %label9
label54:                                                ; preds = %label32
  %op55 = load i32 , i32 * %op8
  ret i32  %op55
label56:                                                ; preds = %label32
  br label %label53
label57:                                                ; preds = %label43
  %op58 = load i32 , i32 * %op7
  %op59 = add i32  %op58, 1
  store i32  %op59, i32 * %op7
  %op60 = load i32 , i32 * %op8
  %op61 = add i32  %op60, 1
  store i32  %op61, i32 * %op8
  br label %label62
label62:                                                ; preds = %label43, %label57
  br label %label53
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
