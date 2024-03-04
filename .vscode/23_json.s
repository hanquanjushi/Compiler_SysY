# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl pos
	.data
	.type pos, @object
	.size pos, 4
pos:
	.word 0
	.space 4
	.globl buffer
	.type buffer, @object
	.size buffer, 200000000
buffer:
	.space 200000000
	.text
	.globl is_number
	.type is_number, @function
is_number:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.w $a0, $fp, -20
.is_number_label_entry:
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = icmp sge i32  %op2, 48
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 48
	bge  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -41
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -49
# br i1  %op5, label %label6, label %label11
	ld.b $t0, $fp, -49
	bnez $t0, .is_number_label6
	b .is_number_label11
.is_number_label6:
# %op7 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op8 = icmp sle i32  %op7, 57
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 57
	bge  $t1, $t0, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -57
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -65
# br i1  %op10, label %label12, label %label13
	ld.b $t0, $fp, -65
	bnez $t0, .is_number_label12
	b .is_number_label13
.is_number_label11:
# ret i32  0
	addi.w $a0, $zero, 0
	b is_number_ret
.is_number_label12:
# ret i32  1
	addi.w $a0, $zero, 1
	b is_number_ret
.is_number_label13:
# ret i32  0
	addi.w $a0, $zero, 0
	b is_number_ret
is_number_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl skip_space
	.type skip_space, @function
skip_space:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -288
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.skip_space_label_entry:
# %op2 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32 * %arg0, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32  %arg1, i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# br label %label4
	b .skip_space_label4
.skip_space_label4:
# %op5 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -61
# br i1  %op5, label %label6, label %label12
	ld.b $t0, $fp, -61
	bnez $t0, .skip_space_label6
	b .skip_space_label12
.skip_space_label6:
# %op7 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op8 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op9 = icmp sge i32  %op7, %op8
	ld.w $t0, $fp, -68
	ld.w $t1, $fp, -72
	bge  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -73
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -81
# br i1  %op11, label %label13, label %label14
	ld.b $t0, $fp, -81
	bnez $t0, .skip_space_label13
	b .skip_space_label14
.skip_space_label12:
# ret void
	addi.d $a0, $zero, 0
	b skip_space_ret
.skip_space_label13:
# br label %label12
	b .skip_space_label12
.skip_space_label14:
# %op15 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op16 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op17 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -104
# %op18 = getelementptr i32 , i32 * %op17, i32  %op15
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -88
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -104
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# %op19 = load i32 , i32 * %op18
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op20 = icmp eq i32  %op19, 32
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 32
	beq  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -117
# %op21 = zext i1  %op20 to i32 
	ld.b $t0, $fp, -117
	st.w $t0, $fp, -124
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -125
# br i1  %op22, label %label23, label %label26
	ld.b $t0, $fp, -125
	bnez $t0, .skip_space_label23
	b .skip_space_label26
.skip_space_label23:
# %op24 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op25 = add i32  %op24, 1
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# store i32  %op25, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -136
	st.w $t1, $t0, 0
# br label %label35
	b .skip_space_label35
.skip_space_label26:
# %op27 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op28 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op29 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -152
# %op30 = getelementptr i32 , i32 * %op29, i32  %op27
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -140
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -152
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# %op31 = load i32 , i32 * %op30
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op32 = icmp eq i32  %op31, 9
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 9
	beq  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -165
# %op33 = zext i1  %op32 to i32 
	ld.b $t0, $fp, -165
	st.w $t0, $fp, -172
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -173
# br i1  %op34, label %label36, label %label39
	ld.b $t0, $fp, -173
	bnez $t0, .skip_space_label36
	b .skip_space_label39
.skip_space_label35:
# br label %label4
	b .skip_space_label4
.skip_space_label36:
# %op37 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op38 = add i32  %op37, 1
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# store i32  %op38, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -184
	st.w $t1, $t0, 0
# br label %label48
	b .skip_space_label48
.skip_space_label39:
# %op40 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op41 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op42 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -200
# %op43 = getelementptr i32 , i32 * %op42, i32  %op40
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -188
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -200
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# %op44 = load i32 , i32 * %op43
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op45 = icmp eq i32  %op44, 10
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 10
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -213
# %op46 = zext i1  %op45 to i32 
	ld.b $t0, $fp, -213
	st.w $t0, $fp, -220
# %op47 = icmp ne i32  %op46, 0
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -221
# br i1  %op47, label %label49, label %label52
	ld.b $t0, $fp, -221
	bnez $t0, .skip_space_label49
	b .skip_space_label52
.skip_space_label48:
# br label %label35
	b .skip_space_label35
.skip_space_label49:
# %op50 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op51 = add i32  %op50, 1
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# store i32  %op51, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -232
	st.w $t1, $t0, 0
# br label %label61
	b .skip_space_label61
.skip_space_label52:
# %op53 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op54 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op55 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -248
# %op56 = getelementptr i32 , i32 * %op55, i32  %op53
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -236
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -248
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -256
# %op57 = load i32 , i32 * %op56
	ld.d $t0, $fp, -256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op58 = icmp eq i32  %op57, 13
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 13
	beq  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -261
# %op59 = zext i1  %op58 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op60 = icmp ne i32  %op59, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -269
# br i1  %op60, label %label62, label %label65
	ld.b $t0, $fp, -269
	bnez $t0, .skip_space_label62
	b .skip_space_label65
.skip_space_label61:
# br label %label48
	b .skip_space_label48
.skip_space_label62:
# %op63 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op64 = add i32  %op63, 1
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# store i32  %op64, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -280
	st.w $t1, $t0, 0
# br label %label66
	b .skip_space_label66
.skip_space_label65:
# br label %label12
	b .skip_space_label12
.skip_space_label66:
# br label %label61
	b .skip_space_label61
skip_space_ret:
	addi.d $sp, $sp, 288
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl detect_item
	.type detect_item, @function
detect_item:
	lu12i.w $t0, 0
	ori $t0, $t0, 3632
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
	st.w $a0, $fp, -20
	st.d $a1, $fp, -32
	st.w $a2, $fp, -36
.detect_item_label_entry:
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# store i32  %arg0, i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op4 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# store i32 * %arg1, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $fp, -32
	st.d $t1, $t0, 0
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -80
# store i32  %arg2, i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op7 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op8 = icmp sge i32  %op6, %op7
	ld.w $t0, $fp, -88
	ld.w $t1, $fp, -92
	bge  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -93
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -101
# br i1  %op10, label %label11, label %label12
	ld.b $t0, $fp, -101
	bnez $t0, .detect_item_label11
	b .detect_item_label12
.detect_item_label11:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label12:
# %op13 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -112
# %op14 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# call void @skip_space(i32 * %op13, i32  %op14)
	ld.d $a0, $fp, -112
	ld.w $a1, $fp, -116
	bl skip_space
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op16 = icmp eq i32  %op15, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -121
# %op17 = zext i1  %op16 to i32 
	ld.b $t0, $fp, -121
	st.w $t0, $fp, -128
# %op18 = icmp ne i32  %op17, 0
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -129
# br i1  %op18, label %label19, label %label28
	ld.b $t0, $fp, -129
	bnez $t0, .detect_item_label19
	b .detect_item_label28
.detect_item_label19:
# %op20 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op21 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op22 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -152
# %op23 = getelementptr i32 , i32 * %op22, i32  %op20
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -136
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -152
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# %op24 = load i32 , i32 * %op23
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op25 = icmp eq i32  %op24, 123
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 123
	beq  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -165
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -165
	st.w $t0, $fp, -172
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -173
# br i1  %op27, label %label34, label %label38
	ld.b $t0, $fp, -173
	bnez $t0, .detect_item_label34
	b .detect_item_label38
.detect_item_label28:
# %op29 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op30 = icmp eq i32  %op29, 1
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -181
# %op31 = zext i1  %op30 to i32 
	ld.b $t0, $fp, -181
	st.w $t0, $fp, -188
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -189
# br i1  %op32, label %label144, label %label153
	ld.b $t0, $fp, -189
	bnez $t0, .detect_item_label144
	b .detect_item_label153
.detect_item_label33:
# ret i32  1
	addi.w $a0, $zero, 1
	b detect_item_ret
.detect_item_label34:
# %op35 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -200
# %op36 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op37 = call i32  @detect_item(i32  4, i32 * %op35, i32  %op36)
	addi.w $a0, $zero, 4
	ld.d $a1, $fp, -200
	ld.w $a2, $fp, -204
	bl detect_item
	st.w $a0, $fp, -208
# ret i32  %op37
	ld.w $a0, $fp, -208
	b detect_item_ret
.detect_item_label38:
# %op39 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op40 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op41 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -224
# %op42 = getelementptr i32 , i32 * %op41, i32  %op39
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -212
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -224
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -232
# %op43 = load i32 , i32 * %op42
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op44 = icmp eq i32  %op43, 91
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 91
	beq  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -237
# %op45 = zext i1  %op44 to i32 
	ld.b $t0, $fp, -237
	st.w $t0, $fp, -244
# %op46 = icmp ne i32  %op45, 0
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -245
# br i1  %op46, label %label47, label %label51
	ld.b $t0, $fp, -245
	bnez $t0, .detect_item_label47
	b .detect_item_label51
.detect_item_label47:
# %op48 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -256
# %op49 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op50 = call i32  @detect_item(i32  3, i32 * %op48, i32  %op49)
	addi.w $a0, $zero, 3
	ld.d $a1, $fp, -256
	ld.w $a2, $fp, -260
	bl detect_item
	st.w $a0, $fp, -264
# ret i32  %op50
	ld.w $a0, $fp, -264
	b detect_item_ret
.detect_item_label51:
# %op52 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op53 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op54 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -280
# %op55 = getelementptr i32 , i32 * %op54, i32  %op52
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -268
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -280
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# %op56 = load i32 , i32 * %op55
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op57 = icmp eq i32  %op56, 34
	ld.w $t0, $fp, -292
	addi.w $t1, $zero, 34
	beq  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -293
# %op58 = zext i1  %op57 to i32 
	ld.b $t0, $fp, -293
	st.w $t0, $fp, -300
# %op59 = icmp ne i32  %op58, 0
	ld.w $t0, $fp, -300
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -301
# br i1  %op59, label %label60, label %label64
	ld.b $t0, $fp, -301
	bnez $t0, .detect_item_label60
	b .detect_item_label64
.detect_item_label60:
# %op61 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -312
# %op62 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op63 = call i32  @detect_item(i32  2, i32 * %op61, i32  %op62)
	addi.w $a0, $zero, 2
	ld.d $a1, $fp, -312
	ld.w $a2, $fp, -316
	bl detect_item
	st.w $a0, $fp, -320
# ret i32  %op63
	ld.w $a0, $fp, -320
	b detect_item_ret
.detect_item_label64:
# %op65 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op66 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# %op67 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -336
# %op68 = getelementptr i32 , i32 * %op67, i32  %op65
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -324
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -336
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -344
# %op69 = load i32 , i32 * %op68
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op70 = call i32  @is_number(i32  %op69)
	ld.w $a0, $fp, -348
	bl is_number
	st.w $a0, $fp, -352
# %op71 = icmp eq i32  %op70, 1
	ld.w $t0, $fp, -352
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -353
# %op72 = zext i1  %op71 to i32 
	ld.b $t0, $fp, -353
	st.w $t0, $fp, -360
# %op73 = icmp ne i32  %op72, 0
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -361
# br i1  %op73, label %label74, label %label78
	ld.b $t0, $fp, -361
	bnez $t0, .detect_item_label74
	b .detect_item_label78
.detect_item_label74:
# %op75 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -376
# %op76 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op77 = call i32  @detect_item(i32  1, i32 * %op75, i32  %op76)
	addi.w $a0, $zero, 1
	ld.d $a1, $fp, -376
	ld.w $a2, $fp, -380
	bl detect_item
	st.w $a0, $fp, -384
# ret i32  %op77
	ld.w $a0, $fp, -384
	b detect_item_ret
.detect_item_label78:
# %op79 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op80 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -392
# %op81 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -400
# %op82 = getelementptr i32 , i32 * %op81, i32  %op79
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -388
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -400
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -408
# %op83 = load i32 , i32 * %op82
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op84 = icmp eq i32  %op83, 43
	ld.w $t0, $fp, -412
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -413
# %op85 = zext i1  %op84 to i32 
	ld.b $t0, $fp, -413
	st.w $t0, $fp, -420
# %op86 = icmp ne i32  %op85, 0
	ld.w $t0, $fp, -420
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -421
# br i1  %op86, label %label87, label %label91
	ld.b $t0, $fp, -421
	bnez $t0, .detect_item_label87
	b .detect_item_label91
.detect_item_label87:
# %op88 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -432
# %op89 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op90 = call i32  @detect_item(i32  1, i32 * %op88, i32  %op89)
	addi.w $a0, $zero, 1
	ld.d $a1, $fp, -432
	ld.w $a2, $fp, -436
	bl detect_item
	st.w $a0, $fp, -440
# ret i32  %op90
	ld.w $a0, $fp, -440
	b detect_item_ret
