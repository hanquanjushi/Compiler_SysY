; ModuleID = 'cminus'
source_filename = "/home/hq/Test/SysY/tests/func/functional/81_skip_spaces.sy"

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

define i32  @main() {
label_entry:
  %op0 = alloca [100 x i32 ]
  %op1 = alloca i32 
  store i32  0, i32 * %op1
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label6
  %op4 = call i32  @getint()
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label13
label6:                                                ; preds = %label3
  %op7 = call i32  @getint()
  %op8 = load i32 , i32 * %op1
  %op9 = load i32 , i32 * %op1
  %op10 = getelementptr [100 x i32 ], [100 x i32 ]* %op0, i32  0, i32  %op8
  store i32  %op7, i32 * %op10
  %op11 = load i32 , i32 * %op1
  %op12 = add i32  %op11, 1
  store i32  %op12, i32 * %op1
  br label %label3
label13:                                                ; preds = %label3
  br label %label14
label14:                                                ; preds = %label13, %label17
  %op15 = load i32 , i32 * %op1
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label17, label %label26
label17:                                                ; preds = %label14
  %op18 = load i32 , i32 * %op1
  %op19 = sub i32  %op18, 1
  store i32  %op19, i32 * %op1
  %op20 = load i32 , i32 * %op2
  %op21 = load i32 , i32 * %op1
  %op22 = load i32 , i32 * %op1
  %op23 = getelementptr [100 x i32 ], [100 x i32 ]* %op0, i32  0, i32  %op21
  %op24 = load i32 , i32 * %op23
  %op25 = add i32  %op20, %op24
  store i32  %op25, i32 * %op2
  br label %label14
label26:                                                ; preds = %label14
  %op27 = load i32 , i32 * %op2
  %op28 = srem i32  %op27, 79
  ret i32  %op28
}
