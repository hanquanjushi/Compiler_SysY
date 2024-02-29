; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/73_int_io.sy"

@ascii_0 = constant i32  48
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

define i32  @my_getint() {
label_entry:
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  %op1 = alloca i32 
  br label %label2
label2:                                                ; preds = %label_entry, %label17
  %op3 = icmp ne i32  1, 0
  br i1  %op3, label %label4, label %label13
label4:                                                ; preds = %label2
  %op5 = call i8  @getch()
  %op6 = load i32 , i32 * @ascii_0
  %op7 = zext i8  %op5 to i32 
  %op8 = sub i32  %op7, %op6
  store i32  %op8, i32 * %op1
  %op9 = load i32 , i32 * %op1
  %op10 = icmp slt i32  %op9, 0
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label15, label %label18
label13:                                                ; preds = %label2, %label16
  %op14 = load i32 , i32 * %op1
  store i32  %op14, i32 * %op0
  br label %label23
label15:                                                ; preds = %label4, %label18
  br label %label17
label16:                                                ; preds = %label18
  br label %label13
label17:                                                ; preds = %label15
  br label %label2
label18:                                                ; preds = %label4
  %op19 = load i32 , i32 * %op1
  %op20 = icmp sgt i32  %op19, 9
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label15, label %label16
label23:                                                ; preds = %label13, %label42
  %op24 = icmp ne i32  1, 0
  br i1  %op24, label %label25, label %label34
label25:                                                ; preds = %label23
  %op26 = call i8  @getch()
  %op27 = load i32 , i32 * @ascii_0
  %op28 = zext i8  %op26 to i32 
  %op29 = sub i32  %op28, %op27
  store i32  %op29, i32 * %op1
  %op30 = load i32 , i32 * %op1
  %op31 = icmp sge i32  %op30, 0
  %op32 = zext i1  %op31 to i32 
  %op33 = icmp ne i32  %op32, 0
  br i1  %op33, label %label43, label %label41
label34:                                                ; preds = %label23, %label41
  %op35 = load i32 , i32 * %op0
  ret i32  %op35
label36:                                                ; preds = %label43
  %op37 = load i32 , i32 * %op0
  %op38 = mul i32  %op37, 10
  %op39 = load i32 , i32 * %op1
  %op40 = add i32  %op38, %op39
  store i32  %op40, i32 * %op0
  br label %label42
label41:                                                ; preds = %label25, %label43
  br label %label34
label42:                                                ; preds = %label36
  br label %label23
label43:                                                ; preds = %label25
  %op44 = load i32 , i32 * %op1
  %op45 = icmp sle i32  %op44, 9
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label36, label %label41
}
define void @my_putint(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = alloca [16 x i32 ]
  %op3 = alloca i32 
  store i32  0, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label9
  %op5 = load i32 , i32 * %op1
  %op6 = icmp sgt i32  %op5, 0
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label21
label9:                                                ; preds = %label4
  %op10 = load i32 , i32 * %op1
  %op11 = srem i32  %op10, 10
  %op12 = load i32 , i32 * @ascii_0
  %op13 = add i32  %op11, %op12
  %op14 = load i32 , i32 * %op3
  %op15 = load i32 , i32 * %op3
  %op16 = getelementptr [16 x i32 ], [16 x i32 ]* %op2, i32  0, i32  %op14
  store i32  %op13, i32 * %op16
  %op17 = load i32 , i32 * %op1
  %op18 = sdiv i32  %op17, 10
  store i32  %op18, i32 * %op1
  %op19 = load i32 , i32 * %op3
  %op20 = add i32  %op19, 1
  store i32  %op20, i32 * %op3
  br label %label4
label21:                                                ; preds = %label4
  br label %label22
label22:                                                ; preds = %label21, %label27
  %op23 = load i32 , i32 * %op3
  %op24 = icmp sgt i32  %op23, 0
  %op25 = zext i1  %op24 to i32 
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label27, label %label35
label27:                                                ; preds = %label22
  %op28 = load i32 , i32 * %op3
  %op29 = sub i32  %op28, 1
  store i32  %op29, i32 * %op3
  %op30 = load i32 , i32 * %op3
  %op31 = load i32 , i32 * %op3
  %op32 = getelementptr [16 x i32 ], [16 x i32 ]* %op2, i32  0, i32  %op30
  %op33 = load i32 , i32 * %op32
  %op34 = trunc i32  %op33 to i8 
  call void @putch(i8  %op34)
  br label %label22
label35:                                                ; preds = %label22
  ret void
}
define i32  @main() {
label_entry:
  %op0 = call i32  @my_getint()
  %op1 = alloca i32 
  store i32  %op0, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label7
  %op3 = load i32 , i32 * %op1
  %op4 = icmp sgt i32  %op3, 0
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label14
label7:                                                ; preds = %label2
  %op8 = call i32  @my_getint()
  %op9 = alloca i32 
  store i32  %op8, i32 * %op9
  %op10 = load i32 , i32 * %op9
  call void @my_putint(i32  %op10)
  %op11 = trunc i32  10 to i8 
  call void @putch(i8  %op11)
  %op12 = load i32 , i32 * %op1
  %op13 = sub i32  %op12, 1
  store i32  %op13, i32 * %op1
  br label %label2
label14:                                                ; preds = %label2
  ret i32  0
}
