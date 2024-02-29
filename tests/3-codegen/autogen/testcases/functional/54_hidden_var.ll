; ModuleID = 'cminus'
source_filename = "/home/hq/Test/SysY/tests/func/functional/54_hidden_var.sy"

@b = global i32  5
@c = global [4 x i32 ]  [i32 6, i32 7, i32 8, i32 9]
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
  store i32  1, i32 * %op0
  %op1 = alloca i32 
  store i32  2, i32 * %op1
  store i32  3, i32 * %op1
  %op2 = load i32 , i32 * %op1
  call void @putint(i32  %op2)
  %op3 = load i32 , i32 * %op1
  call void @putint(i32  %op3)
  %op4 = load i32 , i32 * %op0
  call void @putint(i32  %op4)
  %op5 = trunc i32  10 to i8 
  call void @putch(i8  %op5)
  br label %label6
label6:                                                ; preds = %label_entry, %label31
  %op7 = load i32 , i32 * %op0
  %op8 = icmp slt i32  %op7, 5
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label17
label11:                                                ; preds = %label6
  %op12 = alloca i32 
  store i32  0, i32 * %op12
  %op13 = load i32 , i32 * %op12
  %op14 = add i32  %op13, 1
  store i32  %op14, i32 * %op12
  %op15 = load i32 , i32 * %op12
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label30, label %label31
label17:                                                ; preds = %label6, %label30
  %op18 = load i32 , i32 * %op0
  call void @putint(i32  %op18)
  %op19 = trunc i32  10 to i8 
  call void @putch(i8  %op19)
  %op20 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
  store i32  1, i32 * %op20
  %op21 = alloca [16 x i32 ]
  %op22 = getelementptr [16 x i32 ], [16 x i32 ]* %op21, i32  0, i32  0
  store i32  0, i32 * %op22
  %op23 = getelementptr [16 x i32 ], [16 x i32 ]* %op21, i32  0, i32  1
  store i32  9, i32 * %op23
  %op24 = getelementptr [16 x i32 ], [16 x i32 ]* %op21, i32  0, i32  8
  store i32  8, i32 * %op24
  %op25 = getelementptr [16 x i32 ], [16 x i32 ]* %op21, i32  0, i32  9
  store i32  3, i32 * %op25
  %op26 = alloca i32 
  store i32  2, i32 * %op26
  %op27 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
  %op28 = load i32 , i32 * %op27
  %op29 = icmp ne i32  %op28, 0
  br i1  %op29, label %label32, label %label49
label30:                                                ; preds = %label11
  br label %label17
label31:                                                ; preds = %label11
  br label %label6
label32:                                                ; preds = %label17
  %op33 = alloca [35 x i32 ]
  %op34 = getelementptr [35 x i32 ], [35 x i32 ]* %op33, i32  0, i32  10
  store i32  2, i32 * %op34
  %op35 = getelementptr [35 x i32 ], [35 x i32 ]* %op33, i32  0, i32  11
  store i32  1, i32 * %op35
  %op36 = getelementptr [35 x i32 ], [35 x i32 ]* %op33, i32  0, i32  12
  store i32  8, i32 * %op36
  %op37 = load i32 , i32 * %op26
  %op38 = load i32 , i32 * %op26
  %op39 = getelementptr [35 x i32 ], [35 x i32 ]* %op33, i32  0, i32  %op37
  %op40 = load i32 , i32 * %op39
  call void @putint(i32  %op40)
  %op41 = load i32 , i32 * %op26
  %op42 = load i32 , i32 * %op26
  %op43 = getelementptr [35 x i32 ], [35 x i32 ]* %op33, i32  0, i32  %op41
  %op44 = load i32 , i32 * %op43
  call void @putint(i32  %op44)
  %op45 = load i32 , i32 * %op26
  %op46 = load i32 , i32 * %op26
  %op47 = getelementptr [35 x i32 ], [35 x i32 ]* %op33, i32  0, i32  %op45
  %op48 = load i32 , i32 * %op47
  call void @putint(i32  %op48)
  br label %label49
label49:                                                ; preds = %label17, %label32
  %op50 = trunc i32  10 to i8 
  call void @putch(i8  %op50)
  %op51 = load i32 , i32 * @b
  call void @putint(i32  %op51)
  %op52 = trunc i32  10 to i8 
  call void @putch(i8  %op52)
  %op53 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  0
  %op54 = load i32 , i32 * %op53
  call void @putint(i32  %op54)
  %op55 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  1
  %op56 = load i32 , i32 * %op55
  call void @putint(i32  %op56)
  %op57 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
  %op58 = load i32 , i32 * %op57
  call void @putint(i32  %op58)
  %op59 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  3
  %op60 = load i32 , i32 * %op59
  call void @putint(i32  %op60)
  %op61 = trunc i32  10 to i8 
  call void @putch(i8  %op61)
  ret i32  0
}
