; ModuleID = 'cminus'
source_filename = "/home/hq/Test/SysY/tests/func/functional/26_while_test1.sy"

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

define i32  @doubleWhile() {
label_entry:
  %op0 = alloca i32 
  store i32  5, i32 * %op0
  %op1 = alloca i32 
  store i32  7, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label20
  %op3 = load i32 , i32 * %op0
  %op4 = icmp slt i32  %op3, 100
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label10
label7:                                                ; preds = %label2
  %op8 = load i32 , i32 * %op0
  %op9 = add i32  %op8, 30
  store i32  %op9, i32 * %op0
  br label %label12
label10:                                                ; preds = %label2
  %op11 = load i32 , i32 * %op1
  ret i32  %op11
label12:                                                ; preds = %label7, %label17
  %op13 = load i32 , i32 * %op1
  %op14 = icmp slt i32  %op13, 100
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label17, label %label20
label17:                                                ; preds = %label12
  %op18 = load i32 , i32 * %op1
  %op19 = add i32  %op18, 6
  store i32  %op19, i32 * %op1
  br label %label12
label20:                                                ; preds = %label12
  %op21 = load i32 , i32 * %op1
  %op22 = sub i32  %op21, 100
  store i32  %op22, i32 * %op1
  br label %label2
}
define i32  @main() {
label_entry:
  %op0 = call i32  @doubleWhile()
  ret i32  %op0
}
