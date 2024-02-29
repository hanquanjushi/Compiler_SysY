; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/3-codegen/autogen/testcases/functional/01_var_defn2.sy"

@a = global i32  3
@b = global i32  5
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
  store i32  5, i32 * %op0
  %op1 = load i32 , i32 * %op0
  %op2 = load i32 , i32 * @b
  %op3 = add i32  %op1, %op2
  ret i32  %op3
}