.detect_item_label91:
# %op92 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op93 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -448
# %op94 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -456
# %op95 = getelementptr i32 , i32 * %op94, i32  %op92
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -444
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -456
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -464
# %op96 = load i32 , i32 * %op95
	ld.d $t0, $fp, -464
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op97 = icmp eq i32  %op96, 45
	ld.w $t0, $fp, -468
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -469
# %op98 = zext i1  %op97 to i32 
	ld.b $t0, $fp, -469
	st.w $t0, $fp, -476
# %op99 = icmp ne i32  %op98, 0
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -477
# br i1  %op99, label %label100, label %label104
	ld.b $t0, $fp, -477
	bnez $t0, .detect_item_label100
	b .detect_item_label104
.detect_item_label100:
# %op101 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -488
# %op102 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op103 = call i32  @detect_item(i32  1, i32 * %op101, i32  %op102)
	addi.w $a0, $zero, 1
	ld.d $a1, $fp, -488
	ld.w $a2, $fp, -492
	bl detect_item
	st.w $a0, $fp, -496
# ret i32  %op103
	ld.w $a0, $fp, -496
	b detect_item_ret
.detect_item_label104:
# %op105 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op106 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -504
# %op107 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -512
# %op108 = getelementptr i32 , i32 * %op107, i32  %op105
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -500
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -512
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -520
# %op109 = load i32 , i32 * %op108
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op110 = icmp eq i32  %op109, 116
	ld.w $t0, $fp, -524
	addi.w $t1, $zero, 116
	beq  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -525
# %op111 = zext i1  %op110 to i32 
	ld.b $t0, $fp, -525
	st.w $t0, $fp, -532
# %op112 = icmp ne i32  %op111, 0
	ld.w $t0, $fp, -532
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -533
# br i1  %op112, label %label113, label %label117
	ld.b $t0, $fp, -533
	bnez $t0, .detect_item_label113
	b .detect_item_label117
.detect_item_label113:
# %op114 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -544
# %op115 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -548
# %op116 = call i32  @detect_item(i32  5, i32 * %op114, i32  %op115)
	addi.w $a0, $zero, 5
	ld.d $a1, $fp, -544
	ld.w $a2, $fp, -548
	bl detect_item
	st.w $a0, $fp, -552
# ret i32  %op116
	ld.w $a0, $fp, -552
	b detect_item_ret
.detect_item_label117:
# %op118 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op119 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# %op120 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -568
# %op121 = getelementptr i32 , i32 * %op120, i32  %op118
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -556
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -568
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -576
# %op122 = load i32 , i32 * %op121
	ld.d $t0, $fp, -576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# %op123 = icmp eq i32  %op122, 102
	ld.w $t0, $fp, -580
	addi.w $t1, $zero, 102
	beq  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -581
# %op124 = zext i1  %op123 to i32 
	ld.b $t0, $fp, -581
	st.w $t0, $fp, -588
# %op125 = icmp ne i32  %op124, 0
	ld.w $t0, $fp, -588
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -589
# br i1  %op125, label %label126, label %label130
	ld.b $t0, $fp, -589
	bnez $t0, .detect_item_label126
	b .detect_item_label130
.detect_item_label126:
# %op127 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -600
# %op128 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op129 = call i32  @detect_item(i32  6, i32 * %op127, i32  %op128)
	addi.w $a0, $zero, 6
	ld.d $a1, $fp, -600
	ld.w $a2, $fp, -604
	bl detect_item
	st.w $a0, $fp, -608
# ret i32  %op129
	ld.w $a0, $fp, -608
	b detect_item_ret
.detect_item_label130:
# %op131 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -612
# %op132 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -616
# %op133 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -624
# %op134 = getelementptr i32 , i32 * %op133, i32  %op131
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -612
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -624
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -632
# %op135 = load i32 , i32 * %op134
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op136 = icmp eq i32  %op135, 110
	ld.w $t0, $fp, -636
	addi.w $t1, $zero, 110
	beq  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -637
# %op137 = zext i1  %op136 to i32 
	ld.b $t0, $fp, -637
	st.w $t0, $fp, -644
# %op138 = icmp ne i32  %op137, 0
	ld.w $t0, $fp, -644
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -645
# br i1  %op138, label %label139, label %label143
	ld.b $t0, $fp, -645
	bnez $t0, .detect_item_label139
	b .detect_item_label143
.detect_item_label139:
# %op140 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -656
# %op141 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op142 = call i32  @detect_item(i32  7, i32 * %op140, i32  %op141)
	addi.w $a0, $zero, 7
	ld.d $a1, $fp, -656
	ld.w $a2, $fp, -660
	bl detect_item
	st.w $a0, $fp, -664
# ret i32  %op142
	ld.w $a0, $fp, -664
	b detect_item_ret
.detect_item_label143:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label144:
# %op145 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op146 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -672
# %op147 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -680
# %op148 = getelementptr i32 , i32 * %op147, i32  %op145
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -668
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -680
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -688
# %op149 = load i32 , i32 * %op148
	ld.d $t0, $fp, -688
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -692
# %op150 = icmp eq i32  %op149, 43
	ld.w $t0, $fp, -692
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -693
# %op151 = zext i1  %op150 to i32 
	ld.b $t0, $fp, -693
	st.w $t0, $fp, -700
# %op152 = icmp ne i32  %op151, 0
	ld.w $t0, $fp, -700
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label40
	addi.d $t2, $zero, 0
	b false_label40
true_label40:
	addi.d $t2, $zero, 1
false_label40:
	st.b $t2, $fp, -701
# br i1  %op152, label %label159, label %label162
	ld.b $t0, $fp, -701
	bnez $t0, .detect_item_label159
	b .detect_item_label162
.detect_item_label153:
# %op154 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# %op155 = icmp eq i32  %op154, 2
	ld.w $t0, $fp, -708
	addi.w $t1, $zero, 2
	beq  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -709
# %op156 = zext i1  %op155 to i32 
	ld.b $t0, $fp, -709
	st.w $t0, $fp, -716
# %op157 = icmp ne i32  %op156, 0
	ld.w $t0, $fp, -716
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -717
# br i1  %op157, label %label334, label %label337
	ld.b $t0, $fp, -717
	bnez $t0, .detect_item_label334
	b .detect_item_label337
.detect_item_label158:
# br label %label33
	b .detect_item_label33
.detect_item_label159:
# %op160 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -724
# %op161 = add i32  %op160, 1
	ld.w $t0, $fp, -724
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -728
# store i32  %op161, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -728
	st.w $t1, $t0, 0
# br label %label171
	b .detect_item_label171
.detect_item_label162:
# %op163 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -732
# %op164 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -736
# %op165 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -744
# %op166 = getelementptr i32 , i32 * %op165, i32  %op163
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -732
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -744
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -752
# %op167 = load i32 , i32 * %op166
	ld.d $t0, $fp, -752
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -756
# %op168 = icmp eq i32  %op167, 45
	ld.w $t0, $fp, -756
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -757
# %op169 = zext i1  %op168 to i32 
	ld.b $t0, $fp, -757
	st.w $t0, $fp, -764
# %op170 = icmp ne i32  %op169, 0
	ld.w $t0, $fp, -764
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label44
	addi.d $t2, $zero, 0
	b false_label44
true_label44:
	addi.d $t2, $zero, 1
false_label44:
	st.b $t2, $fp, -765
# br i1  %op170, label %label177, label %label180
	ld.b $t0, $fp, -765
	bnez $t0, .detect_item_label177
	b .detect_item_label180
.detect_item_label171:
# %op172 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -772
# %op173 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -776
# %op174 = icmp sge i32  %op172, %op173
	ld.w $t0, $fp, -772
	ld.w $t1, $fp, -776
	bge  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -777
# %op175 = zext i1  %op174 to i32 
	ld.b $t0, $fp, -777
	st.w $t0, $fp, -784
# %op176 = icmp ne i32  %op175, 0
	ld.w $t0, $fp, -784
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label46
	addi.d $t2, $zero, 0
	b false_label46
true_label46:
	addi.d $t2, $zero, 1
false_label46:
	st.b $t2, $fp, -785
# br i1  %op176, label %label181, label %label182
	ld.b $t0, $fp, -785
	bnez $t0, .detect_item_label181
	b .detect_item_label182
.detect_item_label177:
# %op178 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -792
# %op179 = add i32  %op178, 1
	ld.w $t0, $fp, -792
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -796
# store i32  %op179, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -796
	st.w $t1, $t0, 0
# br label %label180
	b .detect_item_label180
.detect_item_label180:
# br label %label171
	b .detect_item_label171
.detect_item_label181:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label182:
# %op183 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -800
# %op184 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -804
# %op185 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -816
# %op186 = getelementptr i32 , i32 * %op185, i32  %op183
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -800
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -816
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -824
# %op187 = load i32 , i32 * %op186
	ld.d $t0, $fp, -824
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -828
# %op188 = call i32  @is_number(i32  %op187)
	ld.w $a0, $fp, -828
	bl is_number
	st.w $a0, $fp, -832
# %op189 = icmp eq i32  %op188, 0
	ld.w $t0, $fp, -832
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -833
# %op190 = zext i1  %op189 to i32 
	ld.b $t0, $fp, -833
	st.w $t0, $fp, -840
# %op191 = icmp ne i32  %op190, 0
	ld.w $t0, $fp, -840
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label48
	addi.d $t2, $zero, 0
	b false_label48
true_label48:
	addi.d $t2, $zero, 1
false_label48:
	st.b $t2, $fp, -841
# br i1  %op191, label %label193, label %label194
	ld.b $t0, $fp, -841
	bnez $t0, .detect_item_label193
	b .detect_item_label194
.detect_item_label192:
# br label %label195
	b .detect_item_label195
.detect_item_label193:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label194:
# br label %label192
	b .detect_item_label192
.detect_item_label195:
# %op196 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -848
# %op197 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -852
# %op198 = icmp slt i32  %op196, %op197
	ld.w $t0, $fp, -848
	ld.w $t1, $fp, -852
	slt $t2, $t0, $t1
	st.b $t2, $fp, -853
# %op199 = zext i1  %op198 to i32 
	ld.b $t0, $fp, -853
	st.w $t0, $fp, -860
# %op200 = icmp ne i32  %op199, 0
	ld.w $t0, $fp, -860
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -861
# br i1  %op200, label %label201, label %label211
	ld.b $t0, $fp, -861
	bnez $t0, .detect_item_label201
	b .detect_item_label211
.detect_item_label201:
# %op202 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -868
# %op203 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -872
# %op204 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -880
# %op205 = getelementptr i32 , i32 * %op204, i32  %op202
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -868
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -880
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -888
# %op206 = load i32 , i32 * %op205
	ld.d $t0, $fp, -888
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -892
# %op207 = call i32  @is_number(i32  %op206)
	ld.w $a0, $fp, -892
	bl is_number
	st.w $a0, $fp, -896
# %op208 = icmp ne i32  %op207, 1
	ld.w $t0, $fp, -896
	addi.w $t1, $zero, 1
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -897
# %op209 = zext i1  %op208 to i32 
	ld.b $t0, $fp, -897
	st.w $t0, $fp, -904
# %op210 = icmp ne i32  %op209, 0
	ld.w $t0, $fp, -904
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label52
	addi.d $t2, $zero, 0
	b false_label52
true_label52:
	addi.d $t2, $zero, 1
false_label52:
	st.b $t2, $fp, -905
# br i1  %op210, label %label217, label %label218
	ld.b $t0, $fp, -905
	bnez $t0, .detect_item_label217
	b .detect_item_label218
.detect_item_label211:
# %op212 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -912
# %op213 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -916
# %op214 = icmp slt i32  %op212, %op213
	ld.w $t0, $fp, -912
	ld.w $t1, $fp, -916
	slt $t2, $t0, $t1
	st.b $t2, $fp, -917
# %op215 = zext i1  %op214 to i32 
	ld.b $t0, $fp, -917
	st.w $t0, $fp, -924
# %op216 = icmp ne i32  %op215, 0
	ld.w $t0, $fp, -924
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label54
	addi.d $t2, $zero, 0
	b false_label54
true_label54:
	addi.d $t2, $zero, 1
false_label54:
	st.b $t2, $fp, -925
# br i1  %op216, label %label221, label %label230
	ld.b $t0, $fp, -925
	bnez $t0, .detect_item_label221
	b .detect_item_label230
.detect_item_label217:
# br label %label211
	b .detect_item_label211
.detect_item_label218:
# %op219 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -932
# %op220 = add i32  %op219, 1
	ld.w $t0, $fp, -932
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -936
# store i32  %op220, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -936
	st.w $t1, $t0, 0
# br label %label195
	b .detect_item_label195
.detect_item_label221:
# %op222 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# %op223 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -944
# %op224 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -952
# %op225 = getelementptr i32 , i32 * %op224, i32  %op222
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -940
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -952
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -960
# %op226 = load i32 , i32 * %op225
	ld.d $t0, $fp, -960
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -964
# %op227 = icmp eq i32  %op226, 46
	ld.w $t0, $fp, -964
	addi.w $t1, $zero, 46
	beq  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -965
