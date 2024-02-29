; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/testcases/lv0_1/functional/66_exgcd.sy"

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

define i32  @exgcd(i32  %arg0, i32  %arg1, i32 * %arg2, i32 * %arg3) {
label_entry:
  %op4 = alloca i32 
  store i32  %arg0, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg1, i32 * %op5
  %op6 = alloca i32 *
  store i32 * %arg2, i32 ** %op6
  %op7 = alloca i32 *
  store i32 * %arg3, i32 ** %op7
  %op8 = load i32 , i32 * %op5
  %op9 = icmp eq i32  %op8, 0
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label18
label12:                                                ; preds = %label_entry
  %op13 = load i32 *, i32 ** %op6
  %op14 = getelementptr i32 , i32 * %op13, i32  0
  store i32  1, i32 * %op14
  %op15 = load i32 *, i32 ** %op7
  %op16 = getelementptr i32 , i32 * %op15, i32  0
  store i32  0, i32 * %op16
  %op17 = load i32 , i32 * %op4
  ret i32  %op17
label18:                                                ; preds = %label_entry
  %op19 = load i32 , i32 * %op5
  %op20 = load i32 , i32 * %op4
  %op21 = load i32 , i32 * %op5
  %op22 = srem i32  %op20, %op21
  %op23 = load i32 *, i32 ** %op6
  %op24 = load i32 *, i32 ** %op7
  %op25 = call i32  @exgcd(i32  %op19, i32  %op22, i32 * %op23, i32 * %op24)
  %op26 = alloca i32 
  store i32  %op25, i32 * %op26
  %op27 = load i32 *, i32 ** %op6
  %op28 = getelementptr i32 , i32 * %op27, i32  0
  %op29 = load i32 , i32 * %op28
  %op30 = alloca i32 
  store i32  %op29, i32 * %op30
  %op31 = load i32 *, i32 ** %op7
  %op32 = getelementptr i32 , i32 * %op31, i32  0
  %op33 = load i32 , i32 * %op32
  %op34 = load i32 *, i32 ** %op6
  %op35 = getelementptr i32 , i32 * %op34, i32  0
  store i32  %op33, i32 * %op35
  %op36 = load i32 , i32 * %op30
  %op37 = load i32 , i32 * %op4
  %op38 = load i32 , i32 * %op5
  %op39 = sdiv i32  %op37, %op38
  %op40 = load i32 *, i32 ** %op7
  %op41 = getelementptr i32 , i32 * %op40, i32  0
  %op42 = load i32 , i32 * %op41
  %op43 = mul i32  %op39, %op42
  %op44 = sub i32  %op36, %op43
  %op45 = load i32 *, i32 ** %op7
  %op46 = getelementptr i32 , i32 * %op45, i32  0
  store i32  %op44, i32 * %op46
  %op47 = load i32 , i32 * %op26
  ret i32  %op47
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  7, i32 * %op0
  %op1 = alloca i32 
  store i32  15, i32 * %op1
  %op2 = alloca [1 x i32 ]
  %op3 = getelementptr [1 x i32 ], [1 x i32 ]* %op2, i32  0, i32  0
  store i32  1, i32 * %op3
  %op4 = alloca [1 x i32 ]
  %op5 = getelementptr [1 x i32 ], [1 x i32 ]* %op4, i32  0, i32  0
  store i32  1, i32 * %op5
  %op6 = load i32 , i32 * %op0
  %op7 = load i32 , i32 * %op1
  %op8 = getelementptr [1 x i32 ], [1 x i32 ]* %op2, i32  0, i32  0
  %op9 = getelementptr [1 x i32 ], [1 x i32 ]* %op4, i32  0, i32  0
  %op10 = call i32  @exgcd(i32  %op6, i32  %op7, i32 * %op8, i32 * %op9)
  %op11 = getelementptr [1 x i32 ], [1 x i32 ]* %op2, i32  0, i32  0
  %op12 = load i32 , i32 * %op11
  %op13 = load i32 , i32 * %op1
  %op14 = srem i32  %op12, %op13
  %op15 = load i32 , i32 * %op1
  %op16 = add i32  %op14, %op15
  %op17 = load i32 , i32 * %op1
  %op18 = srem i32  %op16, %op17
  %op19 = getelementptr [1 x i32 ], [1 x i32 ]* %op2, i32  0, i32  0
  store i32  %op18, i32 * %op19
  %op20 = getelementptr [1 x i32 ], [1 x i32 ]* %op2, i32  0, i32  0
  %op21 = load i32 , i32 * %op20
  call void @putint(i32  %op21)
  ret i32  0
}
