; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/testcases/lv0_1/functional/62_percolation.sy"

@array = global [110 x i32 ] zeroinitializer
@n = global i32  zeroinitializer
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

define void @init(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label12
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * %op1
  %op6 = load i32 , i32 * %op1
  %op7 = mul i32  %op5, %op6
  %op8 = add i32  %op7, 1
  %op9 = icmp sle i32  %op4, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label18
label12:                                                ; preds = %label3
  %op13 = load i32 , i32 * %op2
  %op14 = load i32 , i32 * %op2
  %op15 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op13
  store i32  -1, i32 * %op15
  %op16 = load i32 , i32 * %op2
  %op17 = add i32  %op16, 1
  store i32  %op17, i32 * %op2
  br label %label3
label18:                                                ; preds = %label3
  ret void
}
define i32  @findfa(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = load i32 , i32 * %op1
  %op4 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op2
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
  %op15 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op13
  %op16 = load i32 , i32 * %op15
  %op17 = call i32  @findfa(i32  %op16)
  %op18 = load i32 , i32 * %op1
  %op19 = load i32 , i32 * %op1
  %op20 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op18
  store i32  %op17, i32 * %op20
  %op21 = load i32 , i32 * %op1
  %op22 = load i32 , i32 * %op1
  %op23 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op21
  %op24 = load i32 , i32 * %op23
  ret i32  %op24
}
define void @mmerge(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = call i32  @findfa(i32  %op4)
  %op6 = alloca i32 
  store i32  %op5, i32 * %op6
  %op7 = load i32 , i32 * %op3
  %op8 = call i32  @findfa(i32  %op7)
  %op9 = alloca i32 
  store i32  %op8, i32 * %op9
  %op10 = load i32 , i32 * %op6
  %op11 = load i32 , i32 * %op9
  %op12 = icmp eq i32  %op10, %op11
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label20
label15:                                                ; preds = %label_entry
  %op16 = load i32 , i32 * %op9
  %op17 = load i32 , i32 * %op6
  %op18 = load i32 , i32 * %op6
  %op19 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op17
  store i32  %op16, i32 * %op19
  br label %label20
label20:                                                ; preds = %label_entry, %label15
  ret void
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  %op2 = alloca i32 
  %op3 = alloca i32 
  store i32  1, i32 * %op0
  br label %label4
label4:                                                ; preds = %label_entry, %label182
  %op5 = load i32 , i32 * %op0
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label18
label7:                                                ; preds = %label4
  %op8 = load i32 , i32 * %op0
  %op9 = sub i32  %op8, 1
  store i32  %op9, i32 * %op0
  store i32  4, i32 * @n
  store i32  10, i32 * %op1
  %op10 = alloca i32 
  store i32  0, i32 * %op10
  %op11 = alloca i32 
  store i32  0, i32 * %op11
  %op12 = load i32 , i32 * @n
  call void @init(i32  %op12)
  %op13 = load i32 , i32 * @n
  %op14 = load i32 , i32 * @n
  %op15 = mul i32  %op13, %op14
  %op16 = add i32  %op15, 1
  %op17 = alloca i32 
  store i32  %op16, i32 * %op17
  br label %label19
label18:                                                ; preds = %label4
  ret i32  0
label19:                                                ; preds = %label7, %label49
  %op20 = load i32 , i32 * %op10
  %op21 = load i32 , i32 * %op1
  %op22 = icmp slt i32  %op20, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label25, label %label30
label25:                                                ; preds = %label19
  %op26 = call i32  @getint()
  store i32  %op26, i32 * %op2
  %op27 = call i32  @getint()
  store i32  %op27, i32 * %op3
  %op28 = load i32 , i32 * %op11
  %op29 = icmp eq i32  %op28, 0
  br i1  %op29, label %label33, label %label49
label30:                                                ; preds = %label19
  %op31 = load i32 , i32 * %op11
  %op32 = icmp eq i32  %op31, 0
  br i1  %op32, label %label180, label %label182
label33:                                                ; preds = %label25
  %op34 = load i32 , i32 * @n
  %op35 = load i32 , i32 * %op2
  %op36 = sub i32  %op35, 1
  %op37 = mul i32  %op34, %op36
  %op38 = load i32 , i32 * %op3
  %op39 = add i32  %op37, %op38
  %op40 = alloca i32 
  store i32  %op39, i32 * %op40
  %op41 = load i32 , i32 * %op40
  %op42 = load i32 , i32 * %op40
  %op43 = load i32 , i32 * %op40
  %op44 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op42
  store i32  %op41, i32 * %op44
  %op45 = load i32 , i32 * %op2
  %op46 = icmp eq i32  %op45, 1
  %op47 = zext i1  %op46 to i32 
  %op48 = icmp ne i32  %op47, 0
  br i1  %op48, label %label52, label %label55
label49:                                                ; preds = %label25, %label164
  %op50 = load i32 , i32 * %op10
  %op51 = add i32  %op50, 1
  store i32  %op51, i32 * %op10
  br label %label19
label52:                                                ; preds = %label33
  %op53 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  0
  store i32  0, i32 * %op53
  %op54 = load i32 , i32 * %op40
  call void @mmerge(i32  %op54, i32  0)
  br label %label55
label55:                                                ; preds = %label33, %label52
  %op56 = load i32 , i32 * %op2
  %op57 = load i32 , i32 * @n
  %op58 = icmp eq i32  %op56, %op57
  %op59 = zext i1  %op58 to i32 
  %op60 = icmp ne i32  %op59, 0
  br i1  %op60, label %label61, label %label68
label61:                                                ; preds = %label55
  %op62 = load i32 , i32 * %op17
  %op63 = load i32 , i32 * %op17
  %op64 = load i32 , i32 * %op17
  %op65 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op63
  store i32  %op62, i32 * %op65
  %op66 = load i32 , i32 * %op40
  %op67 = load i32 , i32 * %op17
  call void @mmerge(i32  %op66, i32  %op67)
  br label %label68
label68:                                                ; preds = %label55, %label61
  %op69 = load i32 , i32 * %op3
  %op70 = load i32 , i32 * @n
  %op71 = icmp slt i32  %op69, %op70
  %op72 = zext i1  %op71 to i32 
  %op73 = icmp ne i32  %op72, 0
  br i1  %op73, label %label83, label %label78
label74:                                                ; preds = %label83
  %op75 = load i32 , i32 * %op40
  %op76 = load i32 , i32 * %op40
  %op77 = add i32  %op76, 1
  call void @mmerge(i32  %op75, i32  %op77)
  br label %label78
label78:                                                ; preds = %label68, %label83, %label74
  %op79 = load i32 , i32 * %op3
  %op80 = icmp sgt i32  %op79, 1
  %op81 = zext i1  %op80 to i32 
  %op82 = icmp ne i32  %op81, 0
  br i1  %op82, label %label103, label %label97
label83:                                                ; preds = %label68
  %op84 = load i32 , i32 * %op40
  %op85 = add i32  %op84, 1
  %op86 = load i32 , i32 * %op40
  %op87 = add i32  %op86, 1
  %op88 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op85
  %op89 = load i32 , i32 * %op88
  %op90 = icmp eq i32  %op89, -1
  %op91 = zext i1  %op90 to i32 
  %op92 = icmp ne i32  %op91, 0
  br i1  %op92, label %label74, label %label78
label93:                                                ; preds = %label103
  %op94 = load i32 , i32 * %op40
  %op95 = load i32 , i32 * %op40
  %op96 = sub i32  %op95, 1
  call void @mmerge(i32  %op94, i32  %op96)
  br label %label97
label97:                                                ; preds = %label78, %label103, %label93
  %op98 = load i32 , i32 * %op2
  %op99 = load i32 , i32 * @n
  %op100 = icmp slt i32  %op98, %op99
  %op101 = zext i1  %op100 to i32 
  %op102 = icmp ne i32  %op101, 0
  br i1  %op102, label %label123, label %label118
label103:                                                ; preds = %label78
  %op104 = load i32 , i32 * %op40
  %op105 = sub i32  %op104, 1
  %op106 = load i32 , i32 * %op40
  %op107 = sub i32  %op106, 1
  %op108 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op105
  %op109 = load i32 , i32 * %op108
  %op110 = icmp eq i32  %op109, -1
  %op111 = zext i1  %op110 to i32 
  %op112 = icmp ne i32  %op111, 0
  br i1  %op112, label %label93, label %label97
label113:                                                ; preds = %label123
  %op114 = load i32 , i32 * %op40
  %op115 = load i32 , i32 * %op40
  %op116 = load i32 , i32 * @n
  %op117 = add i32  %op115, %op116
  call void @mmerge(i32  %op114, i32  %op117)
  br label %label118
label118:                                                ; preds = %label97, %label123, %label113
  %op119 = load i32 , i32 * %op2
  %op120 = icmp sgt i32  %op119, 1
  %op121 = zext i1  %op120 to i32 
  %op122 = icmp ne i32  %op121, 0
  br i1  %op122, label %label146, label %label140
label123:                                                ; preds = %label97
  %op124 = load i32 , i32 * %op40
  %op125 = load i32 , i32 * @n
  %op126 = add i32  %op124, %op125
  %op127 = load i32 , i32 * %op40
  %op128 = load i32 , i32 * @n
  %op129 = add i32  %op127, %op128
  %op130 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op126
  %op131 = load i32 , i32 * %op130
  %op132 = icmp eq i32  %op131, -1
  %op133 = zext i1  %op132 to i32 
  %op134 = icmp ne i32  %op133, 0
  br i1  %op134, label %label113, label %label118
label135:                                                ; preds = %label146
  %op136 = load i32 , i32 * %op40
  %op137 = load i32 , i32 * %op40
  %op138 = load i32 , i32 * @n
  %op139 = sub i32  %op137, %op138
  call void @mmerge(i32  %op136, i32  %op139)
  br label %label140
label140:                                                ; preds = %label118, %label146, %label135
  %op141 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  0
  %op142 = load i32 , i32 * %op141
  %op143 = icmp eq i32  %op142, -1
  %op144 = zext i1  %op143 to i32 
  %op145 = icmp ne i32  %op144, 0
  br i1  %op145, label %label172, label %label164
label146:                                                ; preds = %label118
  %op147 = load i32 , i32 * %op40
  %op148 = load i32 , i32 * @n
  %op149 = sub i32  %op147, %op148
  %op150 = load i32 , i32 * %op40
  %op151 = load i32 , i32 * @n
  %op152 = sub i32  %op150, %op151
  %op153 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op149
  %op154 = load i32 , i32 * %op153
  %op155 = icmp eq i32  %op154, -1
  %op156 = zext i1  %op155 to i32 
  %op157 = icmp ne i32  %op156, 0
  br i1  %op157, label %label135, label %label140
label158:                                                ; preds = %label165
  store i32  1, i32 * %op11
  %op159 = load i32 , i32 * %op10
  %op160 = add i32  %op159, 1
  %op161 = alloca i32 
  store i32  %op160, i32 * %op161
  %op162 = load i32 , i32 * %op161
  call void @putint(i32  %op162)
  %op163 = trunc i32  10 to i8 
  call void @putch(i8  %op163)
  br label %label164
label164:                                                ; preds = %label140, %label172, %label165, %label158
  br label %label49
label165:                                                ; preds = %label172
  %op166 = call i32  @findfa(i32  0)
  %op167 = load i32 , i32 * %op17
  %op168 = call i32  @findfa(i32  %op167)
  %op169 = icmp eq i32  %op166, %op168
  %op170 = zext i1  %op169 to i32 
  %op171 = icmp ne i32  %op170, 0
  br i1  %op171, label %label158, label %label164
label172:                                                ; preds = %label140
  %op173 = load i32 , i32 * %op17
  %op174 = load i32 , i32 * %op17
  %op175 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op173
  %op176 = load i32 , i32 * %op175
  %op177 = icmp eq i32  %op176, -1
  %op178 = zext i1  %op177 to i32 
  %op179 = icmp ne i32  %op178, 0
  br i1  %op179, label %label165, label %label164
label180:                                                ; preds = %label30
  call void @putint(i32  -1)
  %op181 = trunc i32  10 to i8 
  call void @putch(i8  %op181)
  br label %label182
label182:                                                ; preds = %label30, %label180
  br label %label4
}
