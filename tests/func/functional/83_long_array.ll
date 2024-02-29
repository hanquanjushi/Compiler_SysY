; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/83_long_array.sy"

@N = constant i32  10000
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

define i32  @long_array(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = alloca [10000 x i32 ]
  %op3 = alloca [10000 x i32 ]
  %op4 = alloca [10000 x i32 ]
  %op5 = alloca i32 
  store i32  0, i32 * %op5
  br label %label6
label6:                                                ; preds = %label_entry, %label12
  %op7 = load i32 , i32 * %op5
  %op8 = load i32 , i32 * @N
  %op9 = icmp slt i32  %op7, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label22
label12:                                                ; preds = %label6
  %op13 = load i32 , i32 * %op5
  %op14 = load i32 , i32 * %op5
  %op15 = mul i32  %op13, %op14
  %op16 = srem i32  %op15, 10
  %op17 = load i32 , i32 * %op5
  %op18 = load i32 , i32 * %op5
  %op19 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op17
  store i32  %op16, i32 * %op19
  %op20 = load i32 , i32 * %op5
  %op21 = add i32  %op20, 1
  store i32  %op21, i32 * %op5
  br label %label6
label22:                                                ; preds = %label6
  store i32  0, i32 * %op5
  br label %label23
label23:                                                ; preds = %label22, %label29
  %op24 = load i32 , i32 * %op5
  %op25 = load i32 , i32 * @N
  %op26 = icmp slt i32  %op24, %op25
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label29, label %label45
label29:                                                ; preds = %label23
  %op30 = load i32 , i32 * %op5
  %op31 = load i32 , i32 * %op5
  %op32 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op30
  %op33 = load i32 , i32 * %op32
  %op34 = load i32 , i32 * %op5
  %op35 = load i32 , i32 * %op5
  %op36 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op34
  %op37 = load i32 , i32 * %op36
  %op38 = mul i32  %op33, %op37
  %op39 = srem i32  %op38, 10
  %op40 = load i32 , i32 * %op5
  %op41 = load i32 , i32 * %op5
  %op42 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op40
  store i32  %op39, i32 * %op42
  %op43 = load i32 , i32 * %op5
  %op44 = add i32  %op43, 1
  store i32  %op44, i32 * %op5
  br label %label23
label45:                                                ; preds = %label23
  store i32  0, i32 * %op5
  br label %label46
label46:                                                ; preds = %label45, %label52
  %op47 = load i32 , i32 * %op5
  %op48 = load i32 , i32 * @N
  %op49 = icmp slt i32  %op47, %op48
  %op50 = zext i1  %op49 to i32 
  %op51 = icmp ne i32  %op50, 0
  br i1  %op51, label %label52, label %label73
label52:                                                ; preds = %label46
  %op53 = load i32 , i32 * %op5
  %op54 = load i32 , i32 * %op5
  %op55 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op53
  %op56 = load i32 , i32 * %op55
  %op57 = load i32 , i32 * %op5
  %op58 = load i32 , i32 * %op5
  %op59 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op57
  %op60 = load i32 , i32 * %op59
  %op61 = mul i32  %op56, %op60
  %op62 = srem i32  %op61, 100
  %op63 = load i32 , i32 * %op5
  %op64 = load i32 , i32 * %op5
  %op65 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op63
  %op66 = load i32 , i32 * %op65
  %op67 = add i32  %op62, %op66
  %op68 = load i32 , i32 * %op5
  %op69 = load i32 , i32 * %op5
  %op70 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op4, i32  0, i32  %op68
  store i32  %op67, i32 * %op70
  %op71 = load i32 , i32 * %op5
  %op72 = add i32  %op71, 1
  store i32  %op72, i32 * %op5
  br label %label46
label73:                                                ; preds = %label46
  %op74 = alloca i32 
  store i32  0, i32 * %op74
  store i32  0, i32 * %op5
  br label %label75
label75:                                                ; preds = %label73, %label102
  %op76 = load i32 , i32 * %op5
  %op77 = load i32 , i32 * @N
  %op78 = icmp slt i32  %op76, %op77
  %op79 = zext i1  %op78 to i32 
  %op80 = icmp ne i32  %op79, 0
  br i1  %op80, label %label81, label %label86
label81:                                                ; preds = %label75
  %op82 = load i32 , i32 * %op5
  %op83 = icmp slt i32  %op82, 10
  %op84 = zext i1  %op83 to i32 
  %op85 = icmp ne i32  %op84, 0
  br i1  %op85, label %label88, label %label97
label86:                                                ; preds = %label75
  %op87 = load i32 , i32 * %op74
  ret i32  %op87
label88:                                                ; preds = %label81
  %op89 = load i32 , i32 * %op74
  %op90 = load i32 , i32 * %op5
  %op91 = load i32 , i32 * %op5
  %op92 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op4, i32  0, i32  %op90
  %op93 = load i32 , i32 * %op92
  %op94 = add i32  %op89, %op93
  %op95 = srem i32  %op94, 1333
  store i32  %op95, i32 * %op74
  %op96 = load i32 , i32 * %op74
  call void @putint(i32  %op96)
  br label %label102
label97:                                                ; preds = %label81
  %op98 = load i32 , i32 * %op5
  %op99 = icmp slt i32  %op98, 20
  %op100 = zext i1  %op99 to i32 
  %op101 = icmp ne i32  %op100, 0
  br i1  %op101, label %label105, label %label109
label102:                                                ; preds = %label88, %label114
  %op103 = load i32 , i32 * %op5
  %op104 = add i32  %op103, 1
  store i32  %op104, i32 * %op5
  br label %label75
label105:                                                ; preds = %label97
  %op106 = load i32 , i32 * @N
  %op107 = sdiv i32  %op106, 2
  %op108 = alloca i32 
  store i32  %op107, i32 * %op108
  br label %label115
label109:                                                ; preds = %label97
  %op110 = load i32 , i32 * %op5
  %op111 = icmp slt i32  %op110, 30
  %op112 = zext i1  %op111 to i32 
  %op113 = icmp ne i32  %op112, 0
  br i1  %op113, label %label137, label %label141
label114:                                                ; preds = %label135, %label151
  br label %label102
label115:                                                ; preds = %label105, %label121
  %op116 = load i32 , i32 * %op108
  %op117 = load i32 , i32 * @N
  %op118 = icmp slt i32  %op116, %op117
  %op119 = zext i1  %op118 to i32 
  %op120 = icmp ne i32  %op119, 0
  br i1  %op120, label %label121, label %label135
label121:                                                ; preds = %label115
  %op122 = load i32 , i32 * %op74
  %op123 = load i32 , i32 * %op5
  %op124 = load i32 , i32 * %op5
  %op125 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op4, i32  0, i32  %op123
  %op126 = load i32 , i32 * %op125
  %op127 = add i32  %op122, %op126
  %op128 = load i32 , i32 * %op108
  %op129 = load i32 , i32 * %op108
  %op130 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op128
  %op131 = load i32 , i32 * %op130
  %op132 = sub i32  %op127, %op131
  store i32  %op132, i32 * %op74
  %op133 = load i32 , i32 * %op108
  %op134 = add i32  %op133, 1
  store i32  %op134, i32 * %op108
  br label %label115
label135:                                                ; preds = %label115
  %op136 = load i32 , i32 * %op74
  call void @putint(i32  %op136)
  br label %label114
label137:                                                ; preds = %label109
  %op138 = load i32 , i32 * @N
  %op139 = sdiv i32  %op138, 2
  %op140 = alloca i32 
  store i32  %op139, i32 * %op140
  br label %label152
label141:                                                ; preds = %label109
  %op142 = load i32 , i32 * %op74
  %op143 = load i32 , i32 * %op5
  %op144 = load i32 , i32 * %op5
  %op145 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op4, i32  0, i32  %op143
  %op146 = load i32 , i32 * %op145
  %op147 = load i32 , i32 * %op1
  %op148 = mul i32  %op146, %op147
  %op149 = add i32  %op142, %op148
  %op150 = srem i32  %op149, 99988
  store i32  %op150, i32 * %op74
  br label %label151
label151:                                                ; preds = %label163, %label141
  br label %label114
label152:                                                ; preds = %label137, %label194
  %op153 = load i32 , i32 * %op140
  %op154 = load i32 , i32 * @N
  %op155 = icmp slt i32  %op153, %op154
  %op156 = zext i1  %op155 to i32 
  %op157 = icmp ne i32  %op156, 0
  br i1  %op157, label %label158, label %label163
label158:                                                ; preds = %label152
  %op159 = load i32 , i32 * %op140
  %op160 = icmp sgt i32  %op159, 2233
  %op161 = zext i1  %op160 to i32 
  %op162 = icmp ne i32  %op161, 0
  br i1  %op162, label %label165, label %label179
label163:                                                ; preds = %label152
  %op164 = load i32 , i32 * %op74
  call void @putint(i32  %op164)
  br label %label151
label165:                                                ; preds = %label158
  %op166 = load i32 , i32 * %op74
  %op167 = load i32 , i32 * %op5
  %op168 = load i32 , i32 * %op5
  %op169 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op167
  %op170 = load i32 , i32 * %op169
  %op171 = add i32  %op166, %op170
  %op172 = load i32 , i32 * %op140
  %op173 = load i32 , i32 * %op140
  %op174 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op172
  %op175 = load i32 , i32 * %op174
  %op176 = sub i32  %op171, %op175
  store i32  %op176, i32 * %op74
  %op177 = load i32 , i32 * %op140
  %op178 = add i32  %op177, 1
  store i32  %op178, i32 * %op140
  br label %label194
label179:                                                ; preds = %label158
  %op180 = load i32 , i32 * %op74
  %op181 = load i32 , i32 * %op5
  %op182 = load i32 , i32 * %op5
  %op183 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op181
  %op184 = load i32 , i32 * %op183
  %op185 = add i32  %op180, %op184
  %op186 = load i32 , i32 * %op140
  %op187 = load i32 , i32 * %op140
  %op188 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op4, i32  0, i32  %op186
  %op189 = load i32 , i32 * %op188
  %op190 = add i32  %op185, %op189
  %op191 = srem i32  %op190, 13333
  store i32  %op191, i32 * %op74
  %op192 = load i32 , i32 * %op140
  %op193 = add i32  %op192, 2
  store i32  %op193, i32 * %op140
  br label %label194
label194:                                                ; preds = %label165, %label179
  br label %label152
}
define i32  @main() {
label_entry:
  %op0 = call i32  @long_array(i32  9)
  ret i32  %op0
}