# %op228 = zext i1  %op227 to i32 
	ld.b $t0, $fp, -965
	st.w $t0, $fp, -972
# %op229 = icmp ne i32  %op228, 0
	ld.w $t0, $fp, -972
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label56
	addi.d $t2, $zero, 0
	b false_label56
true_label56:
	addi.d $t2, $zero, 1
false_label56:
	st.b $t2, $fp, -973
# br i1  %op229, label %label236, label %label239
	ld.b $t0, $fp, -973
	bnez $t0, .detect_item_label236
	b .detect_item_label239
.detect_item_label230:
# %op231 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -980
# %op232 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -984
# %op233 = icmp slt i32  %op231, %op232
	ld.w $t0, $fp, -980
	ld.w $t1, $fp, -984
	slt $t2, $t0, $t1
	st.b $t2, $fp, -985
# %op234 = zext i1  %op233 to i32 
	ld.b $t0, $fp, -985
	st.w $t0, $fp, -992
# %op235 = icmp ne i32  %op234, 0
	ld.w $t0, $fp, -992
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label58
	addi.d $t2, $zero, 0
	b false_label58
true_label58:
	addi.d $t2, $zero, 1
false_label58:
	st.b $t2, $fp, -993
# br i1  %op235, label %label261, label %label270
	ld.b $t0, $fp, -993
	bnez $t0, .detect_item_label261
	b .detect_item_label270
.detect_item_label236:
# %op237 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1000
# %op238 = add i32  %op237, 1
	ld.w $t0, $fp, -1000
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1004
# store i32  %op238, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1004
	st.w $t1, $t0, 0
# br label %label240
	b .detect_item_label240
.detect_item_label239:
# br label %label230
	b .detect_item_label230
.detect_item_label240:
# %op241 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1008
# %op242 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1012
# %op243 = icmp slt i32  %op241, %op242
	ld.w $t0, $fp, -1008
	ld.w $t1, $fp, -1012
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1013
# %op244 = zext i1  %op243 to i32 
	ld.b $t0, $fp, -1013
	st.w $t0, $fp, -1020
# %op245 = icmp ne i32  %op244, 0
	ld.w $t0, $fp, -1020
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label60
	addi.d $t2, $zero, 0
	b false_label60
true_label60:
	addi.d $t2, $zero, 1
false_label60:
	st.b $t2, $fp, -1021
# br i1  %op245, label %label246, label %label256
	ld.b $t0, $fp, -1021
	bnez $t0, .detect_item_label246
	b .detect_item_label256
.detect_item_label246:
# %op247 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1028
# %op248 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1032
# %op249 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1040
# %op250 = getelementptr i32 , i32 * %op249, i32  %op247
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1028
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1040
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1048
# %op251 = load i32 , i32 * %op250
	ld.d $t0, $fp, -1048
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1052
# %op252 = call i32  @is_number(i32  %op251)
	ld.w $a0, $fp, -1052
	bl is_number
	st.w $a0, $fp, -1056
# %op253 = icmp ne i32  %op252, 1
	ld.w $t0, $fp, -1056
	addi.w $t1, $zero, 1
	bne  $t0, $t1, true_label61
	addi.d $t2, $zero, 0
	b false_label61
true_label61:
	addi.d $t2, $zero, 1
false_label61:
	st.b $t2, $fp, -1057
# %op254 = zext i1  %op253 to i32 
	ld.b $t0, $fp, -1057
	st.w $t0, $fp, -1064
# %op255 = icmp ne i32  %op254, 0
	ld.w $t0, $fp, -1064
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label62
	addi.d $t2, $zero, 0
	b false_label62
true_label62:
	addi.d $t2, $zero, 1
false_label62:
	st.b $t2, $fp, -1065
# br i1  %op255, label %label257, label %label258
	ld.b $t0, $fp, -1065
	bnez $t0, .detect_item_label257
	b .detect_item_label258
.detect_item_label256:
# br label %label239
	b .detect_item_label239
.detect_item_label257:
# br label %label256
	b .detect_item_label256
.detect_item_label258:
# %op259 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1072
# %op260 = add i32  %op259, 1
	ld.w $t0, $fp, -1072
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1076
# store i32  %op260, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1076
	st.w $t1, $t0, 0
# br label %label240
	b .detect_item_label240
.detect_item_label261:
# %op262 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1080
# %op263 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1084
# %op264 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1096
# %op265 = getelementptr i32 , i32 * %op264, i32  %op262
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1080
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1096
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1104
# %op266 = load i32 , i32 * %op265
	ld.d $t0, $fp, -1104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1108
# %op267 = icmp eq i32  %op266, 101
	ld.w $t0, $fp, -1108
	addi.w $t1, $zero, 101
	beq  $t0, $t1, true_label63
	addi.d $t2, $zero, 0
	b false_label63
true_label63:
	addi.d $t2, $zero, 1
false_label63:
	st.b $t2, $fp, -1109
# %op268 = zext i1  %op267 to i32 
	ld.b $t0, $fp, -1109
	st.w $t0, $fp, -1116
# %op269 = icmp ne i32  %op268, 0
	ld.w $t0, $fp, -1116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label64
	addi.d $t2, $zero, 0
	b false_label64
true_label64:
	addi.d $t2, $zero, 1
false_label64:
	st.b $t2, $fp, -1117
# br i1  %op269, label %label271, label %label279
	ld.b $t0, $fp, -1117
	bnez $t0, .detect_item_label271
	b .detect_item_label279
.detect_item_label270:
# br label %label158
	b .detect_item_label158
.detect_item_label271:
# %op272 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1124
# %op273 = add i32  %op272, 1
	ld.w $t0, $fp, -1124
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1128
# store i32  %op273, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1128
	st.w $t1, $t0, 0
# %op274 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1132
# %op275 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1136
# %op276 = icmp slt i32  %op274, %op275
	ld.w $t0, $fp, -1132
	ld.w $t1, $fp, -1136
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1137
# %op277 = zext i1  %op276 to i32 
	ld.b $t0, $fp, -1137
	st.w $t0, $fp, -1144
# %op278 = icmp ne i32  %op277, 0
	ld.w $t0, $fp, -1144
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label66
	addi.d $t2, $zero, 0
	b false_label66
true_label66:
	addi.d $t2, $zero, 1
false_label66:
	st.b $t2, $fp, -1145
# br i1  %op278, label %label280, label %label289
	ld.b $t0, $fp, -1145
	bnez $t0, .detect_item_label280
	b .detect_item_label289
.detect_item_label279:
# br label %label270
	b .detect_item_label270
.detect_item_label280:
# %op281 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1152
# %op282 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1156
# %op283 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1168
# %op284 = getelementptr i32 , i32 * %op283, i32  %op281
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1152
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1168
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1176
# %op285 = load i32 , i32 * %op284
	ld.d $t0, $fp, -1176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1180
# %op286 = icmp eq i32  %op285, 43
	ld.w $t0, $fp, -1180
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label67
	addi.d $t2, $zero, 0
	b false_label67
true_label67:
	addi.d $t2, $zero, 1
false_label67:
	st.b $t2, $fp, -1181
# %op287 = zext i1  %op286 to i32 
	ld.b $t0, $fp, -1181
	st.w $t0, $fp, -1188
# %op288 = icmp ne i32  %op287, 0
	ld.w $t0, $fp, -1188
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label68
	addi.d $t2, $zero, 0
	b false_label68
true_label68:
	addi.d $t2, $zero, 1
false_label68:
	st.b $t2, $fp, -1189
# br i1  %op288, label %label295, label %label298
	ld.b $t0, $fp, -1189
	bnez $t0, .detect_item_label295
	b .detect_item_label298
.detect_item_label289:
# %op290 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1196
# %op291 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1200
# %op292 = icmp slt i32  %op290, %op291
	ld.w $t0, $fp, -1196
	ld.w $t1, $fp, -1200
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1201
# %op293 = zext i1  %op292 to i32 
	ld.b $t0, $fp, -1201
	st.w $t0, $fp, -1208
# %op294 = icmp ne i32  %op293, 0
	ld.w $t0, $fp, -1208
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label70
	addi.d $t2, $zero, 0
	b false_label70
true_label70:
	addi.d $t2, $zero, 1
false_label70:
	st.b $t2, $fp, -1209
# br i1  %op294, label %label299, label %label308
	ld.b $t0, $fp, -1209
	bnez $t0, .detect_item_label299
	b .detect_item_label308
.detect_item_label295:
# %op296 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1216
# %op297 = add i32  %op296, 1
	ld.w $t0, $fp, -1216
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1220
# store i32  %op297, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1220
	st.w $t1, $t0, 0
# br label %label298
	b .detect_item_label298
.detect_item_label298:
# br label %label289
	b .detect_item_label289
.detect_item_label299:
# %op300 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1224
# %op301 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1228
# %op302 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1240
# %op303 = getelementptr i32 , i32 * %op302, i32  %op300
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1224
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1240
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1248
# %op304 = load i32 , i32 * %op303
	ld.d $t0, $fp, -1248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1252
# %op305 = icmp eq i32  %op304, 45
	ld.w $t0, $fp, -1252
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label71
	addi.d $t2, $zero, 0
	b false_label71
true_label71:
	addi.d $t2, $zero, 1
false_label71:
	st.b $t2, $fp, -1253
# %op306 = zext i1  %op305 to i32 
	ld.b $t0, $fp, -1253
	st.w $t0, $fp, -1260
# %op307 = icmp ne i32  %op306, 0
	ld.w $t0, $fp, -1260
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label72
	addi.d $t2, $zero, 0
	b false_label72
true_label72:
	addi.d $t2, $zero, 1
false_label72:
	st.b $t2, $fp, -1261
# br i1  %op307, label %label309, label %label312
	ld.b $t0, $fp, -1261
	bnez $t0, .detect_item_label309
	b .detect_item_label312
.detect_item_label308:
# br label %label313
	b .detect_item_label313
.detect_item_label309:
# %op310 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1268
# %op311 = add i32  %op310, 1
	ld.w $t0, $fp, -1268
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1272
# store i32  %op311, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1272
	st.w $t1, $t0, 0
# br label %label312
	b .detect_item_label312
.detect_item_label312:
# br label %label308
	b .detect_item_label308
.detect_item_label313:
# %op314 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1276
# %op315 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1280
# %op316 = icmp slt i32  %op314, %op315
	ld.w $t0, $fp, -1276
	ld.w $t1, $fp, -1280
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1281
# %op317 = zext i1  %op316 to i32 
	ld.b $t0, $fp, -1281
	st.w $t0, $fp, -1288
# %op318 = icmp ne i32  %op317, 0
	ld.w $t0, $fp, -1288
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label74
	addi.d $t2, $zero, 0
	b false_label74
true_label74:
	addi.d $t2, $zero, 1
false_label74:
	st.b $t2, $fp, -1289
# br i1  %op318, label %label319, label %label329
	ld.b $t0, $fp, -1289
	bnez $t0, .detect_item_label319
	b .detect_item_label329
.detect_item_label319:
# %op320 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1296
# %op321 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1300
# %op322 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1312
# %op323 = getelementptr i32 , i32 * %op322, i32  %op320
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1296
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1312
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1320
# %op324 = load i32 , i32 * %op323
	ld.d $t0, $fp, -1320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1324
# %op325 = call i32  @is_number(i32  %op324)
	ld.w $a0, $fp, -1324
	bl is_number
	st.w $a0, $fp, -1328
# %op326 = icmp ne i32  %op325, 1
	ld.w $t0, $fp, -1328
	addi.w $t1, $zero, 1
	bne  $t0, $t1, true_label75
	addi.d $t2, $zero, 0
	b false_label75
true_label75:
	addi.d $t2, $zero, 1
false_label75:
	st.b $t2, $fp, -1329
# %op327 = zext i1  %op326 to i32 
	ld.b $t0, $fp, -1329
	st.w $t0, $fp, -1336
# %op328 = icmp ne i32  %op327, 0
	ld.w $t0, $fp, -1336
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label76
	addi.d $t2, $zero, 0
	b false_label76
true_label76:
	addi.d $t2, $zero, 1
false_label76:
	st.b $t2, $fp, -1337
# br i1  %op328, label %label330, label %label331
	ld.b $t0, $fp, -1337
	bnez $t0, .detect_item_label330
	b .detect_item_label331
.detect_item_label329:
# br label %label279
	b .detect_item_label279
.detect_item_label330:
# br label %label329
	b .detect_item_label329
.detect_item_label331:
# %op332 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1344
# %op333 = add i32  %op332, 1
	ld.w $t0, $fp, -1344
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1348
# store i32  %op333, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1348
	st.w $t1, $t0, 0
# br label %label313
	b .detect_item_label313
.detect_item_label334:
# %op335 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1352
# %op336 = add i32  %op335, 1
	ld.w $t0, $fp, -1352
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1356
# store i32  %op336, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1356
	st.w $t1, $t0, 0
# br label %label343
	b .detect_item_label343
.detect_item_label337:
# %op338 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1360
# %op339 = icmp eq i32  %op338, 3
	ld.w $t0, $fp, -1360
	addi.w $t1, $zero, 3
	beq  $t0, $t1, true_label77
	addi.d $t2, $zero, 0
	b false_label77
