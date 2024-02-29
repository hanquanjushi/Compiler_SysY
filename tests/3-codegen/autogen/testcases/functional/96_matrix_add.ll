; ModuleID = 'cminus'
source_filename = "/home/hq/Test/SysY/tests/func/functional/96_matrix_add.sy"

@M = global i32  zeroinitializer
@L = global i32  zeroinitializer
@N = global i32  zeroinitializer
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

define i32  @add(float* %arg0, float* %arg1, float* %arg2, float* %arg3, float* %arg4, float* %arg5, float* %arg6, float* %arg7, float* %arg8) {
label_entry:
  %op9 = alloca float*
  store float* %arg0, float** %op9
  %op10 = alloca float*
  store float* %arg1, float** %op10
  %op11 = alloca float*
  store float* %arg2, float** %op11
  %op12 = alloca float*
  store float* %arg3, float** %op12
  %op13 = alloca float*
  store float* %arg4, float** %op13
  %op14 = alloca float*
  store float* %arg5, float** %op14
  %op15 = alloca float*
  store float* %arg6, float** %op15
  %op16 = alloca float*
  store float* %arg7, float** %op16
  %op17 = alloca float*
  store float* %arg8, float** %op17
  %op18 = alloca i32 
  store i32  0, i32 * %op18
  br label %label19
label19:                                                ; preds = %label_entry, %label25
  %op20 = load i32 , i32 * %op18
  %op21 = load i32 , i32 * @M
  %op22 = icmp slt i32  %op20, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label25, label %label73
label25:                                                ; preds = %label19
  %op26 = load i32 , i32 * %op18
  %op27 = load i32 , i32 * %op18
  %op28 = load float*, float** %op9
  %op29 = getelementptr float, float* %op28, i32  %op26
  %op30 = load float, float* %op29
  %op31 = load i32 , i32 * %op18
  %op32 = load i32 , i32 * %op18
  %op33 = load float*, float** %op12
  %op34 = getelementptr float, float* %op33, i32  %op31
  %op35 = load float, float* %op34
  %op36 = fadd float %op30, %op35
  %op37 = load i32 , i32 * %op18
  %op38 = load i32 , i32 * %op18
  %op39 = load float*, float** %op15
  %op40 = getelementptr float, float* %op39, i32  %op37
  store float %op36, float* %op40
  %op41 = load i32 , i32 * %op18
  %op42 = load i32 , i32 * %op18
  %op43 = load float*, float** %op10
  %op44 = getelementptr float, float* %op43, i32  %op41
  %op45 = load float, float* %op44
  %op46 = load i32 , i32 * %op18
  %op47 = load i32 , i32 * %op18
  %op48 = load float*, float** %op13
  %op49 = getelementptr float, float* %op48, i32  %op46
  %op50 = load float, float* %op49
  %op51 = fadd float %op45, %op50
  %op52 = load i32 , i32 * %op18
  %op53 = load i32 , i32 * %op18
  %op54 = load float*, float** %op16
  %op55 = getelementptr float, float* %op54, i32  %op52
  store float %op51, float* %op55
  %op56 = load i32 , i32 * %op18
  %op57 = load i32 , i32 * %op18
  %op58 = load float*, float** %op11
  %op59 = getelementptr float, float* %op58, i32  %op56
  %op60 = load float, float* %op59
  %op61 = load i32 , i32 * %op18
  %op62 = load i32 , i32 * %op18
  %op63 = load float*, float** %op14
  %op64 = getelementptr float, float* %op63, i32  %op61
  %op65 = load float, float* %op64
  %op66 = fadd float %op60, %op65
  %op67 = load i32 , i32 * %op18
  %op68 = load i32 , i32 * %op18
  %op69 = load float*, float** %op17
  %op70 = getelementptr float, float* %op69, i32  %op67
  store float %op66, float* %op70
  %op71 = load i32 , i32 * %op18
  %op72 = add i32  %op71, 1
  store i32  %op72, i32 * %op18
  br label %label19
label73:                                                ; preds = %label19
  ret i32  0
}
define i32  @main() {
label_entry:
  store i32  3, i32 * @N
  store i32  3, i32 * @M
  store i32  3, i32 * @L
  %op0 = alloca [3 x float]
  %op1 = alloca [3 x float]
  %op2 = alloca [3 x float]
  %op3 = alloca [3 x float]
  %op4 = alloca [3 x float]
  %op5 = alloca [3 x float]
  %op6 = alloca [6 x float]
  %op7 = alloca [3 x float]
  %op8 = alloca [3 x float]
  %op9 = alloca i32 
  store i32  0, i32 * %op9
  br label %label10
label10:                                                ; preds = %label_entry, %label16
  %op11 = load i32 , i32 * %op9
  %op12 = load i32 , i32 * @M
  %op13 = icmp slt i32  %op11, %op12
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label49
label16:                                                ; preds = %label10
  %op17 = load i32 , i32 * %op9
  %op18 = load i32 , i32 * %op9
  %op19 = load i32 , i32 * %op9
  %op20 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  %op18
  %op21 = sitofp i32  %op17 to float
  store float %op21, float* %op20
  %op22 = load i32 , i32 * %op9
  %op23 = load i32 , i32 * %op9
  %op24 = load i32 , i32 * %op9
  %op25 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  %op23
  %op26 = sitofp i32  %op22 to float
  store float %op26, float* %op25
  %op27 = load i32 , i32 * %op9
  %op28 = load i32 , i32 * %op9
  %op29 = load i32 , i32 * %op9
  %op30 = getelementptr [3 x float], [3 x float]* %op2, i32  0, i32  %op28
  %op31 = sitofp i32  %op27 to float
  store float %op31, float* %op30
  %op32 = load i32 , i32 * %op9
  %op33 = load i32 , i32 * %op9
  %op34 = load i32 , i32 * %op9
  %op35 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  %op33
  %op36 = sitofp i32  %op32 to float
  store float %op36, float* %op35
  %op37 = load i32 , i32 * %op9
  %op38 = load i32 , i32 * %op9
  %op39 = load i32 , i32 * %op9
  %op40 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  %op38
  %op41 = sitofp i32  %op37 to float
  store float %op41, float* %op40
  %op42 = load i32 , i32 * %op9
  %op43 = load i32 , i32 * %op9
  %op44 = load i32 , i32 * %op9
  %op45 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  %op43
  %op46 = sitofp i32  %op42 to float
  store float %op46, float* %op45
  %op47 = load i32 , i32 * %op9
  %op48 = add i32  %op47, 1
  store i32  %op48, i32 * %op9
  br label %label10
label49:                                                ; preds = %label10
  %op50 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  0
  %op51 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  0
  %op52 = getelementptr [3 x float], [3 x float]* %op2, i32  0, i32  0
  %op53 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  0
  %op54 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  0
  %op55 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  0
  %op56 = getelementptr [6 x float], [6 x float]* %op6, i32  0, i32  0
  %op57 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  0
  %op58 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  0
  %op59 = call i32  @add(float* %op50, float* %op51, float* %op52, float* %op53, float* %op54, float* %op55, float* %op56, float* %op57, float* %op58)
  store i32  %op59, i32 * %op9
  %op60 = alloca i32 
  br label %label61
label61:                                                ; preds = %label49, %label67
  %op62 = load i32 , i32 * %op9
  %op63 = load i32 , i32 * @N
  %op64 = icmp slt i32  %op62, %op63
  %op65 = zext i1  %op64 to i32 
  %op66 = icmp ne i32  %op65, 0
  br i1  %op66, label %label67, label %label76
label67:                                                ; preds = %label61
  %op68 = load i32 , i32 * %op9
  %op69 = load i32 , i32 * %op9
  %op70 = getelementptr [6 x float], [6 x float]* %op6, i32  0, i32  %op68
  %op71 = load float, float* %op70
  %op72 = fptosi float %op71 to i32 
  store i32  %op72, i32 * %op60
  %op73 = load i32 , i32 * %op60
  call void @putint(i32  %op73)
  %op74 = load i32 , i32 * %op9
  %op75 = add i32  %op74, 1
  store i32  %op75, i32 * %op9
  br label %label61
label76:                                                ; preds = %label61
  store i32  10, i32 * %op60
  %op77 = load i32 , i32 * %op60
  %op78 = trunc i32  %op77 to i8 
  call void @putch(i8  %op78)
  store i32  0, i32 * %op9
  br label %label79
label79:                                                ; preds = %label76, %label85
  %op80 = load i32 , i32 * %op9
  %op81 = load i32 , i32 * @N
  %op82 = icmp slt i32  %op80, %op81
  %op83 = zext i1  %op82 to i32 
  %op84 = icmp ne i32  %op83, 0
  br i1  %op84, label %label85, label %label94
label85:                                                ; preds = %label79
  %op86 = load i32 , i32 * %op9
  %op87 = load i32 , i32 * %op9
  %op88 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  %op86
  %op89 = load float, float* %op88
  %op90 = fptosi float %op89 to i32 
  store i32  %op90, i32 * %op60
  %op91 = load i32 , i32 * %op60
  call void @putint(i32  %op91)
  %op92 = load i32 , i32 * %op9
  %op93 = add i32  %op92, 1
  store i32  %op93, i32 * %op9
  br label %label79
label94:                                                ; preds = %label79
  store i32  10, i32 * %op60
  %op95 = load i32 , i32 * %op60
  %op96 = trunc i32  %op95 to i8 
  call void @putch(i8  %op96)
  store i32  0, i32 * %op9
  br label %label97
label97:                                                ; preds = %label94, %label103
  %op98 = load i32 , i32 * %op9
  %op99 = load i32 , i32 * @N
  %op100 = icmp slt i32  %op98, %op99
  %op101 = zext i1  %op100 to i32 
  %op102 = icmp ne i32  %op101, 0
  br i1  %op102, label %label103, label %label112
label103:                                                ; preds = %label97
  %op104 = load i32 , i32 * %op9
  %op105 = load i32 , i32 * %op9
  %op106 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  %op104
  %op107 = load float, float* %op106
  %op108 = fptosi float %op107 to i32 
  store i32  %op108, i32 * %op60
  %op109 = load i32 , i32 * %op60
  call void @putint(i32  %op109)
  %op110 = load i32 , i32 * %op9
  %op111 = add i32  %op110, 1
  store i32  %op111, i32 * %op9
  br label %label97
label112:                                                ; preds = %label97
  store i32  10, i32 * %op60
  %op113 = load i32 , i32 * %op60
  %op114 = trunc i32  %op113 to i8 
  call void @putch(i8  %op114)
  ret i32  0
}
