; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/2-ir-gen/autogen/testcases/lv0_1/77_substr.sy"

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

define i32  @MAX(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * %op3
  %op6 = icmp eq i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label11
label9:                                                ; preds = %label_entry
  %op10 = load i32 , i32 * %op2
  ret i32  %op10
label11:                                                ; preds = %label_entry
  %op12 = load i32 , i32 * %op2
  %op13 = load i32 , i32 * %op3
  %op14 = icmp sgt i32  %op12, %op13
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label17, label %label19
label17:                                                ; preds = %label11
  %op18 = load i32 , i32 * %op2
  ret i32  %op18
label19:                                                ; preds = %label11
  %op20 = load i32 , i32 * %op3
  ret i32  %op20
}
define i32  @max_sum_nonadjacent(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca [16 x i32 ]
  %op5 = load i32 *, i32 ** %op2
  %op6 = getelementptr i32 , i32 * %op5, i32  0
  %op7 = load i32 , i32 * %op6
  %op8 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  0
  store i32  %op7, i32 * %op8
  %op9 = load i32 *, i32 ** %op2
  %op10 = getelementptr i32 , i32 * %op9, i32  0
  %op11 = load i32 , i32 * %op10
  %op12 = load i32 *, i32 ** %op2
  %op13 = getelementptr i32 , i32 * %op12, i32  1
  %op14 = load i32 , i32 * %op13
  %op15 = call i32  @MAX(i32  %op11, i32  %op14)
  %op16 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  1
  store i32  %op15, i32 * %op16
  %op17 = alloca i32 
  store i32  2, i32 * %op17
  br label %label18
label18:                                                ; preds = %label_entry, %label24
  %op19 = load i32 , i32 * %op17
  %op20 = load i32 , i32 * %op3
  %op21 = icmp slt i32  %op19, %op20
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label24, label %label49
label24:                                                ; preds = %label18
  %op25 = load i32 , i32 * %op17
  %op26 = sub i32  %op25, 2
  %op27 = load i32 , i32 * %op17
  %op28 = sub i32  %op27, 2
  %op29 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op26
  %op30 = load i32 , i32 * %op29
  %op31 = load i32 , i32 * %op17
  %op32 = load i32 , i32 * %op17
  %op33 = load i32 *, i32 ** %op2
  %op34 = getelementptr i32 , i32 * %op33, i32  %op31
  %op35 = load i32 , i32 * %op34
  %op36 = add i32  %op30, %op35
  %op37 = load i32 , i32 * %op17
  %op38 = sub i32  %op37, 1
  %op39 = load i32 , i32 * %op17
  %op40 = sub i32  %op39, 1
  %op41 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op38
  %op42 = load i32 , i32 * %op41
  %op43 = call i32  @MAX(i32  %op36, i32  %op42)
  %op44 = load i32 , i32 * %op17
  %op45 = load i32 , i32 * %op17
  %op46 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op44
  store i32  %op43, i32 * %op46
  %op47 = load i32 , i32 * %op17
  %op48 = add i32  %op47, 1
  store i32  %op48, i32 * %op17
  br label %label18
label49:                                                ; preds = %label18
  %op50 = load i32 , i32 * %op3
  %op51 = sub i32  %op50, 1
  %op52 = load i32 , i32 * %op3
  %op53 = sub i32  %op52, 1
  %op54 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op51
  %op55 = load i32 , i32 * %op54
  ret i32  %op55
}
define i32  @longest_common_subseq(i32 * %arg0, i32  %arg1, i32 * %arg2, i32  %arg3) {
label_entry:
  %op4 = alloca i32 *
  store i32 * %arg0, i32 ** %op4
  %op5 = alloca i32 
  store i32  %arg1, i32 * %op5
  %op6 = alloca i32 *
  store i32 * %arg2, i32 ** %op6
  %op7 = alloca i32 
  store i32  %arg3, i32 * %op7
  %op8 = alloca [256 x i32 ]
  %op9 = alloca i32 
  %op10 = alloca i32 
  store i32  1, i32 * %op9
  br label %label11
label11:                                                ; preds = %label_entry, %label48
  %op12 = load i32 , i32 * %op9
  %op13 = load i32 , i32 * %op5
  %op14 = icmp sle i32  %op12, %op13
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label17, label %label18
label17:                                                ; preds = %label11
  store i32  1, i32 * %op10
  br label %label24
label18:                                                ; preds = %label11
  %op19 = load i32 , i32 * %op5
  %op20 = load i32 , i32 * %op5
  %op21 = load i32 , i32 * %op7
  %op22 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op19
  %op23 = load i32 , i32 * %op22
  ret i32  %op23
label24:                                                ; preds = %label17, %label84
  %op25 = load i32 , i32 * %op10
  %op26 = load i32 , i32 * %op7
  %op27 = icmp sle i32  %op25, %op26
  %op28 = zext i1  %op27 to i32 
  %op29 = icmp ne i32  %op28, 0
  br i1  %op29, label %label30, label %label48
label30:                                                ; preds = %label24
  %op31 = load i32 , i32 * %op9
  %op32 = sub i32  %op31, 1
  %op33 = load i32 , i32 * %op9
  %op34 = sub i32  %op33, 1
  %op35 = load i32 *, i32 ** %op4
  %op36 = getelementptr i32 , i32 * %op35, i32  %op32
  %op37 = load i32 , i32 * %op36
  %op38 = load i32 , i32 * %op10
  %op39 = sub i32  %op38, 1
  %op40 = load i32 , i32 * %op10
  %op41 = sub i32  %op40, 1
  %op42 = load i32 *, i32 ** %op6
  %op43 = getelementptr i32 , i32 * %op42, i32  %op39
  %op44 = load i32 , i32 * %op43
  %op45 = icmp eq i32  %op37, %op44
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label51, label %label65
label48:                                                ; preds = %label24
  %op49 = load i32 , i32 * %op9
  %op50 = add i32  %op49, 1
  store i32  %op50, i32 * %op9
  br label %label11
label51:                                                ; preds = %label30
  %op52 = load i32 , i32 * %op9
  %op53 = sub i32  %op52, 1
  %op54 = load i32 , i32 * %op9
  %op55 = sub i32  %op54, 1
  %op56 = load i32 , i32 * %op10
  %op57 = sub i32  %op56, 1
  %op58 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op53
  %op59 = load i32 , i32 * %op58
  %op60 = add i32  %op59, 1
  %op61 = load i32 , i32 * %op9
  %op62 = load i32 , i32 * %op9
  %op63 = load i32 , i32 * %op10
  %op64 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op61
  store i32  %op60, i32 * %op64
  br label %label84
label65:                                                ; preds = %label30
  %op66 = load i32 , i32 * %op9
  %op67 = sub i32  %op66, 1
  %op68 = load i32 , i32 * %op9
  %op69 = sub i32  %op68, 1
  %op70 = load i32 , i32 * %op10
  %op71 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op67
  %op72 = load i32 , i32 * %op71
  %op73 = load i32 , i32 * %op9
  %op74 = load i32 , i32 * %op9
  %op75 = load i32 , i32 * %op10
  %op76 = sub i32  %op75, 1
  %op77 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op73
  %op78 = load i32 , i32 * %op77
  %op79 = call i32  @MAX(i32  %op72, i32  %op78)
  %op80 = load i32 , i32 * %op9
  %op81 = load i32 , i32 * %op9
  %op82 = load i32 , i32 * %op10
  %op83 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op80
  store i32  %op79, i32 * %op83
  br label %label84
label84:                                                ; preds = %label51, %label65
  %op85 = load i32 , i32 * %op10
  %op86 = add i32  %op85, 1
  store i32  %op86, i32 * %op10
  br label %label24
}
define i32  @main() {
label_entry:
  %op0 = alloca [15 x i32 ]
  %op1 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
  store i32  8, i32 * %op1
  %op2 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  1
  store i32  7, i32 * %op2
  %op3 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  2
  store i32  4, i32 * %op3
  %op4 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  3
  store i32  1, i32 * %op4
  %op5 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  4
  store i32  2, i32 * %op5
  %op6 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  5
  store i32  7, i32 * %op6
  %op7 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  6
  store i32  0, i32 * %op7
  %op8 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  7
  store i32  1, i32 * %op8
  %op9 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  8
  store i32  9, i32 * %op9
  %op10 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  9
  store i32  3, i32 * %op10
  %op11 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  10
  store i32  4, i32 * %op11
  %op12 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  11
  store i32  8, i32 * %op12
  %op13 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  12
  store i32  3, i32 * %op13
  %op14 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  13
  store i32  7, i32 * %op14
  %op15 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  14
  store i32  0, i32 * %op15
  %op16 = alloca [13 x i32 ]
  %op17 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  0
  store i32  3, i32 * %op17
  %op18 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  1
  store i32  9, i32 * %op18
  %op19 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  2
  store i32  7, i32 * %op19
  %op20 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  3
  store i32  1, i32 * %op20
  %op21 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  4
  store i32  4, i32 * %op21
  %op22 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  5
  store i32  2, i32 * %op22
  %op23 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  6
  store i32  4, i32 * %op23
  %op24 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  7
  store i32  3, i32 * %op24
  %op25 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  8
  store i32  6, i32 * %op25
  %op26 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  9
  store i32  8, i32 * %op26
  %op27 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  10
  store i32  0, i32 * %op27
  %op28 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  11
  store i32  1, i32 * %op28
  %op29 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  12
  store i32  5, i32 * %op29
  %op30 = alloca i32 
  %op31 = alloca i32 
  %op32 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
  %op33 = call i32  @max_sum_nonadjacent(i32 * %op32, i32  15)
  call void @putint(i32  %op33)
  %op34 = trunc i32  10 to i8 
  call void @putch(i8  %op34)
  %op35 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
  %op36 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  0
  %op37 = call i32  @longest_common_subseq(i32 * %op35, i32  15, i32 * %op36, i32  13)
  call void @putint(i32  %op37)
  %op38 = trunc i32  10 to i8 
  call void @putch(i8  %op38)
  ret i32  0
}