true_label77:
	addi.d $t2, $zero, 1
false_label77:
	st.b $t2, $fp, -1361
# %op340 = zext i1  %op339 to i32 
	ld.b $t0, $fp, -1361
	st.w $t0, $fp, -1368
# %op341 = icmp ne i32  %op340, 0
	ld.w $t0, $fp, -1368
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label78
	addi.d $t2, $zero, 0
	b false_label78
true_label78:
	addi.d $t2, $zero, 1
false_label78:
	st.b $t2, $fp, -1369
# br i1  %op341, label %label396, label %label406
	ld.b $t0, $fp, -1369
	bnez $t0, .detect_item_label396
	b .detect_item_label406
.detect_item_label342:
# br label %label158
	b .detect_item_label158
.detect_item_label343:
# %op344 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1376
# %op345 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1380
# %op346 = icmp slt i32  %op344, %op345
	ld.w $t0, $fp, -1376
	ld.w $t1, $fp, -1380
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1381
# %op347 = zext i1  %op346 to i32 
	ld.b $t0, $fp, -1381
	st.w $t0, $fp, -1388
# %op348 = icmp ne i32  %op347, 0
	ld.w $t0, $fp, -1388
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label80
	addi.d $t2, $zero, 0
	b false_label80
true_label80:
	addi.d $t2, $zero, 1
false_label80:
	st.b $t2, $fp, -1389
# br i1  %op348, label %label349, label %label358
	ld.b $t0, $fp, -1389
	bnez $t0, .detect_item_label349
	b .detect_item_label358
.detect_item_label349:
# %op350 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1396
# %op351 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1400
# %op352 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1408
# %op353 = getelementptr i32 , i32 * %op352, i32  %op350
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1396
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1408
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1416
# %op354 = load i32 , i32 * %op353
	ld.d $t0, $fp, -1416
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1420
# %op355 = icmp eq i32  %op354, 34
	ld.w $t0, $fp, -1420
	addi.w $t1, $zero, 34
	beq  $t0, $t1, true_label81
	addi.d $t2, $zero, 0
	b false_label81
true_label81:
	addi.d $t2, $zero, 1
false_label81:
	st.b $t2, $fp, -1421
# %op356 = zext i1  %op355 to i32 
	ld.b $t0, $fp, -1421
	st.w $t0, $fp, -1428
# %op357 = icmp ne i32  %op356, 0
	ld.w $t0, $fp, -1428
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label82
	addi.d $t2, $zero, 0
	b false_label82
true_label82:
	addi.d $t2, $zero, 1
false_label82:
	st.b $t2, $fp, -1429
# br i1  %op357, label %label364, label %label365
	ld.b $t0, $fp, -1429
	bnez $t0, .detect_item_label364
	b .detect_item_label365
.detect_item_label358:
# %op359 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1436
# %op360 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1440
# %op361 = icmp sge i32  %op359, %op360
	ld.w $t0, $fp, -1436
	ld.w $t1, $fp, -1440
	bge  $t0, $t1, true_label83
	addi.d $t2, $zero, 0
	b false_label83
true_label83:
	addi.d $t2, $zero, 1
false_label83:
	st.b $t2, $fp, -1441
# %op362 = zext i1  %op361 to i32 
	ld.b $t0, $fp, -1441
	st.w $t0, $fp, -1448
# %op363 = icmp ne i32  %op362, 0
	ld.w $t0, $fp, -1448
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label84
	addi.d $t2, $zero, 0
	b false_label84
true_label84:
	addi.d $t2, $zero, 1
false_label84:
	st.b $t2, $fp, -1449
# br i1  %op363, label %label381, label %label382
	ld.b $t0, $fp, -1449
	bnez $t0, .detect_item_label381
	b .detect_item_label382
.detect_item_label364:
# br label %label358
	b .detect_item_label358
.detect_item_label365:
# %op366 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1456
# %op367 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1460
# %op368 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1472
# %op369 = getelementptr i32 , i32 * %op368, i32  %op366
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1456
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1472
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1480
# %op370 = load i32 , i32 * %op369
	ld.d $t0, $fp, -1480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1484
# %op371 = icmp eq i32  %op370, 92
	ld.w $t0, $fp, -1484
	addi.w $t1, $zero, 92
	beq  $t0, $t1, true_label85
	addi.d $t2, $zero, 0
	b false_label85
true_label85:
	addi.d $t2, $zero, 1
false_label85:
	st.b $t2, $fp, -1485
# %op372 = zext i1  %op371 to i32 
	ld.b $t0, $fp, -1485
	st.w $t0, $fp, -1492
# %op373 = icmp ne i32  %op372, 0
	ld.w $t0, $fp, -1492
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label86
	addi.d $t2, $zero, 0
	b false_label86
true_label86:
	addi.d $t2, $zero, 1
false_label86:
	st.b $t2, $fp, -1493
# br i1  %op373, label %label374, label %label377
	ld.b $t0, $fp, -1493
	bnez $t0, .detect_item_label374
	b .detect_item_label377
.detect_item_label374:
# %op375 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1500
# %op376 = add i32  %op375, 2
	ld.w $t0, $fp, -1500
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1504
# store i32  %op376, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1504
	st.w $t1, $t0, 0
# br label %label380
	b .detect_item_label380
.detect_item_label377:
# %op378 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1508
# %op379 = add i32  %op378, 1
	ld.w $t0, $fp, -1508
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1512
# store i32  %op379, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1512
	st.w $t1, $t0, 0
# br label %label380
	b .detect_item_label380
.detect_item_label380:
# br label %label343
	b .detect_item_label343
.detect_item_label381:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label382:
# %op383 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1516
# %op384 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1520
# %op385 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1528
# %op386 = getelementptr i32 , i32 * %op385, i32  %op383
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1516
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1528
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1536
# %op387 = load i32 , i32 * %op386
	ld.d $t0, $fp, -1536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1540
# %op388 = icmp ne i32  %op387, 34
	ld.w $t0, $fp, -1540
	addi.w $t1, $zero, 34
	bne  $t0, $t1, true_label87
	addi.d $t2, $zero, 0
	b false_label87
true_label87:
	addi.d $t2, $zero, 1
false_label87:
	st.b $t2, $fp, -1541
# %op389 = zext i1  %op388 to i32 
	ld.b $t0, $fp, -1541
	st.w $t0, $fp, -1548
# %op390 = icmp ne i32  %op389, 0
	ld.w $t0, $fp, -1548
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label88
	addi.d $t2, $zero, 0
	b false_label88
true_label88:
	addi.d $t2, $zero, 1
false_label88:
	st.b $t2, $fp, -1549
# br i1  %op390, label %label394, label %label395
	ld.b $t0, $fp, -1549
	bnez $t0, .detect_item_label394
	b .detect_item_label395
.detect_item_label391:
# %op392 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1556
# %op393 = add i32  %op392, 1
	ld.w $t0, $fp, -1556
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1560
# store i32  %op393, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1560
	st.w $t1, $t0, 0
# br label %label342
	b .detect_item_label342
.detect_item_label394:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label395:
# br label %label391
	b .detect_item_label391
.detect_item_label396:
# %op397 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1564
# %op398 = add i32  %op397, 1
	ld.w $t0, $fp, -1564
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1568
# store i32  %op398, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1568
	st.w $t1, $t0, 0
# %op399 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1576
# %op400 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1580
# call void @skip_space(i32 * %op399, i32  %op400)
	ld.d $a0, $fp, -1576
	ld.w $a1, $fp, -1580
	bl skip_space
# %op401 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1584
# %op402 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1588
# %op403 = icmp slt i32  %op401, %op402
	ld.w $t0, $fp, -1584
	ld.w $t1, $fp, -1588
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1589
# %op404 = zext i1  %op403 to i32 
	ld.b $t0, $fp, -1589
	st.w $t0, $fp, -1596
# %op405 = icmp ne i32  %op404, 0
	ld.w $t0, $fp, -1596
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label90
	addi.d $t2, $zero, 0
	b false_label90
true_label90:
	addi.d $t2, $zero, 1
false_label90:
	st.b $t2, $fp, -1597
# br i1  %op405, label %label412, label %label421
	ld.b $t0, $fp, -1597
	bnez $t0, .detect_item_label412
	b .detect_item_label421
.detect_item_label406:
# %op407 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1604
# %op408 = icmp eq i32  %op407, 4
	ld.w $t0, $fp, -1604
	addi.w $t1, $zero, 4
	beq  $t0, $t1, true_label91
	addi.d $t2, $zero, 0
	b false_label91
true_label91:
	addi.d $t2, $zero, 1
false_label91:
	st.b $t2, $fp, -1605
# %op409 = zext i1  %op408 to i32 
	ld.b $t0, $fp, -1605
	st.w $t0, $fp, -1612
# %op410 = icmp ne i32  %op409, 0
	ld.w $t0, $fp, -1612
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label92
	addi.d $t2, $zero, 0
	b false_label92
true_label92:
	addi.d $t2, $zero, 1
false_label92:
	st.b $t2, $fp, -1613
# br i1  %op410, label %label482, label %label492
	ld.b $t0, $fp, -1613
	bnez $t0, .detect_item_label482
	b .detect_item_label492
.detect_item_label411:
# br label %label342
	b .detect_item_label342
.detect_item_label412:
# %op413 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1620
# %op414 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1624
# %op415 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1632
# %op416 = getelementptr i32 , i32 * %op415, i32  %op413
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1620
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1632
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1640
# %op417 = load i32 , i32 * %op416
	ld.d $t0, $fp, -1640
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1644
# %op418 = icmp eq i32  %op417, 93
	ld.w $t0, $fp, -1644
	addi.w $t1, $zero, 93
	beq  $t0, $t1, true_label93
	addi.d $t2, $zero, 0
	b false_label93
true_label93:
	addi.d $t2, $zero, 1
false_label93:
	st.b $t2, $fp, -1645
# %op419 = zext i1  %op418 to i32 
	ld.b $t0, $fp, -1645
	st.w $t0, $fp, -1652
# %op420 = icmp ne i32  %op419, 0
	ld.w $t0, $fp, -1652
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label94
	addi.d $t2, $zero, 0
	b false_label94
true_label94:
	addi.d $t2, $zero, 1
false_label94:
	st.b $t2, $fp, -1653
# br i1  %op420, label %label428, label %label431
	ld.b $t0, $fp, -1653
	bnez $t0, .detect_item_label428
	b .detect_item_label431
.detect_item_label421:
# %op422 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1664
# %op423 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1668
# %op424 = call i32  @detect_item(i32  0, i32 * %op422, i32  %op423)
	addi.w $a0, $zero, 0
	ld.d $a1, $fp, -1664
	ld.w $a2, $fp, -1668
	bl detect_item
	st.w $a0, $fp, -1672
# %op425 = icmp eq i32  %op424, 0
	ld.w $t0, $fp, -1672
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label95
	addi.d $t2, $zero, 0
	b false_label95
true_label95:
	addi.d $t2, $zero, 1
false_label95:
	st.b $t2, $fp, -1673
# %op426 = zext i1  %op425 to i32 
	ld.b $t0, $fp, -1673
	st.w $t0, $fp, -1680
# %op427 = icmp ne i32  %op426, 0
	ld.w $t0, $fp, -1680
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label96
	addi.d $t2, $zero, 0
	b false_label96
true_label96:
	addi.d $t2, $zero, 1
false_label96:
	st.b $t2, $fp, -1681
# br i1  %op427, label %label432, label %label433
	ld.b $t0, $fp, -1681
	bnez $t0, .detect_item_label432
	b .detect_item_label433
.detect_item_label428:
# %op429 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1688
# %op430 = add i32  %op429, 1
	ld.w $t0, $fp, -1688
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1692
# store i32  %op430, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1692
	st.w $t1, $t0, 0
# ret i32  1
	addi.w $a0, $zero, 1
	b detect_item_ret
.detect_item_label431:
# br label %label421
	b .detect_item_label421
.detect_item_label432:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label433:
# %op434 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1704
# %op435 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1708
# call void @skip_space(i32 * %op434, i32  %op435)
	ld.d $a0, $fp, -1704
	ld.w $a1, $fp, -1708
	bl skip_space
# br label %label436
	b .detect_item_label436
.detect_item_label436:
# %op437 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1712
# %op438 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1716
# %op439 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1728
# %op440 = getelementptr i32 , i32 * %op439, i32  %op437
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1712
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1728
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1736
# %op441 = load i32 , i32 * %op440
	ld.d $t0, $fp, -1736
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1740
# %op442 = icmp eq i32  %op441, 44
	ld.w $t0, $fp, -1740
	addi.w $t1, $zero, 44
	beq  $t0, $t1, true_label97
	addi.d $t2, $zero, 0
	b false_label97
true_label97:
	addi.d $t2, $zero, 1
false_label97:
	st.b $t2, $fp, -1741
# %op443 = zext i1  %op442 to i32 
	ld.b $t0, $fp, -1741
	st.w $t0, $fp, -1748
