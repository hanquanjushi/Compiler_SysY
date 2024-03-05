; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/64_calculator.sy"

@ints = global [10000 x i32 ] zeroinitializer
@intt = global i32  zeroinitializer
@chas = global [10000 x i32 ] zeroinitializer
@chat = global i32  zeroinitializer
@i = global i32  0
@ii = global i32  1
@c = global i32  zeroinitializer
@get = global [10000 x i32 ] zeroinitializer
@get2 = global [10000 x i32 ] zeroinitializer
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

define i32  @isdigit(i32  %arg0) {
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
define i32  @power(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  store i32  1, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label10
  %op6 = load i32 , i32 * %op3
  %op7 = icmp ne i32  %op6, 0
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label16
label10:                                                ; preds = %label5
  %op11 = load i32 , i32 * %op4
  %op12 = load i32 , i32 * %op2
  %op13 = mul i32  %op11, %op12
  store i32  %op13, i32 * %op4
  %op14 = load i32 , i32 * %op3
  %op15 = sub i32  %op14, 1
  store i32  %op15, i32 * %op3
  br label %label5
label16:                                                ; preds = %label5
  %op17 = load i32 , i32 * %op4
  ret i32  %op17
}
define i32  @getstr(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = call i8  @getch()
  %op3 = alloca i8 
  store i8  %op2, i8 * %op3
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label11
  %op6 = load i8 , i8 * %op3
  %op7 = zext i8  %op6 to i32 
  %op8 = icmp ne i32  %op7, 13
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label23, label %label21
label11:                                                ; preds = %label23
  %op12 = load i8 , i8 * %op3
  %op13 = load i32 , i32 * %op4
  %op14 = load i32 , i32 * %op4
  %op15 = load i32 *, i32 ** %op1
  %op16 = getelementptr i32 , i32 * %op15, i32  %op13
  %op17 = zext i8  %op12 to i32 
  store i32  %op17, i32 * %op16
  %op18 = load i32 , i32 * %op4
  %op19 = add i32  %op18, 1
  store i32  %op19, i32 * %op4
  %op20 = call i8  @getch()
  store i8  %op20, i8 * %op3
  br label %label5
label21:                                                ; preds = %label5, %label23
  %op22 = load i32 , i32 * %op4
  ret i32  %op22
label23:                                                ; preds = %label5
  %op24 = load i8 , i8 * %op3
  %op25 = zext i8  %op24 to i32 
  %op26 = icmp ne i32  %op25, 10
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label11, label %label21
}
define void @intpush(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * @intt
  %op3 = add i32  %op2, 1
  store i32  %op3, i32 * @intt
  %op4 = load i32 , i32 * %op1
  %op5 = load i32 , i32 * @intt
  %op6 = load i32 , i32 * @intt
  %op7 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op5
  store i32  %op4, i32 * %op7
  ret void
}
define void @chapush(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * @chat
  %op3 = add i32  %op2, 1
  store i32  %op3, i32 * @chat
  %op4 = load i32 , i32 * %op1
  %op5 = load i32 , i32 * @chat
  %op6 = load i32 , i32 * @chat
  %op7 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op5
  store i32  %op4, i32 * %op7
  ret void
}
define i32  @intpop() {
label_entry:
  %op0 = load i32 , i32 * @intt
  %op1 = sub i32  %op0, 1
  store i32  %op1, i32 * @intt
  %op2 = load i32 , i32 * @intt
  %op3 = add i32  %op2, 1
  %op4 = load i32 , i32 * @intt
  %op5 = add i32  %op4, 1
  %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op3
  %op7 = load i32 , i32 * %op6
  ret i32  %op7
}
define i32  @chapop() {
label_entry:
  %op0 = load i32 , i32 * @chat
  %op1 = sub i32  %op0, 1
  store i32  %op1, i32 * @chat
  %op2 = load i32 , i32 * @chat
  %op3 = add i32  %op2, 1
  %op4 = load i32 , i32 * @chat
  %op5 = add i32  %op4, 1
  %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op3
  %op7 = load i32 , i32 * %op6
  ret i32  %op7
}
define void @intadd(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * @intt
  %op3 = load i32 , i32 * @intt
  %op4 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op2
  %op5 = load i32 , i32 * %op4
  %op6 = mul i32  %op5, 10
  %op7 = load i32 , i32 * @intt
  %op8 = load i32 , i32 * @intt
  %op9 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op7
  store i32  %op6, i32 * %op9
  %op10 = load i32 , i32 * @intt
  %op11 = load i32 , i32 * @intt
  %op12 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op10
  %op13 = load i32 , i32 * %op12
  %op14 = load i32 , i32 * %op1
  %op15 = add i32  %op13, %op14
  %op16 = load i32 , i32 * @intt
  %op17 = load i32 , i32 * @intt
  %op18 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op16
  store i32  %op15, i32 * %op18
  ret void
}
define i32  @find() {
label_entry:
  %op0 = call i32  @chapop()
  store i32  %op0, i32 * @c
  %op1 = load i32 , i32 * @ii
  %op2 = load i32 , i32 * @ii
  %op3 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op1
  store i32  32, i32 * %op3
  %op4 = load i32 , i32 * @c
  %op5 = load i32 , i32 * @ii
  %op6 = add i32  %op5, 1
  %op7 = load i32 , i32 * @ii
  %op8 = add i32  %op7, 1
  %op9 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op6
  store i32  %op4, i32 * %op9
  %op10 = load i32 , i32 * @ii
  %op11 = add i32  %op10, 2
  store i32  %op11, i32 * @ii
  %op12 = load i32 , i32 * @chat
  %op13 = icmp eq i32  %op12, 0
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label17
label16:                                                ; preds = %label_entry
  ret i32  0
label17:                                                ; preds = %label_entry
  ret i32  1
}
define i32  @main() {
label_entry:
  store i32  0, i32 * @intt
  store i32  0, i32 * @chat
  %op0 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  0
  %op1 = call i32  @getstr(i32 * %op0)
  %op2 = alloca i32 
  store i32  %op1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label37
  %op4 = load i32 , i32 * @i
  %op5 = load i32 , i32 * %op2
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label18
label9:                                                ; preds = %label3
  %op10 = load i32 , i32 * @i
  %op11 = load i32 , i32 * @i
  %op12 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op10
  %op13 = load i32 , i32 * %op12
  %op14 = call i32  @isdigit(i32  %op13)
  %op15 = icmp eq i32  %op14, 1
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label19, label %label29
label18:                                                ; preds = %label3
  br label %label362
label19:                                                ; preds = %label9
  %op20 = load i32 , i32 * @i
  %op21 = load i32 , i32 * @i
  %op22 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op20
  %op23 = load i32 , i32 * %op22
  %op24 = load i32 , i32 * @ii
  %op25 = load i32 , i32 * @ii
  %op26 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op24
  store i32  %op23, i32 * %op26
  %op27 = load i32 , i32 * @ii
  %op28 = add i32  %op27, 1
  store i32  %op28, i32 * @ii
  br label %label37
label29:                                                ; preds = %label9
  %op30 = load i32 , i32 * @i
  %op31 = load i32 , i32 * @i
  %op32 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op30
  %op33 = load i32 , i32 * %op32
  %op34 = icmp eq i32  %op33, 40
  %op35 = zext i1  %op34 to i32 
  %op36 = icmp ne i32  %op35, 0
  br i1  %op36, label %label40, label %label41
label37:                                                ; preds = %label19, %label316
  %op38 = load i32 , i32 * @i
  %op39 = add i32  %op38, 1
  store i32  %op39, i32 * @i
  br label %label3
label40:                                                ; preds = %label29
  call void @chapush(i32  40)
  br label %label41
label41:                                                ; preds = %label29, %label40
  %op42 = load i32 , i32 * @i
  %op43 = load i32 , i32 * @i
  %op44 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op42
  %op45 = load i32 , i32 * %op44
  %op46 = icmp eq i32  %op45, 94
  %op47 = zext i1  %op46 to i32 
  %op48 = icmp ne i32  %op47, 0
  br i1  %op48, label %label49, label %label50
label49:                                                ; preds = %label41
  call void @chapush(i32  94)
  br label %label50
label50:                                                ; preds = %label41, %label49
  %op51 = load i32 , i32 * @i
  %op52 = load i32 , i32 * @i
  %op53 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op51
  %op54 = load i32 , i32 * %op53
  %op55 = icmp eq i32  %op54, 41
  %op56 = zext i1  %op55 to i32 
  %op57 = icmp ne i32  %op56, 0
  br i1  %op57, label %label58, label %label60
label58:                                                ; preds = %label50
  %op59 = call i32  @chapop()
  store i32  %op59, i32 * @c
  br label %label68
label60:                                                ; preds = %label50, %label86
  %op61 = load i32 , i32 * @i
  %op62 = load i32 , i32 * @i
  %op63 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op61
  %op64 = load i32 , i32 * %op63
  %op65 = icmp eq i32  %op64, 43
  %op66 = zext i1  %op65 to i32 
  %op67 = icmp ne i32  %op66, 0
  br i1  %op67, label %label87, label %label88
label68:                                                ; preds = %label58, %label73
  %op69 = load i32 , i32 * @c
  %op70 = icmp ne i32  %op69, 40
  %op71 = zext i1  %op70 to i32 
  %op72 = icmp ne i32  %op71, 0
  br i1  %op72, label %label73, label %label86
label73:                                                ; preds = %label68
  %op74 = load i32 , i32 * @ii
  %op75 = load i32 , i32 * @ii
  %op76 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op74
  store i32  32, i32 * %op76
  %op77 = load i32 , i32 * @c
  %op78 = load i32 , i32 * @ii
  %op79 = add i32  %op78, 1
  %op80 = load i32 , i32 * @ii
  %op81 = add i32  %op80, 1
  %op82 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op79
  store i32  %op77, i32 * %op82
  %op83 = load i32 , i32 * @ii
  %op84 = add i32  %op83, 2
  store i32  %op84, i32 * @ii
  %op85 = call i32  @chapop()
  store i32  %op85, i32 * @c
  br label %label68
label86:                                                ; preds = %label68
  br label %label60
label87:                                                ; preds = %label60
  br label %label96
label88:                                                ; preds = %label60, %label109
  %op89 = load i32 , i32 * @i
  %op90 = load i32 , i32 * @i
  %op91 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op89
  %op92 = load i32 , i32 * %op91
  %op93 = icmp eq i32  %op92, 45
  %op94 = zext i1  %op93 to i32 
  %op95 = icmp ne i32  %op94, 0
  br i1  %op95, label %label152, label %label153
label96:                                                ; preds = %label87, %label151
  %op97 = load i32 , i32 * @chat
  %op98 = load i32 , i32 * @chat
  %op99 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op97
  %op100 = load i32 , i32 * %op99
  %op101 = icmp eq i32  %op100, 43
  %op102 = zext i1  %op101 to i32 
  %op103 = icmp ne i32  %op102, 0
  br i1  %op103, label %label104, label %label142
label104:                                                ; preds = %label96, %label142, %label134, %label126, %label118, %label110
  %op105 = call i32  @find()
  %op106 = icmp eq i32  %op105, 0
  %op107 = zext i1  %op106 to i32 
  %op108 = icmp ne i32  %op107, 0
  br i1  %op108, label %label150, label %label151
label109:                                                ; preds = %label110, %label150
  call void @chapush(i32  43)
  br label %label88
label110:                                                ; preds = %label118
  %op111 = load i32 , i32 * @chat
  %op112 = load i32 , i32 * @chat
  %op113 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op111
  %op114 = load i32 , i32 * %op113
  %op115 = icmp eq i32  %op114, 94
  %op116 = zext i1  %op115 to i32 
  %op117 = icmp ne i32  %op116, 0
  br i1  %op117, label %label104, label %label109
label118:                                                ; preds = %label126
  %op119 = load i32 , i32 * @chat
  %op120 = load i32 , i32 * @chat
  %op121 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op119
  %op122 = load i32 , i32 * %op121
  %op123 = icmp eq i32  %op122, 37
  %op124 = zext i1  %op123 to i32 
  %op125 = icmp ne i32  %op124, 0
  br i1  %op125, label %label104, label %label110
label126:                                                ; preds = %label134
  %op127 = load i32 , i32 * @chat
  %op128 = load i32 , i32 * @chat
  %op129 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op127
  %op130 = load i32 , i32 * %op129
  %op131 = icmp eq i32  %op130, 47
  %op132 = zext i1  %op131 to i32 
  %op133 = icmp ne i32  %op132, 0
  br i1  %op133, label %label104, label %label118
label134:                                                ; preds = %label142
  %op135 = load i32 , i32 * @chat
  %op136 = load i32 , i32 * @chat
  %op137 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op135
  %op138 = load i32 , i32 * %op137
  %op139 = icmp eq i32  %op138, 42
  %op140 = zext i1  %op139 to i32 
  %op141 = icmp ne i32  %op140, 0
  br i1  %op141, label %label104, label %label126
label142:                                                ; preds = %label96
  %op143 = load i32 , i32 * @chat
  %op144 = load i32 , i32 * @chat
  %op145 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op143
  %op146 = load i32 , i32 * %op145
  %op147 = icmp eq i32  %op146, 45
  %op148 = zext i1  %op147 to i32 
  %op149 = icmp ne i32  %op148, 0
  br i1  %op149, label %label104, label %label134
label150:                                                ; preds = %label104
  br label %label109
label151:                                                ; preds = %label104
  br label %label96
label152:                                                ; preds = %label88
  br label %label161
label153:                                                ; preds = %label88, %label174
  %op154 = load i32 , i32 * @i
  %op155 = load i32 , i32 * @i
  %op156 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op154
  %op157 = load i32 , i32 * %op156
  %op158 = icmp eq i32  %op157, 42
  %op159 = zext i1  %op158 to i32 
  %op160 = icmp ne i32  %op159, 0
  br i1  %op160, label %label217, label %label218
label161:                                                ; preds = %label152, %label216
  %op162 = load i32 , i32 * @chat
  %op163 = load i32 , i32 * @chat
  %op164 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op162
  %op165 = load i32 , i32 * %op164
  %op166 = icmp eq i32  %op165, 43
  %op167 = zext i1  %op166 to i32 
  %op168 = icmp ne i32  %op167, 0
  br i1  %op168, label %label169, label %label207
label169:                                                ; preds = %label161, %label207, %label199, %label191, %label183, %label175
  %op170 = call i32  @find()
  %op171 = icmp eq i32  %op170, 0
  %op172 = zext i1  %op171 to i32 
  %op173 = icmp ne i32  %op172, 0
  br i1  %op173, label %label215, label %label216
label174:                                                ; preds = %label175, %label215
  call void @chapush(i32  45)
  br label %label153
label175:                                                ; preds = %label183
  %op176 = load i32 , i32 * @chat
  %op177 = load i32 , i32 * @chat
  %op178 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op176
  %op179 = load i32 , i32 * %op178
  %op180 = icmp eq i32  %op179, 94
  %op181 = zext i1  %op180 to i32 
  %op182 = icmp ne i32  %op181, 0
  br i1  %op182, label %label169, label %label174
label183:                                                ; preds = %label191
  %op184 = load i32 , i32 * @chat
  %op185 = load i32 , i32 * @chat
  %op186 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op184
  %op187 = load i32 , i32 * %op186
  %op188 = icmp eq i32  %op187, 37
  %op189 = zext i1  %op188 to i32 
  %op190 = icmp ne i32  %op189, 0
  br i1  %op190, label %label169, label %label175
label191:                                                ; preds = %label199
  %op192 = load i32 , i32 * @chat
  %op193 = load i32 , i32 * @chat
  %op194 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op192
  %op195 = load i32 , i32 * %op194
  %op196 = icmp eq i32  %op195, 47
  %op197 = zext i1  %op196 to i32 
  %op198 = icmp ne i32  %op197, 0
  br i1  %op198, label %label169, label %label183
label199:                                                ; preds = %label207
  %op200 = load i32 , i32 * @chat
  %op201 = load i32 , i32 * @chat
  %op202 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op200
  %op203 = load i32 , i32 * %op202
  %op204 = icmp eq i32  %op203, 42
  %op205 = zext i1  %op204 to i32 
  %op206 = icmp ne i32  %op205, 0
  br i1  %op206, label %label169, label %label191
label207:                                                ; preds = %label161
  %op208 = load i32 , i32 * @chat
  %op209 = load i32 , i32 * @chat
  %op210 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op208
  %op211 = load i32 , i32 * %op210
  %op212 = icmp eq i32  %op211, 45
  %op213 = zext i1  %op212 to i32 
  %op214 = icmp ne i32  %op213, 0
  br i1  %op214, label %label169, label %label199
label215:                                                ; preds = %label169
  br label %label174
label216:                                                ; preds = %label169
  br label %label161
label217:                                                ; preds = %label153
  br label %label226
label218:                                                ; preds = %label153, %label239
  %op219 = load i32 , i32 * @i
  %op220 = load i32 , i32 * @i
  %op221 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op219
  %op222 = load i32 , i32 * %op221
  %op223 = icmp eq i32  %op222, 47
  %op224 = zext i1  %op223 to i32 
  %op225 = icmp ne i32  %op224, 0
  br i1  %op225, label %label266, label %label267
label226:                                                ; preds = %label217, %label265
  %op227 = load i32 , i32 * @chat
  %op228 = load i32 , i32 * @chat
  %op229 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op227
  %op230 = load i32 , i32 * %op229
  %op231 = icmp eq i32  %op230, 42
  %op232 = zext i1  %op231 to i32 
  %op233 = icmp ne i32  %op232, 0
  br i1  %op233, label %label234, label %label256
label234:                                                ; preds = %label226, %label256, %label248, %label240
  %op235 = call i32  @find()
  %op236 = icmp eq i32  %op235, 0
  %op237 = zext i1  %op236 to i32 
  %op238 = icmp ne i32  %op237, 0
  br i1  %op238, label %label264, label %label265
label239:                                                ; preds = %label240, %label264
  call void @chapush(i32  42)
  br label %label218
label240:                                                ; preds = %label248
  %op241 = load i32 , i32 * @chat
  %op242 = load i32 , i32 * @chat
  %op243 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op241
  %op244 = load i32 , i32 * %op243
  %op245 = icmp eq i32  %op244, 94
  %op246 = zext i1  %op245 to i32 
  %op247 = icmp ne i32  %op246, 0
  br i1  %op247, label %label234, label %label239
label248:                                                ; preds = %label256
  %op249 = load i32 , i32 * @chat
  %op250 = load i32 , i32 * @chat
  %op251 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op249
  %op252 = load i32 , i32 * %op251
  %op253 = icmp eq i32  %op252, 37
  %op254 = zext i1  %op253 to i32 
  %op255 = icmp ne i32  %op254, 0
  br i1  %op255, label %label234, label %label240
label256:                                                ; preds = %label226
  %op257 = load i32 , i32 * @chat
  %op258 = load i32 , i32 * @chat
  %op259 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op257
  %op260 = load i32 , i32 * %op259
  %op261 = icmp eq i32  %op260, 47
  %op262 = zext i1  %op261 to i32 
  %op263 = icmp ne i32  %op262, 0
  br i1  %op263, label %label234, label %label248
label264:                                                ; preds = %label234
  br label %label239
label265:                                                ; preds = %label234
  br label %label226
label266:                                                ; preds = %label218
  br label %label275
label267:                                                ; preds = %label218, %label288
  %op268 = load i32 , i32 * @i
  %op269 = load i32 , i32 * @i
  %op270 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op268
  %op271 = load i32 , i32 * %op270
  %op272 = icmp eq i32  %op271, 37
  %op273 = zext i1  %op272 to i32 
  %op274 = icmp ne i32  %op273, 0
  br i1  %op274, label %label315, label %label316
label275:                                                ; preds = %label266, %label314
  %op276 = load i32 , i32 * @chat
  %op277 = load i32 , i32 * @chat
  %op278 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op276
  %op279 = load i32 , i32 * %op278
  %op280 = icmp eq i32  %op279, 42
  %op281 = zext i1  %op280 to i32 
  %op282 = icmp ne i32  %op281, 0
  br i1  %op282, label %label283, label %label305
label283:                                                ; preds = %label275, %label305, %label297, %label289
  %op284 = call i32  @find()
  %op285 = icmp eq i32  %op284, 0
  %op286 = zext i1  %op285 to i32 
  %op287 = icmp ne i32  %op286, 0
  br i1  %op287, label %label313, label %label314
label288:                                                ; preds = %label289, %label313
  call void @chapush(i32  47)
  br label %label267
label289:                                                ; preds = %label297
  %op290 = load i32 , i32 * @chat
  %op291 = load i32 , i32 * @chat
  %op292 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op290
  %op293 = load i32 , i32 * %op292
  %op294 = icmp eq i32  %op293, 94
  %op295 = zext i1  %op294 to i32 
  %op296 = icmp ne i32  %op295, 0
  br i1  %op296, label %label283, label %label288
label297:                                                ; preds = %label305
  %op298 = load i32 , i32 * @chat
  %op299 = load i32 , i32 * @chat
  %op300 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op298
  %op301 = load i32 , i32 * %op300
  %op302 = icmp eq i32  %op301, 37
  %op303 = zext i1  %op302 to i32 
  %op304 = icmp ne i32  %op303, 0
  br i1  %op304, label %label283, label %label289
label305:                                                ; preds = %label275
  %op306 = load i32 , i32 * @chat
  %op307 = load i32 , i32 * @chat
  %op308 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op306
  %op309 = load i32 , i32 * %op308
  %op310 = icmp eq i32  %op309, 47
  %op311 = zext i1  %op310 to i32 
  %op312 = icmp ne i32  %op311, 0
  br i1  %op312, label %label283, label %label297
label313:                                                ; preds = %label283
  br label %label288
label314:                                                ; preds = %label283
  br label %label275
label315:                                                ; preds = %label267
  br label %label322
label316:                                                ; preds = %label267, %label335
  %op317 = load i32 , i32 * @ii
  %op318 = load i32 , i32 * @ii
  %op319 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op317
  store i32  32, i32 * %op319
  %op320 = load i32 , i32 * @ii
  %op321 = add i32  %op320, 1
  store i32  %op321, i32 * @ii
  br label %label37
label322:                                                ; preds = %label315, %label361
  %op323 = load i32 , i32 * @chat
  %op324 = load i32 , i32 * @chat
  %op325 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op323
  %op326 = load i32 , i32 * %op325
  %op327 = icmp eq i32  %op326, 42
  %op328 = zext i1  %op327 to i32 
  %op329 = icmp ne i32  %op328, 0
  br i1  %op329, label %label330, label %label352
label330:                                                ; preds = %label322, %label352, %label344, %label336
  %op331 = call i32  @find()
  %op332 = icmp eq i32  %op331, 0
  %op333 = zext i1  %op332 to i32 
  %op334 = icmp ne i32  %op333, 0
  br i1  %op334, label %label360, label %label361
label335:                                                ; preds = %label336, %label360
  call void @chapush(i32  37)
  br label %label316
label336:                                                ; preds = %label344
  %op337 = load i32 , i32 * @chat
  %op338 = load i32 , i32 * @chat
  %op339 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op337
  %op340 = load i32 , i32 * %op339
  %op341 = icmp eq i32  %op340, 94
  %op342 = zext i1  %op341 to i32 
  %op343 = icmp ne i32  %op342, 0
  br i1  %op343, label %label330, label %label335
label344:                                                ; preds = %label352
  %op345 = load i32 , i32 * @chat
  %op346 = load i32 , i32 * @chat
  %op347 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op345
  %op348 = load i32 , i32 * %op347
  %op349 = icmp eq i32  %op348, 37
  %op350 = zext i1  %op349 to i32 
  %op351 = icmp ne i32  %op350, 0
  br i1  %op351, label %label330, label %label336
label352:                                                ; preds = %label322
  %op353 = load i32 , i32 * @chat
  %op354 = load i32 , i32 * @chat
  %op355 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op353
  %op356 = load i32 , i32 * %op355
  %op357 = icmp eq i32  %op356, 47
  %op358 = zext i1  %op357 to i32 
  %op359 = icmp ne i32  %op358, 0
  br i1  %op359, label %label330, label %label344
label360:                                                ; preds = %label330
  br label %label335
label361:                                                ; preds = %label330
  br label %label322
label362:                                                ; preds = %label18, %label367
  %op363 = load i32 , i32 * @chat
  %op364 = icmp sgt i32  %op363, 0
  %op365 = zext i1  %op364 to i32 
  %op366 = icmp ne i32  %op365, 0
  br i1  %op366, label %label367, label %label381
label367:                                                ; preds = %label362
  %op368 = call i32  @chapop()
  %op369 = alloca i32 
  store i32  %op368, i32 * %op369
  %op370 = load i32 , i32 * @ii
  %op371 = load i32 , i32 * @ii
  %op372 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op370
  store i32  32, i32 * %op372
  %op373 = load i32 , i32 * %op369
  %op374 = load i32 , i32 * @ii
  %op375 = add i32  %op374, 1
  %op376 = load i32 , i32 * @ii
  %op377 = add i32  %op376, 1
  %op378 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op375
  store i32  %op373, i32 * %op378
  %op379 = load i32 , i32 * @ii
  %op380 = add i32  %op379, 2
  store i32  %op380, i32 * @ii
  br label %label362
label381:                                                ; preds = %label362
  %op382 = load i32 , i32 * @ii
  %op383 = load i32 , i32 * @ii
  %op384 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op382
  store i32  64, i32 * %op384
  store i32  1, i32 * @i
  br label %label385
label385:                                                ; preds = %label381, %label425
  %op386 = load i32 , i32 * @i
  %op387 = load i32 , i32 * @i
  %op388 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op386
  %op389 = load i32 , i32 * %op388
  %op390 = icmp ne i32  %op389, 64
  %op391 = zext i1  %op390 to i32 
  %op392 = icmp ne i32  %op391, 0
  br i1  %op392, label %label393, label %label401
label393:                                                ; preds = %label385
  %op394 = load i32 , i32 * @i
  %op395 = load i32 , i32 * @i
  %op396 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op394
  %op397 = load i32 , i32 * %op396
  %op398 = icmp eq i32  %op397, 43
  %op399 = zext i1  %op398 to i32 
  %op400 = icmp ne i32  %op399, 0
  br i1  %op400, label %label404, label %label460
label401:                                                ; preds = %label385
  %op402 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  1
  %op403 = load i32 , i32 * %op402
  call void @putint(i32  %op403)
  ret i32  0
label404:                                                ; preds = %label393, %label460, %label452, %label444, %label436, %label428
  %op405 = call i32  @intpop()
  %op406 = alloca i32 
  store i32  %op405, i32 * %op406
  %op407 = call i32  @intpop()
  %op408 = alloca i32 
  store i32  %op407, i32 * %op408
  %op409 = alloca i32 
  %op410 = load i32 , i32 * @i
  %op411 = load i32 , i32 * @i
  %op412 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op410
  %op413 = load i32 , i32 * %op412
  %op414 = icmp eq i32  %op413, 43
  %op415 = zext i1  %op414 to i32 
  %op416 = icmp ne i32  %op415, 0
  br i1  %op416, label %label468, label %label472
label417:                                                ; preds = %label428
  %op418 = load i32 , i32 * @i
  %op419 = load i32 , i32 * @i
  %op420 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op418
  %op421 = load i32 , i32 * %op420
  %op422 = icmp ne i32  %op421, 32
  %op423 = zext i1  %op422 to i32 
  %op424 = icmp ne i32  %op423, 0
  br i1  %op424, label %label534, label %label540
label425:                                                ; preds = %label532, %label540
  %op426 = load i32 , i32 * @i
  %op427 = add i32  %op426, 1
  store i32  %op427, i32 * @i
  br label %label385
label428:                                                ; preds = %label436
  %op429 = load i32 , i32 * @i
  %op430 = load i32 , i32 * @i
  %op431 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op429
  %op432 = load i32 , i32 * %op431
  %op433 = icmp eq i32  %op432, 94
  %op434 = zext i1  %op433 to i32 
  %op435 = icmp ne i32  %op434, 0
  br i1  %op435, label %label404, label %label417
label436:                                                ; preds = %label444
  %op437 = load i32 , i32 * @i
  %op438 = load i32 , i32 * @i
  %op439 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op437
  %op440 = load i32 , i32 * %op439
  %op441 = icmp eq i32  %op440, 37
  %op442 = zext i1  %op441 to i32 
  %op443 = icmp ne i32  %op442, 0
  br i1  %op443, label %label404, label %label428
label444:                                                ; preds = %label452
  %op445 = load i32 , i32 * @i
  %op446 = load i32 , i32 * @i
  %op447 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op445
  %op448 = load i32 , i32 * %op447
  %op449 = icmp eq i32  %op448, 47
  %op450 = zext i1  %op449 to i32 
  %op451 = icmp ne i32  %op450, 0
  br i1  %op451, label %label404, label %label436
label452:                                                ; preds = %label460
  %op453 = load i32 , i32 * @i
  %op454 = load i32 , i32 * @i
  %op455 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op453
  %op456 = load i32 , i32 * %op455
  %op457 = icmp eq i32  %op456, 42
  %op458 = zext i1  %op457 to i32 
  %op459 = icmp ne i32  %op458, 0
  br i1  %op459, label %label404, label %label444
label460:                                                ; preds = %label393
  %op461 = load i32 , i32 * @i
  %op462 = load i32 , i32 * @i
  %op463 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op461
  %op464 = load i32 , i32 * %op463
  %op465 = icmp eq i32  %op464, 45
  %op466 = zext i1  %op465 to i32 
  %op467 = icmp ne i32  %op466, 0
  br i1  %op467, label %label404, label %label452
label468:                                                ; preds = %label404
  %op469 = load i32 , i32 * %op406
  %op470 = load i32 , i32 * %op408
  %op471 = add i32  %op469, %op470
  store i32  %op471, i32 * %op409
  br label %label472
label472:                                                ; preds = %label404, %label468
  %op473 = load i32 , i32 * @i
  %op474 = load i32 , i32 * @i
  %op475 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op473
  %op476 = load i32 , i32 * %op475
  %op477 = icmp eq i32  %op476, 45
  %op478 = zext i1  %op477 to i32 
  %op479 = icmp ne i32  %op478, 0
  br i1  %op479, label %label480, label %label484
label480:                                                ; preds = %label472
  %op481 = load i32 , i32 * %op408
  %op482 = load i32 , i32 * %op406
  %op483 = sub i32  %op481, %op482
  store i32  %op483, i32 * %op409
  br label %label484
label484:                                                ; preds = %label472, %label480
  %op485 = load i32 , i32 * @i
  %op486 = load i32 , i32 * @i
  %op487 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op485
  %op488 = load i32 , i32 * %op487
  %op489 = icmp eq i32  %op488, 42
  %op490 = zext i1  %op489 to i32 
  %op491 = icmp ne i32  %op490, 0
  br i1  %op491, label %label492, label %label496
label492:                                                ; preds = %label484
  %op493 = load i32 , i32 * %op406
  %op494 = load i32 , i32 * %op408
  %op495 = mul i32  %op493, %op494
  store i32  %op495, i32 * %op409
  br label %label496
label496:                                                ; preds = %label484, %label492
  %op497 = load i32 , i32 * @i
  %op498 = load i32 , i32 * @i
  %op499 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op497
  %op500 = load i32 , i32 * %op499
  %op501 = icmp eq i32  %op500, 47
  %op502 = zext i1  %op501 to i32 
  %op503 = icmp ne i32  %op502, 0
  br i1  %op503, label %label504, label %label508
label504:                                                ; preds = %label496
  %op505 = load i32 , i32 * %op408
  %op506 = load i32 , i32 * %op406
  %op507 = sdiv i32  %op505, %op506
  store i32  %op507, i32 * %op409
  br label %label508
label508:                                                ; preds = %label496, %label504
  %op509 = load i32 , i32 * @i
  %op510 = load i32 , i32 * @i
  %op511 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op509
  %op512 = load i32 , i32 * %op511
  %op513 = icmp eq i32  %op512, 37
  %op514 = zext i1  %op513 to i32 
  %op515 = icmp ne i32  %op514, 0
  br i1  %op515, label %label516, label %label520
label516:                                                ; preds = %label508
  %op517 = load i32 , i32 * %op408
  %op518 = load i32 , i32 * %op406
  %op519 = srem i32  %op517, %op518
  store i32  %op519, i32 * %op409
  br label %label520
label520:                                                ; preds = %label508, %label516
  %op521 = load i32 , i32 * @i
  %op522 = load i32 , i32 * @i
  %op523 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op521
  %op524 = load i32 , i32 * %op523
  %op525 = icmp eq i32  %op524, 94
  %op526 = zext i1  %op525 to i32 
  %op527 = icmp ne i32  %op526, 0
  br i1  %op527, label %label528, label %label532
label528:                                                ; preds = %label520
  %op529 = load i32 , i32 * %op408
  %op530 = load i32 , i32 * %op406
  %op531 = call i32  @power(i32  %op529, i32  %op530)
  store i32  %op531, i32 * %op409
  br label %label532
label532:                                                ; preds = %label520, %label528
  %op533 = load i32 , i32 * %op409
  call void @intpush(i32  %op533)
  br label %label425
label534:                                                ; preds = %label417
  %op535 = load i32 , i32 * @i
  %op536 = load i32 , i32 * @i
  %op537 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op535
  %op538 = load i32 , i32 * %op537
  %op539 = sub i32  %op538, 48
  call void @intpush(i32  %op539)
  store i32  1, i32 * @ii
  br label %label541
label540:                                                ; preds = %label417, %label565
  br label %label425
label541:                                                ; preds = %label534, %label553
  %op542 = load i32 , i32 * @i
  %op543 = load i32 , i32 * @ii
  %op544 = add i32  %op542, %op543
  %op545 = load i32 , i32 * @i
  %op546 = load i32 , i32 * @ii
  %op547 = add i32  %op545, %op546
  %op548 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op544
  %op549 = load i32 , i32 * %op548
  %op550 = icmp ne i32  %op549, 32
  %op551 = zext i1  %op550 to i32 
  %op552 = icmp ne i32  %op551, 0
  br i1  %op552, label %label553, label %label565
label553:                                                ; preds = %label541
  %op554 = load i32 , i32 * @i
  %op555 = load i32 , i32 * @ii
  %op556 = add i32  %op554, %op555
  %op557 = load i32 , i32 * @i
  %op558 = load i32 , i32 * @ii
  %op559 = add i32  %op557, %op558
  %op560 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op556
  %op561 = load i32 , i32 * %op560
  %op562 = sub i32  %op561, 48
  call void @intadd(i32  %op562)
  %op563 = load i32 , i32 * @ii
  %op564 = add i32  %op563, 1
  store i32  %op564, i32 * @ii
  br label %label541
label565:                                                ; preds = %label541
  %op566 = load i32 , i32 * @i
  %op567 = load i32 , i32 * @ii
  %op568 = add i32  %op566, %op567
  %op569 = sub i32  %op568, 1
  store i32  %op569, i32 * @i
  br label %label540
}
