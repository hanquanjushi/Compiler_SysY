; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/57_sort_test3.sy"

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

define i32  @QuickSort(i32 * %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * %op5
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label22
label11:                                                ; preds = %label_entry
  %op12 = alloca i32 
  %op13 = load i32 , i32 * %op4
  store i32  %op13, i32 * %op12
  %op14 = alloca i32 
  %op15 = load i32 , i32 * %op5
  store i32  %op15, i32 * %op14
  %op16 = alloca i32 
  %op17 = load i32 , i32 * %op4
  %op18 = load i32 , i32 * %op4
  %op19 = load i32 *, i32 ** %op3
  %op20 = getelementptr i32 , i32 * %op19, i32  %op17
  %op21 = load i32 , i32 * %op20
  store i32  %op21, i32 * %op16
  br label %label23
label22:                                                ; preds = %label_entry, %label30
  ret i32  0
label23:                                                ; preds = %label11, %label125
  %op24 = load i32 , i32 * %op12
  %op25 = load i32 , i32 * %op14
  %op26 = icmp slt i32  %op24, %op25
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label29, label %label30
label29:                                                ; preds = %label23
  br label %label49
label30:                                                ; preds = %label23
  %op31 = load i32 , i32 * %op16
  %op32 = load i32 , i32 * %op12
  %op33 = load i32 , i32 * %op12
  %op34 = load i32 *, i32 ** %op3
  %op35 = getelementptr i32 , i32 * %op34, i32  %op32
  store i32  %op31, i32 * %op35
  %op36 = alloca i32 
  %op37 = load i32 , i32 * %op12
  %op38 = sub i32  %op37, 1
  store i32  %op38, i32 * %op36
  %op39 = load i32 *, i32 ** %op3
  %op40 = load i32 , i32 * %op4
  %op41 = load i32 , i32 * %op36
  %op42 = call i32  @QuickSort(i32 * %op39, i32  %op40, i32  %op41)
  store i32  %op42, i32 * %op36
  %op43 = load i32 , i32 * %op12
  %op44 = add i32  %op43, 1
  store i32  %op44, i32 * %op36
  %op45 = load i32 *, i32 ** %op3
  %op46 = load i32 , i32 * %op36
  %op47 = load i32 , i32 * %op5
  %op48 = call i32  @QuickSort(i32 * %op45, i32  %op46, i32  %op47)
  store i32  %op48, i32 * %op36
  br label %label22
label49:                                                ; preds = %label29, %label55
  %op50 = load i32 , i32 * %op12
  %op51 = load i32 , i32 * %op14
  %op52 = icmp slt i32  %op50, %op51
  %op53 = zext i1  %op52 to i32 
  %op54 = icmp ne i32  %op53, 0
  br i1  %op54, label %label64, label %label58
label55:                                                ; preds = %label64
  %op56 = load i32 , i32 * %op14
  %op57 = sub i32  %op56, 1
  store i32  %op57, i32 * %op14
  br label %label49
label58:                                                ; preds = %label49, %label64
  %op59 = load i32 , i32 * %op12
  %op60 = load i32 , i32 * %op14
  %op61 = icmp slt i32  %op59, %op60
  %op62 = zext i1  %op61 to i32 
  %op63 = icmp ne i32  %op62, 0
  br i1  %op63, label %label75, label %label87
label64:                                                ; preds = %label49
  %op65 = load i32 , i32 * %op14
  %op66 = load i32 , i32 * %op14
  %op67 = load i32 *, i32 ** %op3
  %op68 = getelementptr i32 , i32 * %op67, i32  %op65
  %op69 = load i32 , i32 * %op68
  %op70 = load i32 , i32 * %op16
  %op71 = sub i32  %op70, 1
  %op72 = icmp sgt i32  %op69, %op71
  %op73 = zext i1  %op72 to i32 
  %op74 = icmp ne i32  %op73, 0
  br i1  %op74, label %label55, label %label58
label75:                                                ; preds = %label58
  %op76 = load i32 , i32 * %op14
  %op77 = load i32 , i32 * %op14
  %op78 = load i32 *, i32 ** %op3
  %op79 = getelementptr i32 , i32 * %op78, i32  %op76
  %op80 = load i32 , i32 * %op79
  %op81 = load i32 , i32 * %op12
  %op82 = load i32 , i32 * %op12
  %op83 = load i32 *, i32 ** %op3
  %op84 = getelementptr i32 , i32 * %op83, i32  %op81
  store i32  %op80, i32 * %op84
  %op85 = load i32 , i32 * %op12
  %op86 = add i32  %op85, 1
  store i32  %op86, i32 * %op12
  br label %label87
label87:                                                ; preds = %label58, %label75
  br label %label88
label88:                                                ; preds = %label87, %label94
  %op89 = load i32 , i32 * %op12
  %op90 = load i32 , i32 * %op14
  %op91 = icmp slt i32  %op89, %op90
  %op92 = zext i1  %op91 to i32 
  %op93 = icmp ne i32  %op92, 0
  br i1  %op93, label %label103, label %label97
label94:                                                ; preds = %label103
  %op95 = load i32 , i32 * %op12
  %op96 = add i32  %op95, 1
  store i32  %op96, i32 * %op12
  br label %label88
label97:                                                ; preds = %label88, %label103
  %op98 = load i32 , i32 * %op12
  %op99 = load i32 , i32 * %op14
  %op100 = icmp slt i32  %op98, %op99
  %op101 = zext i1  %op100 to i32 
  %op102 = icmp ne i32  %op101, 0
  br i1  %op102, label %label113, label %label125
label103:                                                ; preds = %label88
  %op104 = load i32 , i32 * %op12
  %op105 = load i32 , i32 * %op12
  %op106 = load i32 *, i32 ** %op3
  %op107 = getelementptr i32 , i32 * %op106, i32  %op104
  %op108 = load i32 , i32 * %op107
  %op109 = load i32 , i32 * %op16
  %op110 = icmp slt i32  %op108, %op109
  %op111 = zext i1  %op110 to i32 
  %op112 = icmp ne i32  %op111, 0
  br i1  %op112, label %label94, label %label97
label113:                                                ; preds = %label97
  %op114 = load i32 , i32 * %op12
  %op115 = load i32 , i32 * %op12
  %op116 = load i32 *, i32 ** %op3
  %op117 = getelementptr i32 , i32 * %op116, i32  %op114
  %op118 = load i32 , i32 * %op117
  %op119 = load i32 , i32 * %op14
  %op120 = load i32 , i32 * %op14
  %op121 = load i32 *, i32 ** %op3
  %op122 = getelementptr i32 , i32 * %op121, i32  %op119
  store i32  %op118, i32 * %op122
  %op123 = load i32 , i32 * %op14
  %op124 = sub i32  %op123, 1
  store i32  %op124, i32 * %op14
  br label %label125
label125:                                                ; preds = %label97, %label113
  br label %label23
}
define i32  @main() {
label_entry:
  store i32  10, i32 * @n
  %op0 = alloca [10 x i32 ]
  %op1 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  store i32  4, i32 * %op1
  %op2 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  1
  store i32  3, i32 * %op2
  %op3 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  2
  store i32  9, i32 * %op3
  %op4 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  3
  store i32  2, i32 * %op4
  %op5 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  4
  store i32  0, i32 * %op5
  %op6 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  5
  store i32  1, i32 * %op6
  %op7 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  6
  store i32  6, i32 * %op7
  %op8 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  7
  store i32  5, i32 * %op8
  %op9 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  8
  store i32  7, i32 * %op9
  %op10 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  9
  store i32  8, i32 * %op10
  %op11 = alloca i32 
  store i32  0, i32 * %op11
  %op12 = alloca i32 
  store i32  9, i32 * %op12
  %op13 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  %op14 = load i32 , i32 * %op11
  %op15 = load i32 , i32 * %op12
  %op16 = call i32  @QuickSort(i32 * %op13, i32  %op14, i32  %op15)
  store i32  %op16, i32 * %op11
  br label %label17
label17:                                                ; preds = %label_entry, %label23
  %op18 = load i32 , i32 * %op11
  %op19 = load i32 , i32 * @n
  %op20 = icmp slt i32  %op18, %op19
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label23, label %label34
label23:                                                ; preds = %label17
  %op24 = alloca i32 
  %op25 = load i32 , i32 * %op11
  %op26 = load i32 , i32 * %op11
  %op27 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op25
  %op28 = load i32 , i32 * %op27
  store i32  %op28, i32 * %op24
  %op29 = load i32 , i32 * %op24
  call void @putint(i32  %op29)
  store i32  10, i32 * %op24
  %op30 = load i32 , i32 * %op24
  %op31 = trunc i32  %op30 to i8 
  call void @putch(i8  %op31)
  %op32 = load i32 , i32 * %op11
  %op33 = add i32  %op32, 1
  store i32  %op33, i32 * %op11
  br label %label17
label34:                                                ; preds = %label17
  ret i32  0
}