# %op444 = icmp ne i32  %op443, 0
	ld.w $t0, $fp, -1748
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label98
	addi.d $t2, $zero, 0
	b false_label98
true_label98:
	addi.d $t2, $zero, 1
false_label98:
	st.b $t2, $fp, -1749
# br i1  %op444, label %label445, label %label456
	ld.b $t0, $fp, -1749
	bnez $t0, .detect_item_label445
	b .detect_item_label456
.detect_item_label445:
# %op446 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1756
# %op447 = add i32  %op446, 1
	ld.w $t0, $fp, -1756
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1760
# store i32  %op447, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1760
	st.w $t1, $t0, 0
# %op448 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1768
# %op449 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1772
# call void @skip_space(i32 * %op448, i32  %op449)
	ld.d $a0, $fp, -1768
	ld.w $a1, $fp, -1772
	bl skip_space
# %op450 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1784
# %op451 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1788
# %op452 = call i32  @detect_item(i32  0, i32 * %op450, i32  %op451)
	addi.w $a0, $zero, 0
	ld.d $a1, $fp, -1784
	ld.w $a2, $fp, -1788
	bl detect_item
	st.w $a0, $fp, -1792
# %op453 = icmp eq i32  %op452, 0
	ld.w $t0, $fp, -1792
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label99
	addi.d $t2, $zero, 0
	b false_label99
true_label99:
	addi.d $t2, $zero, 1
false_label99:
	st.b $t2, $fp, -1793
# %op454 = zext i1  %op453 to i32 
	ld.b $t0, $fp, -1793
	st.w $t0, $fp, -1800
# %op455 = icmp ne i32  %op454, 0
	ld.w $t0, $fp, -1800
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label100
	addi.d $t2, $zero, 0
	b false_label100
true_label100:
	addi.d $t2, $zero, 1
false_label100:
	st.b $t2, $fp, -1801
# br i1  %op455, label %label464, label %label465
	ld.b $t0, $fp, -1801
	bnez $t0, .detect_item_label464
	b .detect_item_label465
.detect_item_label456:
# %op457 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1816
# %op458 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1820
# call void @skip_space(i32 * %op457, i32  %op458)
	ld.d $a0, $fp, -1816
	ld.w $a1, $fp, -1820
	bl skip_space
# %op459 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1824
# %op460 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1828
# %op461 = icmp sge i32  %op459, %op460
	ld.w $t0, $fp, -1824
	ld.w $t1, $fp, -1828
	bge  $t0, $t1, true_label101
	addi.d $t2, $zero, 0
	b false_label101
true_label101:
	addi.d $t2, $zero, 1
false_label101:
	st.b $t2, $fp, -1829
# %op462 = zext i1  %op461 to i32 
	ld.b $t0, $fp, -1829
	st.w $t0, $fp, -1836
# %op463 = icmp ne i32  %op462, 0
	ld.w $t0, $fp, -1836
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label102
	addi.d $t2, $zero, 0
	b false_label102
true_label102:
	addi.d $t2, $zero, 1
false_label102:
	st.b $t2, $fp, -1837
# br i1  %op463, label %label468, label %label469
	ld.b $t0, $fp, -1837
	bnez $t0, .detect_item_label468
	b .detect_item_label469
.detect_item_label464:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label465:
# %op466 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1848
# %op467 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1852
# call void @skip_space(i32 * %op466, i32  %op467)
	ld.d $a0, $fp, -1848
	ld.w $a1, $fp, -1852
	bl skip_space
# br label %label436
	b .detect_item_label436
.detect_item_label468:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label469:
# %op470 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1856
# %op471 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1860
# %op472 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1872
# %op473 = getelementptr i32 , i32 * %op472, i32  %op470
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1856
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1872
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1880
# %op474 = load i32 , i32 * %op473
	ld.d $t0, $fp, -1880
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1884
# %op475 = icmp ne i32  %op474, 93
	ld.w $t0, $fp, -1884
	addi.w $t1, $zero, 93
	bne  $t0, $t1, true_label103
	addi.d $t2, $zero, 0
	b false_label103
true_label103:
	addi.d $t2, $zero, 1
false_label103:
	st.b $t2, $fp, -1885
# %op476 = zext i1  %op475 to i32 
	ld.b $t0, $fp, -1885
	st.w $t0, $fp, -1892
# %op477 = icmp ne i32  %op476, 0
	ld.w $t0, $fp, -1892
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label104
	addi.d $t2, $zero, 0
	b false_label104
true_label104:
	addi.d $t2, $zero, 1
false_label104:
	st.b $t2, $fp, -1893
# br i1  %op477, label %label478, label %label479
	ld.b $t0, $fp, -1893
	bnez $t0, .detect_item_label478
	b .detect_item_label479
.detect_item_label478:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label479:
# %op480 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1900
# %op481 = add i32  %op480, 1
	ld.w $t0, $fp, -1900
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1904
# store i32  %op481, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1904
	st.w $t1, $t0, 0
# br label %label411
	b .detect_item_label411
.detect_item_label482:
# %op483 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1908
# %op484 = add i32  %op483, 1
	ld.w $t0, $fp, -1908
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1912
# store i32  %op484, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -1912
	st.w $t1, $t0, 0
# %op485 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1920
# %op486 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1924
# call void @skip_space(i32 * %op485, i32  %op486)
	ld.d $a0, $fp, -1920
	ld.w $a1, $fp, -1924
	bl skip_space
# %op487 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1928
# %op488 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1932
# %op489 = icmp slt i32  %op487, %op488
	ld.w $t0, $fp, -1928
	ld.w $t1, $fp, -1932
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1933
# %op490 = zext i1  %op489 to i32 
	ld.b $t0, $fp, -1933
	st.w $t0, $fp, -1940
# %op491 = icmp ne i32  %op490, 0
	ld.w $t0, $fp, -1940
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label106
	addi.d $t2, $zero, 0
	b false_label106
true_label106:
	addi.d $t2, $zero, 1
false_label106:
	st.b $t2, $fp, -1941
# br i1  %op491, label %label498, label %label507
	ld.b $t0, $fp, -1941
	bnez $t0, .detect_item_label498
	b .detect_item_label507
.detect_item_label492:
# %op493 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1948
# %op494 = icmp eq i32  %op493, 5
	ld.w $t0, $fp, -1948
	addi.w $t1, $zero, 5
	beq  $t0, $t1, true_label107
	addi.d $t2, $zero, 0
	b false_label107
true_label107:
	addi.d $t2, $zero, 1
false_label107:
	st.b $t2, $fp, -1949
# %op495 = zext i1  %op494 to i32 
	ld.b $t0, $fp, -1949
	st.w $t0, $fp, -1956
# %op496 = icmp ne i32  %op495, 0
	ld.w $t0, $fp, -1956
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label108
	addi.d $t2, $zero, 0
	b false_label108
true_label108:
	addi.d $t2, $zero, 1
false_label108:
	st.b $t2, $fp, -1957
# br i1  %op496, label %label631, label %label643
	ld.b $t0, $fp, -1957
	bnez $t0, .detect_item_label631
	b .detect_item_label643
.detect_item_label497:
# br label %label411
	b .detect_item_label411
.detect_item_label498:
# %op499 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1964
# %op500 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1968
# %op501 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1976
# %op502 = getelementptr i32 , i32 * %op501, i32  %op499
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1964
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1976
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1984
# %op503 = load i32 , i32 * %op502
	ld.d $t0, $fp, -1984
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1988
# %op504 = icmp eq i32  %op503, 125
	ld.w $t0, $fp, -1988
	addi.w $t1, $zero, 125
	beq  $t0, $t1, true_label109
	addi.d $t2, $zero, 0
	b false_label109
true_label109:
	addi.d $t2, $zero, 1
false_label109:
	st.b $t2, $fp, -1989
# %op505 = zext i1  %op504 to i32 
	ld.b $t0, $fp, -1989
	st.w $t0, $fp, -1996
# %op506 = icmp ne i32  %op505, 0
	ld.w $t0, $fp, -1996
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label110
	addi.d $t2, $zero, 0
	b false_label110
true_label110:
	addi.d $t2, $zero, 1
false_label110:
	st.b $t2, $fp, -1997
# br i1  %op506, label %label514, label %label517
	ld.b $t0, $fp, -1997
	bnez $t0, .detect_item_label514
	b .detect_item_label517
.detect_item_label507:
# %op508 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -2008
# %op509 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2012
# %op510 = call i32  @detect_item(i32  2, i32 * %op508, i32  %op509)
	addi.w $a0, $zero, 2
	ld.d $a1, $fp, -2008
	ld.w $a2, $fp, -2012
	bl detect_item
	st.w $a0, $fp, -2016
# %op511 = icmp eq i32  %op510, 0
	ld.w $t0, $fp, -2016
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label111
	addi.d $t2, $zero, 0
	b false_label111
true_label111:
	addi.d $t2, $zero, 1
false_label111:
	st.b $t2, $fp, -2017
# %op512 = zext i1  %op511 to i32 
	ld.b $t0, $fp, -2017
	st.w $t0, $fp, -2024
# %op513 = icmp ne i32  %op512, 0
	ld.w $t0, $fp, -2024
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label112
	addi.d $t2, $zero, 0
	b false_label112
true_label112:
	addi.d $t2, $zero, 1
false_label112:
	st.b $t2, $fp, -2025
# br i1  %op513, label %label518, label %label519
	ld.b $t0, $fp, -2025
	bnez $t0, .detect_item_label518
	b .detect_item_label519
.detect_item_label514:
# %op515 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2032
# %op516 = add i32  %op515, 1
	ld.w $t0, $fp, -2032
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2036
# store i32  %op516, i32 * @pos
	la.local $t0, pos
	ld.w $t1, $fp, -2036
	st.w $t1, $t0, 0
# ret i32  1
	addi.w $a0, $zero, 1
	b detect_item_ret
.detect_item_label517:
# br label %label507
	b .detect_item_label507
.detect_item_label518:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label519:
# %op520 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -2048
# %op521 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @skip_space(i32 * %op520, i32  %op521)
	ld.d $a0, $fp, -2048
	lu12i.w $a1, -1
	ori $a1, $a1, 2044
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl skip_space
# %op522 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op523 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op524 = icmp sge i32  %op522, %op523
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bge  $t0, $t1, true_label113
	addi.d $t2, $zero, 0
	b false_label113
true_label113:
	addi.d $t2, $zero, 1
false_label113:
	lu12i.w $t8, -1
	ori $t8, $t8, 2035
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op525 = zext i1  %op524 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2035
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op526 = icmp ne i32  %op525, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label114
	addi.d $t2, $zero, 0
	b false_label114
true_label114:
	addi.d $t2, $zero, 1
false_label114:
	lu12i.w $t8, -1
	ori $t8, $t8, 2027
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op526, label %label527, label %label528
	lu12i.w $t0, -1
	ori $t0, $t0, 2027
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label527
	b .detect_item_label528
.detect_item_label527:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label528:
# %op529 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op530 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op531 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op532 = getelementptr i32 , i32 * %op531, i32  %op529
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 2020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 2008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op533 = load i32 , i32 * %op532
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op534 = icmp ne i32  %op533, 58
	lu12i.w $t0, -1
	ori $t0, $t0, 1996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 58
	bne  $t0, $t1, true_label115
	addi.d $t2, $zero, 0
	b false_label115
true_label115:
	addi.d $t2, $zero, 1
false_label115:
	lu12i.w $t8, -1
	ori $t8, $t8, 1995
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op535 = zext i1  %op534 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1995
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op536 = icmp ne i32  %op535, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label116
	addi.d $t2, $zero, 0
	b false_label116
true_label116:
	addi.d $t2, $zero, 1
false_label116:
	lu12i.w $t8, -1
	ori $t8, $t8, 1987
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op536, label %label537, label %label538
	lu12i.w $t0, -1
	ori $t0, $t0, 1987
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label537
	b .detect_item_label538
.detect_item_label537:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label538:
# %op539 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op540 = add i32  %op539, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op540, i32 * @pos
	la.local $t0, pos
	lu12i.w $t1, -1
	ori $t1, $t1, 1976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op541 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op542 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @skip_space(i32 * %op541, i32  %op542)
	lu12i.w $a0, -1
	ori $a0, $a0, 1968
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -1
	ori $a1, $a1, 1964
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl skip_space
# %op543 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op544 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op545 = call i32  @detect_item(i32  0, i32 * %op543, i32  %op544)
	addi.w $a0, $zero, 0
	lu12i.w $a1, -1
	ori $a1, $a1, 1952
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.d $a1, $a1, 0
	lu12i.w $a2, -1
	ori $a2, $a2, 1948
	lu32i.d $a2, -1
	lu52i.d $a2, $a2, -1
	add.d $a2, $fp, $a2
	ld.w $a2, $a2, 0
	bl detect_item
	lu12i.w $t8, -1
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op546 = icmp eq i32  %op545, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label117
	addi.d $t2, $zero, 0
	b false_label117
true_label117:
	addi.d $t2, $zero, 1
false_label117:
	lu12i.w $t8, -1
	ori $t8, $t8, 1943
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op547 = zext i1  %op546 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1943
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op548 = icmp ne i32  %op547, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label118
	addi.d $t2, $zero, 0
	b false_label118
