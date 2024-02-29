; ModuleID = 'cminus'
source_filename = "/home/hq/Test/SysY/tests/2-ir-gen/autogen/testcases/lv0_1/const.sy"

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

define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i8  @getch()
  %op2 = load i32 , i32 * @ascii_0
  %op3 = zext i8  %op1 to i32 
  %op4 = sub i32  %op3, %op2
  store i32  %op4, i32 * %op0
  ret i32  0
}
