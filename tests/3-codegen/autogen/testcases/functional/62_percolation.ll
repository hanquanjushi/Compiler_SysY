; ModuleID = 'cminus'
source_filename = "/home/hq/Test/SysY/tests/func/functional/62_percolation.sy"

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
  br i1  %op11, label %label12, label %label19
label12:                                                ; preds = %label3
  %op13 = mul i32  1, -1
  %op14 = load i32 , i32 * %op2
  %op15 = load i32 , i32 * %op2
  %op16 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op14
  store i32  %op13, i32 * %op16
  %op17 = load i32 , i32 * %op2
  %op18 = add i32  %op17, 1
  store i32  %op18, i32 * %op2
  br label %label3
label19:                                                ; preds = %label3
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
  %op12 = icmp ne i32  %op10, %op11
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
label4:                                                ; preds = %label_entry, %label189
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
  br i1  %op32, label %label186, label %label189
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
label49:                                                ; preds = %label25, %label169
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
  br i1  %op82, label %label104, label %label98
label83:                                                ; preds = %label68
  %op84 = load i32 , i32 * %op40
  %op85 = add i32  %op84, 1
  %op86 = load i32 , i32 * %op40
  %op87 = add i32  %op86, 1
  %op88 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op85
  %op89 = load i32 , i32 * %op88
  %op90 = mul i32  1, -1
  %op91 = icmp ne i32  %op89, %op90
  %op92 = zext i1  %op91 to i32 
  %op93 = icmp ne i32  %op92, 0
  br i1  %op93, label %label74, label %label78
label94:                                                ; preds = %label104
  %op95 = load i32 , i32 * %op40
  %op96 = load i32 , i32 * %op40
  %op97 = sub i32  %op96, 1
  call void @mmerge(i32  %op95, i32  %op97)
  br label %label98
label98:                                                ; preds = %label78, %label104, %label94
  %op99 = load i32 , i32 * %op2
  %op100 = load i32 , i32 * @n
  %op101 = icmp slt i32  %op99, %op100
  %op102 = zext i1  %op101 to i32 
  %op103 = icmp ne i32  %op102, 0
  br i1  %op103, label %label125, label %label120
label104:                                                ; preds = %label78
  %op105 = load i32 , i32 * %op40
  %op106 = sub i32  %op105, 1
  %op107 = load i32 , i32 * %op40
  %op108 = sub i32  %op107, 1
  %op109 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op106
  %op110 = load i32 , i32 * %op109
  %op111 = mul i32  1, -1
  %op112 = icmp ne i32  %op110, %op111
  %op113 = zext i1  %op112 to i32 
  %op114 = icmp ne i32  %op113, 0
  br i1  %op114, label %label94, label %label98
label115:                                                ; preds = %label125
  %op116 = load i32 , i32 * %op40
  %op117 = load i32 , i32 * %op40
  %op118 = load i32 , i32 * @n
  %op119 = add i32  %op117, %op118
  call void @mmerge(i32  %op116, i32  %op119)
  br label %label120
label120:                                                ; preds = %label98, %label125, %label115
  %op121 = load i32 , i32 * %op2
  %op122 = icmp sgt i32  %op121, 1
  %op123 = zext i1  %op122 to i32 
  %op124 = icmp ne i32  %op123, 0
  br i1  %op124, label %label150, label %label143
label125:                                                ; preds = %label98
  %op126 = load i32 , i32 * %op40
  %op127 = load i32 , i32 * @n
  %op128 = add i32  %op126, %op127
  %op129 = load i32 , i32 * %op40
  %op130 = load i32 , i32 * @n
  %op131 = add i32  %op129, %op130
  %op132 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op128
  %op133 = load i32 , i32 * %op132
  %op134 = mul i32  1, -1
  %op135 = icmp ne i32  %op133, %op134
  %op136 = zext i1  %op135 to i32 
  %op137 = icmp ne i32  %op136, 0
  br i1  %op137, label %label115, label %label120
label138:                                                ; preds = %label150
  %op139 = load i32 , i32 * %op40
  %op140 = load i32 , i32 * %op40
  %op141 = load i32 , i32 * @n
  %op142 = sub i32  %op140, %op141
  call void @mmerge(i32  %op139, i32  %op142)
  br label %label143
label143:                                                ; preds = %label120, %label150, %label138
  %op144 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  0
  %op145 = load i32 , i32 * %op144
  %op146 = mul i32  1, -1
  %op147 = icmp ne i32  %op145, %op146
  %op148 = zext i1  %op147 to i32 
  %op149 = icmp ne i32  %op148, 0
  br i1  %op149, label %label177, label %label169
label150:                                                ; preds = %label120
  %op151 = load i32 , i32 * %op40
  %op152 = load i32 , i32 * @n
  %op153 = sub i32  %op151, %op152
  %op154 = load i32 , i32 * %op40
  %op155 = load i32 , i32 * @n
  %op156 = sub i32  %op154, %op155
  %op157 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op153
  %op158 = load i32 , i32 * %op157
  %op159 = mul i32  1, -1
  %op160 = icmp ne i32  %op158, %op159
  %op161 = zext i1  %op160 to i32 
  %op162 = icmp ne i32  %op161, 0
  br i1  %op162, label %label138, label %label143
label163:                                                ; preds = %label170
  store i32  1, i32 * %op11
  %op164 = load i32 , i32 * %op10
  %op165 = add i32  %op164, 1
  %op166 = alloca i32 
  store i32  %op165, i32 * %op166
  %op167 = load i32 , i32 * %op166
  call void @putint(i32  %op167)
  %op168 = trunc i32  10 to i8 
  call void @putch(i8  %op168)
  br label %label169
label169:                                                ; preds = %label143, %label177, %label170, %label163
  br label %label49
label170:                                                ; preds = %label177
  %op171 = call i32  @findfa(i32  0)
  %op172 = load i32 , i32 * %op17
  %op173 = call i32  @findfa(i32  %op172)
  %op174 = icmp eq i32  %op171, %op173
  %op175 = zext i1  %op174 to i32 
  %op176 = icmp ne i32  %op175, 0
  br i1  %op176, label %label163, label %label169
label177:                                                ; preds = %label143
  %op178 = load i32 , i32 * %op17
  %op179 = load i32 , i32 * %op17
  %op180 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op178
  %op181 = load i32 , i32 * %op180
  %op182 = mul i32  1, -1
  %op183 = icmp ne i32  %op181, %op182
  %op184 = zext i1  %op183 to i32 
  %op185 = icmp ne i32  %op184, 0
  br i1  %op185, label %label170, label %label169
label186:                                                ; preds = %label30
  %op187 = mul i32  1, -1
  call void @putint(i32  %op187)
  %op188 = trunc i32  10 to i8 
  call void @putch(i8  %op188)
  br label %label189
label189:                                                ; preds = %label30, %label186
  br label %label4
}