true_label118:
	addi.d $t2, $zero, 1
false_label118:
	lu12i.w $t8, -1
	ori $t8, $t8, 1935
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op548, label %label549, label %label550
	lu12i.w $t0, -1
	ori $t0, $t0, 1935
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label549
	b .detect_item_label550
.detect_item_label549:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label550:
# %op551 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op552 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @skip_space(i32 * %op551, i32  %op552)
	lu12i.w $a0, -1
	ori $a0, $a0, 1920
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -1
	ori $a1, $a1, 1916
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl skip_space
# br label %label553
	b .detect_item_label553
.detect_item_label553:
# %op554 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op555 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op556 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op557 = getelementptr i32 , i32 * %op556, i32  %op554
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1896
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op558 = load i32 , i32 * %op557
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op559 = icmp eq i32  %op558, 44
	lu12i.w $t0, -1
	ori $t0, $t0, 1884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 44
	beq  $t0, $t1, true_label119
	addi.d $t2, $zero, 0
	b false_label119
true_label119:
	addi.d $t2, $zero, 1
false_label119:
	lu12i.w $t8, -1
	ori $t8, $t8, 1883
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op560 = zext i1  %op559 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1883
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op561 = icmp ne i32  %op560, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label120
	addi.d $t2, $zero, 0
	b false_label120
true_label120:
	addi.d $t2, $zero, 1
false_label120:
	lu12i.w $t8, -1
	ori $t8, $t8, 1875
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op561, label %label562, label %label573
	lu12i.w $t0, -1
	ori $t0, $t0, 1875
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label562
	b .detect_item_label573
.detect_item_label562:
# %op563 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op564 = add i32  %op563, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op564, i32 * @pos
	la.local $t0, pos
	lu12i.w $t1, -1
	ori $t1, $t1, 1864
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op565 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op566 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @skip_space(i32 * %op565, i32  %op566)
	lu12i.w $a0, -1
	ori $a0, $a0, 1856
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -1
	ori $a1, $a1, 1852
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl skip_space
# %op567 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op568 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op569 = call i32  @detect_item(i32  2, i32 * %op567, i32  %op568)
	addi.w $a0, $zero, 2
	lu12i.w $a1, -1
	ori $a1, $a1, 1840
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.d $a1, $a1, 0
	lu12i.w $a2, -1
	ori $a2, $a2, 1836
	lu32i.d $a2, -1
	lu52i.d $a2, $a2, -1
	add.d $a2, $fp, $a2
	ld.w $a2, $a2, 0
	bl detect_item
	lu12i.w $t8, -1
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op570 = icmp eq i32  %op569, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label121
	addi.d $t2, $zero, 0
	b false_label121
true_label121:
	addi.d $t2, $zero, 1
false_label121:
	lu12i.w $t8, -1
	ori $t8, $t8, 1831
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op571 = zext i1  %op570 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1831
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op572 = icmp ne i32  %op571, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label122
	addi.d $t2, $zero, 0
	b false_label122
true_label122:
	addi.d $t2, $zero, 1
false_label122:
	lu12i.w $t8, -1
	ori $t8, $t8, 1823
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op572, label %label581, label %label582
	lu12i.w $t0, -1
	ori $t0, $t0, 1823
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label581
	b .detect_item_label582
.detect_item_label573:
# %op574 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op575 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @skip_space(i32 * %op574, i32  %op575)
	lu12i.w $a0, -1
	ori $a0, $a0, 1808
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -1
	ori $a1, $a1, 1804
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl skip_space
# %op576 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op577 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op578 = icmp sge i32  %op576, %op577
	lu12i.w $t0, -1
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bge  $t0, $t1, true_label123
	addi.d $t2, $zero, 0
	b false_label123
true_label123:
	addi.d $t2, $zero, 1
false_label123:
	lu12i.w $t8, -1
	ori $t8, $t8, 1795
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op579 = zext i1  %op578 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1795
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op580 = icmp ne i32  %op579, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label124
	addi.d $t2, $zero, 0
	b false_label124
true_label124:
	addi.d $t2, $zero, 1
false_label124:
	lu12i.w $t8, -1
	ori $t8, $t8, 1787
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op580, label %label616, label %label617
	lu12i.w $t0, -1
	ori $t0, $t0, 1787
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label616
	b .detect_item_label617
.detect_item_label581:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label582:
# %op583 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op584 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @skip_space(i32 * %op583, i32  %op584)
	lu12i.w $a0, -1
	ori $a0, $a0, 1776
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -1
	ori $a1, $a1, 1772
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl skip_space
# %op585 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op586 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op587 = icmp sge i32  %op585, %op586
	lu12i.w $t0, -1
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bge  $t0, $t1, true_label125
	addi.d $t2, $zero, 0
	b false_label125
true_label125:
	addi.d $t2, $zero, 1
false_label125:
	lu12i.w $t8, -1
	ori $t8, $t8, 1763
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op588 = zext i1  %op587 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1763
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op589 = icmp ne i32  %op588, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label126
	addi.d $t2, $zero, 0
	b false_label126
true_label126:
	addi.d $t2, $zero, 1
false_label126:
	lu12i.w $t8, -1
	ori $t8, $t8, 1755
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op589, label %label590, label %label591
	lu12i.w $t0, -1
	ori $t0, $t0, 1755
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label590
	b .detect_item_label591
.detect_item_label590:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label591:
# %op592 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op593 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op594 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op595 = getelementptr i32 , i32 * %op594, i32  %op592
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1736
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op596 = load i32 , i32 * %op595
	lu12i.w $t0, -1
	ori $t0, $t0, 1728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op597 = icmp ne i32  %op596, 58
	lu12i.w $t0, -1
	ori $t0, $t0, 1724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 58
	bne  $t0, $t1, true_label127
	addi.d $t2, $zero, 0
	b false_label127
true_label127:
	addi.d $t2, $zero, 1
false_label127:
	lu12i.w $t8, -1
	ori $t8, $t8, 1723
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op598 = zext i1  %op597 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1723
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op599 = icmp ne i32  %op598, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label128
	addi.d $t2, $zero, 0
	b false_label128
true_label128:
	addi.d $t2, $zero, 1
false_label128:
	lu12i.w $t8, -1
	ori $t8, $t8, 1715
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op599, label %label600, label %label601
	lu12i.w $t0, -1
	ori $t0, $t0, 1715
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label600
	b .detect_item_label601
.detect_item_label600:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label601:
# %op602 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op603 = add i32  %op602, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op603, i32 * @pos
	la.local $t0, pos
	lu12i.w $t1, -1
	ori $t1, $t1, 1704
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op604 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op605 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @skip_space(i32 * %op604, i32  %op605)
	lu12i.w $a0, -1
	ori $a0, $a0, 1696
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -1
	ori $a1, $a1, 1692
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl skip_space
# %op606 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op607 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op608 = call i32  @detect_item(i32  0, i32 * %op606, i32  %op607)
	addi.w $a0, $zero, 0
	lu12i.w $a1, -1
	ori $a1, $a1, 1680
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.d $a1, $a1, 0
	lu12i.w $a2, -1
	ori $a2, $a2, 1676
	lu32i.d $a2, -1
	lu52i.d $a2, $a2, -1
	add.d $a2, $fp, $a2
	ld.w $a2, $a2, 0
	bl detect_item
	lu12i.w $t8, -1
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op609 = icmp eq i32  %op608, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label129
	addi.d $t2, $zero, 0
	b false_label129
true_label129:
	addi.d $t2, $zero, 1
false_label129:
	lu12i.w $t8, -1
	ori $t8, $t8, 1671
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op610 = zext i1  %op609 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1671
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op611 = icmp ne i32  %op610, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label130
	addi.d $t2, $zero, 0
	b false_label130
true_label130:
	addi.d $t2, $zero, 1
false_label130:
	lu12i.w $t8, -1
	ori $t8, $t8, 1663
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op611, label %label612, label %label613
	lu12i.w $t0, -1
	ori $t0, $t0, 1663
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label612
	b .detect_item_label613
.detect_item_label612:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label613:
# %op614 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op615 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @skip_space(i32 * %op614, i32  %op615)
	lu12i.w $a0, -1
	ori $a0, $a0, 1648
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -1
	ori $a1, $a1, 1644
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl skip_space
# br label %label553
	b .detect_item_label553
.detect_item_label616:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label617:
# %op618 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op619 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op620 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op621 = getelementptr i32 , i32 * %op620, i32  %op618
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op622 = load i32 , i32 * %op621
	lu12i.w $t0, -1
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op623 = icmp ne i32  %op622, 125
	lu12i.w $t0, -1
	ori $t0, $t0, 1612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 125
	bne  $t0, $t1, true_label131
	addi.d $t2, $zero, 0
	b false_label131
true_label131:
	addi.d $t2, $zero, 1
false_label131:
	lu12i.w $t8, -1
	ori $t8, $t8, 1611
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op624 = zext i1  %op623 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1611
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op625 = icmp ne i32  %op624, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label132
	addi.d $t2, $zero, 0
	b false_label132
true_label132:
	addi.d $t2, $zero, 1
false_label132:
	lu12i.w $t8, -1
	ori $t8, $t8, 1603
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op625, label %label629, label %label630
	lu12i.w $t0, -1
	ori $t0, $t0, 1603
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label629
	b .detect_item_label630
.detect_item_label626:
# %op627 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op628 = add i32  %op627, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op628, i32 * @pos
	la.local $t0, pos
	lu12i.w $t1, -1
	ori $t1, $t1, 1592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label497
	b .detect_item_label497
.detect_item_label629:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label630:
# br label %label626
	b .detect_item_label626
.detect_item_label631:
# %op632 = alloca [4 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op633 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  116, i32 * %op633
	lu12i.w $t0, -1
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 116
	st.w $t1, $t0, 0
# %op634 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  114, i32 * %op634
	lu12i.w $t0, -1
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 114
	st.w $t1, $t0, 0
# %op635 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 2
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  117, i32 * %op635
	lu12i.w $t0, -1
	ori $t0, $t0, 1544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 117
	st.w $t1, $t0, 0
# %op636 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 3
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  101, i32 * %op636
	lu12i.w $t0, -1
	ori $t0, $t0, 1536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 101
	st.w $t1, $t0, 0
# %op637 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op638 = add i32  %op637, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 1532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op639 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op640 = icmp sge i32  %op638, %op639
	lu12i.w $t0, -1
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bge  $t0, $t1, true_label133
	addi.d $t2, $zero, 0
	b false_label133
true_label133:
	addi.d $t2, $zero, 1
false_label133:
	lu12i.w $t8, -1
	ori $t8, $t8, 1523
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op641 = zext i1  %op640 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1523
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op642 = icmp ne i32  %op641, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label134
	addi.d $t2, $zero, 0
	b false_label134
true_label134:
	addi.d $t2, $zero, 1
false_label134:
	lu12i.w $t8, -1
	ori $t8, $t8, 1515
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op642, label %label649, label %label650
	lu12i.w $t0, -1
	ori $t0, $t0, 1515
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label649
	b .detect_item_label650
.detect_item_label643:
# %op644 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op645 = icmp eq i32  %op644, 6
	lu12i.w $t0, -1
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 6
	beq  $t0, $t1, true_label135
	addi.d $t2, $zero, 0
	b false_label135
true_label135:
	addi.d $t2, $zero, 1
false_label135:
	lu12i.w $t8, -1
	ori $t8, $t8, 1507
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op646 = zext i1  %op645 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1507
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op647 = icmp ne i32  %op646, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label136
	addi.d $t2, $zero, 0
	b false_label136
true_label136:
	addi.d $t2, $zero, 1
false_label136:
	lu12i.w $t8, -1
	ori $t8, $t8, 1499
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op647, label %label711, label %label724
	lu12i.w $t0, -1
	ori $t0, $t0, 1499
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label711
	b .detect_item_label724
.detect_item_label648:
# br label %label497
	b .detect_item_label497
.detect_item_label649:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label650:
# %op651 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op652 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op653 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op654 = getelementptr i32 , i32 * %op653, i32  %op651
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1480
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op655 = load i32 , i32 * %op654
	lu12i.w $t0, -1
	ori $t0, $t0, 1472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op656 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op657 = load i32 , i32 * %op656
	lu12i.w $t0, -1
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op658 = icmp ne i32  %op655, %op657
	lu12i.w $t0, -1
	ori $t0, $t0, 1468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1452
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label137
	addi.d $t2, $zero, 0
	b false_label137
true_label137:
	addi.d $t2, $zero, 1
false_label137:
	lu12i.w $t8, -1
	ori $t8, $t8, 1451
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op659 = zext i1  %op658 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1451
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op660 = icmp ne i32  %op659, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label138
	addi.d $t2, $zero, 0
	b false_label138
true_label138:
	addi.d $t2, $zero, 1
false_label138:
	lu12i.w $t8, -1
	ori $t8, $t8, 1443
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op660, label %label664, label %label665
	lu12i.w $t0, -1
	ori $t0, $t0, 1443
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label664
	b .detect_item_label665
