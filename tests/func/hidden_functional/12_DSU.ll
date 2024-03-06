; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/hidden_functional/12_DSU.sy"

@n = global i32  zeroinitializer
@m = global i32  zeroinitializer
@fa = global [100005 x i32 ] zeroinitializer
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

define i32  @quick_read() {
label_entry:
  %op0 = call i8  @getch()
  %op1 = alloca i8 
  store i8  %op0, i8 * %op1
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  %op3 = alloca i32 
  store i32  0, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label24
  %op5 = load i8 , i8 * %op1
  %op6 = zext i8  %op5 to i32 
  %op7 = icmp slt i32  %op6, 48
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label17
label10:                                                ; preds = %label4, %label17
  %op11 = load i8 , i8 * %op1
  %op12 = zext i8  %op11 to i32 
  %op13 = icmp eq i32  %op12, 45
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label23, label %label24
label16:                                                ; preds = %label17
  br label %label26
label17:                                                ; preds = %label4
  %op18 = load i8 , i8 * %op1
  %op19 = zext i8  %op18 to i32 
  %op20 = icmp sgt i32  %op19, 57
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label10, label %label16
label23:                                                ; preds = %label10
  store i32  1, i32 * %op3
  br label %label24
label24:                                                ; preds = %label10, %label23
  %op25 = call i8  @getch()
  store i8  %op25, i8 * %op1
  br label %label4
label26:                                                ; preds = %label16, %label32
  %op27 = load i8 , i8 * %op1
  %op28 = zext i8  %op27 to i32 
  %op29 = icmp sge i32  %op28, 48
  %op30 = zext i1  %op29 to i32 
  %op31 = icmp ne i32  %op30, 0
  br i1  %op31, label %label43, label %label40
label32:                                                ; preds = %label43
  %op33 = load i32 , i32 * %op2
  %op34 = mul i32  %op33, 10
  %op35 = load i8 , i8 * %op1
  %op36 = zext i8  %op35 to i32 
  %op37 = add i32  %op34, %op36
  %op38 = sub i32  %op37, 48
  store i32  %op38, i32 * %op2
  %op39 = call i8  @getch()
  store i8  %op39, i8 * %op1
  br label %label26
label40:                                                ; preds = %label26, %label43
  %op41 = load i32 , i32 * %op3
  %op42 = icmp ne i32  %op41, 0
  br i1  %op42, label %label49, label %label52
label43:                                                ; preds = %label26
  %op44 = load i8 , i8 * %op1
  %op45 = zext i8  %op44 to i32 
  %op46 = icmp sle i32  %op45, 57
  %op47 = zext i1  %op46 to i32 
  %op48 = icmp ne i32  %op47, 0
  br i1  %op48, label %label32, label %label40
label49:                                                ; preds = %label40
  %op50 = load i32 , i32 * %op2
  %op51 = mul i32  %op50, -1
  ret i32  %op51
label52:                                                ; preds = %label40
  %op53 = load i32 , i32 * %op2
  ret i32  %op53
}
define void @init() {
label_entry:
  %op0 = alloca i32 
  store i32  1, i32 * %op0
  br label %label1
label1:                                                ; preds = %label_entry, %label7
  %op2 = load i32 , i32 * %op0
  %op3 = load i32 , i32 * @n
  %op4 = icmp sle i32  %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label14
label7:                                                ; preds = %label1
  %op8 = load i32 , i32 * %op0
  %op9 = load i32 , i32 * %op0
  %op10 = load i32 , i32 * %op0
  %op11 = getelementptr [100005 x i32 ], [100005 x i32 ]* @fa, i32  0, i32  %op9
  store i32  %op8, i32 * %op11
  %op12 = load i32 , i32 * %op0
  %op13 = add i32  %op12, 1
  store i32  %op13, i32 * %op0
  br label %label1
label14:                                                ; preds = %label1
  ret void
}
define i32  @find(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = load i32 , i32 * %op1
  %op4 = getelementptr [100005 x i32 ], [100005 x i32 ]* @fa, i32  0, i32  %op2
  %op5 = load i32 , i32 * %op4
  %op6 = load i32 , i32 * %op1
  %op7 = icmp eq i32  %op5, %op6
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label12
label10:                                                ; preds = %label_entry
  %op11 = load i32 , i32 * %op1
  ret i32  %op11
label12:                                                ; preds = %label_entry
  %op13 = load i32 , i32 * %op1
  %op14 = load i32 , i32 * %op1
  %op15 = getelementptr [100005 x i32 ], [100005 x i32 ]* @fa, i32  0, i32  %op13
  %op16 = load i32 , i32 * %op15
  %op17 = call i32  @find(i32  %op16)
  %op18 = alloca i32 
  store i32  %op17, i32 * %op18
  %op19 = load i32 , i32 * %op18
  %op20 = load i32 , i32 * %op1
  %op21 = load i32 , i32 * %op1
  %op22 = getelementptr [100005 x i32 ], [100005 x i32 ]* @fa, i32  0, i32  %op20
  store i32  %op19, i32 * %op22
  %op23 = load i32 , i32 * %op18
  ret i32  %op23
}
define i32  @same(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = call i32  @find(i32  %op4)
  %op6 = load i32 , i32 * %op3
  %op7 = call i32  @find(i32  %op6)
  %op8 = icmp eq i32  %op5, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label12
label11:                                                ; preds = %label_entry
  ret i32  1
label12:                                                ; preds = %label_entry
  ret i32  0
}
define i32  @main() {
label_entry:
  %op0 = call i32  @quick_read()
  store i32  %op0, i32 * @n
  %op1 = call i32  @quick_read()
  store i32  %op1, i32 * @m
  call void @init()
  br label %label2
label2:                                                ; preds = %label_entry, %label49
  %op3 = load i32 , i32 * @m
  %op4 = icmp ne i32  %op3, 0
  br i1  %op4, label %label5, label %label8
label5:                                                ; preds = %label2
  %op6 = call i8  @getch()
  %op7 = alloca i8 
  store i8  %op6, i8 * %op7
  br label %label9
label8:                                                ; preds = %label2
  ret i32  0
label9:                                                ; preds = %label5, %label15
  %op10 = load i8 , i8 * %op7
  %op11 = zext i8  %op10 to i32 
  %op12 = icmp ne i32  %op11, 81
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label23, label %label17
label15:                                                ; preds = %label23
  %op16 = call i8  @getch()
  store i8  %op16, i8 * %op7
  br label %label9
label17:                                                ; preds = %label9, %label23
  %op18 = load i8 , i8 * %op7
  %op19 = zext i8  %op18 to i32 
  %op20 = icmp eq i32  %op19, 81
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label29, label %label38
label23:                                                ; preds = %label9
  %op24 = load i8 , i8 * %op7
  %op25 = zext i8  %op24 to i32 
  %op26 = icmp ne i32  %op25, 85
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label15, label %label17
label29:                                                ; preds = %label17
  %op30 = call i32  @quick_read()
  %op31 = alloca i32 
  store i32  %op30, i32 * %op31
  %op32 = call i32  @quick_read()
  %op33 = alloca i32 
  store i32  %op32, i32 * %op33
  %op34 = load i32 , i32 * %op31
  %op35 = load i32 , i32 * %op33
  %op36 = call i32  @same(i32  %op34, i32  %op35)
  call void @putint(i32  %op36)
  %op37 = trunc i32  10 to i8 
  call void @putch(i8  %op37)
  br label %label49
label38:                                                ; preds = %label17
  %op39 = call i32  @quick_read()
  %op40 = call i32  @find(i32  %op39)
  %op41 = alloca i32 
  store i32  %op40, i32 * %op41
  %op42 = call i32  @quick_read()
  %op43 = call i32  @find(i32  %op42)
  %op44 = alloca i32 
  store i32  %op43, i32 * %op44
  %op45 = load i32 , i32 * %op44
  %op46 = load i32 , i32 * %op41
  %op47 = load i32 , i32 * %op41
  %op48 = getelementptr [100005 x i32 ], [100005 x i32 ]* @fa, i32  0, i32  %op46
  store i32  %op45, i32 * %op48
  br label %label49
label49:                                                ; preds = %label29, %label38
  %op50 = load i32 , i32 * @m
  %op51 = sub i32  %op50, 1
  store i32  %op51, i32 * @m
  br label %label2
}
