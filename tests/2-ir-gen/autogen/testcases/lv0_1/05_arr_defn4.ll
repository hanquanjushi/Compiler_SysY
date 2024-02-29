; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/2-ir-gen/autogen/testcases/lv0_1/05_arr_defn4.sy"

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
  %op0 = alloca [8 x i32 ]
  store [8 x i32 ]  [i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 7, i32 0], [8 x i32 ]* %op0
  %op1 = alloca i32 
  store i32  3, i32 * %op1
  %op2 = alloca [8 x i32 ]
  %op3 = alloca [8 x i32 ]
  %op4 = getelementptr [8 x i32 ], [8 x i32 ]* %op3, i32  0, i32  0
  store i32  1, i32 * %op4
  %op5 = getelementptr [8 x i32 ], [8 x i32 ]* %op3, i32  0, i32  1
  store i32  2, i32 * %op5
  %op6 = getelementptr [8 x i32 ], [8 x i32 ]* %op3, i32  0, i32  2
  store i32  3, i32 * %op6
  %op7 = getelementptr [8 x i32 ], [8 x i32 ]* %op3, i32  0, i32  3
  store i32  4, i32 * %op7
  %op8 = getelementptr [8 x i32 ], [8 x i32 ]* %op3, i32  0, i32  4
  store i32  5, i32 * %op8
  %op9 = getelementptr [8 x i32 ], [8 x i32 ]* %op3, i32  0, i32  5
  store i32  6, i32 * %op9
  %op10 = getelementptr [8 x i32 ], [8 x i32 ]* %op3, i32  0, i32  6
  store i32  7, i32 * %op10
  %op11 = getelementptr [8 x i32 ], [8 x i32 ]* %op3, i32  0, i32  7
  store i32  8, i32 * %op11
  %op12 = getelementptr [8 x i32 ], [8 x i32 ]* %op0, i32  0, i32  3
  %op13 = load i32 , i32 * %op12
  %op14 = alloca [8 x i32 ]
  %op15 = getelementptr [8 x i32 ], [8 x i32 ]* %op14, i32  0, i32  0
  store i32  1, i32 * %op15
  %op16 = getelementptr [8 x i32 ], [8 x i32 ]* %op14, i32  0, i32  1
  store i32  2, i32 * %op16
  %op17 = getelementptr [8 x i32 ], [8 x i32 ]* %op14, i32  0, i32  2
  store i32  3, i32 * %op17
  %op18 = getelementptr [8 x i32 ], [8 x i32 ]* %op14, i32  0, i32  4
  store i32  5, i32 * %op18
  %op19 = getelementptr [8 x i32 ], [8 x i32 ]* %op14, i32  0, i32  6
  store i32  %op13, i32 * %op19
  %op20 = getelementptr [8 x i32 ], [8 x i32 ]* %op14, i32  0, i32  7
  store i32  8, i32 * %op20
  %op21 = getelementptr [8 x i32 ], [8 x i32 ]* %op0, i32  0, i32  3
  %op22 = load i32 , i32 * %op21
  ret i32  %op22
}