.detect_item_label661:
# %op662 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op663 = add i32  %op662, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 1436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op663, i32 * @pos
	la.local $t0, pos
	lu12i.w $t1, -1
	ori $t1, $t1, 1432
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label648
	b .detect_item_label648
.detect_item_label664:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label665:
# %op666 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op667 = add i32  %op666, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op668 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op669 = add i32  %op668, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op670 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op671 = getelementptr i32 , i32 * %op670, i32  %op667
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op672 = load i32 , i32 * %op671
	lu12i.w $t0, -1
	ori $t0, $t0, 1400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op673 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op674 = load i32 , i32 * %op673
	lu12i.w $t0, -1
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op675 = icmp ne i32  %op672, %op674
	lu12i.w $t0, -1
	ori $t0, $t0, 1396
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label139
	addi.d $t2, $zero, 0
	b false_label139
true_label139:
	addi.d $t2, $zero, 1
false_label139:
	lu12i.w $t8, -1
	ori $t8, $t8, 1379
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op676 = zext i1  %op675 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1379
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op677 = icmp ne i32  %op676, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label140
	addi.d $t2, $zero, 0
	b false_label140
true_label140:
	addi.d $t2, $zero, 1
false_label140:
	lu12i.w $t8, -1
	ori $t8, $t8, 1371
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op677, label %label679, label %label680
	lu12i.w $t0, -1
	ori $t0, $t0, 1371
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label679
	b .detect_item_label680
.detect_item_label678:
# br label %label661
	b .detect_item_label661
.detect_item_label679:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label680:
# %op681 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op682 = add i32  %op681, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op683 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op684 = add i32  %op683, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op685 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op686 = getelementptr i32 , i32 * %op685, i32  %op682
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1344
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op687 = load i32 , i32 * %op686
	lu12i.w $t0, -1
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op688 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 2
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op689 = load i32 , i32 * %op688
	lu12i.w $t0, -1
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op690 = icmp ne i32  %op687, %op689
	lu12i.w $t0, -1
	ori $t0, $t0, 1332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label141
	addi.d $t2, $zero, 0
	b false_label141
true_label141:
	addi.d $t2, $zero, 1
false_label141:
	lu12i.w $t8, -1
	ori $t8, $t8, 1315
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op691 = zext i1  %op690 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1315
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op692 = icmp ne i32  %op691, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label142
	addi.d $t2, $zero, 0
	b false_label142
true_label142:
	addi.d $t2, $zero, 1
false_label142:
	lu12i.w $t8, -1
	ori $t8, $t8, 1307
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op692, label %label694, label %label695
	lu12i.w $t0, -1
	ori $t0, $t0, 1307
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label694
	b .detect_item_label695
.detect_item_label693:
# br label %label678
	b .detect_item_label678
.detect_item_label694:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label695:
# %op696 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op697 = add i32  %op696, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 1300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op698 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op699 = add i32  %op698, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 1292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op700 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op701 = getelementptr i32 , i32 * %op700, i32  %op697
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1296
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op702 = load i32 , i32 * %op701
	lu12i.w $t0, -1
	ori $t0, $t0, 1272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op703 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 3
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op704 = load i32 , i32 * %op703
	lu12i.w $t0, -1
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op705 = icmp ne i32  %op702, %op704
	lu12i.w $t0, -1
	ori $t0, $t0, 1268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1252
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label143
	addi.d $t2, $zero, 0
	b false_label143
true_label143:
	addi.d $t2, $zero, 1
false_label143:
	lu12i.w $t8, -1
	ori $t8, $t8, 1251
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op706 = zext i1  %op705 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1251
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op707 = icmp ne i32  %op706, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label144
	addi.d $t2, $zero, 0
	b false_label144
true_label144:
	addi.d $t2, $zero, 1
false_label144:
	lu12i.w $t8, -1
	ori $t8, $t8, 1243
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op707, label %label709, label %label710
	lu12i.w $t0, -1
	ori $t0, $t0, 1243
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label709
	b .detect_item_label710
.detect_item_label708:
# br label %label693
	b .detect_item_label693
.detect_item_label709:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label710:
# br label %label708
	b .detect_item_label708
.detect_item_label711:
# %op712 = alloca [5 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 1212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op713 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  102, i32 * %op713
	lu12i.w $t0, -1
	ori $t0, $t0, 1200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 102
	st.w $t1, $t0, 0
# %op714 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  97, i32 * %op714
	lu12i.w $t0, -1
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 97
	st.w $t1, $t0, 0
# %op715 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 2
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  108, i32 * %op715
	lu12i.w $t0, -1
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 108
	st.w $t1, $t0, 0
# %op716 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 3
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  115, i32 * %op716
	lu12i.w $t0, -1
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 115
	st.w $t1, $t0, 0
# %op717 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  4
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  101, i32 * %op717
	lu12i.w $t0, -1
	ori $t0, $t0, 1168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 101
	st.w $t1, $t0, 0
# %op718 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op719 = add i32  %op718, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 1164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op720 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op721 = icmp sge i32  %op719, %op720
	lu12i.w $t0, -1
	ori $t0, $t0, 1160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bge  $t0, $t1, true_label145
	addi.d $t2, $zero, 0
	b false_label145
true_label145:
	addi.d $t2, $zero, 1
false_label145:
	lu12i.w $t8, -1
	ori $t8, $t8, 1155
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op722 = zext i1  %op721 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1155
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op723 = icmp ne i32  %op722, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label146
	addi.d $t2, $zero, 0
	b false_label146
true_label146:
	addi.d $t2, $zero, 1
false_label146:
	lu12i.w $t8, -1
	ori $t8, $t8, 1147
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op723, label %label730, label %label731
	lu12i.w $t0, -1
	ori $t0, $t0, 1147
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label730
	b .detect_item_label731
.detect_item_label724:
# %op725 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op726 = icmp eq i32  %op725, 7
	lu12i.w $t0, -1
	ori $t0, $t0, 1140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 7
	beq  $t0, $t1, true_label147
	addi.d $t2, $zero, 0
	b false_label147
true_label147:
	addi.d $t2, $zero, 1
false_label147:
	lu12i.w $t8, -1
	ori $t8, $t8, 1139
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op727 = zext i1  %op726 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1139
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op728 = icmp ne i32  %op727, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label148
	addi.d $t2, $zero, 0
	b false_label148
true_label148:
	addi.d $t2, $zero, 1
false_label148:
	lu12i.w $t8, -1
	ori $t8, $t8, 1131
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op728, label %label807, label %label819
	lu12i.w $t0, -1
	ori $t0, $t0, 1131
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label807
	b .detect_item_label819
.detect_item_label729:
# br label %label648
	b .detect_item_label648
.detect_item_label730:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label731:
# %op732 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op733 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op734 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op735 = getelementptr i32 , i32 * %op734, i32  %op732
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1124
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op736 = load i32 , i32 * %op735
	lu12i.w $t0, -1
	ori $t0, $t0, 1104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op737 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op738 = load i32 , i32 * %op737
	lu12i.w $t0, -1
	ori $t0, $t0, 1088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op739 = icmp ne i32  %op736, %op738
	lu12i.w $t0, -1
	ori $t0, $t0, 1100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label149
	addi.d $t2, $zero, 0
	b false_label149
true_label149:
	addi.d $t2, $zero, 1
false_label149:
	lu12i.w $t8, -1
	ori $t8, $t8, 1083
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op740 = zext i1  %op739 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1083
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op741 = icmp ne i32  %op740, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label150
	addi.d $t2, $zero, 0
	b false_label150
true_label150:
	addi.d $t2, $zero, 1
false_label150:
	lu12i.w $t8, -1
	ori $t8, $t8, 1075
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op741, label %label745, label %label746
	lu12i.w $t0, -1
	ori $t0, $t0, 1075
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label745
	b .detect_item_label746
.detect_item_label742:
# %op743 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op744 = add i32  %op743, 5
	lu12i.w $t0, -1
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 5
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op744, i32 * @pos
	la.local $t0, pos
	lu12i.w $t1, -1
	ori $t1, $t1, 1064
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label729
	b .detect_item_label729
.detect_item_label745:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label746:
# %op747 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op748 = add i32  %op747, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op749 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op750 = add i32  %op749, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op751 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op752 = getelementptr i32 , i32 * %op751, i32  %op748
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op753 = load i32 , i32 * %op752
	lu12i.w $t0, -1
	ori $t0, $t0, 1032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op754 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op755 = load i32 , i32 * %op754
	lu12i.w $t0, -1
	ori $t0, $t0, 1016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op756 = icmp ne i32  %op753, %op755
	lu12i.w $t0, -1
	ori $t0, $t0, 1028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label151
	addi.d $t2, $zero, 0
	b false_label151
true_label151:
	addi.d $t2, $zero, 1
false_label151:
	lu12i.w $t8, -1
	ori $t8, $t8, 1011
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op757 = zext i1  %op756 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1011
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op758 = icmp ne i32  %op757, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label152
	addi.d $t2, $zero, 0
	b false_label152
true_label152:
	addi.d $t2, $zero, 1
false_label152:
	lu12i.w $t8, -1
	ori $t8, $t8, 1003
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op758, label %label760, label %label761
	lu12i.w $t0, -1
	ori $t0, $t0, 1003
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label760
	b .detect_item_label761
.detect_item_label759:
# br label %label742
	b .detect_item_label742
.detect_item_label760:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label761:
# %op762 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op763 = add i32  %op762, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op764 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op765 = add i32  %op764, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op766 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op767 = getelementptr i32 , i32 * %op766, i32  %op763
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 992
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op768 = load i32 , i32 * %op767
	lu12i.w $t0, -1
	ori $t0, $t0, 968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op769 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 2
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op770 = load i32 , i32 * %op769
	lu12i.w $t0, -1
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op771 = icmp ne i32  %op768, %op770
	lu12i.w $t0, -1
	ori $t0, $t0, 964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label153
	addi.d $t2, $zero, 0
	b false_label153
true_label153:
	addi.d $t2, $zero, 1
false_label153:
	lu12i.w $t8, -1
	ori $t8, $t8, 947
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op772 = zext i1  %op771 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 947
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op773 = icmp ne i32  %op772, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label154
	addi.d $t2, $zero, 0
	b false_label154
true_label154:
	addi.d $t2, $zero, 1
false_label154:
	lu12i.w $t8, -1
	ori $t8, $t8, 939
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op773, label %label775, label %label776
	lu12i.w $t0, -1
	ori $t0, $t0, 939
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label775
	b .detect_item_label776
.detect_item_label774:
# br label %label759
	b .detect_item_label759
.detect_item_label775:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label776:
# %op777 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op778 = add i32  %op777, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op779 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op780 = add i32  %op779, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op781 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op782 = getelementptr i32 , i32 * %op781, i32  %op778
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op783 = load i32 , i32 * %op782
	lu12i.w $t0, -1
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op784 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 3
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op785 = load i32 , i32 * %op784
	lu12i.w $t0, -1
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op786 = icmp ne i32  %op783, %op785
	lu12i.w $t0, -1
	ori $t0, $t0, 900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label155
	addi.d $t2, $zero, 0
	b false_label155
true_label155:
	addi.d $t2, $zero, 1
false_label155:
	lu12i.w $t8, -1
	ori $t8, $t8, 883
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op787 = zext i1  %op786 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 883
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op788 = icmp ne i32  %op787, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label156
	addi.d $t2, $zero, 0
	b false_label156
true_label156:
	addi.d $t2, $zero, 1
false_label156:
	lu12i.w $t8, -1
	ori $t8, $t8, 875
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op788, label %label790, label %label791
	lu12i.w $t0, -1
	ori $t0, $t0, 875
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label790
	b .detect_item_label791
.detect_item_label789:
# br label %label774
	b .detect_item_label774
.detect_item_label790:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label791:
# %op792 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op793 = add i32  %op792, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op794 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op795 = add i32  %op794, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op796 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op797 = getelementptr i32 , i32 * %op796, i32  %op793
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 864
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op798 = load i32 , i32 * %op797
	lu12i.w $t0, -1
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op799 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  4
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op800 = load i32 , i32 * %op799
	lu12i.w $t0, -1
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op801 = icmp ne i32  %op798, %op800
	lu12i.w $t0, -1
	ori $t0, $t0, 836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label157
	addi.d $t2, $zero, 0
	b false_label157
true_label157:
	addi.d $t2, $zero, 1
false_label157:
	lu12i.w $t8, -1
	ori $t8, $t8, 819
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op802 = zext i1  %op801 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 819
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op803 = icmp ne i32  %op802, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label158
	addi.d $t2, $zero, 0
	b false_label158
true_label158:
	addi.d $t2, $zero, 1
false_label158:
	lu12i.w $t8, -1
	ori $t8, $t8, 811
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op803, label %label805, label %label806
	lu12i.w $t0, -1
	ori $t0, $t0, 811
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label805
	b .detect_item_label806
.detect_item_label804:
# br label %label789
	b .detect_item_label789
.detect_item_label805:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label806:
# br label %label804
	b .detect_item_label804
.detect_item_label807:
# %op808 = alloca [4 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op809 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  110, i32 * %op809
	lu12i.w $t0, -1
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 110
	st.w $t1, $t0, 0
