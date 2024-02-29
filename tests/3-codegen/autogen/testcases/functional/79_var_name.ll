; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/functional/79_var_name.sy"

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
  store i32  2, i32 * %op0
  %op1 = alloca i32 
  store i32  20, i32 * %op1
  %op2 = alloca [20 x i32 ]
  %op3 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  0
  store i32  1, i32 * %op3
  %op4 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  1
  store i32  2, i32 * %op4
  %op5 = alloca i32 
  store i32  0, i32 * %op5
  br label %label6
label6:                                                ; preds = %label_entry, %label12
  %op7 = load i32 , i32 * %op0
  %op8 = load i32 , i32 * %op1
  %op9 = icmp slt i32  %op7, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label47
label12:                                                ; preds = %label6
  %op13 = load i32 , i32 * %op0
  %op14 = load i32 , i32 * %op0
  %op15 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op13
  %op16 = load i32 , i32 * %op15
  %op17 = load i32 , i32 * %op0
  %op18 = sub i32  %op17, 1
  %op19 = load i32 , i32 * %op0
  %op20 = sub i32  %op19, 1
  %op21 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op18
  %op22 = load i32 , i32 * %op21
  %op23 = add i32  %op16, %op22
  %op24 = load i32 , i32 * %op0
  %op25 = sub i32  %op24, 2
  %op26 = load i32 , i32 * %op0
  %op27 = sub i32  %op26, 2
  %op28 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op25
  %op29 = load i32 , i32 * %op28
  %op30 = add i32  %op23, %op29
  %op31 = load i32 , i32 * %op0
  %op32 = load i32 , i32 * %op0
  %op33 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op31
  store i32  %op30, i32 * %op33
  %op34 = load i32 , i32 * %op5
  %op35 = load i32 , i32 * %op0
  %op36 = load i32 , i32 * %op0
  %op37 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op35
  %op38 = load i32 , i32 * %op37
  %op39 = add i32  %op34, %op38
  store i32  %op39, i32 * %op5
  %op40 = load i32 , i32 * %op0
  %op41 = load i32 , i32 * %op0
  %op42 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op40
  %op43 = load i32 , i32 * %op42
  call void @putint(i32  %op43)
  %op44 = trunc i32  10 to i8 
  call void @putch(i8  %op44)
  %op45 = load i32 , i32 * %op0
  %op46 = add i32  %op45, 1
  store i32  %op46, i32 * %op0
  br label %label6
label47:                                                ; preds = %label6
  %op48 = load i32 , i32 * %op5
  ret i32  %op48
}
