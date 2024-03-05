; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/69_expr_eval.sy"

@TOKEN_NUM = constant i32  0
@TOKEN_OTHER = constant i32  1
@last_char = global i32  32
@num = global i32  zeroinitializer
@other = global i32  zeroinitializer
@cur_token = global i32  zeroinitializer
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

define i32  @next_char() {
label_entry:
  %op0 = call i8  @getch()
  %op1 = zext i8  %op0 to i32 
  store i32  %op1, i32 * @last_char
  %op2 = load i32 , i32 * @last_char
  ret i32  %op2
}
define i32  @is_space(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = icmp eq i32  %op2, 32
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label8
label6:                                                ; preds = %label_entry, %label8
  ret i32  1
label7:                                                ; preds = %label8
  ret i32  0
label8:                                                ; preds = %label_entry
  %op9 = load i32 , i32 * %op1
  %op10 = icmp eq i32  %op9, 10
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label6, label %label7
}
define i32  @is_num(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = icmp sge i32  %op2, 48
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label8, label %label7
label6:                                                ; preds = %label8
  ret i32  1
label7:                                                ; preds = %label_entry, %label8
  ret i32  0
label8:                                                ; preds = %label_entry
  %op9 = load i32 , i32 * %op1
  %op10 = icmp sle i32  %op9, 57
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label6, label %label7
}
define i32  @next_token() {
label_entry:
  br label %label0
label0:                                                ; preds = %label_entry, %label4
  %op1 = load i32 , i32 * @last_char
  %op2 = call i32  @is_space(i32  %op1)
  %op3 = icmp ne i32  %op2, 0
  br i1  %op3, label %label4, label %label6
label4:                                                ; preds = %label0
  %op5 = call i32  @next_char()
  br label %label0
label6:                                                ; preds = %label0
  %op7 = load i32 , i32 * @last_char
  %op8 = call i32  @is_num(i32  %op7)
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label13
label10:                                                ; preds = %label6
  %op11 = load i32 , i32 * @last_char
  %op12 = sub i32  %op11, 48
  store i32  %op12, i32 * @num
  br label %label19
label13:                                                ; preds = %label6
  %op14 = load i32 , i32 * @last_char
  store i32  %op14, i32 * @other
  %op15 = call i32  @next_char()
  %op16 = load i32 , i32 * @TOKEN_OTHER
  store i32  %op16, i32 * @cur_token
  br label %label17
label17:                                                ; preds = %label29, %label13
  %op18 = load i32 , i32 * @cur_token
  ret i32  %op18
label19:                                                ; preds = %label10, %label23
  %op20 = call i32  @next_char()
  %op21 = call i32  @is_num(i32  %op20)
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label23, label %label29
label23:                                                ; preds = %label19
  %op24 = load i32 , i32 * @num
  %op25 = mul i32  %op24, 10
  %op26 = load i32 , i32 * @last_char
  %op27 = add i32  %op25, %op26
  %op28 = sub i32  %op27, 48
  store i32  %op28, i32 * @num
  br label %label19
label29:                                                ; preds = %label19
  %op30 = load i32 , i32 * @TOKEN_NUM
  store i32  %op30, i32 * @cur_token
  br label %label17
}
define i32  @panic() {
label_entry:
  %op0 = trunc i32  112 to i8 
  call void @putch(i8  %op0)
  %op1 = trunc i32  97 to i8 
  call void @putch(i8  %op1)
  %op2 = trunc i32  110 to i8 
  call void @putch(i8  %op2)
  %op3 = trunc i32  105 to i8 
  call void @putch(i8  %op3)
  %op4 = trunc i32  99 to i8 
  call void @putch(i8  %op4)
  %op5 = trunc i32  33 to i8 
  call void @putch(i8  %op5)
  %op6 = trunc i32  10 to i8 
  call void @putch(i8  %op6)
  %op7 = mul i32  1, -1
  ret i32  %op7
}
define i32  @get_op_prec(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = icmp eq i32  %op2, 43
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label12
label6:                                                ; preds = %label_entry, %label12
  ret i32  10
label7:                                                ; preds = %label12
  %op8 = load i32 , i32 * %op1
  %op9 = icmp eq i32  %op8, 42
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label17, label %label24
label12:                                                ; preds = %label_entry
  %op13 = load i32 , i32 * %op1
  %op14 = icmp eq i32  %op13, 45
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label6, label %label7
label17:                                                ; preds = %label7, %label24, %label19
  ret i32  20
label18:                                                ; preds = %label19
  ret i32  0
label19:                                                ; preds = %label24
  %op20 = load i32 , i32 * %op1
  %op21 = icmp eq i32  %op20, 37
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label17, label %label18
label24:                                                ; preds = %label7
  %op25 = load i32 , i32 * %op1
  %op26 = icmp eq i32  %op25, 47
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label17, label %label19
}
define void @stack_push(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 *, i32 ** %op2
  %op5 = getelementptr i32 , i32 * %op4, i32  0
  %op6 = load i32 , i32 * %op5
  %op7 = add i32  %op6, 1
  %op8 = load i32 *, i32 ** %op2
  %op9 = getelementptr i32 , i32 * %op8, i32  0
  store i32  %op7, i32 * %op9
  %op10 = load i32 , i32 * %op3
  %op11 = load i32 *, i32 ** %op2
  %op12 = getelementptr i32 , i32 * %op11, i32  0
  %op13 = load i32 , i32 * %op12
  %op14 = load i32 *, i32 ** %op2
  %op15 = getelementptr i32 , i32 * %op14, i32  0
  %op16 = load i32 , i32 * %op15
  %op17 = load i32 *, i32 ** %op2
  %op18 = getelementptr i32 , i32 * %op17, i32  %op13
  store i32  %op10, i32 * %op18
  ret void
}
define i32  @stack_pop(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = load i32 *, i32 ** %op1
  %op3 = getelementptr i32 , i32 * %op2, i32  0
  %op4 = load i32 , i32 * %op3
  %op5 = load i32 *, i32 ** %op1
  %op6 = getelementptr i32 , i32 * %op5, i32  0
  %op7 = load i32 , i32 * %op6
  %op8 = load i32 *, i32 ** %op1
  %op9 = getelementptr i32 , i32 * %op8, i32  %op4
  %op10 = load i32 , i32 * %op9
  %op11 = alloca i32 
  store i32  %op10, i32 * %op11
  %op12 = load i32 *, i32 ** %op1
  %op13 = getelementptr i32 , i32 * %op12, i32  0
  %op14 = load i32 , i32 * %op13
  %op15 = sub i32  %op14, 1
  %op16 = load i32 *, i32 ** %op1
  %op17 = getelementptr i32 , i32 * %op16, i32  0
  store i32  %op15, i32 * %op17
  %op18 = load i32 , i32 * %op11
  ret i32  %op18
}
define i32  @stack_peek(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = load i32 *, i32 ** %op1
  %op3 = getelementptr i32 , i32 * %op2, i32  0
  %op4 = load i32 , i32 * %op3
  %op5 = load i32 *, i32 ** %op1
  %op6 = getelementptr i32 , i32 * %op5, i32  0
  %op7 = load i32 , i32 * %op6
  %op8 = load i32 *, i32 ** %op1
  %op9 = getelementptr i32 , i32 * %op8, i32  %op4
  %op10 = load i32 , i32 * %op9
  ret i32  %op10
}
define i32  @stack_size(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = load i32 *, i32 ** %op1
  %op3 = getelementptr i32 , i32 * %op2, i32  0
  %op4 = load i32 , i32 * %op3
  ret i32  %op4
}
define i32  @eval_op(i32  %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 
  store i32  %arg0, i32 * %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op3
  %op7 = icmp eq i32  %op6, 43
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label14
label10:                                                ; preds = %label_entry
  %op11 = load i32 , i32 * %op4
  %op12 = load i32 , i32 * %op5
  %op13 = add i32  %op11, %op12
  ret i32  %op13
label14:                                                ; preds = %label_entry
  %op15 = load i32 , i32 * %op3
  %op16 = icmp eq i32  %op15, 45
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label19, label %label23
label19:                                                ; preds = %label14
  %op20 = load i32 , i32 * %op4
  %op21 = load i32 , i32 * %op5
  %op22 = sub i32  %op20, %op21
  ret i32  %op22
label23:                                                ; preds = %label14
  %op24 = load i32 , i32 * %op3
  %op25 = icmp eq i32  %op24, 42
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label28, label %label32
label28:                                                ; preds = %label23
  %op29 = load i32 , i32 * %op4
  %op30 = load i32 , i32 * %op5
  %op31 = mul i32  %op29, %op30
  ret i32  %op31
label32:                                                ; preds = %label23
  %op33 = load i32 , i32 * %op3
  %op34 = icmp eq i32  %op33, 47
  %op35 = zext i1  %op34 to i32 
  %op36 = icmp ne i32  %op35, 0
  br i1  %op36, label %label37, label %label41
label37:                                                ; preds = %label32
  %op38 = load i32 , i32 * %op4
  %op39 = load i32 , i32 * %op5
  %op40 = sdiv i32  %op38, %op39
  ret i32  %op40
label41:                                                ; preds = %label32
  %op42 = load i32 , i32 * %op3
  %op43 = icmp eq i32  %op42, 37
  %op44 = zext i1  %op43 to i32 
  %op45 = icmp ne i32  %op44, 0
  br i1  %op45, label %label46, label %label50
label46:                                                ; preds = %label41
  %op47 = load i32 , i32 * %op4
  %op48 = load i32 , i32 * %op5
  %op49 = srem i32  %op47, %op48
  ret i32  %op49
label50:                                                ; preds = %label41
  ret i32  0
}
define i32  @eval() {
label_entry:
  %op0 = alloca [256 x i32 ]
  %op1 = alloca [256 x i32 ]
  %op2 = load i32 , i32 * @cur_token
  %op3 = load i32 , i32 * @TOKEN_NUM
  %op4 = icmp ne i32  %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label9
label7:                                                ; preds = %label_entry
  %op8 = call i32  @panic()
  ret i32  %op8
label9:                                                ; preds = %label_entry
  %op10 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
  %op11 = load i32 , i32 * @num
  call void @stack_push(i32 * %op10, i32  %op11)
  %op12 = call i32  @next_token()
  br label %label13
label13:                                                ; preds = %label9, %label68
  %op14 = load i32 , i32 * @cur_token
  %op15 = load i32 , i32 * @TOKEN_OTHER
  %op16 = icmp eq i32  %op14, %op15
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label19, label %label25
label19:                                                ; preds = %label13
  %op20 = load i32 , i32 * @other
  %op21 = alloca i32 
  store i32  %op20, i32 * %op21
  %op22 = load i32 , i32 * %op21
  %op23 = call i32  @get_op_prec(i32  %op22)
  %op24 = icmp eq i32  %op23, 0
  br i1  %op24, label %label27, label %label28
label25:                                                ; preds = %label13, %label27
  %op26 = call i32  @next_token()
  br label %label72
label27:                                                ; preds = %label19
  br label %label25
label28:                                                ; preds = %label19
  %op29 = call i32  @next_token()
  br label %label30
label30:                                                ; preds = %label28, %label34
  %op31 = getelementptr [256 x i32 ], [256 x i32 ]* %op1, i32  0, i32  0
  %op32 = call i32  @stack_size(i32 * %op31)
  %op33 = icmp ne i32  %op32, 0
  br i1  %op33, label %label57, label %label49
label34:                                                ; preds = %label57
  %op35 = getelementptr [256 x i32 ], [256 x i32 ]* %op1, i32  0, i32  0
  %op36 = call i32  @stack_pop(i32 * %op35)
  %op37 = alloca i32 
  store i32  %op36, i32 * %op37
  %op38 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
  %op39 = call i32  @stack_pop(i32 * %op38)
  %op40 = alloca i32 
  store i32  %op39, i32 * %op40
  %op41 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
  %op42 = call i32  @stack_pop(i32 * %op41)
  %op43 = alloca i32 
  store i32  %op42, i32 * %op43
  %op44 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
  %op45 = load i32 , i32 * %op37
  %op46 = load i32 , i32 * %op43
  %op47 = load i32 , i32 * %op40
  %op48 = call i32  @eval_op(i32  %op45, i32  %op46, i32  %op47)
  call void @stack_push(i32 * %op44, i32  %op48)
  br label %label30
label49:                                                ; preds = %label30, %label57
  %op50 = getelementptr [256 x i32 ], [256 x i32 ]* %op1, i32  0, i32  0
  %op51 = load i32 , i32 * %op21
  call void @stack_push(i32 * %op50, i32  %op51)
  %op52 = load i32 , i32 * @cur_token
  %op53 = load i32 , i32 * @TOKEN_NUM
  %op54 = icmp ne i32  %op52, %op53
  %op55 = zext i1  %op54 to i32 
  %op56 = icmp ne i32  %op55, 0
  br i1  %op56, label %label66, label %label68
label57:                                                ; preds = %label30
  %op58 = getelementptr [256 x i32 ], [256 x i32 ]* %op1, i32  0, i32  0
  %op59 = call i32  @stack_peek(i32 * %op58)
  %op60 = call i32  @get_op_prec(i32  %op59)
  %op61 = load i32 , i32 * %op21
  %op62 = call i32  @get_op_prec(i32  %op61)
  %op63 = icmp sge i32  %op60, %op62
  %op64 = zext i1  %op63 to i32 
  %op65 = icmp ne i32  %op64, 0
  br i1  %op65, label %label34, label %label49
label66:                                                ; preds = %label49
  %op67 = call i32  @panic()
  ret i32  %op67
label68:                                                ; preds = %label49
  %op69 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
  %op70 = load i32 , i32 * @num
  call void @stack_push(i32 * %op69, i32  %op70)
  %op71 = call i32  @next_token()
  br label %label13
label72:                                                ; preds = %label25, %label76
  %op73 = getelementptr [256 x i32 ], [256 x i32 ]* %op1, i32  0, i32  0
  %op74 = call i32  @stack_size(i32 * %op73)
  %op75 = icmp ne i32  %op74, 0
  br i1  %op75, label %label76, label %label91
label76:                                                ; preds = %label72
  %op77 = getelementptr [256 x i32 ], [256 x i32 ]* %op1, i32  0, i32  0
  %op78 = call i32  @stack_pop(i32 * %op77)
  %op79 = alloca i32 
  store i32  %op78, i32 * %op79
  %op80 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
  %op81 = call i32  @stack_pop(i32 * %op80)
  %op82 = alloca i32 
  store i32  %op81, i32 * %op82
  %op83 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
  %op84 = call i32  @stack_pop(i32 * %op83)
  %op85 = alloca i32 
  store i32  %op84, i32 * %op85
  %op86 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
  %op87 = load i32 , i32 * %op79
  %op88 = load i32 , i32 * %op85
  %op89 = load i32 , i32 * %op82
  %op90 = call i32  @eval_op(i32  %op87, i32  %op88, i32  %op89)
  call void @stack_push(i32 * %op86, i32  %op90)
  br label %label72
label91:                                                ; preds = %label72
  %op92 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
  %op93 = call i32  @stack_peek(i32 * %op92)
  ret i32  %op93
}
define i32  @main() {
label_entry:
  %op0 = call i32  @getint()
  %op1 = alloca i32 
  store i32  %op0, i32 * %op1
  %op2 = call i8  @getch()
  %op3 = call i32  @next_token()
  br label %label4
label4:                                                ; preds = %label_entry, %label7
  %op5 = load i32 , i32 * %op1
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label12
label7:                                                ; preds = %label4
  %op8 = call i32  @eval()
  call void @putint(i32  %op8)
  %op9 = trunc i32  10 to i8 
  call void @putch(i8  %op9)
  %op10 = load i32 , i32 * %op1
  %op11 = sub i32  %op10, 1
  store i32  %op11, i32 * %op1
  br label %label4
label12:                                                ; preds = %label4
  ret i32  0
}