# %op810 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  117, i32 * %op810
	lu12i.w $t0, -1
	ori $t0, $t0, 768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 117
	st.w $t1, $t0, 0
# %op811 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 2
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  108, i32 * %op811
	lu12i.w $t0, -1
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 108
	st.w $t1, $t0, 0
# %op812 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 3
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  108, i32 * %op812
	lu12i.w $t0, -1
	ori $t0, $t0, 752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 108
	st.w $t1, $t0, 0
# %op813 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op814 = add i32  %op813, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op815 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op816 = icmp sge i32  %op814, %op815
	lu12i.w $t0, -1
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bge  $t0, $t1, true_label159
	addi.d $t2, $zero, 0
	b false_label159
true_label159:
	addi.d $t2, $zero, 1
false_label159:
	lu12i.w $t8, -1
	ori $t8, $t8, 739
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op817 = zext i1  %op816 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 739
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op818 = icmp ne i32  %op817, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label160
	addi.d $t2, $zero, 0
	b false_label160
true_label160:
	addi.d $t2, $zero, 1
false_label160:
	lu12i.w $t8, -1
	ori $t8, $t8, 731
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op818, label %label821, label %label822
	lu12i.w $t0, -1
	ori $t0, $t0, 731
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label821
	b .detect_item_label822
.detect_item_label819:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label820:
# br label %label729
	b .detect_item_label729
.detect_item_label821:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label822:
# %op823 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op824 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op825 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op826 = getelementptr i32 , i32 * %op825, i32  %op823
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op827 = load i32 , i32 * %op826
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op828 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op829 = load i32 , i32 * %op828
	lu12i.w $t0, -1
	ori $t0, $t0, 688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op830 = icmp ne i32  %op827, %op829
	lu12i.w $t0, -1
	ori $t0, $t0, 700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 684
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label161
	addi.d $t2, $zero, 0
	b false_label161
true_label161:
	addi.d $t2, $zero, 1
false_label161:
	lu12i.w $t8, -1
	ori $t8, $t8, 683
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op831 = zext i1  %op830 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 683
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op832 = icmp ne i32  %op831, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label162
	addi.d $t2, $zero, 0
	b false_label162
true_label162:
	addi.d $t2, $zero, 1
false_label162:
	lu12i.w $t8, -1
	ori $t8, $t8, 675
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op832, label %label836, label %label837
	lu12i.w $t0, -1
	ori $t0, $t0, 675
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label836
	b .detect_item_label837
.detect_item_label833:
# %op834 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op835 = add i32  %op834, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op835, i32 * @pos
	la.local $t0, pos
	lu12i.w $t1, -1
	ori $t1, $t1, 664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label820
	b .detect_item_label820
.detect_item_label836:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label837:
# %op838 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op839 = add i32  %op838, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op840 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op841 = add i32  %op840, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op842 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op843 = getelementptr i32 , i32 * %op842, i32  %op839
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op844 = load i32 , i32 * %op843
	lu12i.w $t0, -1
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op845 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op846 = load i32 , i32 * %op845
	lu12i.w $t0, -1
	ori $t0, $t0, 616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op847 = icmp ne i32  %op844, %op846
	lu12i.w $t0, -1
	ori $t0, $t0, 628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 612
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label163
	addi.d $t2, $zero, 0
	b false_label163
true_label163:
	addi.d $t2, $zero, 1
false_label163:
	lu12i.w $t8, -1
	ori $t8, $t8, 611
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op848 = zext i1  %op847 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 611
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op849 = icmp ne i32  %op848, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label164
	addi.d $t2, $zero, 0
	b false_label164
true_label164:
	addi.d $t2, $zero, 1
false_label164:
	lu12i.w $t8, -1
	ori $t8, $t8, 603
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op849, label %label851, label %label852
	lu12i.w $t0, -1
	ori $t0, $t0, 603
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label851
	b .detect_item_label852
.detect_item_label850:
# br label %label833
	b .detect_item_label833
.detect_item_label851:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label852:
# %op853 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op854 = add i32  %op853, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op855 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op856 = add i32  %op855, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op857 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op858 = getelementptr i32 , i32 * %op857, i32  %op854
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op859 = load i32 , i32 * %op858
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op860 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 2
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op861 = load i32 , i32 * %op860
	lu12i.w $t0, -1
	ori $t0, $t0, 552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op862 = icmp ne i32  %op859, %op861
	lu12i.w $t0, -1
	ori $t0, $t0, 564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 548
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label165
	addi.d $t2, $zero, 0
	b false_label165
true_label165:
	addi.d $t2, $zero, 1
false_label165:
	lu12i.w $t8, -1
	ori $t8, $t8, 547
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op863 = zext i1  %op862 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 547
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op864 = icmp ne i32  %op863, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label166
	addi.d $t2, $zero, 0
	b false_label166
true_label166:
	addi.d $t2, $zero, 1
false_label166:
	lu12i.w $t8, -1
	ori $t8, $t8, 539
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op864, label %label866, label %label867
	lu12i.w $t0, -1
	ori $t0, $t0, 539
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label866
	b .detect_item_label867
.detect_item_label865:
# br label %label850
	b .detect_item_label850
.detect_item_label866:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label867:
# %op868 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op869 = add i32  %op868, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op870 = load i32 , i32 * @pos
	la.local $t0, pos
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op871 = add i32  %op870, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op872 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op873 = getelementptr i32 , i32 * %op872, i32  %op869
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 512
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op874 = load i32 , i32 * %op873
	lu12i.w $t0, -1
	ori $t0, $t0, 504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op875 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 3
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op876 = load i32 , i32 * %op875
	lu12i.w $t0, -1
	ori $t0, $t0, 488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op877 = icmp ne i32  %op874, %op876
	lu12i.w $t0, -1
	ori $t0, $t0, 500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 484
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label167
	addi.d $t2, $zero, 0
	b false_label167
true_label167:
	addi.d $t2, $zero, 1
false_label167:
	lu12i.w $t8, -1
	ori $t8, $t8, 483
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op878 = zext i1  %op877 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 483
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op879 = icmp ne i32  %op878, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label168
	addi.d $t2, $zero, 0
	b false_label168
true_label168:
	addi.d $t2, $zero, 1
false_label168:
	lu12i.w $t8, -1
	ori $t8, $t8, 475
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op879, label %label881, label %label882
	lu12i.w $t0, -1
	ori $t0, $t0, 475
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .detect_item_label881
	b .detect_item_label882
.detect_item_label880:
# br label %label865
	b .detect_item_label865
.detect_item_label881:
# ret i32  0
	addi.w $a0, $zero, 0
	b detect_item_ret
.detect_item_label882:
# br label %label880
	b .detect_item_label880
detect_item_ret:
	lu12i.w $t0, 0
	ori $t0, $t0, 3632
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -192
.main_label_entry:
# %op0 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -17
# %op1 = alloca i8 
	lu12i.w $t0, -1
	ori $t0, $t0, 4063
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i8  %op0, i8 * %op1
	ld.d $t0, $fp, -32
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label3:
# %op4 = load i8 , i8 * %op1
	ld.d $t0, $fp, -32
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -53
# %op5 = zext i8  %op4 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op6 = icmp ne i32  %op5, 35
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 35
	bne  $t0, $t1, true_label169
	addi.d $t2, $zero, 0
	b false_label169
true_label169:
	addi.d $t2, $zero, 1
false_label169:
	st.b $t2, $fp, -61
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label170
	addi.d $t2, $zero, 0
	b false_label170
true_label170:
	addi.d $t2, $zero, 1
false_label170:
	st.b $t2, $fp, -69
# br i1  %op8, label %label9, label %label18
	ld.b $t0, $fp, -69
	bnez $t0, .main_label9
	b .main_label18
.main_label9:
# %op10 = load i8 , i8 * %op1
	ld.d $t0, $fp, -32
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -70
# %op11 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op13 = getelementptr [50000000 x i32 ], [50000000 x i32 ]* @buffer, i32  0, i32  %op11
	addi.d $t0, $zero, 0
	lu12i.w $t1, 48828
	ori $t1, $t1, 512
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 48828
	ori $t1, $t1, 512
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -76
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, buffer
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -88
# %op14 = zext i8  %op10 to i32 
	ld.b $t0, $fp, -70
	st.w $t0, $fp, -92
# store i32  %op14, i32 * %op13
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# %op15 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op16 = add i32  %op15, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# store i32  %op16, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -100
	st.w $t1, $t0, 0
# %op17 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -101
# store i8  %op17, i8 * %op1
	ld.d $t0, $fp, -32
# br label %label3
	b .main_label3
.main_label18:
# %op19 = getelementptr [50000000 x i32 ], [50000000 x i32 ]* @buffer, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 48828
	ori $t1, $t1, 512
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 48828
	ori $t1, $t1, 512
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, buffer
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# %op20 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# call void @skip_space(i32 * %op19, i32  %op20)
	ld.d $a0, $fp, -112
	ld.w $a1, $fp, -116
	bl skip_space
# %op21 = getelementptr [50000000 x i32 ], [50000000 x i32 ]* @buffer, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 48828
	ori $t1, $t1, 512
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 48828
	ori $t1, $t1, 512
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, buffer
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -128
# %op22 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op23 = call i32  @detect_item(i32  0, i32 * %op21, i32  %op22)
	addi.w $a0, $zero, 0
	ld.d $a1, $fp, -128
	ld.w $a2, $fp, -132
	bl detect_item
	st.w $a0, $fp, -136
# %op24 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -144
# store i32  %op23, i32 * %op24
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -136
	st.w $t1, $t0, 0
# %op25 = getelementptr [50000000 x i32 ], [50000000 x i32 ]* @buffer, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 48828
	ori $t1, $t1, 512
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 48828
	ori $t1, $t1, 512
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, buffer
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# %op26 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# call void @skip_space(i32 * %op25, i32  %op26)
	ld.d $a0, $fp, -160
	ld.w $a1, $fp, -164
	bl skip_space
# %op27 = load i32 , i32 * %op24
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op28 = icmp ne i32  %op27, 0
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label171
	addi.d $t2, $zero, 0
	b false_label171
true_label171:
	addi.d $t2, $zero, 1
false_label171:
	st.b $t2, $fp, -169
# %op29 = zext i1  %op28 to i32 
	ld.b $t0, $fp, -169
	st.w $t0, $fp, -176
# %op30 = icmp ne i32  %op29, 0
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label172
	addi.d $t2, $zero, 0
	b false_label172
true_label172:
	addi.d $t2, $zero, 1
false_label172:
	st.b $t2, $fp, -177
# br i1  %op30, label %label31, label %label35
	ld.b $t0, $fp, -177
	bnez $t0, .main_label31
	b .main_label35
.main_label31:
# %op32 = trunc i32  111 to i8 
	addi.w $t0, $zero, 111
	andi $t1, $t0, 255
	st.b $t1, $fp, -178
# call void @putch(i8  %op32)
	ld.b $a0, $fp, -178
	bl putch
# %op33 = trunc i32  107 to i8 
	addi.w $t0, $zero, 107
	andi $t1, $t0, 255
	st.b $t1, $fp, -179
# call void @putch(i8  %op33)
	ld.b $a0, $fp, -179
	bl putch
# %op34 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -180
# call void @putch(i8  %op34)
	ld.b $a0, $fp, -180
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label35:
# %op36 = trunc i32  110 to i8 
	addi.w $t0, $zero, 110
	andi $t1, $t0, 255
	st.b $t1, $fp, -181
# call void @putch(i8  %op36)
	ld.b $a0, $fp, -181
	bl putch
# %op37 = trunc i32  111 to i8 
	addi.w $t0, $zero, 111
	andi $t1, $t0, 255
	st.b $t1, $fp, -182
# call void @putch(i8  %op37)
	ld.b $a0, $fp, -182
	bl putch
# %op38 = trunc i32  116 to i8 
	addi.w $t0, $zero, 116
	andi $t1, $t0, 255
	st.b $t1, $fp, -183
# call void @putch(i8  %op38)
	ld.b $a0, $fp, -183
	bl putch
# %op39 = trunc i32  32 to i8 
	addi.w $t0, $zero, 32
	andi $t1, $t0, 255
	st.b $t1, $fp, -184
# call void @putch(i8  %op39)
	ld.b $a0, $fp, -184
	bl putch
# %op40 = trunc i32  111 to i8 
	addi.w $t0, $zero, 111
	andi $t1, $t0, 255
	st.b $t1, $fp, -185
# call void @putch(i8  %op40)
	ld.b $a0, $fp, -185
	bl putch
# %op41 = trunc i32  107 to i8 
	addi.w $t0, $zero, 107
	andi $t1, $t0, 255
	st.b $t1, $fp, -186
# call void @putch(i8  %op41)
	ld.b $a0, $fp, -186
	bl putch
# %op42 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -187
# call void @putch(i8  %op42)
	ld.b $a0, $fp, -187
	bl putch
# ret i32  1
	addi.w $a0, $zero, 1
	b main_ret
main_ret:
	addi.d $sp, $sp, 192
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
