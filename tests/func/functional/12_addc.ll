; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/12_addc.sy"

@a = constant i32  10
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
  %op0 = load i32 , i32 * @a
  %op1 = add i32  %op0, 5
  ret i32  %op1
}