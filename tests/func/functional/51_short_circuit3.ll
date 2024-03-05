; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/51_short_circuit3.sy"

@a = global i32  zeroinitializer
@b = global i32  zeroinitializer
@d = global i32  zeroinitializer
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

define i32  @set_a(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  store i32  %op2, i32 * @a
  %op3 = load i32 , i32 * @a
  ret i32  %op3
}
define i32  @set_b(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  store i32  %op2, i32 * @b
  %op3 = load i32 , i32 * @b
  ret i32  %op3
}
define i32  @set_d(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  store i32  %op2, i32 * @d
  %op3 = load i32 , i32 * @d
  ret i32  %op3
}
define i32  @main() {
label_entry:
  store i32  2, i32 * @a
  store i32  3, i32 * @b
  %op0 = call i32  @set_a(i32  0)
  %op1 = icmp ne i32  %op0, 0
  br i1  %op1, label %label10, label %label3
label2:                                                ; preds = %label10
  br label %label3
label3:                                                ; preds = %label_entry, %label10, %label2
  %op4 = load i32 , i32 * @a
  call void @putint(i32  %op4)
  %op5 = trunc i32  32 to i8 
  call void @putch(i8  %op5)
  %op6 = load i32 , i32 * @b
  call void @putint(i32  %op6)
  %op7 = trunc i32  32 to i8 
  call void @putch(i8  %op7)
  store i32  2, i32 * @a
  store i32  3, i32 * @b
  %op8 = call i32  @set_a(i32  0)
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label24, label %label14
label10:                                                ; preds = %label_entry
  %op11 = call i32  @set_b(i32  1)
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label2, label %label3
label13:                                                ; preds = %label24
  br label %label14
label14:                                                ; preds = %label3, %label24, %label13
  %op15 = load i32 , i32 * @a
  call void @putint(i32  %op15)
  %op16 = trunc i32  32 to i8 
  call void @putch(i8  %op16)
  %op17 = load i32 , i32 * @b
  call void @putint(i32  %op17)
  %op18 = trunc i32  10 to i8 
  call void @putch(i8  %op18)
  %op19 = alloca i32 
  store i32  1, i32 * %op19
  store i32  2, i32 * @d
  %op20 = load i32 , i32 * %op19
  %op21 = icmp sge i32  %op20, 1
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label35, label %label28
label24:                                                ; preds = %label3
  %op25 = call i32  @set_b(i32  1)
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label13, label %label14
label27:                                                ; preds = %label35
  br label %label28
label28:                                                ; preds = %label14, %label35, %label27
  %op29 = load i32 , i32 * @d
  call void @putint(i32  %op29)
  %op30 = trunc i32  32 to i8 
  call void @putch(i8  %op30)
  %op31 = load i32 , i32 * %op19
  %op32 = icmp sle i32  %op31, 1
  %op33 = zext i1  %op32 to i32 
  %op34 = icmp ne i32  %op33, 0
  br i1  %op34, label %label38, label %label47
label35:                                                ; preds = %label14
  %op36 = call i32  @set_d(i32  3)
  %op37 = icmp ne i32  %op36, 0
  br i1  %op37, label %label27, label %label28
label38:                                                ; preds = %label28, %label47
  br label %label39
label39:                                                ; preds = %label47, %label38
  %op40 = load i32 , i32 * @d
  call void @putint(i32  %op40)
  %op41 = trunc i32  10 to i8 
  call void @putch(i8  %op41)
  %op42 = add i32  2, 1
  %op43 = sub i32  3, %op42
  %op44 = icmp sge i32  16, %op43
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label50, label %label52
label47:                                                ; preds = %label28
  %op48 = call i32  @set_d(i32  4)
  %op49 = icmp ne i32  %op48, 0
  br i1  %op49, label %label38, label %label39
label50:                                                ; preds = %label39
  %op51 = trunc i32  65 to i8 
  call void @putch(i8  %op51)
  br label %label52
label52:                                                ; preds = %label39, %label50
  %op53 = sub i32  25, 7
  %op54 = mul i32  6, 3
  %op55 = sub i32  36, %op54
  %op56 = icmp ne i32  %op53, %op55
  %op57 = zext i1  %op56 to i32 
  %op58 = icmp ne i32  %op57, 0
  br i1  %op58, label %label59, label %label61
label59:                                                ; preds = %label52
  %op60 = trunc i32  66 to i8 
  call void @putch(i8  %op60)
  br label %label61
label61:                                                ; preds = %label52, %label59
  %op62 = icmp slt i32  1, 8
  %op63 = zext i1  %op62 to i32 
  %op64 = srem i32  7, 2
  %op65 = icmp ne i32  %op63, %op64
  %op66 = zext i1  %op65 to i32 
  %op67 = icmp ne i32  %op66, 0
  br i1  %op67, label %label68, label %label70
label68:                                                ; preds = %label61
  %op69 = trunc i32  67 to i8 
  call void @putch(i8  %op69)
  br label %label70
label70:                                                ; preds = %label61, %label68
  %op71 = icmp sgt i32  3, 4
  %op72 = zext i1  %op71 to i32 
  %op73 = icmp eq i32  %op72, 0
  %op74 = zext i1  %op73 to i32 
  %op75 = icmp ne i32  %op74, 0
  br i1  %op75, label %label76, label %label78
label76:                                                ; preds = %label70
  %op77 = trunc i32  68 to i8 
  call void @putch(i8  %op77)
  br label %label78
label78:                                                ; preds = %label70, %label76
  %op79 = icmp sle i32  102, 63
  %op80 = zext i1  %op79 to i32 
  %op81 = icmp eq i32  1, %op80
  %op82 = zext i1  %op81 to i32 
  %op83 = icmp ne i32  %op82, 0
  br i1  %op83, label %label84, label %label86
label84:                                                ; preds = %label78
  %op85 = trunc i32  69 to i8 
  call void @putch(i8  %op85)
  br label %label86
label86:                                                ; preds = %label78, %label84
  %op87 = sub i32  5, 6
  %op88 = icmp eq i32  0, 0
  %op89 = zext i1  %op88 to i32 
  %op90 = mul i32  %op89, -1
  %op91 = icmp eq i32  %op87, %op90
  %op92 = zext i1  %op91 to i32 
  %op93 = icmp ne i32  %op92, 0
  br i1  %op93, label %label94, label %label96
label94:                                                ; preds = %label86
  %op95 = trunc i32  70 to i8 
  call void @putch(i8  %op95)
  br label %label96
label96:                                                ; preds = %label86, %label94
  %op97 = trunc i32  10 to i8 
  call void @putch(i8  %op97)
  %op98 = alloca i32 
  store i32  0, i32 * %op98
  %op99 = alloca i32 
  store i32  1, i32 * %op99
  %op100 = alloca i32 
  store i32  2, i32 * %op100
  %op101 = alloca i32 
  store i32  3, i32 * %op101
  %op102 = alloca i32 
  store i32  4, i32 * %op102
  br label %label103
label103:                                                ; preds = %label96, %label106
  %op104 = load i32 , i32 * %op98
  %op105 = icmp ne i32  %op104, 0
  br i1  %op105, label %label111, label %label108
label106:                                                ; preds = %label111
  %op107 = trunc i32  32 to i8 
  call void @putch(i8  %op107)
  br label %label103
label108:                                                ; preds = %label103, %label111
  %op109 = load i32 , i32 * %op98
  %op110 = icmp ne i32  %op109, 0
  br i1  %op110, label %label114, label %label122
label111:                                                ; preds = %label103
  %op112 = load i32 , i32 * %op99
  %op113 = icmp ne i32  %op112, 0
  br i1  %op113, label %label106, label %label108
label114:                                                ; preds = %label108, %label122
  %op115 = trunc i32  67 to i8 
  call void @putch(i8  %op115)
  br label %label116
label116:                                                ; preds = %label122, %label114
  %op117 = load i32 , i32 * %op98
  %op118 = load i32 , i32 * %op99
  %op119 = icmp sge i32  %op117, %op118
  %op120 = zext i1  %op119 to i32 
  %op121 = icmp ne i32  %op120, 0
  br i1  %op121, label %label125, label %label133
label122:                                                ; preds = %label108
  %op123 = load i32 , i32 * %op99
  %op124 = icmp ne i32  %op123, 0
  br i1  %op124, label %label114, label %label116
label125:                                                ; preds = %label116, %label133
  %op126 = trunc i32  72 to i8 
  call void @putch(i8  %op126)
  br label %label127
label127:                                                ; preds = %label133, %label125
  %op128 = load i32 , i32 * %op100
  %op129 = load i32 , i32 * %op99
  %op130 = icmp sge i32  %op128, %op129
  %op131 = zext i1  %op130 to i32 
  %op132 = icmp ne i32  %op131, 0
  br i1  %op132, label %label149, label %label141
label133:                                                ; preds = %label116
  %op134 = load i32 , i32 * %op99
  %op135 = load i32 , i32 * %op98
  %op136 = icmp sle i32  %op134, %op135
  %op137 = zext i1  %op136 to i32 
  %op138 = icmp ne i32  %op137, 0
  br i1  %op138, label %label125, label %label127
label139:                                                ; preds = %label149
  %op140 = trunc i32  73 to i8 
  call void @putch(i8  %op140)
  br label %label141
label141:                                                ; preds = %label127, %label149, %label139
  %op142 = load i32 , i32 * %op98
  %op143 = load i32 , i32 * %op99
  %op144 = icmp eq i32  %op143, 0
  %op145 = zext i1  %op144 to i32 
  %op146 = icmp eq i32  %op142, %op145
  %op147 = zext i1  %op146 to i32 
  %op148 = icmp ne i32  %op147, 0
  br i1  %op148, label %label171, label %label165
label149:                                                ; preds = %label127
  %op150 = load i32 , i32 * %op102
  %op151 = load i32 , i32 * %op101
  %op152 = icmp ne i32  %op150, %op151
  %op153 = zext i1  %op152 to i32 
  %op154 = icmp ne i32  %op153, 0
  br i1  %op154, label %label139, label %label141
label155:                                                ; preds = %label171, %label165
  %op156 = trunc i32  74 to i8 
  call void @putch(i8  %op156)
  br label %label157
label157:                                                ; preds = %label165, %label155
  %op158 = load i32 , i32 * %op98
  %op159 = load i32 , i32 * %op99
  %op160 = icmp eq i32  %op159, 0
  %op161 = zext i1  %op160 to i32 
  %op162 = icmp eq i32  %op158, %op161
  %op163 = zext i1  %op162 to i32 
  %op164 = icmp ne i32  %op163, 0
  br i1  %op164, label %label177, label %label181
label165:                                                ; preds = %label141, %label171
  %op166 = load i32 , i32 * %op102
  %op167 = load i32 , i32 * %op102
  %op168 = icmp sge i32  %op166, %op167
  %op169 = zext i1  %op168 to i32 
  %op170 = icmp ne i32  %op169, 0
  br i1  %op170, label %label155, label %label157
label171:                                                ; preds = %label141
  %op172 = load i32 , i32 * %op101
  %op173 = load i32 , i32 * %op101
  %op174 = icmp slt i32  %op172, %op173
  %op175 = zext i1  %op174 to i32 
  %op176 = icmp ne i32  %op175, 0
  br i1  %op176, label %label155, label %label165
label177:                                                ; preds = %label157, %label187
  %op178 = trunc i32  75 to i8 
  call void @putch(i8  %op178)
  br label %label179
label179:                                                ; preds = %label181, %label187, %label177
  %op180 = trunc i32  10 to i8 
  call void @putch(i8  %op180)
  ret i32  0
label181:                                                ; preds = %label157
  %op182 = load i32 , i32 * %op101
  %op183 = load i32 , i32 * %op101
  %op184 = icmp slt i32  %op182, %op183
  %op185 = zext i1  %op184 to i32 
  %op186 = icmp ne i32  %op185, 0
  br i1  %op186, label %label187, label %label179
label187:                                                ; preds = %label181
  %op188 = load i32 , i32 * %op102
  %op189 = load i32 , i32 * %op102
  %op190 = icmp sge i32  %op188, %op189
  %op191 = zext i1  %op190 to i32 
  %op192 = icmp ne i32  %op191, 0
  br i1  %op192, label %label177, label %label179
}
