; ModuleID = 'cminus'
source_filename = "/home/hq/Test/SysY/tests/func/functional/76_n_queens.sy"

@ans = global [50 x i32 ] zeroinitializer
@sum = global i32  0
@n = global i32  zeroinitializer
@row = global [50 x i32 ] zeroinitializer
@line1 = global [50 x i32 ] zeroinitializer
@line2 = global [100 x i32 ] zeroinitializer
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

define void @printans() {
label_entry:
  %op0 = load i32 , i32 * @sum
  %op1 = add i32  %op0, 1
  store i32  %op1, i32 * @sum
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label24
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @n
  %op6 = icmp sle i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label19
label9:                                                ; preds = %label3
  %op10 = load i32 , i32 * %op2
  %op11 = load i32 , i32 * %op2
  %op12 = getelementptr [50 x i32 ], [50 x i32 ]* @ans, i32  0, i32  %op10
  %op13 = load i32 , i32 * %op12
  call void @putint(i32  %op13)
  %op14 = load i32 , i32 * %op2
  %op15 = load i32 , i32 * @n
  %op16 = icmp eq i32  %op14, %op15
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label20, label %label22
label19:                                                ; preds = %label3
  ret void
label20:                                                ; preds = %label9
  %op21 = trunc i32  10 to i8 
  call void @putch(i8  %op21)
  ret void
label22:                                                ; preds = %label9
  %op23 = trunc i32  32 to i8 
  call void @putch(i8  %op23)
  br label %label24
label24:                                                ; preds = %label22
  %op25 = load i32 , i32 * %op2
  %op26 = add i32  %op25, 1
  store i32  %op26, i32 * %op2
  br label %label3
}
define void @f(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label28
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @n
  %op6 = icmp sle i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label17
label9:                                                ; preds = %label3
  %op10 = load i32 , i32 * %op2
  %op11 = load i32 , i32 * %op2
  %op12 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op10
  %op13 = load i32 , i32 * %op12
  %op14 = icmp ne i32  %op13, 1
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label45, label %label28
label17:                                                ; preds = %label3
  ret void
label18:                                                ; preds = %label31
  %op19 = load i32 , i32 * %op2
  %op20 = load i32 , i32 * %op1
  %op21 = load i32 , i32 * %op1
  %op22 = getelementptr [50 x i32 ], [50 x i32 ]* @ans, i32  0, i32  %op20
  store i32  %op19, i32 * %op22
  %op23 = load i32 , i32 * %op1
  %op24 = load i32 , i32 * @n
  %op25 = icmp eq i32  %op23, %op24
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label57, label %label58
label28:                                                ; preds = %label9, %label45, %label31, %label58
  %op29 = load i32 , i32 * %op2
  %op30 = add i32  %op29, 1
  store i32  %op30, i32 * %op2
  br label %label3
label31:                                                ; preds = %label45
  %op32 = load i32 , i32 * @n
  %op33 = load i32 , i32 * %op1
  %op34 = add i32  %op32, %op33
  %op35 = load i32 , i32 * %op2
  %op36 = sub i32  %op34, %op35
  %op37 = load i32 , i32 * @n
  %op38 = load i32 , i32 * %op1
  %op39 = add i32  %op37, %op38
  %op40 = load i32 , i32 * %op2
  %op41 = sub i32  %op39, %op40
  %op42 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op36
  %op43 = load i32 , i32 * %op42
  %op44 = icmp eq i32  %op43, 0
  br i1  %op44, label %label18, label %label28
label45:                                                ; preds = %label9
  %op46 = load i32 , i32 * %op1
  %op47 = load i32 , i32 * %op2
  %op48 = add i32  %op46, %op47
  %op49 = load i32 , i32 * %op1
  %op50 = load i32 , i32 * %op2
  %op51 = add i32  %op49, %op50
  %op52 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op48
  %op53 = load i32 , i32 * %op52
  %op54 = icmp eq i32  %op53, 0
  %op55 = zext i1  %op54 to i32 
  %op56 = icmp ne i32  %op55, 0
  br i1  %op56, label %label31, label %label28
label57:                                                ; preds = %label18
  call void @printans()
  br label %label58
label58:                                                ; preds = %label18, %label57
  %op59 = load i32 , i32 * %op2
  %op60 = load i32 , i32 * %op2
  %op61 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op59
  store i32  1, i32 * %op61
  %op62 = load i32 , i32 * %op1
  %op63 = load i32 , i32 * %op2
  %op64 = add i32  %op62, %op63
  %op65 = load i32 , i32 * %op1
  %op66 = load i32 , i32 * %op2
  %op67 = add i32  %op65, %op66
  %op68 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op64
  store i32  1, i32 * %op68
  %op69 = load i32 , i32 * @n
  %op70 = load i32 , i32 * %op1
  %op71 = add i32  %op69, %op70
  %op72 = load i32 , i32 * %op2
  %op73 = sub i32  %op71, %op72
  %op74 = load i32 , i32 * @n
  %op75 = load i32 , i32 * %op1
  %op76 = add i32  %op74, %op75
  %op77 = load i32 , i32 * %op2
  %op78 = sub i32  %op76, %op77
  %op79 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op73
  store i32  1, i32 * %op79
  %op80 = load i32 , i32 * %op1
  %op81 = add i32  %op80, 1
  call void @f(i32  %op81)
  %op82 = load i32 , i32 * %op2
  %op83 = load i32 , i32 * %op2
  %op84 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op82
  store i32  0, i32 * %op84
  %op85 = load i32 , i32 * %op1
  %op86 = load i32 , i32 * %op2
  %op87 = add i32  %op85, %op86
  %op88 = load i32 , i32 * %op1
  %op89 = load i32 , i32 * %op2
  %op90 = add i32  %op88, %op89
  %op91 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op87
  store i32  0, i32 * %op91
  %op92 = load i32 , i32 * @n
  %op93 = load i32 , i32 * %op1
  %op94 = add i32  %op92, %op93
  %op95 = load i32 , i32 * %op2
  %op96 = sub i32  %op94, %op95
  %op97 = load i32 , i32 * @n
  %op98 = load i32 , i32 * %op1
  %op99 = add i32  %op97, %op98
  %op100 = load i32 , i32 * %op2
  %op101 = sub i32  %op99, %op100
  %op102 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op96
  store i32  0, i32 * %op102
  br label %label28
}
define i32  @main() {
label_entry:
  %op0 = call i32  @getint()
  %op1 = alloca i32 
  store i32  %op0, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label7
  %op3 = load i32 , i32 * %op1
  %op4 = icmp sgt i32  %op3, 0
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label11
label7:                                                ; preds = %label2
  %op8 = call i32  @getint()
  store i32  %op8, i32 * @n
  call void @f(i32  1)
  %op9 = load i32 , i32 * %op1
  %op10 = sub i32  %op9, 1
  store i32  %op10, i32 * %op1
  br label %label2
label11:                                                ; preds = %label2
  %op12 = load i32 , i32 * @sum
  ret i32  %op12
}
