; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/91_many_locals2.sy"

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

define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  %op2 = alloca i32 
  %op3 = alloca i32 
  %op4 = alloca i32 
  %op5 = alloca i32 
  %op6 = alloca i32 
  %op7 = alloca i32 
  %op8 = alloca i32 
  %op9 = alloca i32 
  %op10 = alloca i32 
  %op11 = alloca i32 
  %op12 = alloca i32 
  %op13 = alloca i32 
  %op14 = alloca i32 
  %op15 = alloca i32 
  %op16 = alloca i32 
  %op17 = alloca i32 
  %op18 = alloca i32 
  %op19 = alloca i32 
  %op20 = alloca i32 
  %op21 = alloca i32 
  %op22 = alloca i32 
  %op23 = alloca i32 
  %op24 = alloca i32 
  %op25 = alloca i32 
  %op26 = alloca i32 
  %op27 = alloca i32 
  %op28 = alloca i32 
  %op29 = alloca i32 
  %op30 = alloca i32 
  %op31 = call i32  @getint()
  store i32  %op31, i32 * %op30
  br label %label32
label32:                                                ; preds = %label_entry, %label37
  %op33 = load i32 , i32 * %op30
  %op34 = icmp eq i32  %op33, 5
  %op35 = zext i1  %op34 to i32 
  %op36 = icmp ne i32  %op35, 0
  br i1  %op36, label %label37, label %label40
label37:                                                ; preds = %label32
  %op38 = load i32 , i32 * %op30
  %op39 = add i32  %op38, 1
  store i32  %op39, i32 * %op30
  br label %label32
