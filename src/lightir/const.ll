; ModuleID = 'cminus'
source_filename = "/home/hq/Test/SysY/tests/2-ir-gen/autogen/testcases/lv0_1/const.sy"

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
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  %op1 = alloca i32 
  store i32  1, i32 * %op1
  %op2 = alloca [2 x i32 ]
  store [2 x i32 ]  [i32 1, i32 2], [2 x i32 ]* %op2
  %op3 = load i32 , i32 * %op1
  %op4 = icmp eq i32  %op3, -1
  %op5 = zext i1  %op4 to i32 
  %op6 = load i32 , i32 * %op0
  %op7 = getelementptr [2 x i32 ], [2 x i32 ]* %op2, i32  0, i32  %op6
  %op8 = load i32 , i32 * %op7
  %op9 = load i32 , i32 * %op1
  %op10 = getelementptr [2 x i32 ], [2 x i32 ]* %op2, i32  0, i32  %op9
  %op11 = load i32 , i32 * %op10
  %op12 = icmp eq i32  %op8, %op11
  %op13 = zext i1  %op12 to i32 
  %op14 =   or i32  %op5, %op13
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label17, label %label18
label17:                                                ; preds = %label_entry
  store i32  1, i32 * %op1
  br label %label18
label18:                                                ; preds = %label_entry, %label17
  ret i32  0
}
