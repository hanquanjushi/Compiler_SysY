; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/68_brainfk.sy"

@TAPE_LEN = constant i32  65536
@BUFFER_LEN = constant i32  32768
@tape = global [65536 x i32 ] zeroinitializer
@program = global [32768 x i32 ] zeroinitializer
@ptr = global i32  0
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

define void @read_program() {
label_entry:
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  %op1 = call i32  @getint()
  %op2 = alloca i32 
  store i32  %op1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label9
  %op4 = load i32 , i32 * %op0
  %op5 = load i32 , i32 * %op2
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label17
label9:                                                ; preds = %label3
  %op10 = call i8  @getch()
  %op11 = load i32 , i32 * %op0
  %op12 = load i32 , i32 * %op0
  %op13 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  %op11
  %op14 = zext i8  %op10 to i32 
  store i32  %op14, i32 * %op13
  %op15 = load i32 , i32 * %op0
  %op16 = add i32  %op15, 1
  store i32  %op16, i32 * %op0
  br label %label3
label17:                                                ; preds = %label3
  %op18 = load i32 , i32 * %op0
  %op19 = load i32 , i32 * %op0
  %op20 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  %op18
  store i32  0, i32 * %op20
  ret void
}
define void @interpret(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  %op3 = alloca i32 
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label31
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * %op4
  %op8 = load i32 *, i32 ** %op1
  %op9 = getelementptr i32 , i32 * %op8, i32  %op6
  %op10 = load i32 , i32 * %op9
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label22
label12:                                                ; preds = %label5
  %op13 = load i32 , i32 * %op4
  %op14 = load i32 , i32 * %op4
  %op15 = load i32 *, i32 ** %op1
  %op16 = getelementptr i32 , i32 * %op15, i32  %op13
  %op17 = load i32 , i32 * %op16
  store i32  %op17, i32 * %op2
  %op18 = load i32 , i32 * %op2
  %op19 = icmp eq i32  %op18, 62
  %op20 = zext i1  %op19 to i32 
  %op21 = icmp ne i32  %op20, 0
  br i1  %op21, label %label23, label %label26
label22:                                                ; preds = %label5
  ret void
label23:                                                ; preds = %label12
  %op24 = load i32 , i32 * @ptr
  %op25 = add i32  %op24, 1
  store i32  %op25, i32 * @ptr
  br label %label31
label26:                                                ; preds = %label12
  %op27 = load i32 , i32 * %op2
  %op28 = icmp eq i32  %op27, 60
  %op29 = zext i1  %op28 to i32 
  %op30 = icmp ne i32  %op29, 0
  br i1  %op30, label %label34, label %label37
label31:                                                ; preds = %label23, %label42
  %op32 = load i32 , i32 * %op4
  %op33 = add i32  %op32, 1
  store i32  %op33, i32 * %op4
  br label %label5
label34:                                                ; preds = %label26
  %op35 = load i32 , i32 * @ptr
  %op36 = sub i32  %op35, 1
  store i32  %op36, i32 * @ptr
  br label %label42
label37:                                                ; preds = %label26
  %op38 = load i32 , i32 * %op2
  %op39 = icmp eq i32  %op38, 43
  %op40 = zext i1  %op39 to i32 
  %op41 = icmp ne i32  %op40, 0
  br i1  %op41, label %label43, label %label52
label42:                                                ; preds = %label34, %label57
  br label %label31
label43:                                                ; preds = %label37
  %op44 = load i32 , i32 * @ptr
  %op45 = load i32 , i32 * @ptr
  %op46 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op44
  %op47 = load i32 , i32 * %op46
  %op48 = add i32  %op47, 1
  %op49 = load i32 , i32 * @ptr
  %op50 = load i32 , i32 * @ptr
  %op51 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op49
  store i32  %op48, i32 * %op51
  br label %label57
label52:                                                ; preds = %label37
  %op53 = load i32 , i32 * %op2
  %op54 = icmp eq i32  %op53, 45
  %op55 = zext i1  %op54 to i32 
  %op56 = icmp ne i32  %op55, 0
  br i1  %op56, label %label58, label %label67
label57:                                                ; preds = %label43, %label72
  br label %label42
label58:                                                ; preds = %label52
  %op59 = load i32 , i32 * @ptr
  %op60 = load i32 , i32 * @ptr
  %op61 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op59
  %op62 = load i32 , i32 * %op61
  %op63 = sub i32  %op62, 1
  %op64 = load i32 , i32 * @ptr
  %op65 = load i32 , i32 * @ptr
  %op66 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op64
  store i32  %op63, i32 * %op66
  br label %label72
label67:                                                ; preds = %label52
  %op68 = load i32 , i32 * %op2
  %op69 = icmp eq i32  %op68, 46
  %op70 = zext i1  %op69 to i32 
  %op71 = icmp ne i32  %op70, 0
  br i1  %op71, label %label73, label %label79
label72:                                                ; preds = %label58, %label84
  br label %label57
label73:                                                ; preds = %label67
  %op74 = load i32 , i32 * @ptr
  %op75 = load i32 , i32 * @ptr
  %op76 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op74
  %op77 = load i32 , i32 * %op76
  %op78 = trunc i32  %op77 to i8 
  call void @putch(i8  %op78)
  br label %label84
label79:                                                ; preds = %label67
  %op80 = load i32 , i32 * %op2
  %op81 = icmp eq i32  %op80, 44
  %op82 = zext i1  %op81 to i32 
  %op83 = icmp ne i32  %op82, 0
  br i1  %op83, label %label85, label %label91
label84:                                                ; preds = %label73, %label96
  br label %label72
label85:                                                ; preds = %label79
  %op86 = call i8  @getch()
  %op87 = load i32 , i32 * @ptr
  %op88 = load i32 , i32 * @ptr
  %op89 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op87
  %op90 = zext i8  %op86 to i32 
  store i32  %op90, i32 * %op89
  br label %label96
label91:                                                ; preds = %label79
  %op92 = load i32 , i32 * %op2
  %op93 = icmp eq i32  %op92, 93
  %op94 = zext i1  %op93 to i32 
  %op95 = icmp ne i32  %op94, 0
  br i1  %op95, label %label99, label %label98
label96:                                                ; preds = %label85, %label98
  br label %label84
label97:                                                ; preds = %label99
  store i32  1, i32 * %op3
  br label %label105
label98:                                                ; preds = %label91, %label99, %label122
  br label %label96
label99:                                                ; preds = %label91
  %op100 = load i32 , i32 * @ptr
  %op101 = load i32 , i32 * @ptr
  %op102 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op100
  %op103 = load i32 , i32 * %op102
  %op104 = icmp ne i32  %op103, 0
  br i1  %op104, label %label97, label %label98
label105:                                                ; preds = %label97, %label131
  %op106 = load i32 , i32 * %op3
  %op107 = icmp sgt i32  %op106, 0
  %op108 = zext i1  %op107 to i32 
  %op109 = icmp ne i32  %op108, 0
  br i1  %op109, label %label110, label %label122
label110:                                                ; preds = %label105
  %op111 = load i32 , i32 * %op4
  %op112 = sub i32  %op111, 1
  store i32  %op112, i32 * %op4
  %op113 = load i32 , i32 * %op4
  %op114 = load i32 , i32 * %op4
  %op115 = load i32 *, i32 ** %op1
  %op116 = getelementptr i32 , i32 * %op115, i32  %op113
  %op117 = load i32 , i32 * %op116
  store i32  %op117, i32 * %op2
  %op118 = load i32 , i32 * %op2
  %op119 = icmp eq i32  %op118, 91
  %op120 = zext i1  %op119 to i32 
  %op121 = icmp ne i32  %op120, 0
  br i1  %op121, label %label123, label %label126
label122:                                                ; preds = %label105
  br label %label98
label123:                                                ; preds = %label110
  %op124 = load i32 , i32 * %op3
  %op125 = sub i32  %op124, 1
  store i32  %op125, i32 * %op3
  br label %label131
label126:                                                ; preds = %label110
  %op127 = load i32 , i32 * %op2
  %op128 = icmp eq i32  %op127, 93
  %op129 = zext i1  %op128 to i32 
  %op130 = icmp ne i32  %op129, 0
  br i1  %op130, label %label132, label %label135
label131:                                                ; preds = %label123, %label135
  br label %label105
label132:                                                ; preds = %label126
  %op133 = load i32 , i32 * %op3
  %op134 = add i32  %op133, 1
  store i32  %op134, i32 * %op3
  br label %label135
label135:                                                ; preds = %label126, %label132
  br label %label131
}
define i32  @main() {
label_entry:
  call void @read_program()
  %op0 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  0
  call void @interpret(i32 * %op0)
  ret i32  0
}