label40:                                                ; preds = %label32
  store i32  0, i32 * %op0
  %op41 = load i32 , i32 * %op0
  %op42 = add i32  %op41, 1
  store i32  %op42, i32 * %op1
  %op43 = load i32 , i32 * %op1
  %op44 = add i32  %op43, 1
  store i32  %op44, i32 * %op2
  %op45 = load i32 , i32 * %op2
  %op46 = add i32  %op45, 1
  store i32  %op46, i32 * %op3
  %op47 = load i32 , i32 * %op3
  %op48 = add i32  %op47, 1
  store i32  %op48, i32 * %op4
  %op49 = load i32 , i32 * %op4
  %op50 = add i32  %op49, 1
  store i32  %op50, i32 * %op5
  %op51 = load i32 , i32 * %op5
  %op52 = add i32  %op51, 1
  store i32  %op52, i32 * %op6
  %op53 = load i32 , i32 * %op6
  %op54 = add i32  %op53, 1
  store i32  %op54, i32 * %op7
  %op55 = load i32 , i32 * %op7
  %op56 = add i32  %op55, 1
  store i32  %op56, i32 * %op8
  %op57 = load i32 , i32 * %op8
  %op58 = add i32  %op57, 1
  store i32  %op58, i32 * %op9
  %op59 = load i32 , i32 * %op9
  %op60 = add i32  %op59, 1
  store i32  %op60, i32 * %op10
  %op61 = load i32 , i32 * %op10
  %op62 = add i32  %op61, 1
  store i32  %op62, i32 * %op11
  %op63 = load i32 , i32 * %op11
  %op64 = add i32  %op63, 1
  store i32  %op64, i32 * %op12
  %op65 = load i32 , i32 * %op12
  %op66 = add i32  %op65, 1
  store i32  %op66, i32 * %op13
  %op67 = load i32 , i32 * %op13
  %op68 = add i32  %op67, 1
  store i32  %op68, i32 * %op14
  %op69 = load i32 , i32 * %op14
  %op70 = add i32  %op69, 1
  store i32  %op70, i32 * %op15
  %op71 = load i32 , i32 * %op15
  %op72 = add i32  %op71, 1
  store i32  %op72, i32 * %op16
  %op73 = load i32 , i32 * %op16
  %op74 = add i32  %op73, 1
  store i32  %op74, i32 * %op17
  %op75 = load i32 , i32 * %op17
  %op76 = add i32  %op75, 1
  store i32  %op76, i32 * %op18
  %op77 = load i32 , i32 * %op18
  %op78 = add i32  %op77, 1
  store i32  %op78, i32 * %op19
  %op79 = load i32 , i32 * %op19
  %op80 = add i32  %op79, 1
  store i32  %op80, i32 * %op20
  %op81 = load i32 , i32 * %op20
  %op82 = add i32  %op81, 1
  store i32  %op82, i32 * %op21
  %op83 = load i32 , i32 * %op21
  %op84 = add i32  %op83, 1
  store i32  %op84, i32 * %op22
  %op85 = load i32 , i32 * %op22
  %op86 = add i32  %op85, 1
  store i32  %op86, i32 * %op23
  %op87 = load i32 , i32 * %op23
  %op88 = add i32  %op87, 1
  store i32  %op88, i32 * %op24
  %op89 = load i32 , i32 * %op24
  %op90 = add i32  %op89, 1
  store i32  %op90, i32 * %op25
  %op91 = load i32 , i32 * %op25
  %op92 = add i32  %op91, 1
  store i32  %op92, i32 * %op26
  %op93 = load i32 , i32 * %op26
  %op94 = add i32  %op93, 1
  store i32  %op94, i32 * %op27
  %op95 = load i32 , i32 * %op27
  %op96 = add i32  %op95, 1
  store i32  %op96, i32 * %op28
  %op97 = load i32 , i32 * %op28
  %op98 = add i32  %op97, 1
  store i32  %op98, i32 * %op29
  %op99 = alloca i32 
  %op100 = load i32 , i32 * %op0
  call void @putint(i32  %op100)
  %op101 = load i32 , i32 * %op1
  call void @putint(i32  %op101)
  %op102 = load i32 , i32 * %op2
  call void @putint(i32  %op102)
  %op103 = load i32 , i32 * %op3
  call void @putint(i32  %op103)
  %op104 = load i32 , i32 * %op4
  call void @putint(i32  %op104)
  %op105 = load i32 , i32 * %op5
  call void @putint(i32  %op105)
  %op106 = load i32 , i32 * %op6
  call void @putint(i32  %op106)
  %op107 = load i32 , i32 * %op7
  call void @putint(i32  %op107)
  %op108 = load i32 , i32 * %op8
  call void @putint(i32  %op108)
  %op109 = load i32 , i32 * %op9
  call void @putint(i32  %op109)
  %op110 = load i32 , i32 * %op10
  call void @putint(i32  %op110)
  %op111 = load i32 , i32 * %op11
  call void @putint(i32  %op111)
  %op112 = load i32 , i32 * %op12
  call void @putint(i32  %op112)
  %op113 = load i32 , i32 * %op13
  call void @putint(i32  %op113)
  %op114 = load i32 , i32 * %op14
  call void @putint(i32  %op114)
  %op115 = load i32 , i32 * %op15
  call void @putint(i32  %op115)
  %op116 = load i32 , i32 * %op16
  call void @putint(i32  %op116)
  %op117 = load i32 , i32 * %op17
  call void @putint(i32  %op117)
  %op118 = load i32 , i32 * %op18
  call void @putint(i32  %op118)
  %op119 = load i32 , i32 * %op19
  call void @putint(i32  %op119)
  %op120 = load i32 , i32 * %op20
  call void @putint(i32  %op120)
  %op121 = load i32 , i32 * %op21
  call void @putint(i32  %op121)
  %op122 = load i32 , i32 * %op22
  call void @putint(i32  %op122)
  %op123 = load i32 , i32 * %op23
  call void @putint(i32  %op123)
  %op124 = load i32 , i32 * %op24
  call void @putint(i32  %op124)
  %op125 = load i32 , i32 * %op25
  call void @putint(i32  %op125)
  %op126 = load i32 , i32 * %op26
  call void @putint(i32  %op126)
  %op127 = load i32 , i32 * %op27
  call void @putint(i32  %op127)
  %op128 = load i32 , i32 * %op28
  call void @putint(i32  %op128)
  %op129 = load i32 , i32 * %op29
  call void @putint(i32  %op129)
  %op130 = alloca i32 
  store i32  10, i32 * %op130
  %op131 = load i32 , i32 * %op130
  %op132 = trunc i32  %op131 to i8 
  call void @putch(i8  %op132)
  %op133 = load i32 , i32 * %op30
  call void @putint(i32  %op133)
  %op134 = load i32 , i32 * %op130
  %op135 = trunc i32  %op134 to i8 
  call void @putch(i8  %op135)
  %op136 = load i32 , i32 * %op25
  ret i32  %op136
}
