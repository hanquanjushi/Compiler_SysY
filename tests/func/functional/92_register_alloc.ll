; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/92_register_alloc.sy"

@a1 = global i32  1
@a2 = global i32  2
@a3 = global i32  3
@a4 = global i32  4
@a5 = global i32  5
@a6 = global i32  6
@a7 = global i32  7
@a8 = global i32  8
@a9 = global i32  9
@a10 = global i32  10
@a11 = global i32  11
@a12 = global i32  12
@a13 = global i32  13
@a14 = global i32  14
@a15 = global i32  15
@a16 = global i32  16
@a17 = global i32  1
@a18 = global i32  2
@a19 = global i32  3
@a20 = global i32  4
@a21 = global i32  5
@a22 = global i32  6
@a23 = global i32  7
@a24 = global i32  8
@a25 = global i32  9
@a26 = global i32  10
@a27 = global i32  11
@a28 = global i32  12
@a29 = global i32  13
@a30 = global i32  14
@a31 = global i32  15
@a32 = global i32  16
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

define i32  @func(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = load i32 , i32 * %op2
  %op6 = load i32 , i32 * %op3
  %op7 = add i32  %op5, %op6
  store i32  %op7, i32 * %op4
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
  %op31 = alloca i32 
  %op32 = alloca i32 
  %op33 = alloca i32 
  %op34 = alloca i32 
  %op35 = alloca i32 
  %op36 = alloca i32 
  %op37 = alloca i32 
  %op38 = alloca i32 
  %op39 = alloca i32 
  %op40 = alloca i32 
  %op41 = alloca i32 
  %op42 = alloca i32 
  %op43 = alloca i32 
  %op44 = call i32  @getint()
  store i32  %op44, i32 * %op8
  %op45 = call i32  @getint()
  store i32  %op45, i32 * %op9
  %op46 = call i32  @getint()
  store i32  %op46, i32 * %op10
  %op47 = call i32  @getint()
  store i32  %op47, i32 * %op11
  %op48 = load i32 , i32 * %op8
  %op49 = add i32  1, %op48
  %op50 = load i32 , i32 * @a1
  %op51 = add i32  %op49, %op50
  store i32  %op51, i32 * %op12
  %op52 = load i32 , i32 * %op9
  %op53 = add i32  2, %op52
  %op54 = load i32 , i32 * @a2
  %op55 = add i32  %op53, %op54
  store i32  %op55, i32 * %op13
  %op56 = load i32 , i32 * %op10
  %op57 = add i32  3, %op56
  %op58 = load i32 , i32 * @a3
  %op59 = add i32  %op57, %op58
  store i32  %op59, i32 * %op14
  %op60 = load i32 , i32 * %op11
  %op61 = add i32  4, %op60
  %op62 = load i32 , i32 * @a4
  %op63 = add i32  %op61, %op62
  store i32  %op63, i32 * %op15
  %op64 = load i32 , i32 * %op12
  %op65 = add i32  1, %op64
  %op66 = load i32 , i32 * @a5
  %op67 = add i32  %op65, %op66
  store i32  %op67, i32 * %op16
  %op68 = load i32 , i32 * %op13
  %op69 = add i32  2, %op68
  %op70 = load i32 , i32 * @a6
  %op71 = add i32  %op69, %op70
  store i32  %op71, i32 * %op17
  %op72 = load i32 , i32 * %op14
  %op73 = add i32  3, %op72
  %op74 = load i32 , i32 * @a7
  %op75 = add i32  %op73, %op74
  store i32  %op75, i32 * %op18
  %op76 = load i32 , i32 * %op15
  %op77 = add i32  4, %op76
  %op78 = load i32 , i32 * @a8
  %op79 = add i32  %op77, %op78
  store i32  %op79, i32 * %op19
  %op80 = load i32 , i32 * %op16
  %op81 = add i32  1, %op80
  %op82 = load i32 , i32 * @a9
  %op83 = add i32  %op81, %op82
  store i32  %op83, i32 * %op20
  %op84 = load i32 , i32 * %op17
  %op85 = add i32  2, %op84
  %op86 = load i32 , i32 * @a10
  %op87 = add i32  %op85, %op86
  store i32  %op87, i32 * %op21
  %op88 = load i32 , i32 * %op18
  %op89 = add i32  3, %op88
  %op90 = load i32 , i32 * @a11
  %op91 = add i32  %op89, %op90
  store i32  %op91, i32 * %op22
  %op92 = load i32 , i32 * %op19
  %op93 = add i32  4, %op92
  %op94 = load i32 , i32 * @a12
  %op95 = add i32  %op93, %op94
  store i32  %op95, i32 * %op23
  %op96 = load i32 , i32 * %op20
  %op97 = add i32  1, %op96
  %op98 = load i32 , i32 * @a13
  %op99 = add i32  %op97, %op98
  store i32  %op99, i32 * %op24
  %op100 = load i32 , i32 * %op21
  %op101 = add i32  2, %op100
  %op102 = load i32 , i32 * @a14
  %op103 = add i32  %op101, %op102
  store i32  %op103, i32 * %op25
  %op104 = load i32 , i32 * %op22
  %op105 = add i32  3, %op104
  %op106 = load i32 , i32 * @a15
  %op107 = add i32  %op105, %op106
  store i32  %op107, i32 * %op26
  %op108 = load i32 , i32 * %op23
  %op109 = add i32  4, %op108
  %op110 = load i32 , i32 * @a16
  %op111 = add i32  %op109, %op110
  store i32  %op111, i32 * %op27
  %op112 = load i32 , i32 * %op24
  %op113 = add i32  1, %op112
  %op114 = load i32 , i32 * @a17
  %op115 = add i32  %op113, %op114
  store i32  %op115, i32 * %op28
  %op116 = load i32 , i32 * %op25
  %op117 = add i32  2, %op116
  %op118 = load i32 , i32 * @a18
  %op119 = add i32  %op117, %op118
  store i32  %op119, i32 * %op29
  %op120 = load i32 , i32 * %op26
  %op121 = add i32  3, %op120
  %op122 = load i32 , i32 * @a19
  %op123 = add i32  %op121, %op122
  store i32  %op123, i32 * %op30
  %op124 = load i32 , i32 * %op27
  %op125 = add i32  4, %op124
  %op126 = load i32 , i32 * @a20
  %op127 = add i32  %op125, %op126
  store i32  %op127, i32 * %op31
  %op128 = load i32 , i32 * %op28
  %op129 = add i32  1, %op128
  %op130 = load i32 , i32 * @a21
  %op131 = add i32  %op129, %op130
  store i32  %op131, i32 * %op32
  %op132 = load i32 , i32 * %op29
  %op133 = add i32  2, %op132
  %op134 = load i32 , i32 * @a22
  %op135 = add i32  %op133, %op134
  store i32  %op135, i32 * %op33
  %op136 = load i32 , i32 * %op30
  %op137 = add i32  3, %op136
  %op138 = load i32 , i32 * @a23
  %op139 = add i32  %op137, %op138
  store i32  %op139, i32 * %op34
  %op140 = load i32 , i32 * %op31
  %op141 = add i32  4, %op140
  %op142 = load i32 , i32 * @a24
  %op143 = add i32  %op141, %op142
  store i32  %op143, i32 * %op35
  %op144 = load i32 , i32 * %op32
  %op145 = add i32  1, %op144
  %op146 = load i32 , i32 * @a25
  %op147 = add i32  %op145, %op146
  store i32  %op147, i32 * %op36
  %op148 = load i32 , i32 * %op33
  %op149 = add i32  2, %op148
  %op150 = load i32 , i32 * @a26
  %op151 = add i32  %op149, %op150
  store i32  %op151, i32 * %op37
  %op152 = load i32 , i32 * %op34
  %op153 = add i32  3, %op152
  %op154 = load i32 , i32 * @a27
  %op155 = add i32  %op153, %op154
  store i32  %op155, i32 * %op38
  %op156 = load i32 , i32 * %op35
  %op157 = add i32  4, %op156
  %op158 = load i32 , i32 * @a28
  %op159 = add i32  %op157, %op158
  store i32  %op159, i32 * %op39
  %op160 = load i32 , i32 * %op36
  %op161 = add i32  1, %op160
  %op162 = load i32 , i32 * @a29
  %op163 = add i32  %op161, %op162
  store i32  %op163, i32 * %op40
  %op164 = load i32 , i32 * %op37
  %op165 = add i32  2, %op164
  %op166 = load i32 , i32 * @a30
  %op167 = add i32  %op165, %op166
  store i32  %op167, i32 * %op41
  %op168 = load i32 , i32 * %op38
  %op169 = add i32  3, %op168
  %op170 = load i32 , i32 * @a31
  %op171 = add i32  %op169, %op170
  store i32  %op171, i32 * %op42
  %op172 = load i32 , i32 * %op39
  %op173 = add i32  4, %op172
  %op174 = load i32 , i32 * @a32
  %op175 = add i32  %op173, %op174
  store i32  %op175, i32 * %op43
  %op176 = load i32 , i32 * %op2
  %op177 = load i32 , i32 * %op3
  %op178 = sub i32  %op176, %op177
  %op179 = add i32  %op178, 10
  store i32  %op179, i32 * %op4
  %op180 = load i32 , i32 * %op36
  %op181 = add i32  1, %op180
  %op182 = load i32 , i32 * @a29
  %op183 = add i32  %op181, %op182
  store i32  %op183, i32 * %op40
  %op184 = load i32 , i32 * %op37
  %op185 = add i32  2, %op184
  %op186 = load i32 , i32 * @a30
  %op187 = add i32  %op185, %op186
  store i32  %op187, i32 * %op41
  %op188 = load i32 , i32 * %op38
  %op189 = add i32  3, %op188
  %op190 = load i32 , i32 * @a31
  %op191 = add i32  %op189, %op190
  store i32  %op191, i32 * %op42
  %op192 = load i32 , i32 * %op39
  %op193 = add i32  4, %op192
  %op194 = load i32 , i32 * @a32
  %op195 = add i32  %op193, %op194
  store i32  %op195, i32 * %op43
  %op196 = load i32 , i32 * %op32
  %op197 = add i32  1, %op196
  %op198 = load i32 , i32 * @a25
  %op199 = add i32  %op197, %op198
  store i32  %op199, i32 * %op36
  %op200 = load i32 , i32 * %op33
  %op201 = add i32  2, %op200
  %op202 = load i32 , i32 * @a26
  %op203 = add i32  %op201, %op202
  store i32  %op203, i32 * %op37
  %op204 = load i32 , i32 * %op34
  %op205 = add i32  3, %op204
  %op206 = load i32 , i32 * @a27
  %op207 = add i32  %op205, %op206
  store i32  %op207, i32 * %op38
  %op208 = load i32 , i32 * %op35
  %op209 = add i32  4, %op208
  %op210 = load i32 , i32 * @a28
  %op211 = add i32  %op209, %op210
  store i32  %op211, i32 * %op39
  %op212 = load i32 , i32 * %op28
  %op213 = add i32  1, %op212
  %op214 = load i32 , i32 * @a21
  %op215 = add i32  %op213, %op214
  store i32  %op215, i32 * %op32
  %op216 = load i32 , i32 * %op29
  %op217 = add i32  2, %op216
  %op218 = load i32 , i32 * @a22
  %op219 = add i32  %op217, %op218
  store i32  %op219, i32 * %op33
  %op220 = load i32 , i32 * %op30
  %op221 = add i32  3, %op220
  %op222 = load i32 , i32 * @a23
  %op223 = add i32  %op221, %op222
  store i32  %op223, i32 * %op34
  %op224 = load i32 , i32 * %op31
  %op225 = add i32  4, %op224
  %op226 = load i32 , i32 * @a24
  %op227 = add i32  %op225, %op226
  store i32  %op227, i32 * %op35
  %op228 = load i32 , i32 * %op24
  %op229 = add i32  1, %op228
  %op230 = load i32 , i32 * @a17
  %op231 = add i32  %op229, %op230
  store i32  %op231, i32 * %op28
  %op232 = load i32 , i32 * %op25
  %op233 = add i32  2, %op232
  %op234 = load i32 , i32 * @a18
  %op235 = add i32  %op233, %op234
  store i32  %op235, i32 * %op29
  %op236 = load i32 , i32 * %op26
  %op237 = add i32  3, %op236
  %op238 = load i32 , i32 * @a19
  %op239 = add i32  %op237, %op238
  store i32  %op239, i32 * %op30
  %op240 = load i32 , i32 * %op27
  %op241 = add i32  4, %op240
  %op242 = load i32 , i32 * @a20
  %op243 = add i32  %op241, %op242
  store i32  %op243, i32 * %op31
  %op244 = load i32 , i32 * %op20
  %op245 = add i32  1, %op244
  %op246 = load i32 , i32 * @a13
  %op247 = add i32  %op245, %op246
  store i32  %op247, i32 * %op24
  %op248 = load i32 , i32 * %op21
  %op249 = add i32  2, %op248
  %op250 = load i32 , i32 * @a14
  %op251 = add i32  %op249, %op250
  store i32  %op251, i32 * %op25
  %op252 = load i32 , i32 * %op22
  %op253 = add i32  3, %op252
  %op254 = load i32 , i32 * @a15
  %op255 = add i32  %op253, %op254
  store i32  %op255, i32 * %op26
  %op256 = load i32 , i32 * %op23
  %op257 = add i32  4, %op256
  %op258 = load i32 , i32 * @a16
  %op259 = add i32  %op257, %op258
  store i32  %op259, i32 * %op27
  %op260 = load i32 , i32 * %op16
  %op261 = add i32  1, %op260
  %op262 = load i32 , i32 * @a9
  %op263 = add i32  %op261, %op262
  store i32  %op263, i32 * %op20
  %op264 = load i32 , i32 * %op17
  %op265 = add i32  2, %op264
  %op266 = load i32 , i32 * @a10
  %op267 = add i32  %op265, %op266
  store i32  %op267, i32 * %op21
  %op268 = load i32 , i32 * %op18
  %op269 = add i32  3, %op268
  %op270 = load i32 , i32 * @a11
  %op271 = add i32  %op269, %op270
  store i32  %op271, i32 * %op22
  %op272 = load i32 , i32 * %op19
  %op273 = add i32  4, %op272
  %op274 = load i32 , i32 * @a12
  %op275 = add i32  %op273, %op274
  store i32  %op275, i32 * %op23
  %op276 = load i32 , i32 * %op12
  %op277 = add i32  1, %op276
  %op278 = load i32 , i32 * @a5
  %op279 = add i32  %op277, %op278
  store i32  %op279, i32 * %op16
  %op280 = load i32 , i32 * %op13
  %op281 = add i32  2, %op280
  %op282 = load i32 , i32 * @a6
  %op283 = add i32  %op281, %op282
  store i32  %op283, i32 * %op17
  %op284 = load i32 , i32 * %op14
  %op285 = add i32  3, %op284
  %op286 = load i32 , i32 * @a7
  %op287 = add i32  %op285, %op286
  store i32  %op287, i32 * %op18
  %op288 = load i32 , i32 * %op15
  %op289 = add i32  4, %op288
  %op290 = load i32 , i32 * @a8
  %op291 = add i32  %op289, %op290
  store i32  %op291, i32 * %op19
  %op292 = load i32 , i32 * %op8
  %op293 = add i32  1, %op292
  %op294 = load i32 , i32 * @a1
  %op295 = add i32  %op293, %op294
  store i32  %op295, i32 * %op12
  %op296 = load i32 , i32 * %op9
  %op297 = add i32  2, %op296
  %op298 = load i32 , i32 * @a2
  %op299 = add i32  %op297, %op298
  store i32  %op299, i32 * %op13
  %op300 = load i32 , i32 * %op10
  %op301 = add i32  3, %op300
  %op302 = load i32 , i32 * @a3
  %op303 = add i32  %op301, %op302
  store i32  %op303, i32 * %op14
  %op304 = load i32 , i32 * %op11
  %op305 = add i32  4, %op304
  %op306 = load i32 , i32 * @a4
  %op307 = add i32  %op305, %op306
  store i32  %op307, i32 * %op15
  %op308 = load i32 , i32 * %op8
  %op309 = add i32  1, %op308
  %op310 = load i32 , i32 * @a1
  %op311 = add i32  %op309, %op310
  store i32  %op311, i32 * %op12
  %op312 = load i32 , i32 * %op9
  %op313 = add i32  2, %op312
  %op314 = load i32 , i32 * @a2
  %op315 = add i32  %op313, %op314
  store i32  %op315, i32 * %op13
  %op316 = load i32 , i32 * %op10
  %op317 = add i32  3, %op316
  %op318 = load i32 , i32 * @a3
  %op319 = add i32  %op317, %op318
  store i32  %op319, i32 * %op14
  %op320 = load i32 , i32 * %op11
  %op321 = add i32  4, %op320
  %op322 = load i32 , i32 * @a4
  %op323 = add i32  %op321, %op322
  store i32  %op323, i32 * %op15
  %op324 = load i32 , i32 * %op4
  %op325 = load i32 , i32 * %op8
  %op326 = add i32  %op324, %op325
  %op327 = load i32 , i32 * %op9
  %op328 = add i32  %op326, %op327
  %op329 = load i32 , i32 * %op10
  %op330 = add i32  %op328, %op329
  %op331 = load i32 , i32 * %op11
  %op332 = add i32  %op330, %op331
  %op333 = load i32 , i32 * %op12
  %op334 = sub i32  %op332, %op333
  %op335 = load i32 , i32 * %op13
  %op336 = sub i32  %op334, %op335
  %op337 = load i32 , i32 * %op14
  %op338 = sub i32  %op336, %op337
  %op339 = load i32 , i32 * %op15
  %op340 = sub i32  %op338, %op339
  %op341 = load i32 , i32 * %op16
  %op342 = add i32  %op340, %op341
  %op343 = load i32 , i32 * %op17
  %op344 = add i32  %op342, %op343
  %op345 = load i32 , i32 * %op18
  %op346 = add i32  %op344, %op345
  %op347 = load i32 , i32 * %op19
  %op348 = add i32  %op346, %op347
  %op349 = load i32 , i32 * %op20
  %op350 = sub i32  %op348, %op349
  %op351 = load i32 , i32 * %op21
  %op352 = sub i32  %op350, %op351
  %op353 = load i32 , i32 * %op22
  %op354 = sub i32  %op352, %op353
  %op355 = load i32 , i32 * %op23
  %op356 = sub i32  %op354, %op355
  %op357 = load i32 , i32 * %op24
  %op358 = add i32  %op356, %op357
  %op359 = load i32 , i32 * %op25
  %op360 = add i32  %op358, %op359
  %op361 = load i32 , i32 * %op26
  %op362 = add i32  %op360, %op361
  %op363 = load i32 , i32 * %op27
  %op364 = add i32  %op362, %op363
  %op365 = load i32 , i32 * %op28
  %op366 = sub i32  %op364, %op365
  %op367 = load i32 , i32 * %op29
  %op368 = sub i32  %op366, %op367
  %op369 = load i32 , i32 * %op30
  %op370 = sub i32  %op368, %op369
  %op371 = load i32 , i32 * %op31
  %op372 = sub i32  %op370, %op371
  %op373 = load i32 , i32 * %op32
  %op374 = add i32  %op372, %op373
  %op375 = load i32 , i32 * %op33
  %op376 = add i32  %op374, %op375
  %op377 = load i32 , i32 * %op34
  %op378 = add i32  %op376, %op377
  %op379 = load i32 , i32 * %op35
  %op380 = add i32  %op378, %op379
  %op381 = load i32 , i32 * %op36
  %op382 = sub i32  %op380, %op381
  %op383 = load i32 , i32 * %op37
  %op384 = sub i32  %op382, %op383
  %op385 = load i32 , i32 * %op38
  %op386 = sub i32  %op384, %op385
  %op387 = load i32 , i32 * %op39
  %op388 = sub i32  %op386, %op387
  %op389 = load i32 , i32 * %op40
  %op390 = add i32  %op388, %op389
  %op391 = load i32 , i32 * %op41
  %op392 = add i32  %op390, %op391
  %op393 = load i32 , i32 * %op42
  %op394 = add i32  %op392, %op393
  %op395 = load i32 , i32 * %op43
  %op396 = add i32  %op394, %op395
  %op397 = load i32 , i32 * @a1
  %op398 = add i32  %op396, %op397
  %op399 = load i32 , i32 * @a2
  %op400 = sub i32  %op398, %op399
  %op401 = load i32 , i32 * @a3
  %op402 = add i32  %op400, %op401
  %op403 = load i32 , i32 * @a4
  %op404 = sub i32  %op402, %op403
  %op405 = load i32 , i32 * @a5
  %op406 = add i32  %op404, %op405
  %op407 = load i32 , i32 * @a6
  %op408 = sub i32  %op406, %op407
  %op409 = load i32 , i32 * @a7
  %op410 = add i32  %op408, %op409
  %op411 = load i32 , i32 * @a8
  %op412 = sub i32  %op410, %op411
  %op413 = load i32 , i32 * @a9
  %op414 = add i32  %op412, %op413
  %op415 = load i32 , i32 * @a10
  %op416 = sub i32  %op414, %op415
  %op417 = load i32 , i32 * @a11
  %op418 = add i32  %op416, %op417
  %op419 = load i32 , i32 * @a12
  %op420 = sub i32  %op418, %op419
  %op421 = load i32 , i32 * @a13
  %op422 = add i32  %op420, %op421
  %op423 = load i32 , i32 * @a14
  %op424 = sub i32  %op422, %op423
  %op425 = load i32 , i32 * @a15
  %op426 = add i32  %op424, %op425
  %op427 = load i32 , i32 * @a16
  %op428 = sub i32  %op426, %op427
  %op429 = load i32 , i32 * @a17
  %op430 = add i32  %op428, %op429
  %op431 = load i32 , i32 * @a18
  %op432 = sub i32  %op430, %op431
  %op433 = load i32 , i32 * @a19
  %op434 = add i32  %op432, %op433
  %op435 = load i32 , i32 * @a20
  %op436 = sub i32  %op434, %op435
  %op437 = load i32 , i32 * @a21
  %op438 = add i32  %op436, %op437
  %op439 = load i32 , i32 * @a22
  %op440 = sub i32  %op438, %op439
  %op441 = load i32 , i32 * @a23
  %op442 = add i32  %op440, %op441
  %op443 = load i32 , i32 * @a24
  %op444 = sub i32  %op442, %op443
  %op445 = load i32 , i32 * @a25
  %op446 = add i32  %op444, %op445
  %op447 = load i32 , i32 * @a26
  %op448 = sub i32  %op446, %op447
  %op449 = load i32 , i32 * @a27
  %op450 = add i32  %op448, %op449
  %op451 = load i32 , i32 * @a28
  %op452 = sub i32  %op450, %op451
  %op453 = load i32 , i32 * @a29
  %op454 = add i32  %op452, %op453
  %op455 = load i32 , i32 * @a30
  %op456 = sub i32  %op454, %op455
  %op457 = load i32 , i32 * @a31
  %op458 = add i32  %op456, %op457
  %op459 = load i32 , i32 * @a32
  %op460 = sub i32  %op458, %op459
  ret i32  %op460
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  %op2 = call i32  @getint()
  store i32  %op2, i32 * %op0
  %op3 = load i32 , i32 * %op0
  %op4 = mul i32  2, 9
  %op5 = add i32  %op3, %op4
  store i32  %op5, i32 * %op1
  %op6 = load i32 , i32 * %op0
  %op7 = load i32 , i32 * %op1
  %op8 = call i32  @func(i32  %op6, i32  %op7)
  store i32  %op8, i32 * %op0
  %op9 = load i32 , i32 * %op0
  call void @putint(i32  %op9)
  %op10 = load i32 , i32 * %op0
  ret i32  %op10
}
