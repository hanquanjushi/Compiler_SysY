; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/hidden_functional/13_LCA.sy"

@maxn = constant i32  10005
@n = global i32  zeroinitializer
@m = global i32  zeroinitializer
@f = global [200100 x i32 ] zeroinitializer
@dep = global [10005 x i32 ] zeroinitializer
@to = global [10005 x i32 ] zeroinitializer
@next = global [10005 x i32 ] zeroinitializer
@head = global [10005 x i32 ] zeroinitializer
@cnt = global i32  0
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
define void @add_edge(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op3
  %op5 = load i32 , i32 * @cnt
  %op6 = load i32 , i32 * @cnt
  %op7 = getelementptr [10005 x i32 ], [10005 x i32 ]* @to, i32  0, i32  %op5
  store i32  %op4, i32 * %op7
  %op8 = load i32 , i32 * %op2
  %op9 = load i32 , i32 * %op2
  %op10 = getelementptr [10005 x i32 ], [10005 x i32 ]* @head, i32  0, i32  %op8
  %op11 = load i32 , i32 * %op10
  %op12 = load i32 , i32 * @cnt
  %op13 = load i32 , i32 * @cnt
  %op14 = getelementptr [10005 x i32 ], [10005 x i32 ]* @next, i32  0, i32  %op12
  store i32  %op11, i32 * %op14
  %op15 = load i32 , i32 * @cnt
  %op16 = load i32 , i32 * %op2
  %op17 = load i32 , i32 * %op2
  %op18 = getelementptr [10005 x i32 ], [10005 x i32 ]* @head, i32  0, i32  %op16
  store i32  %op15, i32 * %op18
  %op19 = load i32 , i32 * @cnt
  %op20 = add i32  %op19, 1
  store i32  %op20, i32 * @cnt
  %op21 = load i32 , i32 * %op2
  %op22 = load i32 , i32 * %op3
  %op23 = load i32 , i32 * %op3
  %op24 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op22
  store i32  %op21, i32 * %op24
  ret void
}
define void @init() {
label_entry:
  %op0 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  0
  store i32  1061109567, i32 * %op0
  %op1 = alloca i32 
  store i32  1, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label8
  %op3 = load i32 , i32 * %op1
  %op4 = load i32 , i32 * @n
  %op5 = icmp sle i32  %op3, %op4
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label15
label8:                                                ; preds = %label2
  %op9 = mul i32  1, -1
  %op10 = load i32 , i32 * %op1
  %op11 = load i32 , i32 * %op1
  %op12 = getelementptr [10005 x i32 ], [10005 x i32 ]* @head, i32  0, i32  %op10
  store i32  %op9, i32 * %op12
  %op13 = load i32 , i32 * %op1
  %op14 = add i32  %op13, 1
  store i32  %op14, i32 * %op1
  br label %label2
label15:                                                ; preds = %label2
  ret void
}
define void @tree(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op3
  %op5 = load i32 , i32 * %op2
  %op6 = load i32 , i32 * %op2
  %op7 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op5
  store i32  %op4, i32 * %op7
  %op8 = alloca i32 
  store i32  0, i32 * %op8
  br label %label9
label9:                                                ; preds = %label_entry, %label16
  %op10 = load i32 , i32 * %op2
  %op11 = load i32 , i32 * %op2
  %op12 = load i32 , i32 * %op8
  %op13 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op10
  %op14 = load i32 , i32 * %op13
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label37
label16:                                                ; preds = %label9
  %op17 = load i32 , i32 * %op2
  %op18 = load i32 , i32 * %op2
  %op19 = load i32 , i32 * %op8
  %op20 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op17
  %op21 = load i32 , i32 * %op20
  %op22 = load i32 , i32 * %op2
  %op23 = load i32 , i32 * %op2
  %op24 = load i32 , i32 * %op8
  %op25 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op22
  %op26 = load i32 , i32 * %op25
  %op27 = load i32 , i32 * %op8
  %op28 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op21
  %op29 = load i32 , i32 * %op28
  %op30 = load i32 , i32 * %op2
  %op31 = load i32 , i32 * %op2
  %op32 = load i32 , i32 * %op8
  %op33 = add i32  %op32, 1
  %op34 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op30
  store i32  %op29, i32 * %op34
  %op35 = load i32 , i32 * %op8
  %op36 = add i32  %op35, 1
  store i32  %op36, i32 * %op8
  br label %label9
label37:                                                ; preds = %label9
  %op38 = load i32 , i32 * %op2
  %op39 = load i32 , i32 * %op2
  %op40 = getelementptr [10005 x i32 ], [10005 x i32 ]* @head, i32  0, i32  %op38
  %op41 = load i32 , i32 * %op40
  store i32  %op41, i32 * %op8
  br label %label42
label42:                                                ; preds = %label37, %label48
  %op43 = load i32 , i32 * %op8
  %op44 = mul i32  1, -1
  %op45 = icmp ne i32  %op43, %op44
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label48, label %label61
label48:                                                ; preds = %label42
  %op49 = load i32 , i32 * %op8
  %op50 = load i32 , i32 * %op8
  %op51 = getelementptr [10005 x i32 ], [10005 x i32 ]* @to, i32  0, i32  %op49
  %op52 = load i32 , i32 * %op51
  %op53 = alloca i32 
  store i32  %op52, i32 * %op53
  %op54 = load i32 , i32 * %op53
  %op55 = load i32 , i32 * %op3
  %op56 = add i32  %op55, 1
  call void @tree(i32  %op54, i32  %op56)
  %op57 = load i32 , i32 * %op8
  %op58 = load i32 , i32 * %op8
  %op59 = getelementptr [10005 x i32 ], [10005 x i32 ]* @next, i32  0, i32  %op57
  %op60 = load i32 , i32 * %op59
  store i32  %op60, i32 * %op8
  br label %label42
label61:                                                ; preds = %label42
  ret void
}
define i32  @LCA(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * %op2
  %op6 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op4
  %op7 = load i32 , i32 * %op6
  %op8 = load i32 , i32 * %op3
  %op9 = load i32 , i32 * %op3
  %op10 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op8
  %op11 = load i32 , i32 * %op10
  %op12 = icmp slt i32  %op7, %op11
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label20
label15:                                                ; preds = %label_entry
  %op16 = load i32 , i32 * %op2
  %op17 = alloca i32 
  store i32  %op16, i32 * %op17
  %op18 = load i32 , i32 * %op3
  store i32  %op18, i32 * %op2
  %op19 = load i32 , i32 * %op17
  store i32  %op19, i32 * %op3
  br label %label20
label20:                                                ; preds = %label_entry, %label15
  %op21 = alloca i32 
  store i32  19, i32 * %op21
  br label %label22
label22:                                                ; preds = %label20, %label53
  %op23 = load i32 , i32 * %op2
  %op24 = load i32 , i32 * %op2
  %op25 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op23
  %op26 = load i32 , i32 * %op25
  %op27 = load i32 , i32 * %op3
  %op28 = load i32 , i32 * %op3
  %op29 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op27
  %op30 = load i32 , i32 * %op29
  %op31 = icmp sgt i32  %op26, %op30
  %op32 = zext i1  %op31 to i32 
  %op33 = icmp ne i32  %op32, 0
  br i1  %op33, label %label34, label %label41
label34:                                                ; preds = %label22
  %op35 = load i32 , i32 * %op2
  %op36 = load i32 , i32 * %op2
  %op37 = load i32 , i32 * %op21
  %op38 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op35
  %op39 = load i32 , i32 * %op38
  %op40 = icmp ne i32  %op39, 0
  br i1  %op40, label %label56, label %label53
label41:                                                ; preds = %label22
  %op42 = load i32 , i32 * %op2
  %op43 = load i32 , i32 * %op3
  %op44 = icmp eq i32  %op42, %op43
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label76, label %label78
label47:                                                ; preds = %label56
  %op48 = load i32 , i32 * %op2
  %op49 = load i32 , i32 * %op2
  %op50 = load i32 , i32 * %op21
  %op51 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op48
  %op52 = load i32 , i32 * %op51
  store i32  %op52, i32 * %op2
  br label %label53
label53:                                                ; preds = %label34, %label56, %label47
  %op54 = load i32 , i32 * %op21
  %op55 = sub i32  %op54, 1
  store i32  %op55, i32 * %op21
  br label %label22
label56:                                                ; preds = %label34
  %op57 = load i32 , i32 * %op2
  %op58 = load i32 , i32 * %op2
  %op59 = load i32 , i32 * %op21
  %op60 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op57
  %op61 = load i32 , i32 * %op60
  %op62 = load i32 , i32 * %op2
  %op63 = load i32 , i32 * %op2
  %op64 = load i32 , i32 * %op21
  %op65 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op62
  %op66 = load i32 , i32 * %op65
  %op67 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op61
  %op68 = load i32 , i32 * %op67
  %op69 = load i32 , i32 * %op3
  %op70 = load i32 , i32 * %op3
  %op71 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op69
  %op72 = load i32 , i32 * %op71
  %op73 = icmp sge i32  %op68, %op72
  %op74 = zext i1  %op73 to i32 
  %op75 = icmp ne i32  %op74, 0
  br i1  %op75, label %label47, label %label53
label76:                                                ; preds = %label41
  %op77 = load i32 , i32 * %op2
  ret i32  %op77
label78:                                                ; preds = %label41
  store i32  19, i32 * %op21
  br label %label79
label79:                                                ; preds = %label78, %label114
  %op80 = load i32 , i32 * %op21
  %op81 = icmp sge i32  %op80, 0
  %op82 = zext i1  %op81 to i32 
  %op83 = icmp ne i32  %op82, 0
  br i1  %op83, label %label84, label %label98
label84:                                                ; preds = %label79
  %op85 = load i32 , i32 * %op2
  %op86 = load i32 , i32 * %op2
  %op87 = load i32 , i32 * %op21
  %op88 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op85
  %op89 = load i32 , i32 * %op88
  %op90 = load i32 , i32 * %op3
  %op91 = load i32 , i32 * %op3
  %op92 = load i32 , i32 * %op21
  %op93 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op90
  %op94 = load i32 , i32 * %op93
  %op95 = icmp ne i32  %op89, %op94
  %op96 = zext i1  %op95 to i32 
  %op97 = icmp ne i32  %op96, 0
  br i1  %op97, label %label103, label %label114
label98:                                                ; preds = %label79
  %op99 = load i32 , i32 * %op2
  %op100 = load i32 , i32 * %op2
  %op101 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op99
  %op102 = load i32 , i32 * %op101
  ret i32  %op102
label103:                                                ; preds = %label84
  %op104 = load i32 , i32 * %op2
  %op105 = load i32 , i32 * %op2
  %op106 = load i32 , i32 * %op21
  %op107 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op104
  %op108 = load i32 , i32 * %op107
  store i32  %op108, i32 * %op2
  %op109 = load i32 , i32 * %op3
  %op110 = load i32 , i32 * %op3
  %op111 = load i32 , i32 * %op21
  %op112 = getelementptr [200100 x i32 ], [200100 x i32 ]* @f, i32  0, i32  %op109
  %op113 = load i32 , i32 * %op112
  store i32  %op113, i32 * %op3
  br label %label114
label114:                                                ; preds = %label84, %label103
  %op115 = load i32 , i32 * %op21
  %op116 = sub i32  %op115, 1
  store i32  %op116, i32 * %op21
  br label %label79
}
define i32  @main() {
label_entry:
  %op0 = call i32  @quick_read()
  store i32  %op0, i32 * @n
  %op1 = call i32  @quick_read()
  store i32  %op1, i32 * @m
  call void @init()
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label9
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @n
  %op6 = icmp ne i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label18
label9:                                                ; preds = %label3
  %op10 = call i32  @quick_read()
  %op11 = alloca i32 
  store i32  %op10, i32 * %op11
  %op12 = call i32  @quick_read()
  %op13 = alloca i32 
  store i32  %op12, i32 * %op13
  %op14 = load i32 , i32 * %op11
  %op15 = load i32 , i32 * %op13
  call void @add_edge(i32  %op14, i32  %op15)
  %op16 = load i32 , i32 * %op2
  %op17 = add i32  %op16, 1
  store i32  %op17, i32 * %op2
  br label %label3
label18:                                                ; preds = %label3
  call void @tree(i32  1, i32  1)
  br label %label19
label19:                                                ; preds = %label18, %label22
  %op20 = load i32 , i32 * @m
  %op21 = icmp ne i32  %op20, 0
  br i1  %op21, label %label22, label %label33
label22:                                                ; preds = %label19
  %op23 = call i32  @quick_read()
  %op24 = alloca i32 
  store i32  %op23, i32 * %op24
  %op25 = call i32  @quick_read()
  %op26 = alloca i32 
  store i32  %op25, i32 * %op26
  %op27 = load i32 , i32 * %op24
  %op28 = load i32 , i32 * %op26
  %op29 = call i32  @LCA(i32  %op27, i32  %op28)
  call void @putint(i32  %op29)
  %op30 = trunc i32  10 to i8 
  call void @putch(i8  %op30)
  %op31 = load i32 , i32 * @m
  %op32 = sub i32  %op31, 1
  store i32  %op32, i32 * @m
  br label %label19
label33:                                                ; preds = %label19
  ret i32  0
}
