    ori r29 r0 5040
    ori r30 r0 27964
    jal main
end_of_program:
    nop
    beq r0 r0 end_of_program
calc_dirvec.5376:
block_5281:
    addi r4 r0 5
    blt r1 r4 block_5283
block_5282:
    fmul f2 f0 f0
    fmul f3 f1 f1
    fadd f2 f2 f3
    #1.0
    flui f3 16256
    fadd f2 f2 f3
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    finv_init f3 f2
    #2.0
    flui f4 16384
    fmul f5 f2 f3
    fsub f4 f4 f5
    fmul f3 f3 f4
    fmul f0 f0 f3
    finv_init f3 f2
    #2.0
    flui f4 16384
    fmul f5 f2 f3
    fsub f4 f4 f5
    fmul f3 f3 f4
    fmul f1 f1 f3
    #1.0
    flui f3 16256
    finv_init f4 f2
    #2.0
    flui f5 16384
    fmul f2 f2 f4
    fsub f2 f5 f2
    fmul f2 f4 f2
    fmul f2 f3 f2
    sll r1 r2 2
    lw r1 r1 25716
    sll r2 r3 2
    lwab r2 r1 r2
    lw r2 r2 0
    swcZ f0 r2 0
    swcZ f1 r2 4
    swcZ f2 r2 8
    addi r2 r3 40
    sll r2 r2 2
    lwab r2 r1 r2
    lw r2 r2 0
    fneg f3 f1
    swcZ f0 r2 0
    swcZ f2 r2 4
    swcZ f3 r2 8
    addi r2 r3 80
    sll r2 r2 2
    lwab r2 r1 r2
    lw r2 r2 0
    fneg f3 f0
    fneg f4 f1
    swcZ f2 r2 0
    swcZ f3 r2 4
    swcZ f4 r2 8
    addi r2 r3 1
    sll r2 r2 2
    lwab r2 r1 r2
    lw r2 r2 0
    fneg f3 f0
    fneg f4 f1
    fneg f5 f2
    swcZ f3 r2 0
    swcZ f4 r2 4
    swcZ f5 r2 8
    addi r2 r3 41
    sll r2 r2 2
    lwab r2 r1 r2
    lw r2 r2 0
    fneg f3 f0
    fneg f4 f2
    swcZ f3 r2 0
    swcZ f4 r2 4
    swcZ f1 r2 8
    addi r2 r3 81
    sll r2 r2 2
    lwab r1 r1 r2
    lw r1 r1 0
    fneg f2 f2
    swcZ f2 r1 0
    swcZ f0 r1 4
    swcZ f1 r1 8
    jr r31
block_5283:
    fmul f0 f1 f1
    #0.1
    flui f1 15820
    fori f1 f1 -13107
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f1 f5 f1
    fmul f1 f1 f0
    fsub f1 f4 f1
    fmul f0 f0 f1
    #1.0
    flui f1 16256
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f6 f0 f4
    fsub f5 f5 f6
    fmul f4 f4 f5
    fmul f1 f1 f4
    #0.0
    flui f4 0
    fclt f4 f1
    bc1t block_5285
block_5284:
    mv r4 r0
    j block_5286
block_5285:
    addi r4 r0 1
    j block_5286
block_5286:
    bne r4 r0 block_5288
    j block_5287
block_5287:
    fneg f1 f1
    j block_5289
block_5288:
    j block_5289
block_5289:
    #0.4375
    flui f4 16096
    fclt f1 f4
    bc1t block_5291
block_5290:
    #2.4375
    flui f4 16412
    fclt f1 f4
    bc1t block_5294
block_5293:
    #1.5707964
    flui f4 16329
    fori f4 f4 4059
    #1.0
    flui f5 16256
    finv_init f6 f1
    #2.0
    flui f7 16384
    fmul f1 f1 f6
    fsub f1 f7 f1
    fmul f1 f6 f1
    fmul f1 f5 f1
    fmul f5 f1 f1
    fmul f6 f5 f1
    fmul f7 f5 f6
    fmul f8 f5 f7
    fmul f9 f5 f8
    fmul f10 f5 f9
    fmul f5 f5 f10
    #0.3333333
    flui f11 16042
    fori f11 f11 -21846
    fmul f6 f11 f6
    fsub f1 f1 f6
    #0.2
    flui f6 15948
    fori f6 f6 -13107
    fmul f6 f6 f7
    fadd f1 f1 f6
    #0.14285715
    flui f6 15890
    fori f6 f6 18725
    fmul f6 f6 f8
    fsub f1 f1 f6
    #0.111111104
    flui f6 15843
    fori f6 f6 -29128
    fmul f6 f6 f9
    fadd f1 f1 f6
    #0.08976446
    flui f6 15799
    fori f6 f6 -10642
    fmul f6 f6 f10
    fsub f1 f1 f6
    #0.060035486
    flui f6 15733
    fori f6 f6 -6203
    fmul f5 f6 f5
    fadd f1 f1 f5
    fsub f1 f4 f1
    j block_5292
block_5294:
    #0.7853982
    flui f4 16201
    fori f4 f4 4059
    #1.0
    flui f5 16256
    fsub f5 f1 f5
    #1.0
    flui f6 16256
    fadd f1 f1 f6
    finv_init f6 f1
    #2.0
    flui f7 16384
    fmul f1 f1 f6
    fsub f1 f7 f1
    fmul f1 f6 f1
    fmul f1 f5 f1
    fmul f5 f1 f1
    fmul f6 f5 f1
    fmul f7 f5 f6
    fmul f8 f5 f7
    fmul f9 f5 f8
    fmul f10 f5 f9
    fmul f5 f5 f10
    #0.3333333
    flui f11 16042
    fori f11 f11 -21846
    fmul f6 f11 f6
    fsub f1 f1 f6
    #0.2
    flui f6 15948
    fori f6 f6 -13107
    fmul f6 f6 f7
    fadd f1 f1 f6
    #0.14285715
    flui f6 15890
    fori f6 f6 18725
    fmul f6 f6 f8
    fsub f1 f1 f6
    #0.111111104
    flui f6 15843
    fori f6 f6 -29128
    fmul f6 f6 f9
    fadd f1 f1 f6
    #0.08976446
    flui f6 15799
    fori f6 f6 -10642
    fmul f6 f6 f10
    fsub f1 f1 f6
    #0.060035486
    flui f6 15733
    fori f6 f6 -6203
    fmul f5 f6 f5
    fadd f1 f1 f5
    fadd f1 f4 f1
    j block_5292
block_5291:
    fmul f4 f1 f1
    fmul f5 f4 f1
    fmul f6 f4 f5
    fmul f7 f4 f6
    fmul f8 f4 f7
    fmul f9 f4 f8
    fmul f4 f4 f9
    #0.3333333
    flui f10 16042
    fori f10 f10 -21846
    fmul f5 f10 f5
    fsub f1 f1 f5
    #0.2
    flui f5 15948
    fori f5 f5 -13107
    fmul f5 f5 f6
    fadd f1 f1 f5
    #0.14285715
    flui f5 15890
    fori f5 f5 18725
    fmul f5 f5 f7
    fsub f1 f1 f5
    #0.111111104
    flui f5 15843
    fori f5 f5 -29128
    fmul f5 f5 f8
    fadd f1 f1 f5
    #0.08976446
    flui f5 15799
    fori f5 f5 -10642
    fmul f5 f5 f9
    fsub f1 f1 f5
    #0.060035486
    flui f5 15733
    fori f5 f5 -6203
    fmul f4 f5 f4
    fadd f1 f1 f4
    j block_5292
block_5292:
    bne r4 r0 block_5296
    j block_5295
block_5295:
    fneg f1 f1
    j block_5297
block_5296:
    j block_5297
block_5297:
    fmul f1 f1 f2
    #0.7853982
    flui f4 16201
    fori f4 f4 4059
    #1.5707964
    flui f5 16329
    fori f5 f5 4059
    #3.1415927
    flui f6 16457
    fori f6 f6 4059
    #6.2831855
    flui f7 16585
    fori f7 f7 4059
    #0.15915494
    flui f8 15906
    fori f8 f8 -1661
    fmul f8 f1 f8
    ftoi r4 f8
    itof f8 r4
    fmul f8 f7 f8
    fsub f8 f1 f8
    #0.0
    flui f9 0
    fclt f9 f8
    bc1t block_5299
block_5298:
    fadd f7 f8 f7
    j block_5300
block_5299:
    fmv f7 f8
    j block_5300
block_5300:
    fclt f6 f7
    bc1t block_5302
block_5301:
    addi r4 r0 1
    j block_5303
block_5302:
    mv r4 r0
    j block_5303
block_5303:
    fclt f6 f7
    bc1t block_5305
block_5304:
    j block_5306
block_5305:
    fsub f7 f7 f6
    j block_5306
block_5306:
    fclt f5 f7
    bc1t block_5308
block_5307:
    fmv f6 f7
    j block_5309
block_5308:
    fsub f6 f6 f7
    j block_5309
block_5309:
    fclt f4 f6
    bc1t block_5311
block_5310:
    fmul f4 f6 f6
    fmul f5 f4 f6
    fmul f7 f5 f4
    fmul f4 f7 f4
    #0.16666669
    flui f8 15914
    fori f8 f8 -21844
    fmul f5 f8 f5
    fsub f5 f6 f5
    #0.008332824
    flui f6 15368
    fori f6 f6 -31130
    fmul f6 f6 f7
    fadd f5 f5 f6
    #0.00019587841
    flui f6 14669
    fori f6 f6 25782
    fmul f4 f6 f4
    fsub f4 f5 f4
    j block_5312
block_5311:
    fsub f4 f5 f6
    fmul f4 f4 f4
    fmul f5 f4 f4
    fmul f6 f5 f4
    #1.0
    flui f7 16256
    #0.5
    flui f8 16128
    fmul f4 f8 f4
    fsub f4 f7 f4
    #0.04166368
    flui f7 15658
    fori f7 f7 -22647
    fmul f5 f7 f5
    fadd f4 f4 f5
    #0.0013695068
    flui f5 15027
    fori f5 f5 -32506
    fmul f5 f5 f6
    fsub f4 f4 f5
    j block_5312
block_5312:
    bne r4 r0 block_5314
    j block_5313
block_5313:
    fneg f4 f4
    j block_5315
block_5314:
    j block_5315
block_5315:
    #0.7853982
    flui f5 16201
    fori f5 f5 4059
    #1.5707964
    flui f6 16329
    fori f6 f6 4059
    #3.1415927
    flui f7 16457
    fori f7 f7 4059
    #6.2831855
    flui f8 16585
    fori f8 f8 4059
    #0.15915494
    flui f9 15906
    fori f9 f9 -1661
    fmul f9 f1 f9
    ftoi r4 f9
    itof f9 r4
    fmul f8 f8 f9
    fsub f1 f1 f8
    #0.0
    flui f8 0
    fclt f8 f1
    bc1t block_5317
block_5316:
    fneg f1 f1
    j block_5318
block_5317:
    j block_5318
block_5318:
    fclt f7 f1
    bc1t block_5320
block_5319:
    addi r4 r0 1
    j block_5321
block_5320:
    addi r4 r0 -1
    j block_5321
block_5321:
    fclt f7 f1
    bc1t block_5323
block_5322:
    j block_5324
block_5323:
    fsub f1 f1 f7
    j block_5324
block_5324:
    fclt f6 f1
    bc1t block_5326
block_5325:
    j block_5327
block_5326:
    sub r4 r0 r4
    j block_5327
block_5327:
    fclt f6 f1
    bc1t block_5329
block_5328:
    j block_5330
block_5329:
    fsub f1 f7 f1
    j block_5330
block_5330:
    fclt f1 f5
    bc1t block_5332
block_5331:
    fsub f1 f6 f1
    fmul f5 f1 f1
    fmul f6 f5 f1
    fmul f7 f6 f5
    fmul f5 f7 f5
    #0.16666669
    flui f8 15914
    fori f8 f8 -21844
    fmul f6 f8 f6
    fsub f1 f1 f6
    #0.008332824
    flui f6 15368
    fori f6 f6 -31130
    fmul f6 f6 f7
    fadd f1 f1 f6
    #0.00019587841
    flui f6 14669
    fori f6 f6 25782
    fmul f5 f6 f5
    fsub f1 f1 f5
    j block_5333
block_5332:
    fmul f1 f1 f1
    fmul f5 f1 f1
    fmul f6 f5 f1
    #1.0
    flui f7 16256
    #0.5
    flui f8 16128
    fmul f1 f8 f1
    fsub f1 f7 f1
    #0.04166368
    flui f7 15658
    fori f7 f7 -22647
    fmul f5 f7 f5
    fadd f1 f1 f5
    #0.0013695068
    flui f5 15027
    fori f5 f5 -32506
    fmul f5 f5 f6
    fsub f1 f1 f5
    j block_5333
block_5333:
    addi r5 r0 -1
    beq r4 r5 block_5335
block_5334:
    j block_5336
block_5335:
    fneg f1 f1
    j block_5336
block_5336:
    finv_init f5 f1
    #2.0
    flui f6 16384
    fmul f1 f1 f5
    fsub f1 f6 f1
    fmul f1 f5 f1
    fmul f1 f4 f1
    fmul f0 f1 f0
    addi r1 r1 1
    fmul f1 f0 f0
    #0.1
    flui f4 15820
    fori f4 f4 -13107
    fadd f1 f1 f4
    sqrt_init f4 f1
    fmul f1 f1 f4
    #1.5
    flui f5 16320
    #0.5
    flui f6 16128
    fmul f4 f6 f4
    fmul f4 f4 f1
    fsub f4 f5 f4
    fmul f1 f1 f4
    #1.0
    flui f4 16256
    finv_init f5 f1
    #2.0
    flui f6 16384
    fmul f7 f1 f5
    fsub f6 f6 f7
    fmul f5 f5 f6
    fmul f4 f4 f5
    #0.0
    flui f5 0
    fclt f5 f4
    bc1t block_5338
block_5337:
    mv r4 r0
    j block_5339
block_5338:
    addi r4 r0 1
    j block_5339
block_5339:
    bne r4 r0 block_5341
    j block_5340
block_5340:
    fneg f4 f4
    j block_5342
block_5341:
    j block_5342
block_5342:
    #0.4375
    flui f5 16096
    fclt f4 f5
    bc1t block_5344
block_5343:
    #2.4375
    flui f5 16412
    fclt f4 f5
    bc1t block_5347
block_5346:
    #1.5707964
    flui f5 16329
    fori f5 f5 4059
    #1.0
    flui f6 16256
    finv_init f7 f4
    #2.0
    flui f8 16384
    fmul f4 f4 f7
    fsub f4 f8 f4
    fmul f4 f7 f4
    fmul f4 f6 f4
    fmul f6 f4 f4
    fmul f7 f6 f4
    fmul f8 f6 f7
    fmul f9 f6 f8
    fmul f10 f6 f9
    fmul f11 f6 f10
    fmul f6 f6 f11
    #0.3333333
    flui f12 16042
    fori f12 f12 -21846
    fmul f7 f12 f7
    fsub f4 f4 f7
    #0.2
    flui f7 15948
    fori f7 f7 -13107
    fmul f7 f7 f8
    fadd f4 f4 f7
    #0.14285715
    flui f7 15890
    fori f7 f7 18725
    fmul f7 f7 f9
    fsub f4 f4 f7
    #0.111111104
    flui f7 15843
    fori f7 f7 -29128
    fmul f7 f7 f10
    fadd f4 f4 f7
    #0.08976446
    flui f7 15799
    fori f7 f7 -10642
    fmul f7 f7 f11
    fsub f4 f4 f7
    #0.060035486
    flui f7 15733
    fori f7 f7 -6203
    fmul f6 f7 f6
    fadd f4 f4 f6
    fsub f4 f5 f4
    j block_5345
block_5347:
    #0.7853982
    flui f5 16201
    fori f5 f5 4059
    #1.0
    flui f6 16256
    fsub f6 f4 f6
    #1.0
    flui f7 16256
    fadd f4 f4 f7
    finv_init f7 f4
    #2.0
    flui f8 16384
    fmul f4 f4 f7
    fsub f4 f8 f4
    fmul f4 f7 f4
    fmul f4 f6 f4
    fmul f6 f4 f4
    fmul f7 f6 f4
    fmul f8 f6 f7
    fmul f9 f6 f8
    fmul f10 f6 f9
    fmul f11 f6 f10
    fmul f6 f6 f11
    #0.3333333
    flui f12 16042
    fori f12 f12 -21846
    fmul f7 f12 f7
    fsub f4 f4 f7
    #0.2
    flui f7 15948
    fori f7 f7 -13107
    fmul f7 f7 f8
    fadd f4 f4 f7
    #0.14285715
    flui f7 15890
    fori f7 f7 18725
    fmul f7 f7 f9
    fsub f4 f4 f7
    #0.111111104
    flui f7 15843
    fori f7 f7 -29128
    fmul f7 f7 f10
    fadd f4 f4 f7
    #0.08976446
    flui f7 15799
    fori f7 f7 -10642
    fmul f7 f7 f11
    fsub f4 f4 f7
    #0.060035486
    flui f7 15733
    fori f7 f7 -6203
    fmul f6 f7 f6
    fadd f4 f4 f6
    fadd f4 f5 f4
    j block_5345
block_5344:
    fmul f5 f4 f4
    fmul f6 f5 f4
    fmul f7 f5 f6
    fmul f8 f5 f7
    fmul f9 f5 f8
    fmul f10 f5 f9
    fmul f5 f5 f10
    #0.3333333
    flui f11 16042
    fori f11 f11 -21846
    fmul f6 f11 f6
    fsub f4 f4 f6
    #0.2
    flui f6 15948
    fori f6 f6 -13107
    fmul f6 f6 f7
    fadd f4 f4 f6
    #0.14285715
    flui f6 15890
    fori f6 f6 18725
    fmul f6 f6 f8
    fsub f4 f4 f6
    #0.111111104
    flui f6 15843
    fori f6 f6 -29128
    fmul f6 f6 f9
    fadd f4 f4 f6
    #0.08976446
    flui f6 15799
    fori f6 f6 -10642
    fmul f6 f6 f10
    fsub f4 f4 f6
    #0.060035486
    flui f6 15733
    fori f6 f6 -6203
    fmul f5 f6 f5
    fadd f4 f4 f5
    j block_5345
block_5345:
    bne r4 r0 block_5349
    j block_5348
block_5348:
    fneg f4 f4
    j block_5350
block_5349:
    j block_5350
block_5350:
    fmul f4 f4 f3
    #0.7853982
    flui f5 16201
    fori f5 f5 4059
    #1.5707964
    flui f6 16329
    fori f6 f6 4059
    #3.1415927
    flui f7 16457
    fori f7 f7 4059
    #6.2831855
    flui f8 16585
    fori f8 f8 4059
    #0.15915494
    flui f9 15906
    fori f9 f9 -1661
    fmul f9 f4 f9
    ftoi r4 f9
    itof f9 r4
    fmul f9 f8 f9
    fsub f9 f4 f9
    #0.0
    flui f10 0
    fclt f10 f9
    bc1t block_5352
block_5351:
    fadd f8 f9 f8
    j block_5353
block_5352:
    fmv f8 f9
    j block_5353
block_5353:
    fclt f7 f8
    bc1t block_5355
block_5354:
    addi r4 r0 1
    j block_5356
block_5355:
    mv r4 r0
    j block_5356
block_5356:
    fclt f7 f8
    bc1t block_5358
block_5357:
    j block_5359
block_5358:
    fsub f8 f8 f7
    j block_5359
block_5359:
    fclt f6 f8
    bc1t block_5361
block_5360:
    fmv f7 f8
    j block_5362
block_5361:
    fsub f7 f7 f8
    j block_5362
block_5362:
    fclt f5 f7
    bc1t block_5364
block_5363:
    fmul f5 f7 f7
    fmul f6 f5 f7
    fmul f8 f6 f5
    fmul f5 f8 f5
    #0.16666669
    flui f9 15914
    fori f9 f9 -21844
    fmul f6 f9 f6
    fsub f6 f7 f6
    #0.008332824
    flui f7 15368
    fori f7 f7 -31130
    fmul f7 f7 f8
    fadd f6 f6 f7
    #0.00019587841
    flui f7 14669
    fori f7 f7 25782
    fmul f5 f7 f5
    fsub f5 f6 f5
    j block_5365
block_5364:
    fsub f5 f6 f7
    fmul f5 f5 f5
    fmul f6 f5 f5
    fmul f7 f6 f5
    #1.0
    flui f8 16256
    #0.5
    flui f9 16128
    fmul f5 f9 f5
    fsub f5 f8 f5
    #0.04166368
    flui f8 15658
    fori f8 f8 -22647
    fmul f6 f8 f6
    fadd f5 f5 f6
    #0.0013695068
    flui f6 15027
    fori f6 f6 -32506
    fmul f6 f6 f7
    fsub f5 f5 f6
    j block_5365
block_5365:
    bne r4 r0 block_5367
    j block_5366
block_5366:
    fneg f5 f5
    j block_5368
block_5367:
    j block_5368
block_5368:
    #0.7853982
    flui f6 16201
    fori f6 f6 4059
    #1.5707964
    flui f7 16329
    fori f7 f7 4059
    #3.1415927
    flui f8 16457
    fori f8 f8 4059
    #6.2831855
    flui f9 16585
    fori f9 f9 4059
    #0.15915494
    flui f10 15906
    fori f10 f10 -1661
    fmul f10 f4 f10
    ftoi r4 f10
    itof f10 r4
    fmul f9 f9 f10
    fsub f4 f4 f9
    #0.0
    flui f9 0
    fclt f9 f4
    bc1t block_5370
block_5369:
    fneg f4 f4
    j block_5371
block_5370:
    j block_5371
block_5371:
    fclt f8 f4
    bc1t block_5373
block_5372:
    addi r4 r0 1
    j block_5374
block_5373:
    addi r4 r0 -1
    j block_5374
block_5374:
    fclt f8 f4
    bc1t block_5376
block_5375:
    j block_5377
block_5376:
    fsub f4 f4 f8
    j block_5377
block_5377:
    fclt f7 f4
    bc1t block_5379
block_5378:
    j block_5380
block_5379:
    sub r4 r0 r4
    j block_5380
block_5380:
    fclt f7 f4
    bc1t block_5382
block_5381:
    j block_5383
block_5382:
    fsub f4 f8 f4
    j block_5383
block_5383:
    fclt f4 f6
    bc1t block_5385
block_5384:
    fsub f4 f7 f4
    fmul f6 f4 f4
    fmul f7 f6 f4
    fmul f8 f7 f6
    fmul f6 f8 f6
    #0.16666669
    flui f9 15914
    fori f9 f9 -21844
    fmul f7 f9 f7
    fsub f4 f4 f7
    #0.008332824
    flui f7 15368
    fori f7 f7 -31130
    fmul f7 f7 f8
    fadd f4 f4 f7
    #0.00019587841
    flui f7 14669
    fori f7 f7 25782
    fmul f6 f7 f6
    fsub f4 f4 f6
    j block_5386
block_5385:
    fmul f4 f4 f4
    fmul f6 f4 f4
    fmul f7 f6 f4
    #1.0
    flui f8 16256
    #0.5
    flui f9 16128
    fmul f4 f9 f4
    fsub f4 f8 f4
    #0.04166368
    flui f8 15658
    fori f8 f8 -22647
    fmul f6 f8 f6
    fadd f4 f4 f6
    #0.0013695068
    flui f6 15027
    fori f6 f6 -32506
    fmul f6 f6 f7
    fsub f4 f4 f6
    j block_5386
block_5386:
    addi r5 r0 -1
    beq r4 r5 block_5388
block_5387:
    j block_5389
block_5388:
    fneg f4 f4
    j block_5389
block_5389:
    finv_init f6 f4
    #2.0
    flui f7 16384
    fmul f4 f4 f6
    fsub f4 f7 f4
    fmul f4 f6 f4
    fmul f4 f5 f4
    fmul f1 f4 f1
    sw r31 r29 0
    addi r29 r29 4
    jal calc_dirvec.5376
    subi r29 r29 4
    lw r31 r29 0
    jr r31
calc_dirvec_rows.5466:
block_5401:
    blt r1 r0 block_5403
block_5402:
    itof f0 r1
    #0.2
    flui f1 15948
    fori f1 f1 -13107
    fmul f0 f0 f1
    #0.9
    flui f1 16230
    fori f1 f1 26214
    fsub f3 f0 f1
    addi r4 r0 4
    sw r1 r29 24
    sw r3 r29 20
    sw r2 r29 16
    blt r4 r0 block_5405
block_5404:
    itof f0 r4
    #0.2
    flui f1 15948
    fori f1 f1 -13107
    fmul f0 f0 f1
    #0.9
    flui f1 16230
    fori f1 f1 26214
    fsub f2 f0 f1
    #0.0
    flui f0 0
    #0.0
    flui f1 0
    swcZ f3 r29 28
    sw r1 r29 24
    sw r3 r29 20
    sw r2 r29 16
    sw r4 r29 0
    mv r1 r0
    sw r31 r29 32
    addi r29 r29 36
    jal calc_dirvec.5376
    subi r29 r29 36
    lw r31 r29 32
    lw r1 r29 0
    itof f0 r1
    #0.2
    flui f1 15948
    fori f1 f1 -13107
    fmul f0 f0 f1
    #0.1
    flui f1 15820
    fori f1 f1 -13107
    fadd f2 f0 f1
    #0.0
    flui f0 0
    #0.0
    flui f1 0
    lw r1 r29 20
    addi r3 r1 2
    lw r2 r29 16
    lwcZ f3 r29 28
    swcZ f3 r29 28
    sw r1 r29 20
    sw r2 r29 16
    mv r1 r0
    sw r31 r29 32
    addi r29 r29 36
    jal calc_dirvec.5376
    subi r29 r29 36
    lw r31 r29 32
    addi r1 r0 3
    lw r2 r29 16
    addi r3 r2 1
    addi r4 r0 5
    blt r3 r4 block_5408
block_5407:
    subi r3 r3 5
    j block_5409
block_5408:
    j block_5409
block_5409:
    lw r4 r29 20
    lwcZ f0 r29 28
    sw r4 r29 20
    sw r2 r29 16
    mv r2 r3
    mv r3 r4
    sw r31 r29 32
    addi r29 r29 36
    jal calc_dirvecs.5436
    subi r29 r29 36
    lw r31 r29 32
    j block_5406
block_5405:
    j block_5406
block_5406:
    lw r1 r29 24
    subi r1 r1 1
    lw r2 r29 16
    addi r2 r2 2
    addi r3 r0 5
    blt r2 r3 block_5411
block_5410:
    subi r2 r2 5
    j block_5412
block_5411:
    j block_5412
block_5412:
    lw r3 r29 20
    addi r3 r3 4
    blt r1 r0 block_5414
block_5413:
    itof f0 r1
    #0.2
    flui f1 15948
    fori f1 f1 -13107
    fmul f0 f0 f1
    #0.9
    flui f1 16230
    fori f1 f1 26214
    fsub f0 f0 f1
    addi r4 r0 4
    sw r3 r29 12
    sw r2 r29 8
    sw r1 r29 4
    mv r1 r4
    sw r31 r29 32
    addi r29 r29 36
    jal calc_dirvecs.5436
    subi r29 r29 36
    lw r31 r29 32
    lw r1 r29 4
    subi r1 r1 1
    lw r2 r29 8
    addi r2 r2 2
    addi r3 r0 5
    blt r2 r3 block_5416
block_5415:
    subi r2 r2 5
    j block_5417
block_5416:
    j block_5417
block_5417:
    lw r3 r29 12
    addi r3 r3 4
    sw r31 r29 32
    addi r29 r29 36
    jal calc_dirvec_rows.5466
    subi r29 r29 36
    lw r31 r29 32
    jr r31
block_5414:
    jr r31
block_5403:
    jr r31
calc_dirvecs.5436:
block_5390:
    blt r1 r0 block_5392
block_5391:
    itof f1 r1
    #0.2
    flui f2 15948
    fori f2 f2 -13107
    fmul f1 f1 f2
    #0.9
    flui f2 16230
    fori f2 f2 26214
    fsub f2 f1 f2
    #0.0
    flui f1 0
    #0.0
    flui f3 0
    swcZ f0 r29 20
    sw r3 r29 16
    sw r2 r29 12
    sw r1 r29 8
    mv r1 r0
    fmv f30 f3
    fmv f3 f0
    fmv f0 f1
    fmv f1 f30
    sw r31 r29 24
    addi r29 r29 28
    jal calc_dirvec.5376
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    itof f0 r1
    #0.2
    flui f1 15948
    fori f1 f1 -13107
    fmul f0 f0 f1
    #0.1
    flui f1 15820
    fori f1 f1 -13107
    fadd f2 f0 f1
    #0.0
    flui f0 0
    #0.0
    flui f1 0
    lw r2 r29 16
    addi r3 r2 2
    lw r4 r29 12
    lwcZ f3 r29 20
    swcZ f3 r29 20
    sw r2 r29 16
    sw r4 r29 12
    sw r1 r29 8
    mv r2 r4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal calc_dirvec.5376
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    subi r1 r1 1
    lw r2 r29 12
    addi r2 r2 1
    addi r3 r0 5
    blt r2 r3 block_5394
block_5393:
    subi r2 r2 5
    j block_5395
block_5394:
    j block_5395
block_5395:
    blt r1 r0 block_5397
block_5396:
    itof f0 r1
    #0.2
    flui f1 15948
    fori f1 f1 -13107
    fmul f0 f0 f1
    #0.9
    flui f1 16230
    fori f1 f1 26214
    fsub f2 f0 f1
    #0.0
    flui f0 0
    #0.0
    flui f1 0
    lw r3 r29 16
    lwcZ f3 r29 20
    swcZ f3 r29 20
    sw r3 r29 16
    sw r2 r29 4
    sw r1 r29 0
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal calc_dirvec.5376
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 0
    itof f0 r1
    #0.2
    flui f1 15948
    fori f1 f1 -13107
    fmul f0 f0 f1
    #0.1
    flui f1 15820
    fori f1 f1 -13107
    fadd f2 f0 f1
    #0.0
    flui f0 0
    #0.0
    flui f1 0
    lw r2 r29 16
    addi r3 r2 2
    lw r4 r29 4
    lwcZ f3 r29 20
    swcZ f3 r29 20
    sw r2 r29 16
    sw r4 r29 4
    sw r1 r29 0
    mv r2 r4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal calc_dirvec.5376
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 0
    subi r1 r1 1
    lw r2 r29 4
    addi r2 r2 1
    addi r3 r0 5
    blt r2 r3 block_5399
block_5398:
    subi r2 r2 5
    j block_5400
block_5399:
    j block_5400
block_5400:
    lw r3 r29 16
    lwcZ f0 r29 20
    sw r31 r29 24
    addi r29 r29 28
    jal calc_dirvecs.5436
    subi r29 r29 28
    lw r31 r29 24
    jr r31
block_5397:
    jr r31
block_5392:
    jr r31
check_all_inside.4238:
block_849:
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_851
block_850:
    sll r3 r3 2
    lw r3 r3 25048
    lw r4 r3 20
    lwcZ f3 r4 0
    fsub f3 f0 f3
    lw r4 r3 20
    lwcZ f4 r4 4
    fsub f4 f1 f4
    lw r4 r3 20
    lwcZ f5 r4 8
    fsub f5 f2 f5
    lw r4 r3 4
    addi r5 r0 1
    beq r4 r5 block_853
block_852:
    addi r5 r0 2
    beq r4 r5 block_856
block_855:
    fmul f6 f3 f3
    lw r4 r3 16
    lwcZ f7 r4 0
    fmul f6 f6 f7
    fmul f7 f4 f4
    lw r4 r3 16
    lwcZ f8 r4 4
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f7 f5 f5
    lw r4 r3 16
    lwcZ f8 r4 8
    fmul f7 f7 f8
    fadd f6 f6 f7
    lw r4 r3 12
    beq r4 r0 block_858
block_857:
    fmul f7 f4 f5
    lw r4 r3 36
    lwcZ f8 r4 0
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f5 f5 f3
    lw r4 r3 36
    lwcZ f7 r4 4
    fmul f5 f5 f7
    fadd f5 f6 f5
    fmul f3 f3 f4
    lw r4 r3 36
    lwcZ f4 r4 8
    fmul f3 f3 f4
    fadd f3 f5 f3
    j block_859
block_858:
    fmv f3 f6
    j block_859
block_859:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_861
block_860:
    j block_862
block_861:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_862
block_862:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_864
block_863:
    mv r4 r0
    j block_865
block_864:
    addi r4 r0 1
    j block_865
block_865:
    bne r3 r0 block_867
    j block_866
block_866:
    mv r3 r4
    j block_868
block_867:
    bne r4 r0 block_870
    j block_869
block_869:
    addi r3 r0 1
    j block_868
block_870:
    mv r3 r0
    j block_868
block_868:
    bne r3 r0 block_872
    j block_871
block_871:
    addi r3 r0 1
    j block_854
block_872:
    mv r3 r0
    j block_854
block_856:
    lw r4 r3 16
    lwcZ f6 r4 0
    fmul f3 f6 f3
    lwcZ f6 r4 4
    fmul f4 f6 f4
    fadd f3 f3 f4
    lwcZ f4 r4 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_874
block_873:
    mv r4 r0
    j block_875
block_874:
    addi r4 r0 1
    j block_875
block_875:
    bne r3 r0 block_877
    j block_876
block_876:
    mv r3 r4
    j block_878
block_877:
    bne r4 r0 block_880
    j block_879
block_879:
    addi r3 r0 1
    j block_878
block_880:
    mv r3 r0
    j block_878
block_878:
    bne r3 r0 block_882
    j block_881
block_881:
    addi r3 r0 1
    j block_854
block_882:
    mv r3 r0
    j block_854
block_853:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_884
block_883:
    j block_885
block_884:
    fneg f3 f3
    j block_885
block_885:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_887
block_886:
    mv r4 r0
    j block_888
block_887:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_890
block_889:
    fmv f3 f4
    j block_891
block_890:
    fneg f3 f4
    j block_891
block_891:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_893
block_892:
    mv r4 r0
    j block_888
block_893:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_895
block_894:
    fmv f3 f5
    j block_896
block_895:
    fneg f3 f5
    j block_896
block_896:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_898
block_897:
    mv r4 r0
    j block_888
block_898:
    addi r4 r0 1
    j block_888
block_888:
    bne r4 r0 block_900
    j block_899
block_899:
    lw r3 r3 24
    bne r3 r0 block_902
    j block_901
block_901:
    addi r3 r0 1
    j block_854
block_902:
    mv r3 r0
    j block_854
block_900:
    lw r3 r3 24
    j block_854
block_854:
    bne r3 r0 block_904
    j block_903
block_903:
    addi r1 r1 1
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_906
block_905:
    sll r3 r3 2
    lw r3 r3 25048
    lw r4 r3 20
    lwcZ f3 r4 0
    fsub f3 f0 f3
    lw r4 r3 20
    lwcZ f4 r4 4
    fsub f4 f1 f4
    lw r4 r3 20
    lwcZ f5 r4 8
    fsub f5 f2 f5
    lw r4 r3 4
    addi r5 r0 1
    beq r4 r5 block_908
block_907:
    addi r5 r0 2
    beq r4 r5 block_911
block_910:
    fmul f6 f3 f3
    lw r4 r3 16
    lwcZ f7 r4 0
    fmul f6 f6 f7
    fmul f7 f4 f4
    lw r4 r3 16
    lwcZ f8 r4 4
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f7 f5 f5
    lw r4 r3 16
    lwcZ f8 r4 8
    fmul f7 f7 f8
    fadd f6 f6 f7
    lw r4 r3 12
    beq r4 r0 block_913
block_912:
    fmul f7 f4 f5
    lw r4 r3 36
    lwcZ f8 r4 0
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f5 f5 f3
    lw r4 r3 36
    lwcZ f7 r4 4
    fmul f5 f5 f7
    fadd f5 f6 f5
    fmul f3 f3 f4
    lw r4 r3 36
    lwcZ f4 r4 8
    fmul f3 f3 f4
    fadd f3 f5 f3
    j block_914
block_913:
    fmv f3 f6
    j block_914
block_914:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_916
block_915:
    j block_917
block_916:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_917
block_917:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_919
block_918:
    mv r4 r0
    j block_920
block_919:
    addi r4 r0 1
    j block_920
block_920:
    bne r3 r0 block_922
    j block_921
block_921:
    mv r3 r4
    j block_923
block_922:
    bne r4 r0 block_925
    j block_924
block_924:
    addi r3 r0 1
    j block_923
block_925:
    mv r3 r0
    j block_923
block_923:
    bne r3 r0 block_927
    j block_926
block_926:
    addi r3 r0 1
    j block_909
block_927:
    mv r3 r0
    j block_909
block_911:
    lw r4 r3 16
    lwcZ f6 r4 0
    fmul f3 f6 f3
    lwcZ f6 r4 4
    fmul f4 f6 f4
    fadd f3 f3 f4
    lwcZ f4 r4 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_929
block_928:
    mv r4 r0
    j block_930
block_929:
    addi r4 r0 1
    j block_930
block_930:
    bne r3 r0 block_932
    j block_931
block_931:
    mv r3 r4
    j block_933
block_932:
    bne r4 r0 block_935
    j block_934
block_934:
    addi r3 r0 1
    j block_933
block_935:
    mv r3 r0
    j block_933
block_933:
    bne r3 r0 block_937
    j block_936
block_936:
    addi r3 r0 1
    j block_909
block_937:
    mv r3 r0
    j block_909
block_908:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_939
block_938:
    j block_940
block_939:
    fneg f3 f3
    j block_940
block_940:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_942
block_941:
    mv r4 r0
    j block_943
block_942:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_945
block_944:
    fmv f3 f4
    j block_946
block_945:
    fneg f3 f4
    j block_946
block_946:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_948
block_947:
    mv r4 r0
    j block_943
block_948:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_950
block_949:
    fmv f3 f5
    j block_951
block_950:
    fneg f3 f5
    j block_951
block_951:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_953
block_952:
    mv r4 r0
    j block_943
block_953:
    addi r4 r0 1
    j block_943
block_943:
    bne r4 r0 block_955
    j block_954
block_954:
    lw r3 r3 24
    bne r3 r0 block_957
    j block_956
block_956:
    addi r3 r0 1
    j block_909
block_957:
    mv r3 r0
    j block_909
block_955:
    lw r3 r3 24
    j block_909
block_909:
    bne r3 r0 block_959
    j block_958
block_958:
    addi r1 r1 1
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_961
block_960:
    sll r3 r3 2
    lw r3 r3 25048
    lw r4 r3 20
    lwcZ f3 r4 0
    fsub f3 f0 f3
    lw r4 r3 20
    lwcZ f4 r4 4
    fsub f4 f1 f4
    lw r4 r3 20
    lwcZ f5 r4 8
    fsub f5 f2 f5
    lw r4 r3 4
    addi r5 r0 1
    beq r4 r5 block_963
block_962:
    addi r5 r0 2
    beq r4 r5 block_966
block_965:
    fmul f6 f3 f3
    lw r4 r3 16
    lwcZ f7 r4 0
    fmul f6 f6 f7
    fmul f7 f4 f4
    lw r4 r3 16
    lwcZ f8 r4 4
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f7 f5 f5
    lw r4 r3 16
    lwcZ f8 r4 8
    fmul f7 f7 f8
    fadd f6 f6 f7
    lw r4 r3 12
    beq r4 r0 block_968
block_967:
    fmul f7 f4 f5
    lw r4 r3 36
    lwcZ f8 r4 0
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f5 f5 f3
    lw r4 r3 36
    lwcZ f7 r4 4
    fmul f5 f5 f7
    fadd f5 f6 f5
    fmul f3 f3 f4
    lw r4 r3 36
    lwcZ f4 r4 8
    fmul f3 f3 f4
    fadd f3 f5 f3
    j block_969
block_968:
    fmv f3 f6
    j block_969
block_969:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_971
block_970:
    j block_972
block_971:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_972
block_972:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_974
block_973:
    mv r4 r0
    j block_975
block_974:
    addi r4 r0 1
    j block_975
block_975:
    bne r3 r0 block_977
    j block_976
block_976:
    mv r3 r4
    j block_978
block_977:
    bne r4 r0 block_980
    j block_979
block_979:
    addi r3 r0 1
    j block_978
block_980:
    mv r3 r0
    j block_978
block_978:
    bne r3 r0 block_982
    j block_981
block_981:
    addi r3 r0 1
    j block_964
block_982:
    mv r3 r0
    j block_964
block_966:
    lw r4 r3 16
    lwcZ f6 r4 0
    fmul f3 f6 f3
    lwcZ f6 r4 4
    fmul f4 f6 f4
    fadd f3 f3 f4
    lwcZ f4 r4 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_984
block_983:
    mv r4 r0
    j block_985
block_984:
    addi r4 r0 1
    j block_985
block_985:
    bne r3 r0 block_987
    j block_986
block_986:
    mv r3 r4
    j block_988
block_987:
    bne r4 r0 block_990
    j block_989
block_989:
    addi r3 r0 1
    j block_988
block_990:
    mv r3 r0
    j block_988
block_988:
    bne r3 r0 block_992
    j block_991
block_991:
    addi r3 r0 1
    j block_964
block_992:
    mv r3 r0
    j block_964
block_963:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_994
block_993:
    j block_995
block_994:
    fneg f3 f3
    j block_995
block_995:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_997
block_996:
    mv r4 r0
    j block_998
block_997:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_1000
block_999:
    fmv f3 f4
    j block_1001
block_1000:
    fneg f3 f4
    j block_1001
block_1001:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_1003
block_1002:
    mv r4 r0
    j block_998
block_1003:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_1005
block_1004:
    fmv f3 f5
    j block_1006
block_1005:
    fneg f3 f5
    j block_1006
block_1006:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_1008
block_1007:
    mv r4 r0
    j block_998
block_1008:
    addi r4 r0 1
    j block_998
block_998:
    bne r4 r0 block_1010
    j block_1009
block_1009:
    lw r3 r3 24
    bne r3 r0 block_1012
    j block_1011
block_1011:
    addi r3 r0 1
    j block_964
block_1012:
    mv r3 r0
    j block_964
block_1010:
    lw r3 r3 24
    j block_964
block_964:
    bne r3 r0 block_1014
    j block_1013
block_1013:
    addi r1 r1 1
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_1016
block_1015:
    sll r3 r3 2
    lw r3 r3 25048
    lw r4 r3 20
    lwcZ f3 r4 0
    fsub f3 f0 f3
    lw r4 r3 20
    lwcZ f4 r4 4
    fsub f4 f1 f4
    lw r4 r3 20
    lwcZ f5 r4 8
    fsub f5 f2 f5
    lw r4 r3 4
    addi r5 r0 1
    beq r4 r5 block_1018
block_1017:
    addi r5 r0 2
    beq r4 r5 block_1021
block_1020:
    fmul f6 f3 f3
    lw r4 r3 16
    lwcZ f7 r4 0
    fmul f6 f6 f7
    fmul f7 f4 f4
    lw r4 r3 16
    lwcZ f8 r4 4
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f7 f5 f5
    lw r4 r3 16
    lwcZ f8 r4 8
    fmul f7 f7 f8
    fadd f6 f6 f7
    lw r4 r3 12
    beq r4 r0 block_1023
block_1022:
    fmul f7 f4 f5
    lw r4 r3 36
    lwcZ f8 r4 0
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f5 f5 f3
    lw r4 r3 36
    lwcZ f7 r4 4
    fmul f5 f5 f7
    fadd f5 f6 f5
    fmul f3 f3 f4
    lw r4 r3 36
    lwcZ f4 r4 8
    fmul f3 f3 f4
    fadd f3 f5 f3
    j block_1024
block_1023:
    fmv f3 f6
    j block_1024
block_1024:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_1026
block_1025:
    j block_1027
block_1026:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_1027
block_1027:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1029
block_1028:
    mv r4 r0
    j block_1030
block_1029:
    addi r4 r0 1
    j block_1030
block_1030:
    bne r3 r0 block_1032
    j block_1031
block_1031:
    mv r3 r4
    j block_1033
block_1032:
    bne r4 r0 block_1035
    j block_1034
block_1034:
    addi r3 r0 1
    j block_1033
block_1035:
    mv r3 r0
    j block_1033
block_1033:
    bne r3 r0 block_1037
    j block_1036
block_1036:
    addi r3 r0 1
    j block_1019
block_1037:
    mv r3 r0
    j block_1019
block_1021:
    lw r4 r3 16
    lwcZ f6 r4 0
    fmul f3 f6 f3
    lwcZ f6 r4 4
    fmul f4 f6 f4
    fadd f3 f3 f4
    lwcZ f4 r4 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1039
block_1038:
    mv r4 r0
    j block_1040
block_1039:
    addi r4 r0 1
    j block_1040
block_1040:
    bne r3 r0 block_1042
    j block_1041
block_1041:
    mv r3 r4
    j block_1043
block_1042:
    bne r4 r0 block_1045
    j block_1044
block_1044:
    addi r3 r0 1
    j block_1043
block_1045:
    mv r3 r0
    j block_1043
block_1043:
    bne r3 r0 block_1047
    j block_1046
block_1046:
    addi r3 r0 1
    j block_1019
block_1047:
    mv r3 r0
    j block_1019
block_1018:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_1049
block_1048:
    j block_1050
block_1049:
    fneg f3 f3
    j block_1050
block_1050:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_1052
block_1051:
    mv r4 r0
    j block_1053
block_1052:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_1055
block_1054:
    fmv f3 f4
    j block_1056
block_1055:
    fneg f3 f4
    j block_1056
block_1056:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_1058
block_1057:
    mv r4 r0
    j block_1053
block_1058:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_1060
block_1059:
    fmv f3 f5
    j block_1061
block_1060:
    fneg f3 f5
    j block_1061
block_1061:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_1063
block_1062:
    mv r4 r0
    j block_1053
block_1063:
    addi r4 r0 1
    j block_1053
block_1053:
    bne r4 r0 block_1065
    j block_1064
block_1064:
    lw r3 r3 24
    bne r3 r0 block_1067
    j block_1066
block_1066:
    addi r3 r0 1
    j block_1019
block_1067:
    mv r3 r0
    j block_1019
block_1065:
    lw r3 r3 24
    j block_1019
block_1019:
    bne r3 r0 block_1069
    j block_1068
block_1068:
    addi r1 r1 1
    sw r31 r29 0
    addi r29 r29 4
    jal check_all_inside.4238
    subi r29 r29 4
    lw r31 r29 0
    jr r31
block_1069:
    mv r1 r0
    jr r31
block_1016:
    addi r1 r0 1
    jr r31
block_1014:
    mv r1 r0
    jr r31
block_961:
    addi r1 r0 1
    jr r31
block_959:
    mv r1 r0
    jr r31
block_906:
    addi r1 r0 1
    jr r31
block_904:
    mv r1 r0
    jr r31
block_851:
    addi r1 r0 1
    jr r31
create_dirvec_elements.5492:
block_5418:
    blt r2 r0 block_5420
block_5419:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 25000
    beq r0 r4 arrayexit.87535
    sll r28 r4  2
arrayloop.87534:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87534
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.87535:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sll r4 r2 2
    swab r3 r1 r4
    subi r2 r2 1
    blt r2 r0 block_5422
block_5421:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 25000
    beq r0 r4 arrayexit.87537
    sll r28 r4  2
arrayloop.87536:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87536
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.87537:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sll r4 r2 2
    swab r3 r1 r4
    subi r2 r2 1
    blt r2 r0 block_5424
block_5423:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 25000
    beq r0 r4 arrayexit.87539
    sll r28 r4  2
arrayloop.87538:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87538
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.87539:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sll r4 r2 2
    swab r3 r1 r4
    subi r2 r2 1
    blt r2 r0 block_5426
block_5425:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 25000
    beq r0 r4 arrayexit.87541
    sll r28 r4  2
arrayloop.87540:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87540
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.87541:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sll r4 r2 2
    swab r3 r1 r4
    subi r2 r2 1
    sw r31 r29 0
    addi r29 r29 4
    jal create_dirvec_elements.5492
    subi r29 r29 4
    lw r31 r29 0
    jr r31
block_5426:
    jr r31
block_5424:
    jr r31
block_5422:
    jr r31
block_5420:
    jr r31
create_dirvecs.5501:
block_5427:
    blt r1 r0 block_5429
block_5428:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r2 r30
    addi r30 r30 12
    lw r3 r0 25000
    beq r0 r3 arrayexit.87543
    sll r28 r3  2
arrayloop.87542:
    subi r28 r28 4
    swab r2 r30 r28
    bne r0 r28 arrayloop.87542
    sll r28 r3  2
    mv r3 r30
    add r30 r30 r28
arrayexit.87543:
    mv r4 r30
    addi r30 r30 8
    sw r3 r4 4
    sw r2 r4 0
    mv r2 r4
    sw r2 r30 0
    sw r2 r30 4
    sw r2 r30 8
    sw r2 r30 12
    sw r2 r30 16
    sw r2 r30 20
    sw r2 r30 24
    sw r2 r30 28
    sw r2 r30 32
    sw r2 r30 36
    sw r2 r30 40
    sw r2 r30 44
    sw r2 r30 48
    sw r2 r30 52
    sw r2 r30 56
    sw r2 r30 60
    sw r2 r30 64
    sw r2 r30 68
    sw r2 r30 72
    sw r2 r30 76
    sw r2 r30 80
    sw r2 r30 84
    sw r2 r30 88
    sw r2 r30 92
    sw r2 r30 96
    sw r2 r30 100
    sw r2 r30 104
    sw r2 r30 108
    sw r2 r30 112
    sw r2 r30 116
    sw r2 r30 120
    sw r2 r30 124
    sw r2 r30 128
    sw r2 r30 132
    sw r2 r30 136
    sw r2 r30 140
    sw r2 r30 144
    sw r2 r30 148
    sw r2 r30 152
    sw r2 r30 156
    sw r2 r30 160
    sw r2 r30 164
    sw r2 r30 168
    sw r2 r30 172
    sw r2 r30 176
    sw r2 r30 180
    sw r2 r30 184
    sw r2 r30 188
    sw r2 r30 192
    sw r2 r30 196
    sw r2 r30 200
    sw r2 r30 204
    sw r2 r30 208
    sw r2 r30 212
    sw r2 r30 216
    sw r2 r30 220
    sw r2 r30 224
    sw r2 r30 228
    sw r2 r30 232
    sw r2 r30 236
    sw r2 r30 240
    sw r2 r30 244
    sw r2 r30 248
    sw r2 r30 252
    sw r2 r30 256
    sw r2 r30 260
    sw r2 r30 264
    sw r2 r30 268
    sw r2 r30 272
    sw r2 r30 276
    sw r2 r30 280
    sw r2 r30 284
    sw r2 r30 288
    sw r2 r30 292
    sw r2 r30 296
    sw r2 r30 300
    sw r2 r30 304
    sw r2 r30 308
    sw r2 r30 312
    sw r2 r30 316
    sw r2 r30 320
    sw r2 r30 324
    sw r2 r30 328
    sw r2 r30 332
    sw r2 r30 336
    sw r2 r30 340
    sw r2 r30 344
    sw r2 r30 348
    sw r2 r30 352
    sw r2 r30 356
    sw r2 r30 360
    sw r2 r30 364
    sw r2 r30 368
    sw r2 r30 372
    sw r2 r30 376
    sw r2 r30 380
    sw r2 r30 384
    sw r2 r30 388
    sw r2 r30 392
    sw r2 r30 396
    sw r2 r30 400
    sw r2 r30 404
    sw r2 r30 408
    sw r2 r30 412
    sw r2 r30 416
    sw r2 r30 420
    sw r2 r30 424
    sw r2 r30 428
    sw r2 r30 432
    sw r2 r30 436
    sw r2 r30 440
    sw r2 r30 444
    sw r2 r30 448
    sw r2 r30 452
    sw r2 r30 456
    sw r2 r30 460
    sw r2 r30 464
    sw r2 r30 468
    sw r2 r30 472
    sw r2 r30 476
    mv r2 r30
    addi r30 r30 480
    sll r3 r1 2
    sw r2 r3 25716
    sll r2 r1 2
    lw r2 r2 25716
    addi r3 r0 118
    sw r1 r29 4
    blt r3 r0 block_5431
block_5430:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 25000
    beq r0 r4 arrayexit.87545
    sll r28 r4  2
arrayloop.87544:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87544
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.87545:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sw r3 r2 472
    addi r3 r0 117
    sw r1 r29 4
    blt r3 r0 block_5434
block_5433:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 25000
    beq r0 r4 arrayexit.87547
    sll r28 r4  2
arrayloop.87546:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87546
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.87547:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sw r3 r2 468
    addi r3 r0 116
    sw r1 r29 4
    blt r3 r0 block_5436
block_5435:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 25000
    beq r0 r4 arrayexit.87549
    sll r28 r4  2
arrayloop.87548:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87548
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.87549:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sw r3 r2 464
    addi r3 r0 115
    sw r1 r29 4
    mv r1 r2
    mv r2 r3
    sw r31 r29 8
    addi r29 r29 12
    jal create_dirvec_elements.5492
    subi r29 r29 12
    lw r31 r29 8
    j block_5432
block_5436:
    j block_5432
block_5434:
    j block_5432
block_5431:
    j block_5432
block_5432:
    lw r1 r29 4
    subi r1 r1 1
    blt r1 r0 block_5438
block_5437:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r2 r30
    addi r30 r30 12
    lw r3 r0 25000
    beq r0 r3 arrayexit.87551
    sll r28 r3  2
arrayloop.87550:
    subi r28 r28 4
    swab r2 r30 r28
    bne r0 r28 arrayloop.87550
    sll r28 r3  2
    mv r3 r30
    add r30 r30 r28
arrayexit.87551:
    mv r4 r30
    addi r30 r30 8
    sw r3 r4 4
    sw r2 r4 0
    mv r2 r4
    sw r2 r30 0
    sw r2 r30 4
    sw r2 r30 8
    sw r2 r30 12
    sw r2 r30 16
    sw r2 r30 20
    sw r2 r30 24
    sw r2 r30 28
    sw r2 r30 32
    sw r2 r30 36
    sw r2 r30 40
    sw r2 r30 44
    sw r2 r30 48
    sw r2 r30 52
    sw r2 r30 56
    sw r2 r30 60
    sw r2 r30 64
    sw r2 r30 68
    sw r2 r30 72
    sw r2 r30 76
    sw r2 r30 80
    sw r2 r30 84
    sw r2 r30 88
    sw r2 r30 92
    sw r2 r30 96
    sw r2 r30 100
    sw r2 r30 104
    sw r2 r30 108
    sw r2 r30 112
    sw r2 r30 116
    sw r2 r30 120
    sw r2 r30 124
    sw r2 r30 128
    sw r2 r30 132
    sw r2 r30 136
    sw r2 r30 140
    sw r2 r30 144
    sw r2 r30 148
    sw r2 r30 152
    sw r2 r30 156
    sw r2 r30 160
    sw r2 r30 164
    sw r2 r30 168
    sw r2 r30 172
    sw r2 r30 176
    sw r2 r30 180
    sw r2 r30 184
    sw r2 r30 188
    sw r2 r30 192
    sw r2 r30 196
    sw r2 r30 200
    sw r2 r30 204
    sw r2 r30 208
    sw r2 r30 212
    sw r2 r30 216
    sw r2 r30 220
    sw r2 r30 224
    sw r2 r30 228
    sw r2 r30 232
    sw r2 r30 236
    sw r2 r30 240
    sw r2 r30 244
    sw r2 r30 248
    sw r2 r30 252
    sw r2 r30 256
    sw r2 r30 260
    sw r2 r30 264
    sw r2 r30 268
    sw r2 r30 272
    sw r2 r30 276
    sw r2 r30 280
    sw r2 r30 284
    sw r2 r30 288
    sw r2 r30 292
    sw r2 r30 296
    sw r2 r30 300
    sw r2 r30 304
    sw r2 r30 308
    sw r2 r30 312
    sw r2 r30 316
    sw r2 r30 320
    sw r2 r30 324
    sw r2 r30 328
    sw r2 r30 332
    sw r2 r30 336
    sw r2 r30 340
    sw r2 r30 344
    sw r2 r30 348
    sw r2 r30 352
    sw r2 r30 356
    sw r2 r30 360
    sw r2 r30 364
    sw r2 r30 368
    sw r2 r30 372
    sw r2 r30 376
    sw r2 r30 380
    sw r2 r30 384
    sw r2 r30 388
    sw r2 r30 392
    sw r2 r30 396
    sw r2 r30 400
    sw r2 r30 404
    sw r2 r30 408
    sw r2 r30 412
    sw r2 r30 416
    sw r2 r30 420
    sw r2 r30 424
    sw r2 r30 428
    sw r2 r30 432
    sw r2 r30 436
    sw r2 r30 440
    sw r2 r30 444
    sw r2 r30 448
    sw r2 r30 452
    sw r2 r30 456
    sw r2 r30 460
    sw r2 r30 464
    sw r2 r30 468
    sw r2 r30 472
    sw r2 r30 476
    mv r2 r30
    addi r30 r30 480
    sll r3 r1 2
    sw r2 r3 25716
    sll r2 r1 2
    lw r2 r2 25716
    addi r3 r0 118
    sw r1 r29 0
    blt r3 r0 block_5440
block_5439:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 25000
    beq r0 r4 arrayexit.87553
    sll r28 r4  2
arrayloop.87552:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87552
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.87553:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sw r3 r2 472
    addi r3 r0 117
    sw r1 r29 0
    blt r3 r0 block_5443
block_5442:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 25000
    beq r0 r4 arrayexit.87555
    sll r28 r4  2
arrayloop.87554:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87554
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.87555:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sw r3 r2 468
    addi r3 r0 116
    sw r1 r29 0
    mv r1 r2
    mv r2 r3
    sw r31 r29 8
    addi r29 r29 12
    jal create_dirvec_elements.5492
    subi r29 r29 12
    lw r31 r29 8
    j block_5441
block_5443:
    j block_5441
block_5440:
    j block_5441
block_5441:
    lw r1 r29 0
    subi r1 r1 1
    sw r31 r29 8
    addi r29 r29 12
    jal create_dirvecs.5501
    subi r29 r29 12
    lw r31 r29 8
    jr r31
block_5438:
    jr r31
block_5429:
    jr r31
do_without_neighbors.5035:
block_4972:
    addi r3 r0 4
    blt r3 r2 block_4974
block_4973:
    lw r3 r1 8
    sll r4 r2 2
    lwab r3 r3 r4
    blt r3 r0 block_4976
block_4975:
    lw r3 r1 12
    sll r4 r2 2
    lwab r3 r3 r4
    sw r1 r29 60
    sw r2 r29 56
    bne r3 r0 block_4978
    j block_4977
block_4977:
    j block_4979
block_4978:
    lw r3 r1 20
    lw r4 r1 28
    lw r5 r1 4
    lw r6 r1 16
    sll r7 r2 2
    lwab r3 r3 r7
    lwcZ f0 r3 0
    swcZ f0 r0 25592
    lwcZ f0 r3 4
    swcZ f0 r0 25596
    lwcZ f0 r3 8
    swcZ f0 r0 25600
    lw r3 r1 24
    lw r3 r3 0
    sll r7 r2 2
    lwab r4 r4 r7
    sll r7 r2 2
    lwab r5 r5 r7
    sw r1 r29 60
    sw r2 r29 56
    sw r6 r29 52
    sw r3 r29 40
    sw r5 r29 8
    sw r4 r29 0
    beq r3 r0 block_4981
block_4980:
    lw r7 r0 25716
    lwcZ f0 r5 0
    swcZ f0 r0 25648
    lwcZ f0 r5 4
    swcZ f0 r0 25652
    lwcZ f0 r5 8
    swcZ f0 r0 25656
    lw r8 r0 25000
    subi r8 r8 1
    sw r1 r29 60
    sw r2 r29 56
    sw r6 r29 52
    sw r3 r29 40
    sw r7 r29 16
    sw r5 r29 8
    sw r4 r29 0
    mv r2 r8
    mv r1 r5
    sw r31 r29 64
    addi r29 r29 68
    jal setup_startp_constants.4131
    subi r29 r29 68
    lw r31 r29 64
    addi r4 r0 118
    lw r1 r29 16
    lw r2 r29 0
    lw r3 r29 8
    sw r3 r29 8
    sw r2 r29 0
    sw r31 r29 64
    addi r29 r29 68
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 68
    lw r31 r29 64
    j block_4982
block_4981:
    j block_4982
block_4982:
    addi r1 r0 1
    lw r2 r29 40
    sw r2 r29 40
    beq r2 r1 block_4984
block_4983:
    lw r1 r0 25720
    lw r3 r29 8
    lwcZ f0 r3 0
    swcZ f0 r0 25648
    lwcZ f0 r3 4
    swcZ f0 r0 25652
    lwcZ f0 r3 8
    swcZ f0 r0 25656
    lw r4 r0 25000
    subi r4 r4 1
    sw r2 r29 40
    sw r1 r29 20
    sw r3 r29 8
    mv r2 r4
    mv r1 r3
    sw r31 r29 64
    addi r29 r29 68
    jal setup_startp_constants.4131
    subi r29 r29 68
    lw r31 r29 64
    addi r4 r0 118
    lw r1 r29 20
    lw r2 r29 0
    lw r3 r29 8
    sw r3 r29 8
    sw r2 r29 0
    sw r31 r29 64
    addi r29 r29 68
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 68
    lw r31 r29 64
    j block_4985
block_4984:
    j block_4985
block_4985:
    addi r1 r0 2
    lw r2 r29 40
    sw r2 r29 40
    beq r2 r1 block_4987
block_4986:
    lw r1 r0 25724
    lw r3 r29 8
    lwcZ f0 r3 0
    swcZ f0 r0 25648
    lwcZ f0 r3 4
    swcZ f0 r0 25652
    lwcZ f0 r3 8
    swcZ f0 r0 25656
    lw r4 r0 25000
    subi r4 r4 1
    sw r2 r29 40
    sw r1 r29 24
    sw r3 r29 8
    mv r2 r4
    mv r1 r3
    sw r31 r29 64
    addi r29 r29 68
    jal setup_startp_constants.4131
    subi r29 r29 68
    lw r31 r29 64
    addi r4 r0 118
    lw r1 r29 24
    lw r2 r29 0
    lw r3 r29 8
    sw r3 r29 8
    sw r2 r29 0
    sw r31 r29 64
    addi r29 r29 68
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 68
    lw r31 r29 64
    j block_4988
block_4987:
    j block_4988
block_4988:
    addi r1 r0 3
    lw r2 r29 40
    sw r2 r29 40
    beq r2 r1 block_4990
block_4989:
    lw r1 r0 25728
    lw r3 r29 8
    lwcZ f0 r3 0
    swcZ f0 r0 25648
    lwcZ f0 r3 4
    swcZ f0 r0 25652
    lwcZ f0 r3 8
    swcZ f0 r0 25656
    lw r4 r0 25000
    subi r4 r4 1
    sw r2 r29 40
    sw r1 r29 28
    sw r3 r29 8
    mv r2 r4
    mv r1 r3
    sw r31 r29 64
    addi r29 r29 68
    jal setup_startp_constants.4131
    subi r29 r29 68
    lw r31 r29 64
    addi r4 r0 118
    lw r1 r29 28
    lw r2 r29 0
    lw r3 r29 8
    sw r3 r29 8
    sw r2 r29 0
    sw r31 r29 64
    addi r29 r29 68
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 68
    lw r31 r29 64
    j block_4991
block_4990:
    j block_4991
block_4991:
    addi r1 r0 4
    lw r2 r29 40
    beq r2 r1 block_4993
block_4992:
    lw r1 r0 25732
    lw r2 r29 8
    lwcZ f0 r2 0
    swcZ f0 r0 25648
    lwcZ f0 r2 4
    swcZ f0 r0 25652
    lwcZ f0 r2 8
    swcZ f0 r0 25656
    lw r3 r0 25000
    subi r3 r3 1
    sw r1 r29 32
    sw r2 r29 8
    mv r1 r2
    mv r2 r3
    sw r31 r29 64
    addi r29 r29 68
    jal setup_startp_constants.4131
    subi r29 r29 68
    lw r31 r29 64
    addi r4 r0 118
    lw r1 r29 32
    lw r2 r29 0
    lw r3 r29 8
    sw r31 r29 64
    addi r29 r29 68
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 68
    lw r31 r29 64
    j block_4994
block_4993:
    j block_4994
block_4994:
    lw r1 r29 56
    sll r2 r1 2
    lw r3 r29 52
    lwab r2 r3 r2
    lwcZ f0 r0 25604
    lwcZ f1 r2 0
    lwcZ f2 r0 25592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25604
    lwcZ f0 r0 25608
    lwcZ f1 r2 4
    lwcZ f2 r0 25596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25608
    lwcZ f0 r0 25612
    lwcZ f1 r2 8
    lwcZ f2 r0 25600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25612
    j block_4979
block_4979:
    lw r1 r29 56
    addi r1 r1 1
    addi r2 r0 4
    blt r2 r1 block_4996
block_4995:
    lw r2 r29 60
    lw r3 r2 8
    sll r4 r1 2
    lwab r3 r3 r4
    blt r3 r0 block_4998
block_4997:
    lw r3 r2 12
    sll r4 r1 2
    lwab r3 r3 r4
    sw r2 r29 60
    bne r3 r0 block_5000
    j block_4999
block_4999:
    j block_5001
block_5000:
    lw r3 r2 20
    lw r4 r2 28
    lw r5 r2 4
    lw r6 r2 16
    sll r7 r1 2
    lwab r3 r3 r7
    lwcZ f0 r3 0
    swcZ f0 r0 25592
    lwcZ f0 r3 4
    swcZ f0 r0 25596
    lwcZ f0 r3 8
    swcZ f0 r0 25600
    lw r3 r2 24
    lw r3 r3 0
    sll r7 r1 2
    lwab r4 r4 r7
    sll r7 r1 2
    lwab r5 r5 r7
    sw r2 r29 60
    sw r6 r29 48
    sw r3 r29 44
    sw r1 r29 36
    sw r5 r29 12
    sw r4 r29 4
    beq r3 r0 block_5003
block_5002:
    lw r7 r0 25716
    sw r2 r29 60
    sw r6 r29 48
    sw r3 r29 44
    sw r1 r29 36
    sw r5 r29 12
    sw r4 r29 4
    mv r3 r5
    mv r2 r4
    mv r1 r7
    sw r31 r29 64
    addi r29 r29 68
    jal trace_diffuse_rays.4959
    subi r29 r29 68
    lw r31 r29 64
    j block_5004
block_5003:
    j block_5004
block_5004:
    addi r1 r0 1
    lw r2 r29 44
    sw r2 r29 44
    beq r2 r1 block_5006
block_5005:
    lw r1 r0 25720
    lw r3 r29 4
    lw r4 r29 12
    sw r2 r29 44
    sw r4 r29 12
    sw r3 r29 4
    mv r2 r3
    mv r3 r4
    sw r31 r29 64
    addi r29 r29 68
    jal trace_diffuse_rays.4959
    subi r29 r29 68
    lw r31 r29 64
    j block_5007
block_5006:
    j block_5007
block_5007:
    addi r1 r0 2
    lw r2 r29 44
    sw r2 r29 44
    beq r2 r1 block_5009
block_5008:
    lw r1 r0 25724
    lw r3 r29 4
    lw r4 r29 12
    sw r2 r29 44
    sw r4 r29 12
    sw r3 r29 4
    mv r2 r3
    mv r3 r4
    sw r31 r29 64
    addi r29 r29 68
    jal trace_diffuse_rays.4959
    subi r29 r29 68
    lw r31 r29 64
    j block_5010
block_5009:
    j block_5010
block_5010:
    addi r1 r0 3
    lw r2 r29 44
    sw r2 r29 44
    beq r2 r1 block_5012
block_5011:
    lw r1 r0 25728
    lw r3 r29 4
    lw r4 r29 12
    sw r2 r29 44
    sw r4 r29 12
    sw r3 r29 4
    mv r2 r3
    mv r3 r4
    sw r31 r29 64
    addi r29 r29 68
    jal trace_diffuse_rays.4959
    subi r29 r29 68
    lw r31 r29 64
    j block_5013
block_5012:
    j block_5013
block_5013:
    addi r1 r0 4
    lw r2 r29 44
    beq r2 r1 block_5015
block_5014:
    lw r1 r0 25732
    lw r2 r29 4
    lw r3 r29 12
    sw r31 r29 64
    addi r29 r29 68
    jal trace_diffuse_rays.4959
    subi r29 r29 68
    lw r31 r29 64
    j block_5016
block_5015:
    j block_5016
block_5016:
    lw r1 r29 36
    sll r2 r1 2
    lw r3 r29 48
    lwab r2 r3 r2
    lwcZ f0 r0 25604
    lwcZ f1 r2 0
    lwcZ f2 r0 25592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25604
    lwcZ f0 r0 25608
    lwcZ f1 r2 4
    lwcZ f2 r0 25596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25608
    lwcZ f0 r0 25612
    lwcZ f1 r2 8
    lwcZ f2 r0 25600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25612
    j block_5001
block_5001:
    addi r2 r1 1
    lw r1 r29 60
    sw r31 r29 64
    addi r29 r29 68
    jal do_without_neighbors.5035
    subi r29 r29 68
    lw r31 r29 64
    jr r31
block_4998:
    jr r31
block_4996:
    jr r31
block_4976:
    jr r31
block_4974:
    jr r31
init_dirvec_constants.5514:
block_5444:
    blt r2 r0 block_5446
block_5445:
    sll r3 r2 2
    lwab r3 r1 r3
    lw r4 r0 25000
    subi r4 r4 1
    sw r1 r29 16
    sw r2 r29 12
    mv r2 r4
    mv r1 r3
    sw r31 r29 20
    addi r29 r29 24
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 24
    lw r31 r29 20
    lw r1 r29 12
    subi r1 r1 1
    blt r1 r0 block_5448
block_5447:
    sll r2 r1 2
    lw r3 r29 16
    lwab r2 r3 r2
    lw r4 r0 25000
    subi r4 r4 1
    sw r3 r29 16
    sw r1 r29 8
    blt r4 r0 block_5450
block_5449:
    sll r5 r4 2
    lw r5 r5 25048
    lw r6 r2 4
    lw r7 r2 0
    lw r8 r5 4
    addi r9 r0 1
    beq r8 r9 block_5453
block_5452:
    addi r9 r0 2
    beq r8 r9 block_5456
block_5455:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    mv r8 r30
    addi r30 r30 20
    lwcZ f0 r7 0
    lwcZ f1 r7 4
    lwcZ f2 r7 8
    fmul f3 f0 f0
    lw r9 r5 16
    lwcZ f4 r9 0
    fmul f3 f3 f4
    fmul f4 f1 f1
    lw r9 r5 16
    lwcZ f5 r9 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f4 f2 f2
    lw r9 r5 16
    lwcZ f5 r9 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r9 r5 12
    beq r9 r0 block_5458
block_5457:
    fmul f4 f1 f2
    lw r9 r5 36
    lwcZ f5 r9 0
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f0
    lw r9 r5 36
    lwcZ f4 r9 4
    fmul f2 f2 f4
    fadd f2 f3 f2
    fmul f0 f0 f1
    lw r9 r5 36
    lwcZ f1 r9 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_5459
block_5458:
    fmv f0 f3
    j block_5459
block_5459:
    lwcZ f1 r7 0
    lw r9 r5 16
    lwcZ f2 r9 0
    fmul f1 f1 f2
    fneg f1 f1
    lwcZ f2 r7 4
    lw r9 r5 16
    lwcZ f3 r9 4
    fmul f2 f2 f3
    fneg f2 f2
    lwcZ f3 r7 8
    lw r9 r5 16
    lwcZ f4 r9 8
    fmul f3 f3 f4
    fneg f3 f3
    swcZ f0 r8 0
    lw r9 r5 12
    beq r9 r0 block_5461
block_5460:
    lwcZ f4 r7 8
    lw r9 r5 36
    lwcZ f5 r9 4
    fmul f4 f4 f5
    lwcZ f5 r7 4
    lw r9 r5 36
    lwcZ f6 r9 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fsub f1 f1 f4
    swcZ f1 r8 4
    lwcZ f1 r7 8
    lw r9 r5 36
    lwcZ f4 r9 0
    fmul f1 f1 f4
    lwcZ f4 r7 0
    lw r9 r5 36
    lwcZ f5 r9 8
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.5
    flui f4 16128
    fmul f1 f1 f4
    fsub f1 f2 f1
    swcZ f1 r8 8
    lwcZ f1 r7 4
    lw r9 r5 36
    lwcZ f2 r9 0
    fmul f1 f1 f2
    lwcZ f2 r7 0
    lw r5 r5 36
    lwcZ f4 r5 4
    fmul f2 f2 f4
    fadd f1 f1 f2
    #0.5
    flui f2 16128
    fmul f1 f1 f2
    fsub f1 f3 f1
    swcZ f1 r8 12
    j block_5462
block_5461:
    swcZ f1 r8 4
    swcZ f2 r8 8
    swcZ f3 r8 12
    j block_5462
block_5462:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5464
block_5463:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r8 16
    j block_5465
block_5464:
    j block_5465
block_5465:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5454
block_5456:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    mv r8 r30
    addi r30 r30 16
    lwcZ f0 r7 0
    lw r9 r5 16
    lwcZ f1 r9 0
    fmul f0 f0 f1
    lwcZ f1 r7 4
    lw r9 r5 16
    lwcZ f2 r9 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r7 8
    lw r7 r5 16
    lwcZ f2 r7 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5467
block_5466:
    mv r7 r0
    j block_5468
block_5467:
    addi r7 r0 1
    j block_5468
block_5468:
    bne r7 r0 block_5470
    j block_5469
block_5469:
    #0.0
    flui f0 0
    swcZ f0 r8 0
    j block_5471
block_5470:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    swcZ f1 r8 0
    lw r7 r5 16
    lwcZ f1 r7 0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r8 4
    lw r7 r5 16
    lwcZ f1 r7 4
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r8 8
    lw r5 r5 16
    lwcZ f1 r5 8
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    fneg f0 f0
    swcZ f0 r8 12
    j block_5471
block_5471:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5454
block_5453:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    swcZ f0 r30 20
    mv r8 r30
    addi r30 r30 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5473
block_5472:
    lw r9 r5 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5476
block_5475:
    mv r10 r0
    j block_5477
block_5476:
    addi r10 r0 1
    j block_5477
block_5477:
    bne r9 r0 block_5479
    j block_5478
block_5478:
    mv r9 r10
    j block_5480
block_5479:
    bne r10 r0 block_5482
    j block_5481
block_5481:
    addi r9 r0 1
    j block_5480
block_5482:
    mv r9 r0
    j block_5480
block_5480:
    lw r10 r5 16
    lwcZ f0 r10 0
    bne r9 r0 block_5484
    j block_5483
block_5483:
    fneg f0 f0
    j block_5485
block_5484:
    j block_5485
block_5485:
    swcZ f0 r8 0
    #1.0
    flui f0 16256
    lwcZ f1 r7 0
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 4
    j block_5474
block_5473:
    #0.0
    flui f0 0
    swcZ f0 r8 4
    j block_5474
block_5474:
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5487
block_5486:
    lw r9 r5 24
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5490
block_5489:
    mv r10 r0
    j block_5491
block_5490:
    addi r10 r0 1
    j block_5491
block_5491:
    bne r9 r0 block_5493
    j block_5492
block_5492:
    mv r9 r10
    j block_5494
block_5493:
    bne r10 r0 block_5496
    j block_5495
block_5495:
    addi r9 r0 1
    j block_5494
block_5496:
    mv r9 r0
    j block_5494
block_5494:
    lw r10 r5 16
    lwcZ f0 r10 4
    bne r9 r0 block_5498
    j block_5497
block_5497:
    fneg f0 f0
    j block_5499
block_5498:
    j block_5499
block_5499:
    swcZ f0 r8 8
    #1.0
    flui f0 16256
    lwcZ f1 r7 4
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 12
    j block_5488
block_5487:
    #0.0
    flui f0 0
    swcZ f0 r8 12
    j block_5488
block_5488:
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5501
block_5500:
    lw r9 r5 24
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5504
block_5503:
    mv r10 r0
    j block_5505
block_5504:
    addi r10 r0 1
    j block_5505
block_5505:
    bne r9 r0 block_5507
    j block_5506
block_5506:
    mv r9 r10
    j block_5508
block_5507:
    bne r10 r0 block_5510
    j block_5509
block_5509:
    addi r9 r0 1
    j block_5508
block_5510:
    mv r9 r0
    j block_5508
block_5508:
    lw r5 r5 16
    lwcZ f0 r5 8
    bne r9 r0 block_5512
    j block_5511
block_5511:
    fneg f0 f0
    j block_5513
block_5512:
    j block_5513
block_5513:
    swcZ f0 r8 16
    #1.0
    flui f0 16256
    lwcZ f1 r7 8
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 20
    j block_5502
block_5501:
    #0.0
    flui f0 0
    swcZ f0 r8 20
    j block_5502
block_5502:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5454
block_5454:
    subi r4 r4 1
    sw r3 r29 16
    sw r1 r29 8
    mv r1 r2
    mv r2 r4
    sw r31 r29 20
    addi r29 r29 24
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 24
    lw r31 r29 20
    j block_5451
block_5450:
    j block_5451
block_5451:
    lw r1 r29 8
    subi r1 r1 1
    blt r1 r0 block_5515
block_5514:
    sll r2 r1 2
    lw r3 r29 16
    lwab r2 r3 r2
    lw r4 r0 25000
    subi r4 r4 1
    sw r3 r29 16
    sw r1 r29 0
    mv r1 r2
    mv r2 r4
    sw r31 r29 20
    addi r29 r29 24
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 24
    lw r31 r29 20
    lw r1 r29 0
    subi r1 r1 1
    blt r1 r0 block_5517
block_5516:
    sll r2 r1 2
    lw r3 r29 16
    lwab r2 r3 r2
    lw r4 r0 25000
    subi r4 r4 1
    sw r3 r29 16
    sw r1 r29 4
    blt r4 r0 block_5519
block_5518:
    sll r5 r4 2
    lw r5 r5 25048
    lw r6 r2 4
    lw r7 r2 0
    lw r8 r5 4
    addi r9 r0 1
    beq r8 r9 block_5522
block_5521:
    addi r9 r0 2
    beq r8 r9 block_5525
block_5524:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    mv r8 r30
    addi r30 r30 20
    lwcZ f0 r7 0
    lwcZ f1 r7 4
    lwcZ f2 r7 8
    fmul f3 f0 f0
    lw r9 r5 16
    lwcZ f4 r9 0
    fmul f3 f3 f4
    fmul f4 f1 f1
    lw r9 r5 16
    lwcZ f5 r9 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f4 f2 f2
    lw r9 r5 16
    lwcZ f5 r9 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r9 r5 12
    beq r9 r0 block_5527
block_5526:
    fmul f4 f1 f2
    lw r9 r5 36
    lwcZ f5 r9 0
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f0
    lw r9 r5 36
    lwcZ f4 r9 4
    fmul f2 f2 f4
    fadd f2 f3 f2
    fmul f0 f0 f1
    lw r9 r5 36
    lwcZ f1 r9 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_5528
block_5527:
    fmv f0 f3
    j block_5528
block_5528:
    lwcZ f1 r7 0
    lw r9 r5 16
    lwcZ f2 r9 0
    fmul f1 f1 f2
    fneg f1 f1
    lwcZ f2 r7 4
    lw r9 r5 16
    lwcZ f3 r9 4
    fmul f2 f2 f3
    fneg f2 f2
    lwcZ f3 r7 8
    lw r9 r5 16
    lwcZ f4 r9 8
    fmul f3 f3 f4
    fneg f3 f3
    swcZ f0 r8 0
    lw r9 r5 12
    beq r9 r0 block_5530
block_5529:
    lwcZ f4 r7 8
    lw r9 r5 36
    lwcZ f5 r9 4
    fmul f4 f4 f5
    lwcZ f5 r7 4
    lw r9 r5 36
    lwcZ f6 r9 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fsub f1 f1 f4
    swcZ f1 r8 4
    lwcZ f1 r7 8
    lw r9 r5 36
    lwcZ f4 r9 0
    fmul f1 f1 f4
    lwcZ f4 r7 0
    lw r9 r5 36
    lwcZ f5 r9 8
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.5
    flui f4 16128
    fmul f1 f1 f4
    fsub f1 f2 f1
    swcZ f1 r8 8
    lwcZ f1 r7 4
    lw r9 r5 36
    lwcZ f2 r9 0
    fmul f1 f1 f2
    lwcZ f2 r7 0
    lw r5 r5 36
    lwcZ f4 r5 4
    fmul f2 f2 f4
    fadd f1 f1 f2
    #0.5
    flui f2 16128
    fmul f1 f1 f2
    fsub f1 f3 f1
    swcZ f1 r8 12
    j block_5531
block_5530:
    swcZ f1 r8 4
    swcZ f2 r8 8
    swcZ f3 r8 12
    j block_5531
block_5531:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5533
block_5532:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r8 16
    j block_5534
block_5533:
    j block_5534
block_5534:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5523
block_5525:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    mv r8 r30
    addi r30 r30 16
    lwcZ f0 r7 0
    lw r9 r5 16
    lwcZ f1 r9 0
    fmul f0 f0 f1
    lwcZ f1 r7 4
    lw r9 r5 16
    lwcZ f2 r9 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r7 8
    lw r7 r5 16
    lwcZ f2 r7 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5536
block_5535:
    mv r7 r0
    j block_5537
block_5536:
    addi r7 r0 1
    j block_5537
block_5537:
    bne r7 r0 block_5539
    j block_5538
block_5538:
    #0.0
    flui f0 0
    swcZ f0 r8 0
    j block_5540
block_5539:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    swcZ f1 r8 0
    lw r7 r5 16
    lwcZ f1 r7 0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r8 4
    lw r7 r5 16
    lwcZ f1 r7 4
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r8 8
    lw r5 r5 16
    lwcZ f1 r5 8
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    fneg f0 f0
    swcZ f0 r8 12
    j block_5540
block_5540:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5523
block_5522:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    swcZ f0 r30 20
    mv r8 r30
    addi r30 r30 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5542
block_5541:
    lw r9 r5 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5545
block_5544:
    mv r10 r0
    j block_5546
block_5545:
    addi r10 r0 1
    j block_5546
block_5546:
    bne r9 r0 block_5548
    j block_5547
block_5547:
    mv r9 r10
    j block_5549
block_5548:
    bne r10 r0 block_5551
    j block_5550
block_5550:
    addi r9 r0 1
    j block_5549
block_5551:
    mv r9 r0
    j block_5549
block_5549:
    lw r10 r5 16
    lwcZ f0 r10 0
    bne r9 r0 block_5553
    j block_5552
block_5552:
    fneg f0 f0
    j block_5554
block_5553:
    j block_5554
block_5554:
    swcZ f0 r8 0
    #1.0
    flui f0 16256
    lwcZ f1 r7 0
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 4
    j block_5543
block_5542:
    #0.0
    flui f0 0
    swcZ f0 r8 4
    j block_5543
block_5543:
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5556
block_5555:
    lw r9 r5 24
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5559
block_5558:
    mv r10 r0
    j block_5560
block_5559:
    addi r10 r0 1
    j block_5560
block_5560:
    bne r9 r0 block_5562
    j block_5561
block_5561:
    mv r9 r10
    j block_5563
block_5562:
    bne r10 r0 block_5565
    j block_5564
block_5564:
    addi r9 r0 1
    j block_5563
block_5565:
    mv r9 r0
    j block_5563
block_5563:
    lw r10 r5 16
    lwcZ f0 r10 4
    bne r9 r0 block_5567
    j block_5566
block_5566:
    fneg f0 f0
    j block_5568
block_5567:
    j block_5568
block_5568:
    swcZ f0 r8 8
    #1.0
    flui f0 16256
    lwcZ f1 r7 4
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 12
    j block_5557
block_5556:
    #0.0
    flui f0 0
    swcZ f0 r8 12
    j block_5557
block_5557:
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5570
block_5569:
    lw r9 r5 24
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5573
block_5572:
    mv r10 r0
    j block_5574
block_5573:
    addi r10 r0 1
    j block_5574
block_5574:
    bne r9 r0 block_5576
    j block_5575
block_5575:
    mv r9 r10
    j block_5577
block_5576:
    bne r10 r0 block_5579
    j block_5578
block_5578:
    addi r9 r0 1
    j block_5577
block_5579:
    mv r9 r0
    j block_5577
block_5577:
    lw r5 r5 16
    lwcZ f0 r5 8
    bne r9 r0 block_5581
    j block_5580
block_5580:
    fneg f0 f0
    j block_5582
block_5581:
    j block_5582
block_5582:
    swcZ f0 r8 16
    #1.0
    flui f0 16256
    lwcZ f1 r7 8
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 20
    j block_5571
block_5570:
    #0.0
    flui f0 0
    swcZ f0 r8 20
    j block_5571
block_5571:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5523
block_5523:
    subi r4 r4 1
    sw r3 r29 16
    sw r1 r29 4
    mv r1 r2
    mv r2 r4
    sw r31 r29 20
    addi r29 r29 24
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 24
    lw r31 r29 20
    j block_5520
block_5519:
    j block_5520
block_5520:
    lw r1 r29 4
    subi r2 r1 1
    lw r1 r29 16
    sw r31 r29 20
    addi r29 r29 24
    jal init_dirvec_constants.5514
    subi r29 r29 24
    lw r31 r29 20
    jr r31
block_5517:
    jr r31
block_5515:
    jr r31
block_5448:
    jr r31
block_5446:
    jr r31
init_line_elements.5340:
block_5272:
    blt r2 r0 block_5274
block_5273:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r4 r30
    addi r30 r30 12
    sw r4 r30 0
    sw r4 r30 4
    sw r4 r30 8
    sw r4 r30 12
    sw r4 r30 16
    mv r4 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 16
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r5 r30
    addi r30 r30 20
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r6 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r7 r30
    addi r30 r30 12
    sw r7 r30 0
    sw r7 r30 4
    sw r7 r30 8
    sw r7 r30 12
    sw r7 r30 16
    mv r7 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 16
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r30 0
    sw r8 r30 4
    sw r8 r30 8
    sw r8 r30 12
    sw r8 r30 16
    mv r8 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 16
    sw r0 r30 0
    mv r9 r30
    addi r30 r30 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r30 0
    sw r10 r30 4
    sw r10 r30 8
    sw r10 r30 12
    sw r10 r30 16
    mv r10 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 16
    mv r11 r30
    addi r30 r30 32
    sw r10 r11 28
    sw r9 r11 24
    sw r8 r11 20
    sw r7 r11 16
    sw r6 r11 12
    sw r5 r11 8
    sw r4 r11 4
    sw r3 r11 0
    mv r3 r11
    sll r4 r2 2
    swab r3 r1 r4
    subi r2 r2 1
    blt r2 r0 block_5276
block_5275:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r4 r30
    addi r30 r30 12
    sw r4 r30 0
    sw r4 r30 4
    sw r4 r30 8
    sw r4 r30 12
    sw r4 r30 16
    mv r4 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 16
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r5 r30
    addi r30 r30 20
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r6 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r7 r30
    addi r30 r30 12
    sw r7 r30 0
    sw r7 r30 4
    sw r7 r30 8
    sw r7 r30 12
    sw r7 r30 16
    mv r7 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 16
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r30 0
    sw r8 r30 4
    sw r8 r30 8
    sw r8 r30 12
    sw r8 r30 16
    mv r8 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 16
    sw r0 r30 0
    mv r9 r30
    addi r30 r30 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r30 0
    sw r10 r30 4
    sw r10 r30 8
    sw r10 r30 12
    sw r10 r30 16
    mv r10 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 16
    mv r11 r30
    addi r30 r30 32
    sw r10 r11 28
    sw r9 r11 24
    sw r8 r11 20
    sw r7 r11 16
    sw r6 r11 12
    sw r5 r11 8
    sw r4 r11 4
    sw r3 r11 0
    mv r3 r11
    sll r4 r2 2
    swab r3 r1 r4
    subi r2 r2 1
    blt r2 r0 block_5278
block_5277:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r4 r30
    addi r30 r30 12
    sw r4 r30 0
    sw r4 r30 4
    sw r4 r30 8
    sw r4 r30 12
    sw r4 r30 16
    mv r4 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 16
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r5 r30
    addi r30 r30 20
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r6 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r7 r30
    addi r30 r30 12
    sw r7 r30 0
    sw r7 r30 4
    sw r7 r30 8
    sw r7 r30 12
    sw r7 r30 16
    mv r7 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 16
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r30 0
    sw r8 r30 4
    sw r8 r30 8
    sw r8 r30 12
    sw r8 r30 16
    mv r8 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 16
    sw r0 r30 0
    mv r9 r30
    addi r30 r30 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r30 0
    sw r10 r30 4
    sw r10 r30 8
    sw r10 r30 12
    sw r10 r30 16
    mv r10 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 16
    mv r11 r30
    addi r30 r30 32
    sw r10 r11 28
    sw r9 r11 24
    sw r8 r11 20
    sw r7 r11 16
    sw r6 r11 12
    sw r5 r11 8
    sw r4 r11 4
    sw r3 r11 0
    mv r3 r11
    sll r4 r2 2
    swab r3 r1 r4
    subi r2 r2 1
    blt r2 r0 block_5280
block_5279:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r4 r30
    addi r30 r30 12
    sw r4 r30 0
    sw r4 r30 4
    sw r4 r30 8
    sw r4 r30 12
    sw r4 r30 16
    mv r4 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r4 16
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r5 r30
    addi r30 r30 20
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r6 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r7 r30
    addi r30 r30 12
    sw r7 r30 0
    sw r7 r30 4
    sw r7 r30 8
    sw r7 r30 12
    sw r7 r30 16
    mv r7 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r7 16
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r30 0
    sw r8 r30 4
    sw r8 r30 8
    sw r8 r30 12
    sw r8 r30 16
    mv r8 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 16
    sw r0 r30 0
    mv r9 r30
    addi r30 r30 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r30 0
    sw r10 r30 4
    sw r10 r30 8
    sw r10 r30 12
    sw r10 r30 16
    mv r10 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r10 16
    mv r11 r30
    addi r30 r30 32
    sw r10 r11 28
    sw r9 r11 24
    sw r8 r11 20
    sw r7 r11 16
    sw r6 r11 12
    sw r5 r11 8
    sw r4 r11 4
    sw r3 r11 0
    mv r3 r11
    sll r4 r2 2
    swab r3 r1 r4
    subi r2 r2 1
    sw r31 r29 0
    addi r29 r29 4
    jal init_line_elements.5340
    subi r29 r29 4
    lw r31 r29 0
    jr r31
block_5280:
    jr r31
block_5278:
    jr r31
block_5276:
    jr r31
block_5274:
    jr r31
init_vecset_constants.5522:
block_5583:
    blt r1 r0 block_5585
block_5584:
    sll r2 r1 2
    lw r2 r2 25716
    addi r3 r0 119
    sw r1 r29 24
    blt r3 r0 block_5587
block_5586:
    lw r3 r2 476
    lw r4 r0 25000
    subi r4 r4 1
    sw r1 r29 24
    sw r2 r29 8
    blt r4 r0 block_5590
block_5589:
    sll r5 r4 2
    lw r5 r5 25048
    lw r6 r3 4
    lw r7 r3 0
    lw r8 r5 4
    addi r9 r0 1
    beq r8 r9 block_5593
block_5592:
    addi r9 r0 2
    beq r8 r9 block_5596
block_5595:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    mv r8 r30
    addi r30 r30 20
    lwcZ f0 r7 0
    lwcZ f1 r7 4
    lwcZ f2 r7 8
    fmul f3 f0 f0
    lw r9 r5 16
    lwcZ f4 r9 0
    fmul f3 f3 f4
    fmul f4 f1 f1
    lw r9 r5 16
    lwcZ f5 r9 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f4 f2 f2
    lw r9 r5 16
    lwcZ f5 r9 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r9 r5 12
    beq r9 r0 block_5598
block_5597:
    fmul f4 f1 f2
    lw r9 r5 36
    lwcZ f5 r9 0
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f0
    lw r9 r5 36
    lwcZ f4 r9 4
    fmul f2 f2 f4
    fadd f2 f3 f2
    fmul f0 f0 f1
    lw r9 r5 36
    lwcZ f1 r9 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_5599
block_5598:
    fmv f0 f3
    j block_5599
block_5599:
    lwcZ f1 r7 0
    lw r9 r5 16
    lwcZ f2 r9 0
    fmul f1 f1 f2
    fneg f1 f1
    lwcZ f2 r7 4
    lw r9 r5 16
    lwcZ f3 r9 4
    fmul f2 f2 f3
    fneg f2 f2
    lwcZ f3 r7 8
    lw r9 r5 16
    lwcZ f4 r9 8
    fmul f3 f3 f4
    fneg f3 f3
    swcZ f0 r8 0
    lw r9 r5 12
    beq r9 r0 block_5601
block_5600:
    lwcZ f4 r7 8
    lw r9 r5 36
    lwcZ f5 r9 4
    fmul f4 f4 f5
    lwcZ f5 r7 4
    lw r9 r5 36
    lwcZ f6 r9 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fsub f1 f1 f4
    swcZ f1 r8 4
    lwcZ f1 r7 8
    lw r9 r5 36
    lwcZ f4 r9 0
    fmul f1 f1 f4
    lwcZ f4 r7 0
    lw r9 r5 36
    lwcZ f5 r9 8
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.5
    flui f4 16128
    fmul f1 f1 f4
    fsub f1 f2 f1
    swcZ f1 r8 8
    lwcZ f1 r7 4
    lw r9 r5 36
    lwcZ f2 r9 0
    fmul f1 f1 f2
    lwcZ f2 r7 0
    lw r5 r5 36
    lwcZ f4 r5 4
    fmul f2 f2 f4
    fadd f1 f1 f2
    #0.5
    flui f2 16128
    fmul f1 f1 f2
    fsub f1 f3 f1
    swcZ f1 r8 12
    j block_5602
block_5601:
    swcZ f1 r8 4
    swcZ f2 r8 8
    swcZ f3 r8 12
    j block_5602
block_5602:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5604
block_5603:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r8 16
    j block_5605
block_5604:
    j block_5605
block_5605:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5594
block_5596:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    mv r8 r30
    addi r30 r30 16
    lwcZ f0 r7 0
    lw r9 r5 16
    lwcZ f1 r9 0
    fmul f0 f0 f1
    lwcZ f1 r7 4
    lw r9 r5 16
    lwcZ f2 r9 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r7 8
    lw r7 r5 16
    lwcZ f2 r7 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5607
block_5606:
    mv r7 r0
    j block_5608
block_5607:
    addi r7 r0 1
    j block_5608
block_5608:
    bne r7 r0 block_5610
    j block_5609
block_5609:
    #0.0
    flui f0 0
    swcZ f0 r8 0
    j block_5611
block_5610:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    swcZ f1 r8 0
    lw r7 r5 16
    lwcZ f1 r7 0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r8 4
    lw r7 r5 16
    lwcZ f1 r7 4
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r8 8
    lw r5 r5 16
    lwcZ f1 r5 8
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    fneg f0 f0
    swcZ f0 r8 12
    j block_5611
block_5611:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5594
block_5593:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    swcZ f0 r30 20
    mv r8 r30
    addi r30 r30 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5613
block_5612:
    lw r9 r5 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5616
block_5615:
    mv r10 r0
    j block_5617
block_5616:
    addi r10 r0 1
    j block_5617
block_5617:
    bne r9 r0 block_5619
    j block_5618
block_5618:
    mv r9 r10
    j block_5620
block_5619:
    bne r10 r0 block_5622
    j block_5621
block_5621:
    addi r9 r0 1
    j block_5620
block_5622:
    mv r9 r0
    j block_5620
block_5620:
    lw r10 r5 16
    lwcZ f0 r10 0
    bne r9 r0 block_5624
    j block_5623
block_5623:
    fneg f0 f0
    j block_5625
block_5624:
    j block_5625
block_5625:
    swcZ f0 r8 0
    #1.0
    flui f0 16256
    lwcZ f1 r7 0
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 4
    j block_5614
block_5613:
    #0.0
    flui f0 0
    swcZ f0 r8 4
    j block_5614
block_5614:
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5627
block_5626:
    lw r9 r5 24
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5630
block_5629:
    mv r10 r0
    j block_5631
block_5630:
    addi r10 r0 1
    j block_5631
block_5631:
    bne r9 r0 block_5633
    j block_5632
block_5632:
    mv r9 r10
    j block_5634
block_5633:
    bne r10 r0 block_5636
    j block_5635
block_5635:
    addi r9 r0 1
    j block_5634
block_5636:
    mv r9 r0
    j block_5634
block_5634:
    lw r10 r5 16
    lwcZ f0 r10 4
    bne r9 r0 block_5638
    j block_5637
block_5637:
    fneg f0 f0
    j block_5639
block_5638:
    j block_5639
block_5639:
    swcZ f0 r8 8
    #1.0
    flui f0 16256
    lwcZ f1 r7 4
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 12
    j block_5628
block_5627:
    #0.0
    flui f0 0
    swcZ f0 r8 12
    j block_5628
block_5628:
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5641
block_5640:
    lw r9 r5 24
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5644
block_5643:
    mv r10 r0
    j block_5645
block_5644:
    addi r10 r0 1
    j block_5645
block_5645:
    bne r9 r0 block_5647
    j block_5646
block_5646:
    mv r9 r10
    j block_5648
block_5647:
    bne r10 r0 block_5650
    j block_5649
block_5649:
    addi r9 r0 1
    j block_5648
block_5650:
    mv r9 r0
    j block_5648
block_5648:
    lw r5 r5 16
    lwcZ f0 r5 8
    bne r9 r0 block_5652
    j block_5651
block_5651:
    fneg f0 f0
    j block_5653
block_5652:
    j block_5653
block_5653:
    swcZ f0 r8 16
    #1.0
    flui f0 16256
    lwcZ f1 r7 8
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 20
    j block_5642
block_5641:
    #0.0
    flui f0 0
    swcZ f0 r8 20
    j block_5642
block_5642:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5594
block_5594:
    subi r4 r4 1
    sw r1 r29 24
    sw r2 r29 8
    mv r2 r4
    mv r1 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    j block_5591
block_5590:
    j block_5591
block_5591:
    addi r1 r0 118
    blt r1 r0 block_5655
block_5654:
    lw r1 r29 8
    lw r2 r1 472
    lw r3 r0 25000
    subi r3 r3 1
    sw r1 r29 8
    mv r1 r2
    mv r2 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    addi r1 r0 117
    blt r1 r0 block_5657
block_5656:
    lw r1 r29 8
    lw r2 r1 468
    lw r3 r0 25000
    subi r3 r3 1
    sw r1 r29 8
    blt r3 r0 block_5659
block_5658:
    sll r4 r3 2
    lw r4 r4 25048
    lw r5 r2 4
    lw r6 r2 0
    lw r7 r4 4
    addi r8 r0 1
    beq r7 r8 block_5662
block_5661:
    addi r8 r0 2
    beq r7 r8 block_5665
block_5664:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    mv r7 r30
    addi r30 r30 20
    lwcZ f0 r6 0
    lwcZ f1 r6 4
    lwcZ f2 r6 8
    fmul f3 f0 f0
    lw r8 r4 16
    lwcZ f4 r8 0
    fmul f3 f3 f4
    fmul f4 f1 f1
    lw r8 r4 16
    lwcZ f5 r8 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f4 f2 f2
    lw r8 r4 16
    lwcZ f5 r8 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r8 r4 12
    beq r8 r0 block_5667
block_5666:
    fmul f4 f1 f2
    lw r8 r4 36
    lwcZ f5 r8 0
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f0
    lw r8 r4 36
    lwcZ f4 r8 4
    fmul f2 f2 f4
    fadd f2 f3 f2
    fmul f0 f0 f1
    lw r8 r4 36
    lwcZ f1 r8 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_5668
block_5667:
    fmv f0 f3
    j block_5668
block_5668:
    lwcZ f1 r6 0
    lw r8 r4 16
    lwcZ f2 r8 0
    fmul f1 f1 f2
    fneg f1 f1
    lwcZ f2 r6 4
    lw r8 r4 16
    lwcZ f3 r8 4
    fmul f2 f2 f3
    fneg f2 f2
    lwcZ f3 r6 8
    lw r8 r4 16
    lwcZ f4 r8 8
    fmul f3 f3 f4
    fneg f3 f3
    swcZ f0 r7 0
    lw r8 r4 12
    beq r8 r0 block_5670
block_5669:
    lwcZ f4 r6 8
    lw r8 r4 36
    lwcZ f5 r8 4
    fmul f4 f4 f5
    lwcZ f5 r6 4
    lw r8 r4 36
    lwcZ f6 r8 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fsub f1 f1 f4
    swcZ f1 r7 4
    lwcZ f1 r6 8
    lw r8 r4 36
    lwcZ f4 r8 0
    fmul f1 f1 f4
    lwcZ f4 r6 0
    lw r8 r4 36
    lwcZ f5 r8 8
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.5
    flui f4 16128
    fmul f1 f1 f4
    fsub f1 f2 f1
    swcZ f1 r7 8
    lwcZ f1 r6 4
    lw r8 r4 36
    lwcZ f2 r8 0
    fmul f1 f1 f2
    lwcZ f2 r6 0
    lw r4 r4 36
    lwcZ f4 r4 4
    fmul f2 f2 f4
    fadd f1 f1 f2
    #0.5
    flui f2 16128
    fmul f1 f1 f2
    fsub f1 f3 f1
    swcZ f1 r7 12
    j block_5671
block_5670:
    swcZ f1 r7 4
    swcZ f2 r7 8
    swcZ f3 r7 12
    j block_5671
block_5671:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5673
block_5672:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r7 16
    j block_5674
block_5673:
    j block_5674
block_5674:
    sll r4 r3 2
    swab r7 r5 r4
    j block_5663
block_5665:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    mv r7 r30
    addi r30 r30 16
    lwcZ f0 r6 0
    lw r8 r4 16
    lwcZ f1 r8 0
    fmul f0 f0 f1
    lwcZ f1 r6 4
    lw r8 r4 16
    lwcZ f2 r8 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r6 8
    lw r6 r4 16
    lwcZ f2 r6 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5676
block_5675:
    mv r6 r0
    j block_5677
block_5676:
    addi r6 r0 1
    j block_5677
block_5677:
    bne r6 r0 block_5679
    j block_5678
block_5678:
    #0.0
    flui f0 0
    swcZ f0 r7 0
    j block_5680
block_5679:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    swcZ f1 r7 0
    lw r6 r4 16
    lwcZ f1 r6 0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r7 4
    lw r6 r4 16
    lwcZ f1 r6 4
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r7 8
    lw r4 r4 16
    lwcZ f1 r4 8
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    fneg f0 f0
    swcZ f0 r7 12
    j block_5680
block_5680:
    sll r4 r3 2
    swab r7 r5 r4
    j block_5663
block_5662:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    swcZ f0 r30 20
    mv r7 r30
    addi r30 r30 24
    lwcZ f0 r6 0
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5682
block_5681:
    lw r8 r4 24
    lwcZ f0 r6 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5685
block_5684:
    mv r9 r0
    j block_5686
block_5685:
    addi r9 r0 1
    j block_5686
block_5686:
    bne r8 r0 block_5688
    j block_5687
block_5687:
    mv r8 r9
    j block_5689
block_5688:
    bne r9 r0 block_5691
    j block_5690
block_5690:
    addi r8 r0 1
    j block_5689
block_5691:
    mv r8 r0
    j block_5689
block_5689:
    lw r9 r4 16
    lwcZ f0 r9 0
    bne r8 r0 block_5693
    j block_5692
block_5692:
    fneg f0 f0
    j block_5694
block_5693:
    j block_5694
block_5694:
    swcZ f0 r7 0
    #1.0
    flui f0 16256
    lwcZ f1 r6 0
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r7 4
    j block_5683
block_5682:
    #0.0
    flui f0 0
    swcZ f0 r7 4
    j block_5683
block_5683:
    lwcZ f0 r6 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5696
block_5695:
    lw r8 r4 24
    lwcZ f0 r6 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5699
block_5698:
    mv r9 r0
    j block_5700
block_5699:
    addi r9 r0 1
    j block_5700
block_5700:
    bne r8 r0 block_5702
    j block_5701
block_5701:
    mv r8 r9
    j block_5703
block_5702:
    bne r9 r0 block_5705
    j block_5704
block_5704:
    addi r8 r0 1
    j block_5703
block_5705:
    mv r8 r0
    j block_5703
block_5703:
    lw r9 r4 16
    lwcZ f0 r9 4
    bne r8 r0 block_5707
    j block_5706
block_5706:
    fneg f0 f0
    j block_5708
block_5707:
    j block_5708
block_5708:
    swcZ f0 r7 8
    #1.0
    flui f0 16256
    lwcZ f1 r6 4
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r7 12
    j block_5697
block_5696:
    #0.0
    flui f0 0
    swcZ f0 r7 12
    j block_5697
block_5697:
    lwcZ f0 r6 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5710
block_5709:
    lw r8 r4 24
    lwcZ f0 r6 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5713
block_5712:
    mv r9 r0
    j block_5714
block_5713:
    addi r9 r0 1
    j block_5714
block_5714:
    bne r8 r0 block_5716
    j block_5715
block_5715:
    mv r8 r9
    j block_5717
block_5716:
    bne r9 r0 block_5719
    j block_5718
block_5718:
    addi r8 r0 1
    j block_5717
block_5719:
    mv r8 r0
    j block_5717
block_5717:
    lw r4 r4 16
    lwcZ f0 r4 8
    bne r8 r0 block_5721
    j block_5720
block_5720:
    fneg f0 f0
    j block_5722
block_5721:
    j block_5722
block_5722:
    swcZ f0 r7 16
    #1.0
    flui f0 16256
    lwcZ f1 r6 8
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r7 20
    j block_5711
block_5710:
    #0.0
    flui f0 0
    swcZ f0 r7 20
    j block_5711
block_5711:
    sll r4 r3 2
    swab r7 r5 r4
    j block_5663
block_5663:
    subi r3 r3 1
    sw r1 r29 8
    mv r1 r2
    mv r2 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    j block_5660
block_5659:
    j block_5660
block_5660:
    addi r2 r0 116
    lw r1 r29 8
    sw r31 r29 28
    addi r29 r29 32
    jal init_dirvec_constants.5514
    subi r29 r29 32
    lw r31 r29 28
    j block_5588
block_5657:
    j block_5588
block_5655:
    j block_5588
block_5587:
    j block_5588
block_5588:
    lw r1 r29 24
    subi r1 r1 1
    blt r1 r0 block_5724
block_5723:
    sll r2 r1 2
    lw r2 r2 25716
    addi r3 r0 119
    sw r1 r29 20
    blt r3 r0 block_5726
block_5725:
    lw r3 r2 476
    lw r4 r0 25000
    subi r4 r4 1
    sw r1 r29 20
    sw r2 r29 0
    mv r2 r4
    mv r1 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    addi r1 r0 118
    blt r1 r0 block_5729
block_5728:
    lw r1 r29 0
    lw r2 r1 472
    lw r3 r0 25000
    subi r3 r3 1
    sw r1 r29 0
    blt r3 r0 block_5731
block_5730:
    sll r4 r3 2
    lw r4 r4 25048
    lw r5 r2 4
    lw r6 r2 0
    lw r7 r4 4
    addi r8 r0 1
    beq r7 r8 block_5734
block_5733:
    addi r8 r0 2
    beq r7 r8 block_5737
block_5736:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    mv r7 r30
    addi r30 r30 20
    lwcZ f0 r6 0
    lwcZ f1 r6 4
    lwcZ f2 r6 8
    fmul f3 f0 f0
    lw r8 r4 16
    lwcZ f4 r8 0
    fmul f3 f3 f4
    fmul f4 f1 f1
    lw r8 r4 16
    lwcZ f5 r8 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f4 f2 f2
    lw r8 r4 16
    lwcZ f5 r8 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r8 r4 12
    beq r8 r0 block_5739
block_5738:
    fmul f4 f1 f2
    lw r8 r4 36
    lwcZ f5 r8 0
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f0
    lw r8 r4 36
    lwcZ f4 r8 4
    fmul f2 f2 f4
    fadd f2 f3 f2
    fmul f0 f0 f1
    lw r8 r4 36
    lwcZ f1 r8 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_5740
block_5739:
    fmv f0 f3
    j block_5740
block_5740:
    lwcZ f1 r6 0
    lw r8 r4 16
    lwcZ f2 r8 0
    fmul f1 f1 f2
    fneg f1 f1
    lwcZ f2 r6 4
    lw r8 r4 16
    lwcZ f3 r8 4
    fmul f2 f2 f3
    fneg f2 f2
    lwcZ f3 r6 8
    lw r8 r4 16
    lwcZ f4 r8 8
    fmul f3 f3 f4
    fneg f3 f3
    swcZ f0 r7 0
    lw r8 r4 12
    beq r8 r0 block_5742
block_5741:
    lwcZ f4 r6 8
    lw r8 r4 36
    lwcZ f5 r8 4
    fmul f4 f4 f5
    lwcZ f5 r6 4
    lw r8 r4 36
    lwcZ f6 r8 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fsub f1 f1 f4
    swcZ f1 r7 4
    lwcZ f1 r6 8
    lw r8 r4 36
    lwcZ f4 r8 0
    fmul f1 f1 f4
    lwcZ f4 r6 0
    lw r8 r4 36
    lwcZ f5 r8 8
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.5
    flui f4 16128
    fmul f1 f1 f4
    fsub f1 f2 f1
    swcZ f1 r7 8
    lwcZ f1 r6 4
    lw r8 r4 36
    lwcZ f2 r8 0
    fmul f1 f1 f2
    lwcZ f2 r6 0
    lw r4 r4 36
    lwcZ f4 r4 4
    fmul f2 f2 f4
    fadd f1 f1 f2
    #0.5
    flui f2 16128
    fmul f1 f1 f2
    fsub f1 f3 f1
    swcZ f1 r7 12
    j block_5743
block_5742:
    swcZ f1 r7 4
    swcZ f2 r7 8
    swcZ f3 r7 12
    j block_5743
block_5743:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5745
block_5744:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r7 16
    j block_5746
block_5745:
    j block_5746
block_5746:
    sll r4 r3 2
    swab r7 r5 r4
    j block_5735
block_5737:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    mv r7 r30
    addi r30 r30 16
    lwcZ f0 r6 0
    lw r8 r4 16
    lwcZ f1 r8 0
    fmul f0 f0 f1
    lwcZ f1 r6 4
    lw r8 r4 16
    lwcZ f2 r8 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r6 8
    lw r6 r4 16
    lwcZ f2 r6 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5748
block_5747:
    mv r6 r0
    j block_5749
block_5748:
    addi r6 r0 1
    j block_5749
block_5749:
    bne r6 r0 block_5751
    j block_5750
block_5750:
    #0.0
    flui f0 0
    swcZ f0 r7 0
    j block_5752
block_5751:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    swcZ f1 r7 0
    lw r6 r4 16
    lwcZ f1 r6 0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r7 4
    lw r6 r4 16
    lwcZ f1 r6 4
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r7 8
    lw r4 r4 16
    lwcZ f1 r4 8
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    fneg f0 f0
    swcZ f0 r7 12
    j block_5752
block_5752:
    sll r4 r3 2
    swab r7 r5 r4
    j block_5735
block_5734:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    swcZ f0 r30 20
    mv r7 r30
    addi r30 r30 24
    lwcZ f0 r6 0
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5754
block_5753:
    lw r8 r4 24
    lwcZ f0 r6 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5757
block_5756:
    mv r9 r0
    j block_5758
block_5757:
    addi r9 r0 1
    j block_5758
block_5758:
    bne r8 r0 block_5760
    j block_5759
block_5759:
    mv r8 r9
    j block_5761
block_5760:
    bne r9 r0 block_5763
    j block_5762
block_5762:
    addi r8 r0 1
    j block_5761
block_5763:
    mv r8 r0
    j block_5761
block_5761:
    lw r9 r4 16
    lwcZ f0 r9 0
    bne r8 r0 block_5765
    j block_5764
block_5764:
    fneg f0 f0
    j block_5766
block_5765:
    j block_5766
block_5766:
    swcZ f0 r7 0
    #1.0
    flui f0 16256
    lwcZ f1 r6 0
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r7 4
    j block_5755
block_5754:
    #0.0
    flui f0 0
    swcZ f0 r7 4
    j block_5755
block_5755:
    lwcZ f0 r6 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5768
block_5767:
    lw r8 r4 24
    lwcZ f0 r6 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5771
block_5770:
    mv r9 r0
    j block_5772
block_5771:
    addi r9 r0 1
    j block_5772
block_5772:
    bne r8 r0 block_5774
    j block_5773
block_5773:
    mv r8 r9
    j block_5775
block_5774:
    bne r9 r0 block_5777
    j block_5776
block_5776:
    addi r8 r0 1
    j block_5775
block_5777:
    mv r8 r0
    j block_5775
block_5775:
    lw r9 r4 16
    lwcZ f0 r9 4
    bne r8 r0 block_5779
    j block_5778
block_5778:
    fneg f0 f0
    j block_5780
block_5779:
    j block_5780
block_5780:
    swcZ f0 r7 8
    #1.0
    flui f0 16256
    lwcZ f1 r6 4
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r7 12
    j block_5769
block_5768:
    #0.0
    flui f0 0
    swcZ f0 r7 12
    j block_5769
block_5769:
    lwcZ f0 r6 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5782
block_5781:
    lw r8 r4 24
    lwcZ f0 r6 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5785
block_5784:
    mv r9 r0
    j block_5786
block_5785:
    addi r9 r0 1
    j block_5786
block_5786:
    bne r8 r0 block_5788
    j block_5787
block_5787:
    mv r8 r9
    j block_5789
block_5788:
    bne r9 r0 block_5791
    j block_5790
block_5790:
    addi r8 r0 1
    j block_5789
block_5791:
    mv r8 r0
    j block_5789
block_5789:
    lw r4 r4 16
    lwcZ f0 r4 8
    bne r8 r0 block_5793
    j block_5792
block_5792:
    fneg f0 f0
    j block_5794
block_5793:
    j block_5794
block_5794:
    swcZ f0 r7 16
    #1.0
    flui f0 16256
    lwcZ f1 r6 8
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r7 20
    j block_5783
block_5782:
    #0.0
    flui f0 0
    swcZ f0 r7 20
    j block_5783
block_5783:
    sll r4 r3 2
    swab r7 r5 r4
    j block_5735
block_5735:
    subi r3 r3 1
    sw r1 r29 0
    mv r1 r2
    mv r2 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    j block_5732
block_5731:
    j block_5732
block_5732:
    addi r2 r0 117
    lw r1 r29 0
    sw r31 r29 28
    addi r29 r29 32
    jal init_dirvec_constants.5514
    subi r29 r29 32
    lw r31 r29 28
    j block_5727
block_5729:
    j block_5727
block_5726:
    j block_5727
block_5727:
    lw r1 r29 20
    subi r1 r1 1
    blt r1 r0 block_5796
block_5795:
    sll r2 r1 2
    lw r2 r2 25716
    addi r3 r0 119
    sw r1 r29 12
    blt r3 r0 block_5798
block_5797:
    lw r3 r2 476
    lw r4 r0 25000
    subi r4 r4 1
    sw r1 r29 12
    sw r2 r29 4
    blt r4 r0 block_5801
block_5800:
    sll r5 r4 2
    lw r5 r5 25048
    lw r6 r3 4
    lw r7 r3 0
    lw r8 r5 4
    addi r9 r0 1
    beq r8 r9 block_5804
block_5803:
    addi r9 r0 2
    beq r8 r9 block_5807
block_5806:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    mv r8 r30
    addi r30 r30 20
    lwcZ f0 r7 0
    lwcZ f1 r7 4
    lwcZ f2 r7 8
    fmul f3 f0 f0
    lw r9 r5 16
    lwcZ f4 r9 0
    fmul f3 f3 f4
    fmul f4 f1 f1
    lw r9 r5 16
    lwcZ f5 r9 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f4 f2 f2
    lw r9 r5 16
    lwcZ f5 r9 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r9 r5 12
    beq r9 r0 block_5809
block_5808:
    fmul f4 f1 f2
    lw r9 r5 36
    lwcZ f5 r9 0
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f0
    lw r9 r5 36
    lwcZ f4 r9 4
    fmul f2 f2 f4
    fadd f2 f3 f2
    fmul f0 f0 f1
    lw r9 r5 36
    lwcZ f1 r9 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_5810
block_5809:
    fmv f0 f3
    j block_5810
block_5810:
    lwcZ f1 r7 0
    lw r9 r5 16
    lwcZ f2 r9 0
    fmul f1 f1 f2
    fneg f1 f1
    lwcZ f2 r7 4
    lw r9 r5 16
    lwcZ f3 r9 4
    fmul f2 f2 f3
    fneg f2 f2
    lwcZ f3 r7 8
    lw r9 r5 16
    lwcZ f4 r9 8
    fmul f3 f3 f4
    fneg f3 f3
    swcZ f0 r8 0
    lw r9 r5 12
    beq r9 r0 block_5812
block_5811:
    lwcZ f4 r7 8
    lw r9 r5 36
    lwcZ f5 r9 4
    fmul f4 f4 f5
    lwcZ f5 r7 4
    lw r9 r5 36
    lwcZ f6 r9 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fsub f1 f1 f4
    swcZ f1 r8 4
    lwcZ f1 r7 8
    lw r9 r5 36
    lwcZ f4 r9 0
    fmul f1 f1 f4
    lwcZ f4 r7 0
    lw r9 r5 36
    lwcZ f5 r9 8
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.5
    flui f4 16128
    fmul f1 f1 f4
    fsub f1 f2 f1
    swcZ f1 r8 8
    lwcZ f1 r7 4
    lw r9 r5 36
    lwcZ f2 r9 0
    fmul f1 f1 f2
    lwcZ f2 r7 0
    lw r5 r5 36
    lwcZ f4 r5 4
    fmul f2 f2 f4
    fadd f1 f1 f2
    #0.5
    flui f2 16128
    fmul f1 f1 f2
    fsub f1 f3 f1
    swcZ f1 r8 12
    j block_5813
block_5812:
    swcZ f1 r8 4
    swcZ f2 r8 8
    swcZ f3 r8 12
    j block_5813
block_5813:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5815
block_5814:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r8 16
    j block_5816
block_5815:
    j block_5816
block_5816:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5805
block_5807:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    mv r8 r30
    addi r30 r30 16
    lwcZ f0 r7 0
    lw r9 r5 16
    lwcZ f1 r9 0
    fmul f0 f0 f1
    lwcZ f1 r7 4
    lw r9 r5 16
    lwcZ f2 r9 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r7 8
    lw r7 r5 16
    lwcZ f2 r7 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5818
block_5817:
    mv r7 r0
    j block_5819
block_5818:
    addi r7 r0 1
    j block_5819
block_5819:
    bne r7 r0 block_5821
    j block_5820
block_5820:
    #0.0
    flui f0 0
    swcZ f0 r8 0
    j block_5822
block_5821:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    swcZ f1 r8 0
    lw r7 r5 16
    lwcZ f1 r7 0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r8 4
    lw r7 r5 16
    lwcZ f1 r7 4
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r8 8
    lw r5 r5 16
    lwcZ f1 r5 8
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    fneg f0 f0
    swcZ f0 r8 12
    j block_5822
block_5822:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5805
block_5804:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    swcZ f0 r30 20
    mv r8 r30
    addi r30 r30 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5824
block_5823:
    lw r9 r5 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5827
block_5826:
    mv r10 r0
    j block_5828
block_5827:
    addi r10 r0 1
    j block_5828
block_5828:
    bne r9 r0 block_5830
    j block_5829
block_5829:
    mv r9 r10
    j block_5831
block_5830:
    bne r10 r0 block_5833
    j block_5832
block_5832:
    addi r9 r0 1
    j block_5831
block_5833:
    mv r9 r0
    j block_5831
block_5831:
    lw r10 r5 16
    lwcZ f0 r10 0
    bne r9 r0 block_5835
    j block_5834
block_5834:
    fneg f0 f0
    j block_5836
block_5835:
    j block_5836
block_5836:
    swcZ f0 r8 0
    #1.0
    flui f0 16256
    lwcZ f1 r7 0
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 4
    j block_5825
block_5824:
    #0.0
    flui f0 0
    swcZ f0 r8 4
    j block_5825
block_5825:
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5838
block_5837:
    lw r9 r5 24
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5841
block_5840:
    mv r10 r0
    j block_5842
block_5841:
    addi r10 r0 1
    j block_5842
block_5842:
    bne r9 r0 block_5844
    j block_5843
block_5843:
    mv r9 r10
    j block_5845
block_5844:
    bne r10 r0 block_5847
    j block_5846
block_5846:
    addi r9 r0 1
    j block_5845
block_5847:
    mv r9 r0
    j block_5845
block_5845:
    lw r10 r5 16
    lwcZ f0 r10 4
    bne r9 r0 block_5849
    j block_5848
block_5848:
    fneg f0 f0
    j block_5850
block_5849:
    j block_5850
block_5850:
    swcZ f0 r8 8
    #1.0
    flui f0 16256
    lwcZ f1 r7 4
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 12
    j block_5839
block_5838:
    #0.0
    flui f0 0
    swcZ f0 r8 12
    j block_5839
block_5839:
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5852
block_5851:
    lw r9 r5 24
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5855
block_5854:
    mv r10 r0
    j block_5856
block_5855:
    addi r10 r0 1
    j block_5856
block_5856:
    bne r9 r0 block_5858
    j block_5857
block_5857:
    mv r9 r10
    j block_5859
block_5858:
    bne r10 r0 block_5861
    j block_5860
block_5860:
    addi r9 r0 1
    j block_5859
block_5861:
    mv r9 r0
    j block_5859
block_5859:
    lw r5 r5 16
    lwcZ f0 r5 8
    bne r9 r0 block_5863
    j block_5862
block_5862:
    fneg f0 f0
    j block_5864
block_5863:
    j block_5864
block_5864:
    swcZ f0 r8 16
    #1.0
    flui f0 16256
    lwcZ f1 r7 8
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r8 20
    j block_5853
block_5852:
    #0.0
    flui f0 0
    swcZ f0 r8 20
    j block_5853
block_5853:
    sll r5 r4 2
    swab r8 r6 r5
    j block_5805
block_5805:
    subi r4 r4 1
    sw r1 r29 12
    sw r2 r29 4
    mv r2 r4
    mv r1 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    j block_5802
block_5801:
    j block_5802
block_5802:
    addi r2 r0 118
    lw r1 r29 4
    sw r31 r29 28
    addi r29 r29 32
    jal init_dirvec_constants.5514
    subi r29 r29 32
    lw r31 r29 28
    j block_5799
block_5798:
    j block_5799
block_5799:
    lw r1 r29 12
    subi r1 r1 1
    blt r1 r0 block_5866
block_5865:
    sll r2 r1 2
    lw r2 r2 25716
    addi r3 r0 119
    sw r1 r29 16
    mv r1 r2
    mv r2 r3
    sw r31 r29 28
    addi r29 r29 32
    jal init_dirvec_constants.5514
    subi r29 r29 32
    lw r31 r29 28
    lw r1 r29 16
    subi r1 r1 1
    sw r31 r29 28
    addi r29 r29 32
    jal init_vecset_constants.5522
    subi r29 r29 32
    lw r31 r29 28
    jr r31
block_5866:
    jr r31
block_5796:
    jr r31
block_5724:
    jr r31
block_5585:
    jr r31
iter_setup_dirvec_constants.4109:
block_706:
    blt r2 r0 block_708
block_707:
    sll r3 r2 2
    lw r3 r3 25048
    lw r4 r1 4
    lw r5 r1 0
    lw r6 r3 4
    addi r7 r0 1
    beq r6 r7 block_710
block_709:
    addi r7 r0 2
    beq r6 r7 block_713
block_712:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    mv r6 r30
    addi r30 r30 20
    lwcZ f0 r5 0
    lwcZ f1 r5 4
    lwcZ f2 r5 8
    fmul f3 f0 f0
    lw r7 r3 16
    lwcZ f4 r7 0
    fmul f3 f3 f4
    fmul f4 f1 f1
    lw r7 r3 16
    lwcZ f5 r7 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f4 f2 f2
    lw r7 r3 16
    lwcZ f5 r7 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r7 r3 12
    beq r7 r0 block_715
block_714:
    fmul f4 f1 f2
    lw r7 r3 36
    lwcZ f5 r7 0
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f0
    lw r7 r3 36
    lwcZ f4 r7 4
    fmul f2 f2 f4
    fadd f2 f3 f2
    fmul f0 f0 f1
    lw r7 r3 36
    lwcZ f1 r7 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_716
block_715:
    fmv f0 f3
    j block_716
block_716:
    lwcZ f1 r5 0
    lw r7 r3 16
    lwcZ f2 r7 0
    fmul f1 f1 f2
    fneg f1 f1
    lwcZ f2 r5 4
    lw r7 r3 16
    lwcZ f3 r7 4
    fmul f2 f2 f3
    fneg f2 f2
    lwcZ f3 r5 8
    lw r7 r3 16
    lwcZ f4 r7 8
    fmul f3 f3 f4
    fneg f3 f3
    swcZ f0 r6 0
    lw r7 r3 12
    beq r7 r0 block_718
block_717:
    lwcZ f4 r5 8
    lw r7 r3 36
    lwcZ f5 r7 4
    fmul f4 f4 f5
    lwcZ f5 r5 4
    lw r7 r3 36
    lwcZ f6 r7 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fsub f1 f1 f4
    swcZ f1 r6 4
    lwcZ f1 r5 8
    lw r7 r3 36
    lwcZ f4 r7 0
    fmul f1 f1 f4
    lwcZ f4 r5 0
    lw r7 r3 36
    lwcZ f5 r7 8
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.5
    flui f4 16128
    fmul f1 f1 f4
    fsub f1 f2 f1
    swcZ f1 r6 8
    lwcZ f1 r5 4
    lw r7 r3 36
    lwcZ f2 r7 0
    fmul f1 f1 f2
    lwcZ f2 r5 0
    lw r3 r3 36
    lwcZ f4 r3 4
    fmul f2 f2 f4
    fadd f1 f1 f2
    #0.5
    flui f2 16128
    fmul f1 f1 f2
    fsub f1 f3 f1
    swcZ f1 r6 12
    j block_719
block_718:
    swcZ f1 r6 4
    swcZ f2 r6 8
    swcZ f3 r6 12
    j block_719
block_719:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_721
block_720:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r6 16
    j block_722
block_721:
    j block_722
block_722:
    sll r3 r2 2
    swab r6 r4 r3
    j block_711
block_713:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    mv r6 r30
    addi r30 r30 16
    lwcZ f0 r5 0
    lw r7 r3 16
    lwcZ f1 r7 0
    fmul f0 f0 f1
    lwcZ f1 r5 4
    lw r7 r3 16
    lwcZ f2 r7 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r5 8
    lw r5 r3 16
    lwcZ f2 r5 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_724
block_723:
    mv r5 r0
    j block_725
block_724:
    addi r5 r0 1
    j block_725
block_725:
    bne r5 r0 block_727
    j block_726
block_726:
    #0.0
    flui f0 0
    swcZ f0 r6 0
    j block_728
block_727:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    swcZ f1 r6 0
    lw r5 r3 16
    lwcZ f1 r5 0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r6 4
    lw r5 r3 16
    lwcZ f1 r5 4
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r6 8
    lw r3 r3 16
    lwcZ f1 r3 8
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    fneg f0 f0
    swcZ f0 r6 12
    j block_728
block_728:
    sll r3 r2 2
    swab r6 r4 r3
    j block_711
block_710:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    swcZ f0 r30 20
    mv r6 r30
    addi r30 r30 24
    lwcZ f0 r5 0
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_730
block_729:
    lw r7 r3 24
    lwcZ f0 r5 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_733
block_732:
    mv r8 r0
    j block_734
block_733:
    addi r8 r0 1
    j block_734
block_734:
    bne r7 r0 block_736
    j block_735
block_735:
    mv r7 r8
    j block_737
block_736:
    bne r8 r0 block_739
    j block_738
block_738:
    addi r7 r0 1
    j block_737
block_739:
    mv r7 r0
    j block_737
block_737:
    lw r8 r3 16
    lwcZ f0 r8 0
    bne r7 r0 block_741
    j block_740
block_740:
    fneg f0 f0
    j block_742
block_741:
    j block_742
block_742:
    swcZ f0 r6 0
    #1.0
    flui f0 16256
    lwcZ f1 r5 0
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r6 4
    j block_731
block_730:
    #0.0
    flui f0 0
    swcZ f0 r6 4
    j block_731
block_731:
    lwcZ f0 r5 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_744
block_743:
    lw r7 r3 24
    lwcZ f0 r5 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_747
block_746:
    mv r8 r0
    j block_748
block_747:
    addi r8 r0 1
    j block_748
block_748:
    bne r7 r0 block_750
    j block_749
block_749:
    mv r7 r8
    j block_751
block_750:
    bne r8 r0 block_753
    j block_752
block_752:
    addi r7 r0 1
    j block_751
block_753:
    mv r7 r0
    j block_751
block_751:
    lw r8 r3 16
    lwcZ f0 r8 4
    bne r7 r0 block_755
    j block_754
block_754:
    fneg f0 f0
    j block_756
block_755:
    j block_756
block_756:
    swcZ f0 r6 8
    #1.0
    flui f0 16256
    lwcZ f1 r5 4
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r6 12
    j block_745
block_744:
    #0.0
    flui f0 0
    swcZ f0 r6 12
    j block_745
block_745:
    lwcZ f0 r5 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_758
block_757:
    lw r7 r3 24
    lwcZ f0 r5 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_761
block_760:
    mv r8 r0
    j block_762
block_761:
    addi r8 r0 1
    j block_762
block_762:
    bne r7 r0 block_764
    j block_763
block_763:
    mv r7 r8
    j block_765
block_764:
    bne r8 r0 block_767
    j block_766
block_766:
    addi r7 r0 1
    j block_765
block_767:
    mv r7 r0
    j block_765
block_765:
    lw r3 r3 16
    lwcZ f0 r3 8
    bne r7 r0 block_769
    j block_768
block_768:
    fneg f0 f0
    j block_770
block_769:
    j block_770
block_770:
    swcZ f0 r6 16
    #1.0
    flui f0 16256
    lwcZ f1 r5 8
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r6 20
    j block_759
block_758:
    #0.0
    flui f0 0
    swcZ f0 r6 20
    j block_759
block_759:
    sll r3 r2 2
    swab r6 r4 r3
    j block_711
block_711:
    subi r2 r2 1
    blt r2 r0 block_772
block_771:
    sll r3 r2 2
    lw r3 r3 25048
    lw r4 r1 4
    lw r5 r1 0
    lw r6 r3 4
    addi r7 r0 1
    beq r6 r7 block_774
block_773:
    addi r7 r0 2
    beq r6 r7 block_777
block_776:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    mv r6 r30
    addi r30 r30 20
    lwcZ f0 r5 0
    lwcZ f1 r5 4
    lwcZ f2 r5 8
    fmul f3 f0 f0
    lw r7 r3 16
    lwcZ f4 r7 0
    fmul f3 f3 f4
    fmul f4 f1 f1
    lw r7 r3 16
    lwcZ f5 r7 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f4 f2 f2
    lw r7 r3 16
    lwcZ f5 r7 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r7 r3 12
    beq r7 r0 block_779
block_778:
    fmul f4 f1 f2
    lw r7 r3 36
    lwcZ f5 r7 0
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f0
    lw r7 r3 36
    lwcZ f4 r7 4
    fmul f2 f2 f4
    fadd f2 f3 f2
    fmul f0 f0 f1
    lw r7 r3 36
    lwcZ f1 r7 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_780
block_779:
    fmv f0 f3
    j block_780
block_780:
    lwcZ f1 r5 0
    lw r7 r3 16
    lwcZ f2 r7 0
    fmul f1 f1 f2
    fneg f1 f1
    lwcZ f2 r5 4
    lw r7 r3 16
    lwcZ f3 r7 4
    fmul f2 f2 f3
    fneg f2 f2
    lwcZ f3 r5 8
    lw r7 r3 16
    lwcZ f4 r7 8
    fmul f3 f3 f4
    fneg f3 f3
    swcZ f0 r6 0
    lw r7 r3 12
    beq r7 r0 block_782
block_781:
    lwcZ f4 r5 8
    lw r7 r3 36
    lwcZ f5 r7 4
    fmul f4 f4 f5
    lwcZ f5 r5 4
    lw r7 r3 36
    lwcZ f6 r7 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fsub f1 f1 f4
    swcZ f1 r6 4
    lwcZ f1 r5 8
    lw r7 r3 36
    lwcZ f4 r7 0
    fmul f1 f1 f4
    lwcZ f4 r5 0
    lw r7 r3 36
    lwcZ f5 r7 8
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.5
    flui f4 16128
    fmul f1 f1 f4
    fsub f1 f2 f1
    swcZ f1 r6 8
    lwcZ f1 r5 4
    lw r7 r3 36
    lwcZ f2 r7 0
    fmul f1 f1 f2
    lwcZ f2 r5 0
    lw r3 r3 36
    lwcZ f4 r3 4
    fmul f2 f2 f4
    fadd f1 f1 f2
    #0.5
    flui f2 16128
    fmul f1 f1 f2
    fsub f1 f3 f1
    swcZ f1 r6 12
    j block_783
block_782:
    swcZ f1 r6 4
    swcZ f2 r6 8
    swcZ f3 r6 12
    j block_783
block_783:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_785
block_784:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r6 16
    j block_786
block_785:
    j block_786
block_786:
    sll r3 r2 2
    swab r6 r4 r3
    j block_775
block_777:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    mv r6 r30
    addi r30 r30 16
    lwcZ f0 r5 0
    lw r7 r3 16
    lwcZ f1 r7 0
    fmul f0 f0 f1
    lwcZ f1 r5 4
    lw r7 r3 16
    lwcZ f2 r7 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r5 8
    lw r5 r3 16
    lwcZ f2 r5 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_788
block_787:
    mv r5 r0
    j block_789
block_788:
    addi r5 r0 1
    j block_789
block_789:
    bne r5 r0 block_791
    j block_790
block_790:
    #0.0
    flui f0 0
    swcZ f0 r6 0
    j block_792
block_791:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    swcZ f1 r6 0
    lw r5 r3 16
    lwcZ f1 r5 0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r6 4
    lw r5 r3 16
    lwcZ f1 r5 4
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r6 8
    lw r3 r3 16
    lwcZ f1 r3 8
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    fneg f0 f0
    swcZ f0 r6 12
    j block_792
block_792:
    sll r3 r2 2
    swab r6 r4 r3
    j block_775
block_774:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    swcZ f0 r30 20
    mv r6 r30
    addi r30 r30 24
    lwcZ f0 r5 0
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_794
block_793:
    lw r7 r3 24
    lwcZ f0 r5 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_797
block_796:
    mv r8 r0
    j block_798
block_797:
    addi r8 r0 1
    j block_798
block_798:
    bne r7 r0 block_800
    j block_799
block_799:
    mv r7 r8
    j block_801
block_800:
    bne r8 r0 block_803
    j block_802
block_802:
    addi r7 r0 1
    j block_801
block_803:
    mv r7 r0
    j block_801
block_801:
    lw r8 r3 16
    lwcZ f0 r8 0
    bne r7 r0 block_805
    j block_804
block_804:
    fneg f0 f0
    j block_806
block_805:
    j block_806
block_806:
    swcZ f0 r6 0
    #1.0
    flui f0 16256
    lwcZ f1 r5 0
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r6 4
    j block_795
block_794:
    #0.0
    flui f0 0
    swcZ f0 r6 4
    j block_795
block_795:
    lwcZ f0 r5 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_808
block_807:
    lw r7 r3 24
    lwcZ f0 r5 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_811
block_810:
    mv r8 r0
    j block_812
block_811:
    addi r8 r0 1
    j block_812
block_812:
    bne r7 r0 block_814
    j block_813
block_813:
    mv r7 r8
    j block_815
block_814:
    bne r8 r0 block_817
    j block_816
block_816:
    addi r7 r0 1
    j block_815
block_817:
    mv r7 r0
    j block_815
block_815:
    lw r8 r3 16
    lwcZ f0 r8 4
    bne r7 r0 block_819
    j block_818
block_818:
    fneg f0 f0
    j block_820
block_819:
    j block_820
block_820:
    swcZ f0 r6 8
    #1.0
    flui f0 16256
    lwcZ f1 r5 4
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r6 12
    j block_809
block_808:
    #0.0
    flui f0 0
    swcZ f0 r6 12
    j block_809
block_809:
    lwcZ f0 r5 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_822
block_821:
    lw r7 r3 24
    lwcZ f0 r5 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_825
block_824:
    mv r8 r0
    j block_826
block_825:
    addi r8 r0 1
    j block_826
block_826:
    bne r7 r0 block_828
    j block_827
block_827:
    mv r7 r8
    j block_829
block_828:
    bne r8 r0 block_831
    j block_830
block_830:
    addi r7 r0 1
    j block_829
block_831:
    mv r7 r0
    j block_829
block_829:
    lw r3 r3 16
    lwcZ f0 r3 8
    bne r7 r0 block_833
    j block_832
block_832:
    fneg f0 f0
    j block_834
block_833:
    j block_834
block_834:
    swcZ f0 r6 16
    #1.0
    flui f0 16256
    lwcZ f1 r5 8
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r6 20
    j block_823
block_822:
    #0.0
    flui f0 0
    swcZ f0 r6 20
    j block_823
block_823:
    sll r3 r2 2
    swab r6 r4 r3
    j block_775
block_775:
    subi r2 r2 1
    sw r31 r29 0
    addi r29 r29 4
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 4
    lw r31 r29 0
    jr r31
block_772:
    jr r31
block_708:
    jr r31
iter_trace_diffuse_rays.4938:
block_3634:
    addi r5 r0 25552
    blt r4 r0 block_3636
block_3635:
    sll r6 r4 2
    lwab r6 r1 r6
    lw r6 r6 0
    lwcZ f0 r6 0
    lwcZ f1 r2 0
    fmul f0 f0 f1
    lwcZ f1 r6 4
    lwcZ f2 r2 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r6 8
    lwcZ f2 r2 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_3638
block_3637:
    mv r6 r0
    j block_3639
block_3638:
    addi r6 r0 1
    j block_3639
block_3639:
    sw r3 r29 100
    sw r2 r29 80
    sw r4 r29 72
    sw r1 r29 52
    bne r6 r0 block_3641
    j block_3640
block_3640:
    sll r6 r4 2
    lwab r6 r1 r6
    #0.006666667
    flui f1 15322
    fori f1 f1 29710
    fmul f0 f0 f1
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 25548
    lw r7 r0 25536
    lw r8 r7 0
    lw r9 r8 0
    addi r10 r0 -1
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 48
    swcZ f0 r29 28
    beq r9 r10 block_3644
block_3643:
    addi r10 r0 99
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 48
    swcZ f0 r29 28
    sw r7 r29 12
    beq r9 r10 block_3647
block_3646:
    sll r10 r9 2
    lw r10 r10 25048
    lw r11 r10 40
    lwcZ f1 r11 0
    lwcZ f2 r11 4
    lwcZ f3 r11 8
    lw r12 r6 4
    sll r9 r9 2
    lwab r9 r12 r9
    lw r12 r10 4
    addi r13 r0 1
    beq r12 r13 block_3650
block_3649:
    addi r13 r0 2
    beq r12 r13 block_3653
block_3652:
    lwcZ f4 r9 0
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_3655
block_3654:
    lwcZ f5 r9 4
    fmul f1 f5 f1
    lwcZ f5 r9 8
    fmul f2 f5 f2
    fadd f1 f1 f2
    lwcZ f2 r9 12
    fmul f2 f2 f3
    fadd f1 f1 f2
    lwcZ f2 r11 12
    fmul f3 f1 f1
    fmul f2 f4 f2
    fsub f2 f3 f2
    #0.0
    flui f3 0
    fclt f3 f2
    bc1t block_3657
block_3656:
    mv r11 r0
    j block_3658
block_3657:
    addi r11 r0 1
    j block_3658
block_3658:
    bne r11 r0 block_3660
    j block_3659
block_3659:
    mv r9 r0
    j block_3651
block_3660:
    lw r10 r10 24
    bne r10 r0 block_3662
    j block_3661
block_3661:
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    fsub f1 f1 f2
    lwcZ f2 r9 16
    fmul f1 f1 f2
    swcZ f1 r0 25540
    j block_3663
block_3662:
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    fadd f1 f1 f2
    lwcZ f2 r9 16
    fmul f1 f1 f2
    swcZ f1 r0 25540
    j block_3663
block_3663:
    addi r9 r0 1
    j block_3651
block_3655:
    mv r9 r0
    j block_3651
block_3653:
    lwcZ f1 r9 0
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_3665
block_3664:
    mv r10 r0
    j block_3666
block_3665:
    addi r10 r0 1
    j block_3666
block_3666:
    bne r10 r0 block_3668
    j block_3667
block_3667:
    mv r9 r0
    j block_3651
block_3668:
    lwcZ f1 r9 0
    lwcZ f2 r11 12
    fmul f1 f1 f2
    swcZ f1 r0 25540
    addi r9 r0 1
    j block_3651
block_3650:
    lw r11 r6 0
    lwcZ f4 r9 0
    fsub f4 f4 f1
    lwcZ f5 r9 4
    fmul f4 f4 f5
    lwcZ f5 r11 4
    fmul f5 f4 f5
    fadd f5 f5 f2
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_3670
block_3669:
    j block_3671
block_3670:
    fneg f5 f5
    j block_3671
block_3671:
    lw r12 r10 16
    lwcZ f6 r12 4
    fclt f5 f6
    bc1t block_3673
block_3672:
    mv r12 r0
    j block_3674
block_3673:
    lwcZ f5 r11 8
    fmul f5 f4 f5
    fadd f5 f5 f3
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_3676
block_3675:
    j block_3677
block_3676:
    fneg f5 f5
    j block_3677
block_3677:
    lw r12 r10 16
    lwcZ f6 r12 8
    fclt f5 f6
    bc1t block_3679
block_3678:
    mv r12 r0
    j block_3674
block_3679:
    lwcZ f5 r9 4
    #0.0
    flui f6 0
    fsub f31 f5 f6
    fcz f31
    bc1t block_3681
block_3680:
    mv r12 r0
    j block_3682
block_3681:
    addi r12 r0 1
    j block_3682
block_3682:
    bne r12 r0 block_3684
    j block_3683
block_3683:
    addi r12 r0 1
    j block_3674
block_3684:
    mv r12 r0
    j block_3674
block_3674:
    bne r12 r0 block_3686
    j block_3685
block_3685:
    lwcZ f4 r9 8
    fsub f4 f4 f2
    lwcZ f5 r9 12
    fmul f4 f4 f5
    lwcZ f5 r11 0
    fmul f5 f4 f5
    fadd f5 f5 f1
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_3688
block_3687:
    j block_3689
block_3688:
    fneg f5 f5
    j block_3689
block_3689:
    lw r12 r10 16
    lwcZ f6 r12 0
    fclt f5 f6
    bc1t block_3691
block_3690:
    mv r12 r0
    j block_3692
block_3691:
    lwcZ f5 r11 8
    fmul f5 f4 f5
    fadd f5 f5 f3
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_3694
block_3693:
    j block_3695
block_3694:
    fneg f5 f5
    j block_3695
block_3695:
    lw r12 r10 16
    lwcZ f6 r12 8
    fclt f5 f6
    bc1t block_3697
block_3696:
    mv r12 r0
    j block_3692
block_3697:
    lwcZ f5 r9 12
    #0.0
    flui f6 0
    fsub f31 f5 f6
    fcz f31
    bc1t block_3699
block_3698:
    mv r12 r0
    j block_3700
block_3699:
    addi r12 r0 1
    j block_3700
block_3700:
    bne r12 r0 block_3702
    j block_3701
block_3701:
    addi r12 r0 1
    j block_3692
block_3702:
    mv r12 r0
    j block_3692
block_3692:
    bne r12 r0 block_3704
    j block_3703
block_3703:
    lwcZ f4 r9 16
    fsub f3 f4 f3
    lwcZ f4 r9 20
    fmul f3 f3 f4
    lwcZ f4 r11 0
    fmul f4 f3 f4
    fadd f1 f4 f1
    #0.0
    flui f4 0
    fclt f1 f4
    bc1t block_3706
block_3705:
    j block_3707
block_3706:
    fneg f1 f1
    j block_3707
block_3707:
    lw r12 r10 16
    lwcZ f4 r12 0
    fclt f1 f4
    bc1t block_3709
block_3708:
    mv r9 r0
    j block_3710
block_3709:
    lwcZ f1 r11 4
    fmul f1 f3 f1
    fadd f1 f1 f2
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_3712
block_3711:
    j block_3713
block_3712:
    fneg f1 f1
    j block_3713
block_3713:
    lw r10 r10 16
    lwcZ f2 r10 4
    fclt f1 f2
    bc1t block_3715
block_3714:
    mv r9 r0
    j block_3710
block_3715:
    lwcZ f1 r9 20
    #0.0
    flui f2 0
    fsub f31 f1 f2
    fcz f31
    bc1t block_3717
block_3716:
    mv r9 r0
    j block_3718
block_3717:
    addi r9 r0 1
    j block_3718
block_3718:
    bne r9 r0 block_3720
    j block_3719
block_3719:
    addi r9 r0 1
    j block_3710
block_3720:
    mv r9 r0
    j block_3710
block_3710:
    bne r9 r0 block_3722
    j block_3721
block_3721:
    mv r9 r0
    j block_3651
block_3722:
    swcZ f3 r0 25540
    addi r9 r0 3
    j block_3651
block_3704:
    swcZ f4 r0 25540
    addi r9 r0 2
    j block_3651
block_3686:
    swcZ f4 r0 25540
    addi r9 r0 1
    j block_3651
block_3651:
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 48
    swcZ f0 r29 28
    sw r7 r29 12
    beq r9 r0 block_3724
block_3723:
    lwcZ f1 r0 25540
    lwcZ f2 r0 25548
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 48
    swcZ f0 r29 28
    sw r7 r29 12
    fclt f1 f2
    bc1t block_3726
block_3725:
    j block_3648
block_3726:
    lw r9 r8 4
    addi r10 r0 -1
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 48
    swcZ f0 r29 28
    sw r7 r29 12
    beq r9 r10 block_3728
block_3727:
    sll r9 r9 2
    lw r9 r9 25332
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r8 r29 68
    sw r1 r29 52
    sw r6 r29 48
    swcZ f0 r29 28
    sw r7 r29 12
    mv r3 r6
    mv r2 r9
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 68
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3730
block_3729:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 48
    sw r1 r29 68
    sw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 68
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3732
block_3731:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 48
    sw r1 r29 68
    sw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 68
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3734
block_3733:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 48
    sw r1 r29 68
    sw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    addi r1 r0 5
    lw r2 r29 68
    lw r3 r29 48
    sw r3 r29 48
    sw r31 r29 104
    addi r29 r29 108
    jal solve_one_or_network_fast.4471
    subi r29 r29 108
    lw r31 r29 104
    j block_3648
block_3734:
    j block_3648
block_3732:
    j block_3648
block_3730:
    j block_3648
block_3728:
    j block_3648
block_3724:
    j block_3648
block_3647:
    lw r9 r8 4
    addi r10 r0 -1
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 48
    swcZ f0 r29 28
    sw r7 r29 12
    beq r9 r10 block_3736
block_3735:
    sll r9 r9 2
    lw r9 r9 25332
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r8 r29 68
    sw r1 r29 52
    sw r6 r29 48
    swcZ f0 r29 28
    sw r7 r29 12
    mv r3 r6
    mv r2 r9
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 68
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3738
block_3737:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 48
    sw r1 r29 68
    sw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 68
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3740
block_3739:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 48
    sw r1 r29 68
    sw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 68
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3742
block_3741:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 48
    sw r1 r29 68
    sw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    addi r1 r0 5
    lw r2 r29 68
    lw r3 r29 48
    sw r3 r29 48
    sw r31 r29 104
    addi r29 r29 108
    jal solve_one_or_network_fast.4471
    subi r29 r29 108
    lw r31 r29 104
    j block_3648
block_3742:
    j block_3648
block_3740:
    j block_3648
block_3738:
    j block_3648
block_3736:
    j block_3648
block_3648:
    addi r1 r0 1
    lw r2 r29 12
    lw r3 r29 48
    sw r3 r29 48
    sw r31 r29 104
    addi r29 r29 108
    jal trace_or_matrix_fast.4483
    subi r29 r29 108
    lw r31 r29 104
    j block_3645
block_3644:
    j block_3645
block_3645:
    lwcZ f0 r0 25548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_3744
block_3743:
    mv r1 r0
    j block_3745
block_3744:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_3747
block_3746:
    mv r1 r0
    j block_3745
block_3747:
    addi r1 r0 1
    j block_3745
block_3745:
    bne r1 r0 block_3749
    j block_3748
block_3748:
    j block_3642
block_3749:
    lw r1 r0 25564
    sll r1 r1 2
    lw r1 r1 25048
    lw r2 r29 48
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_3751
block_3750:
    addi r2 r0 2
    beq r3 r2 block_3754
block_3753:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r2 r1 20
    lwcZ f3 r2 8
    fsub f2 f2 f3
    lw r2 r1 16
    lwcZ f3 r2 0
    fmul f3 f0 f3
    lw r2 r1 16
    lwcZ f4 r2 4
    fmul f4 f1 f4
    lw r2 r1 16
    lwcZ f5 r2 8
    fmul f5 f2 f5
    lw r2 r1 12
    beq r2 r0 block_3756
block_3755:
    lw r2 r1 36
    lwcZ f6 r2 8
    fmul f6 f1 f6
    lw r2 r1 36
    lwcZ f7 r2 4
    fmul f7 f2 f7
    fadd f6 f6 f7
    #0.5
    flui f7 16128
    fmul f6 f6 f7
    fadd f3 f3 f6
    swcZ f3 r0 25568
    lw r2 r1 36
    lwcZ f3 r2 8
    fmul f3 f0 f3
    lw r2 r1 36
    lwcZ f6 r2 0
    fmul f2 f2 f6
    fadd f2 f3 f2
    #0.5
    flui f3 16128
    fmul f2 f2 f3
    fadd f2 f4 f2
    swcZ f2 r0 25572
    lw r2 r1 36
    lwcZ f2 r2 4
    fmul f0 f0 f2
    lw r2 r1 36
    lwcZ f2 r2 0
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.5
    flui f1 16128
    fmul f0 f0 f1
    fadd f0 f5 f0
    swcZ f0 r0 25576
    j block_3757
block_3756:
    swcZ f3 r0 25568
    swcZ f4 r0 25572
    swcZ f5 r0 25576
    j block_3757
block_3757:
    lw r2 r1 24
    lwcZ f0 r0 25568
    fmul f0 f0 f0
    lwcZ f1 r0 25572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3759
block_3758:
    bne r2 r0 block_3762
    j block_3761
block_3761:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_3760
block_3762:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_3760
block_3759:
    #1.0
    flui f0 16256
    j block_3760
block_3760:
    lwcZ f1 r0 25568
    fmul f1 f1 f0
    swcZ f1 r0 25568
    lwcZ f1 r0 25572
    fmul f1 f1 f0
    swcZ f1 r0 25572
    lwcZ f1 r0 25576
    fmul f0 f1 f0
    swcZ f0 r0 25576
    j block_3752
block_3754:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 25568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 25572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 25576
    j block_3752
block_3751:
    lw r3 r0 25544
    #0.0
    flui f0 0
    swcZ f0 r0 25568
    swcZ f0 r0 25572
    swcZ f0 r0 25576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3764
block_3763:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3767
block_3766:
    mv r2 r0
    j block_3768
block_3767:
    addi r2 r0 1
    j block_3768
block_3768:
    bne r2 r0 block_3770
    j block_3769
block_3769:
    #-1.0
    flui f0 -16512
    j block_3765
block_3770:
    #1.0
    flui f0 16256
    j block_3765
block_3764:
    #0.0
    flui f0 0
    j block_3765
block_3765:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 25568
    j block_3752
block_3752:
    lw r2 r29 76
    sw r1 r29 88
    sw r31 r29 104
    addi r29 r29 108
    jal utexture.4603
    subi r29 r29 108
    lw r31 r29 104
    lw r2 r0 25536
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_3772
    j block_3771
block_3771:
    lwcZ f0 r0 25568
    lwcZ f1 r0 25312
    fmul f0 f0 f1
    lwcZ f1 r0 25572
    lwcZ f2 r0 25316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    lwcZ f2 r0 25320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3774
block_3773:
    mv r1 r0
    j block_3775
block_3774:
    addi r1 r0 1
    j block_3775
block_3775:
    bne r1 r0 block_3777
    j block_3776
block_3776:
    #0.0
    flui f0 0
    j block_3778
block_3777:
    j block_3778
block_3778:
    lwcZ f1 r29 28
    fmul f0 f1 f0
    lw r1 r29 88
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 25592
    lwcZ f2 r0 25580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25592
    lwcZ f1 r0 25596
    lwcZ f2 r0 25584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25596
    lwcZ f1 r0 25600
    lwcZ f2 r0 25588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 25600
    j block_3642
block_3772:
    j block_3642
block_3641:
    addi r6 r4 1
    sll r6 r6 2
    lwab r6 r1 r6
    #-0.006666667
    flui f1 -17446
    fori f1 f1 29710
    fmul f0 f0 f1
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 25548
    lw r7 r0 25536
    lw r8 r7 0
    lw r9 r8 0
    addi r10 r0 -1
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 40
    swcZ f0 r29 20
    beq r9 r10 block_3780
block_3779:
    addi r10 r0 99
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 40
    swcZ f0 r29 20
    sw r7 r29 8
    beq r9 r10 block_3783
block_3782:
    sll r10 r9 2
    lw r10 r10 25048
    lw r11 r10 40
    lwcZ f1 r11 0
    lwcZ f2 r11 4
    lwcZ f3 r11 8
    lw r12 r6 4
    sll r9 r9 2
    lwab r9 r12 r9
    lw r12 r10 4
    addi r13 r0 1
    beq r12 r13 block_3786
block_3785:
    addi r13 r0 2
    beq r12 r13 block_3789
block_3788:
    lwcZ f4 r9 0
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_3791
block_3790:
    lwcZ f5 r9 4
    fmul f1 f5 f1
    lwcZ f5 r9 8
    fmul f2 f5 f2
    fadd f1 f1 f2
    lwcZ f2 r9 12
    fmul f2 f2 f3
    fadd f1 f1 f2
    lwcZ f2 r11 12
    fmul f3 f1 f1
    fmul f2 f4 f2
    fsub f2 f3 f2
    #0.0
    flui f3 0
    fclt f3 f2
    bc1t block_3793
block_3792:
    mv r11 r0
    j block_3794
block_3793:
    addi r11 r0 1
    j block_3794
block_3794:
    bne r11 r0 block_3796
    j block_3795
block_3795:
    mv r9 r0
    j block_3787
block_3796:
    lw r10 r10 24
    bne r10 r0 block_3798
    j block_3797
block_3797:
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    fsub f1 f1 f2
    lwcZ f2 r9 16
    fmul f1 f1 f2
    swcZ f1 r0 25540
    j block_3799
block_3798:
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    fadd f1 f1 f2
    lwcZ f2 r9 16
    fmul f1 f1 f2
    swcZ f1 r0 25540
    j block_3799
block_3799:
    addi r9 r0 1
    j block_3787
block_3791:
    mv r9 r0
    j block_3787
block_3789:
    lwcZ f1 r9 0
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_3801
block_3800:
    mv r10 r0
    j block_3802
block_3801:
    addi r10 r0 1
    j block_3802
block_3802:
    bne r10 r0 block_3804
    j block_3803
block_3803:
    mv r9 r0
    j block_3787
block_3804:
    lwcZ f1 r9 0
    lwcZ f2 r11 12
    fmul f1 f1 f2
    swcZ f1 r0 25540
    addi r9 r0 1
    j block_3787
block_3786:
    lw r11 r6 0
    lwcZ f4 r9 0
    fsub f4 f4 f1
    lwcZ f5 r9 4
    fmul f4 f4 f5
    lwcZ f5 r11 4
    fmul f5 f4 f5
    fadd f5 f5 f2
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_3806
block_3805:
    j block_3807
block_3806:
    fneg f5 f5
    j block_3807
block_3807:
    lw r12 r10 16
    lwcZ f6 r12 4
    fclt f5 f6
    bc1t block_3809
block_3808:
    mv r12 r0
    j block_3810
block_3809:
    lwcZ f5 r11 8
    fmul f5 f4 f5
    fadd f5 f5 f3
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_3812
block_3811:
    j block_3813
block_3812:
    fneg f5 f5
    j block_3813
block_3813:
    lw r12 r10 16
    lwcZ f6 r12 8
    fclt f5 f6
    bc1t block_3815
block_3814:
    mv r12 r0
    j block_3810
block_3815:
    lwcZ f5 r9 4
    #0.0
    flui f6 0
    fsub f31 f5 f6
    fcz f31
    bc1t block_3817
block_3816:
    mv r12 r0
    j block_3818
block_3817:
    addi r12 r0 1
    j block_3818
block_3818:
    bne r12 r0 block_3820
    j block_3819
block_3819:
    addi r12 r0 1
    j block_3810
block_3820:
    mv r12 r0
    j block_3810
block_3810:
    bne r12 r0 block_3822
    j block_3821
block_3821:
    lwcZ f4 r9 8
    fsub f4 f4 f2
    lwcZ f5 r9 12
    fmul f4 f4 f5
    lwcZ f5 r11 0
    fmul f5 f4 f5
    fadd f5 f5 f1
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_3824
block_3823:
    j block_3825
block_3824:
    fneg f5 f5
    j block_3825
block_3825:
    lw r12 r10 16
    lwcZ f6 r12 0
    fclt f5 f6
    bc1t block_3827
block_3826:
    mv r12 r0
    j block_3828
block_3827:
    lwcZ f5 r11 8
    fmul f5 f4 f5
    fadd f5 f5 f3
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_3830
block_3829:
    j block_3831
block_3830:
    fneg f5 f5
    j block_3831
block_3831:
    lw r12 r10 16
    lwcZ f6 r12 8
    fclt f5 f6
    bc1t block_3833
block_3832:
    mv r12 r0
    j block_3828
block_3833:
    lwcZ f5 r9 12
    #0.0
    flui f6 0
    fsub f31 f5 f6
    fcz f31
    bc1t block_3835
block_3834:
    mv r12 r0
    j block_3836
block_3835:
    addi r12 r0 1
    j block_3836
block_3836:
    bne r12 r0 block_3838
    j block_3837
block_3837:
    addi r12 r0 1
    j block_3828
block_3838:
    mv r12 r0
    j block_3828
block_3828:
    bne r12 r0 block_3840
    j block_3839
block_3839:
    lwcZ f4 r9 16
    fsub f3 f4 f3
    lwcZ f4 r9 20
    fmul f3 f3 f4
    lwcZ f4 r11 0
    fmul f4 f3 f4
    fadd f1 f4 f1
    #0.0
    flui f4 0
    fclt f1 f4
    bc1t block_3842
block_3841:
    j block_3843
block_3842:
    fneg f1 f1
    j block_3843
block_3843:
    lw r12 r10 16
    lwcZ f4 r12 0
    fclt f1 f4
    bc1t block_3845
block_3844:
    mv r9 r0
    j block_3846
block_3845:
    lwcZ f1 r11 4
    fmul f1 f3 f1
    fadd f1 f1 f2
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_3848
block_3847:
    j block_3849
block_3848:
    fneg f1 f1
    j block_3849
block_3849:
    lw r10 r10 16
    lwcZ f2 r10 4
    fclt f1 f2
    bc1t block_3851
block_3850:
    mv r9 r0
    j block_3846
block_3851:
    lwcZ f1 r9 20
    #0.0
    flui f2 0
    fsub f31 f1 f2
    fcz f31
    bc1t block_3853
block_3852:
    mv r9 r0
    j block_3854
block_3853:
    addi r9 r0 1
    j block_3854
block_3854:
    bne r9 r0 block_3856
    j block_3855
block_3855:
    addi r9 r0 1
    j block_3846
block_3856:
    mv r9 r0
    j block_3846
block_3846:
    bne r9 r0 block_3858
    j block_3857
block_3857:
    mv r9 r0
    j block_3787
block_3858:
    swcZ f3 r0 25540
    addi r9 r0 3
    j block_3787
block_3840:
    swcZ f4 r0 25540
    addi r9 r0 2
    j block_3787
block_3822:
    swcZ f4 r0 25540
    addi r9 r0 1
    j block_3787
block_3787:
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 40
    swcZ f0 r29 20
    sw r7 r29 8
    beq r9 r0 block_3860
block_3859:
    lwcZ f1 r0 25540
    lwcZ f2 r0 25548
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 40
    swcZ f0 r29 20
    sw r7 r29 8
    fclt f1 f2
    bc1t block_3862
block_3861:
    j block_3784
block_3862:
    lw r9 r8 4
    addi r10 r0 -1
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 40
    swcZ f0 r29 20
    sw r7 r29 8
    beq r9 r10 block_3864
block_3863:
    sll r9 r9 2
    lw r9 r9 25332
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r8 r29 64
    sw r1 r29 52
    sw r6 r29 40
    swcZ f0 r29 20
    sw r7 r29 8
    mv r3 r6
    mv r2 r9
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 64
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3866
block_3865:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 40
    sw r1 r29 64
    sw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 64
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3868
block_3867:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 40
    sw r1 r29 64
    sw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 64
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3870
block_3869:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 40
    sw r1 r29 64
    sw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    addi r1 r0 5
    lw r2 r29 64
    lw r3 r29 40
    sw r3 r29 40
    sw r31 r29 104
    addi r29 r29 108
    jal solve_one_or_network_fast.4471
    subi r29 r29 108
    lw r31 r29 104
    j block_3784
block_3870:
    j block_3784
block_3868:
    j block_3784
block_3866:
    j block_3784
block_3864:
    j block_3784
block_3860:
    j block_3784
block_3783:
    lw r9 r8 4
    addi r10 r0 -1
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r1 r29 52
    sw r6 r29 40
    swcZ f0 r29 20
    sw r7 r29 8
    beq r9 r10 block_3872
block_3871:
    sll r9 r9 2
    lw r9 r9 25332
    sw r3 r29 100
    sw r2 r29 80
    sw r5 r29 76
    sw r4 r29 72
    sw r8 r29 64
    sw r1 r29 52
    sw r6 r29 40
    swcZ f0 r29 20
    sw r7 r29 8
    mv r3 r6
    mv r2 r9
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 64
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3874
block_3873:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 40
    sw r1 r29 64
    sw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 64
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3876
block_3875:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 40
    sw r1 r29 64
    sw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 64
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3878
block_3877:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 40
    sw r1 r29 64
    sw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    addi r1 r0 5
    lw r2 r29 64
    lw r3 r29 40
    sw r3 r29 40
    sw r31 r29 104
    addi r29 r29 108
    jal solve_one_or_network_fast.4471
    subi r29 r29 108
    lw r31 r29 104
    j block_3784
block_3878:
    j block_3784
block_3876:
    j block_3784
block_3874:
    j block_3784
block_3872:
    j block_3784
block_3784:
    addi r1 r0 1
    lw r2 r29 8
    lw r3 r29 40
    sw r3 r29 40
    sw r31 r29 104
    addi r29 r29 108
    jal trace_or_matrix_fast.4483
    subi r29 r29 108
    lw r31 r29 104
    j block_3781
block_3780:
    j block_3781
block_3781:
    lwcZ f0 r0 25548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_3880
block_3879:
    mv r1 r0
    j block_3881
block_3880:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_3883
block_3882:
    mv r1 r0
    j block_3881
block_3883:
    addi r1 r0 1
    j block_3881
block_3881:
    bne r1 r0 block_3885
    j block_3884
block_3884:
    j block_3642
block_3885:
    lw r1 r0 25564
    sll r1 r1 2
    lw r1 r1 25048
    lw r2 r29 40
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_3887
block_3886:
    addi r2 r0 2
    beq r3 r2 block_3890
block_3889:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r2 r1 20
    lwcZ f3 r2 8
    fsub f2 f2 f3
    lw r2 r1 16
    lwcZ f3 r2 0
    fmul f3 f0 f3
    lw r2 r1 16
    lwcZ f4 r2 4
    fmul f4 f1 f4
    lw r2 r1 16
    lwcZ f5 r2 8
    fmul f5 f2 f5
    lw r2 r1 12
    beq r2 r0 block_3892
block_3891:
    lw r2 r1 36
    lwcZ f6 r2 8
    fmul f6 f1 f6
    lw r2 r1 36
    lwcZ f7 r2 4
    fmul f7 f2 f7
    fadd f6 f6 f7
    #0.5
    flui f7 16128
    fmul f6 f6 f7
    fadd f3 f3 f6
    swcZ f3 r0 25568
    lw r2 r1 36
    lwcZ f3 r2 8
    fmul f3 f0 f3
    lw r2 r1 36
    lwcZ f6 r2 0
    fmul f2 f2 f6
    fadd f2 f3 f2
    #0.5
    flui f3 16128
    fmul f2 f2 f3
    fadd f2 f4 f2
    swcZ f2 r0 25572
    lw r2 r1 36
    lwcZ f2 r2 4
    fmul f0 f0 f2
    lw r2 r1 36
    lwcZ f2 r2 0
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.5
    flui f1 16128
    fmul f0 f0 f1
    fadd f0 f5 f0
    swcZ f0 r0 25576
    j block_3893
block_3892:
    swcZ f3 r0 25568
    swcZ f4 r0 25572
    swcZ f5 r0 25576
    j block_3893
block_3893:
    lw r2 r1 24
    lwcZ f0 r0 25568
    fmul f0 f0 f0
    lwcZ f1 r0 25572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3895
block_3894:
    bne r2 r0 block_3898
    j block_3897
block_3897:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_3896
block_3898:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_3896
block_3895:
    #1.0
    flui f0 16256
    j block_3896
block_3896:
    lwcZ f1 r0 25568
    fmul f1 f1 f0
    swcZ f1 r0 25568
    lwcZ f1 r0 25572
    fmul f1 f1 f0
    swcZ f1 r0 25572
    lwcZ f1 r0 25576
    fmul f0 f1 f0
    swcZ f0 r0 25576
    j block_3888
block_3890:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 25568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 25572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 25576
    j block_3888
block_3887:
    lw r3 r0 25544
    #0.0
    flui f0 0
    swcZ f0 r0 25568
    swcZ f0 r0 25572
    swcZ f0 r0 25576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3900
block_3899:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3903
block_3902:
    mv r2 r0
    j block_3904
block_3903:
    addi r2 r0 1
    j block_3904
block_3904:
    bne r2 r0 block_3906
    j block_3905
block_3905:
    #-1.0
    flui f0 -16512
    j block_3901
block_3906:
    #1.0
    flui f0 16256
    j block_3901
block_3900:
    #0.0
    flui f0 0
    j block_3901
block_3901:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 25568
    j block_3888
block_3888:
    lw r2 r29 76
    sw r1 r29 84
    sw r31 r29 104
    addi r29 r29 108
    jal utexture.4603
    subi r29 r29 108
    lw r31 r29 104
    lw r2 r0 25536
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_3908
    j block_3907
block_3907:
    lwcZ f0 r0 25568
    lwcZ f1 r0 25312
    fmul f0 f0 f1
    lwcZ f1 r0 25572
    lwcZ f2 r0 25316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    lwcZ f2 r0 25320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3910
block_3909:
    mv r1 r0
    j block_3911
block_3910:
    addi r1 r0 1
    j block_3911
block_3911:
    bne r1 r0 block_3913
    j block_3912
block_3912:
    #0.0
    flui f0 0
    j block_3914
block_3913:
    j block_3914
block_3914:
    lwcZ f1 r29 20
    fmul f0 f1 f0
    lw r1 r29 84
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 25592
    lwcZ f2 r0 25580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25592
    lwcZ f1 r0 25596
    lwcZ f2 r0 25584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25596
    lwcZ f1 r0 25600
    lwcZ f2 r0 25588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 25600
    j block_3642
block_3908:
    j block_3642
block_3642:
    lw r1 r29 72
    subi r1 r1 2
    blt r1 r0 block_3916
block_3915:
    sll r2 r1 2
    lw r3 r29 52
    lwab r2 r3 r2
    lw r2 r2 0
    lwcZ f0 r2 0
    lw r4 r29 80
    lwcZ f1 r4 0
    fmul f0 f0 f1
    lwcZ f1 r2 4
    lwcZ f2 r4 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r2 8
    lwcZ f2 r4 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_3918
block_3917:
    mv r2 r0
    j block_3919
block_3918:
    addi r2 r0 1
    j block_3919
block_3919:
    sw r4 r29 80
    sw r3 r29 52
    sw r1 r29 32
    bne r2 r0 block_3921
    j block_3920
block_3920:
    sll r2 r1 2
    lwab r2 r3 r2
    #0.006666667
    flui f1 15322
    fori f1 f1 29710
    fmul f0 f0 f1
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 25548
    lw r5 r0 25536
    sw r4 r29 80
    sw r3 r29 52
    sw r2 r29 44
    sw r1 r29 32
    swcZ f0 r29 24
    mv r3 r2
    mv r1 r0
    mv r2 r5
    sw r31 r29 104
    addi r29 r29 108
    jal trace_or_matrix_fast.4483
    subi r29 r29 108
    lw r31 r29 104
    lwcZ f0 r0 25548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_3924
block_3923:
    mv r1 r0
    j block_3925
block_3924:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_3927
block_3926:
    mv r1 r0
    j block_3925
block_3927:
    addi r1 r0 1
    j block_3925
block_3925:
    bne r1 r0 block_3929
    j block_3928
block_3928:
    j block_3922
block_3929:
    lw r1 r0 25564
    sll r1 r1 2
    lw r1 r1 25048
    lw r2 r29 44
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_3931
block_3930:
    addi r2 r0 2
    beq r3 r2 block_3934
block_3933:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r2 r1 20
    lwcZ f3 r2 8
    fsub f2 f2 f3
    lw r2 r1 16
    lwcZ f3 r2 0
    fmul f3 f0 f3
    lw r2 r1 16
    lwcZ f4 r2 4
    fmul f4 f1 f4
    lw r2 r1 16
    lwcZ f5 r2 8
    fmul f5 f2 f5
    lw r2 r1 12
    beq r2 r0 block_3936
block_3935:
    lw r2 r1 36
    lwcZ f6 r2 8
    fmul f6 f1 f6
    lw r2 r1 36
    lwcZ f7 r2 4
    fmul f7 f2 f7
    fadd f6 f6 f7
    #0.5
    flui f7 16128
    fmul f6 f6 f7
    fadd f3 f3 f6
    swcZ f3 r0 25568
    lw r2 r1 36
    lwcZ f3 r2 8
    fmul f3 f0 f3
    lw r2 r1 36
    lwcZ f6 r2 0
    fmul f2 f2 f6
    fadd f2 f3 f2
    #0.5
    flui f3 16128
    fmul f2 f2 f3
    fadd f2 f4 f2
    swcZ f2 r0 25572
    lw r2 r1 36
    lwcZ f2 r2 4
    fmul f0 f0 f2
    lw r2 r1 36
    lwcZ f2 r2 0
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.5
    flui f1 16128
    fmul f0 f0 f1
    fadd f0 f5 f0
    swcZ f0 r0 25576
    j block_3937
block_3936:
    swcZ f3 r0 25568
    swcZ f4 r0 25572
    swcZ f5 r0 25576
    j block_3937
block_3937:
    lw r2 r1 24
    lwcZ f0 r0 25568
    fmul f0 f0 f0
    lwcZ f1 r0 25572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3939
block_3938:
    bne r2 r0 block_3942
    j block_3941
block_3941:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_3940
block_3942:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_3940
block_3939:
    #1.0
    flui f0 16256
    j block_3940
block_3940:
    lwcZ f1 r0 25568
    fmul f1 f1 f0
    swcZ f1 r0 25568
    lwcZ f1 r0 25572
    fmul f1 f1 f0
    swcZ f1 r0 25572
    lwcZ f1 r0 25576
    fmul f0 f1 f0
    swcZ f0 r0 25576
    j block_3932
block_3934:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 25568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 25572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 25576
    j block_3932
block_3931:
    lw r3 r0 25544
    #0.0
    flui f0 0
    swcZ f0 r0 25568
    swcZ f0 r0 25572
    swcZ f0 r0 25576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3944
block_3943:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3947
block_3946:
    mv r2 r0
    j block_3948
block_3947:
    addi r2 r0 1
    j block_3948
block_3948:
    bne r2 r0 block_3950
    j block_3949
block_3949:
    #-1.0
    flui f0 -16512
    j block_3945
block_3950:
    #1.0
    flui f0 16256
    j block_3945
block_3944:
    #0.0
    flui f0 0
    j block_3945
block_3945:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 25568
    j block_3932
block_3932:
    lw r2 r1 0
    lw r3 r1 32
    lwcZ f0 r3 0
    swcZ f0 r0 25580
    lw r3 r1 32
    lwcZ f0 r3 4
    swcZ f0 r0 25584
    lw r3 r1 32
    lwcZ f0 r3 8
    swcZ f0 r0 25588
    addi r3 r0 1
    beq r2 r3 block_3952
block_3951:
    addi r3 r0 2
    beq r2 r3 block_3955
block_3954:
    addi r3 r0 3
    beq r2 r3 block_3957
block_3956:
    addi r3 r0 4
    beq r2 r3 block_3959
block_3958:
    j block_3953
block_3959:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lw r2 r1 16
    lwcZ f1 r2 0
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fmul f0 f0 f1
    lwcZ f1 r0 25560
    lw r2 r1 20
    lwcZ f2 r2 8
    fsub f1 f1 f2
    lw r2 r1 16
    lwcZ f2 r2 8
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    fmul f1 f1 f2
    fmul f2 f0 f0
    fmul f3 f1 f1
    fadd f2 f2 f3
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_3961
block_3960:
    fmv f3 f0
    j block_3962
block_3961:
    fneg f3 f0
    j block_3962
block_3962:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_3964
block_3963:
    finv_init f3 f0
    #2.0
    flui f4 16384
    fmul f0 f0 f3
    fsub f0 f4 f0
    fmul f0 f3 f0
    fmul f0 f1 f0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_3967
block_3966:
    j block_3968
block_3967:
    fneg f0 f0
    j block_3968
block_3968:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3970
block_3969:
    mv r2 r0
    j block_3971
block_3970:
    addi r2 r0 1
    j block_3971
block_3971:
    bne r2 r0 block_3973
    j block_3972
block_3972:
    fneg f0 f0
    j block_3974
block_3973:
    j block_3974
block_3974:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_3976
block_3975:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_3979
block_3978:
    #1.5707964
    flui f1 16329
    fori f1 f1 4059
    #1.0
    flui f3 16256
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fsub f0 f1 f0
    j block_3977
block_3979:
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.0
    flui f3 16256
    fsub f3 f0 f3
    #1.0
    flui f4 16256
    fadd f0 f0 f4
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fadd f0 f1 f0
    j block_3977
block_3976:
    fmul f1 f0 f0
    fmul f3 f1 f0
    fmul f4 f1 f3
    fmul f5 f1 f4
    fmul f6 f1 f5
    fmul f7 f1 f6
    fmul f1 f1 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f0 f0 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f0 f0 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f0 f0 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f0 f0 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f0 f0 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f1 f3 f1
    fadd f0 f0 f1
    j block_3977
block_3977:
    bne r2 r0 block_3981
    j block_3980
block_3980:
    fneg f0 f0
    j block_3982
block_3981:
    j block_3982
block_3982:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_3965
block_3964:
    #15.0
    flui f0 16752
    j block_3965
block_3965:
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_3984
block_3983:
    j block_3985
block_3984:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_3985
block_3985:
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f3 r2 4
    fsub f1 f1 f3
    lw r2 r1 16
    lwcZ f3 r2 4
    sqrt_init f4 f3
    fmul f3 f3 f4
    #1.5
    flui f5 16320
    #0.5
    flui f6 16128
    fmul f4 f6 f4
    fmul f4 f4 f3
    fsub f4 f5 f4
    fmul f3 f3 f4
    fmul f1 f1 f3
    #0.0
    flui f3 0
    fclt f2 f3
    bc1t block_3987
block_3986:
    fmv f3 f2
    j block_3988
block_3987:
    fneg f3 f2
    j block_3988
block_3988:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_3990
block_3989:
    finv_init f3 f2
    #2.0
    flui f4 16384
    fmul f2 f2 f3
    fsub f2 f4 f2
    fmul f2 f3 f2
    fmul f1 f1 f2
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_3993
block_3992:
    j block_3994
block_3993:
    fneg f1 f1
    j block_3994
block_3994:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_3996
block_3995:
    mv r2 r0
    j block_3997
block_3996:
    addi r2 r0 1
    j block_3997
block_3997:
    bne r2 r0 block_3999
    j block_3998
block_3998:
    fneg f1 f1
    j block_4000
block_3999:
    j block_4000
block_4000:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_4002
block_4001:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_4005
block_4004:
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #1.0
    flui f3 16256
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fsub f1 f2 f1
    j block_4003
block_4005:
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.0
    flui f3 16256
    fsub f3 f1 f3
    #1.0
    flui f4 16256
    fadd f1 f1 f4
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fadd f1 f2 f1
    j block_4003
block_4002:
    fmul f2 f1 f1
    fmul f3 f2 f1
    fmul f4 f2 f3
    fmul f5 f2 f4
    fmul f6 f2 f5
    fmul f7 f2 f6
    fmul f2 f2 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f1 f1 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f1 f1 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f1 f1 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f1 f1 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f1 f1 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f2 f3 f2
    fadd f1 f1 f2
    j block_4003
block_4003:
    bne r2 r0 block_4007
    j block_4006
block_4006:
    fneg f1 f1
    j block_4008
block_4007:
    j block_4008
block_4008:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_3991
block_3990:
    #15.0
    flui f1 16752
    j block_3991
block_3991:
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_4010
block_4009:
    j block_4011
block_4010:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_4011
block_4011:
    fsub f1 f1 f2
    #0.15
    flui f2 15897
    fori f2 f2 -26214
    #0.5
    flui f3 16128
    fsub f0 f3 f0
    fmul f0 f0 f0
    fsub f0 f2 f0
    #0.5
    flui f2 16128
    fsub f1 f2 f1
    fmul f1 f1 f1
    fsub f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4013
block_4012:
    mv r2 r0
    j block_4014
block_4013:
    addi r2 r0 1
    j block_4014
block_4014:
    bne r2 r0 block_4016
    j block_4015
block_4015:
    j block_4017
block_4016:
    #0.0
    flui f0 0
    j block_4017
block_4017:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 25588
    j block_3953
block_3957:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25560
    lw r2 r1 20
    lwcZ f2 r2 8
    fsub f1 f1 f2
    fmul f0 f0 f0
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.1
    flui f1 15820
    fori f1 f1 -13107
    fmul f0 f0 f1
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_4019
block_4018:
    j block_4020
block_4019:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_4020
block_4020:
    fsub f0 f0 f1
    #3.1415927
    flui f1 16457
    fori f1 f1 4059
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f4 f4 f5
    fsub f0 f0 f4
    #0.0
    flui f4 0
    fclt f4 f0
    bc1t block_4022
block_4021:
    fneg f0 f0
    j block_4023
block_4022:
    j block_4023
block_4023:
    fclt f3 f0
    bc1t block_4025
block_4024:
    addi r2 r0 1
    j block_4026
block_4025:
    addi r2 r0 -1
    j block_4026
block_4026:
    fclt f3 f0
    bc1t block_4028
block_4027:
    j block_4029
block_4028:
    fsub f0 f0 f3
    j block_4029
block_4029:
    fclt f2 f0
    bc1t block_4031
block_4030:
    j block_4032
block_4031:
    sub r2 r0 r2
    j block_4032
block_4032:
    fclt f2 f0
    bc1t block_4034
block_4033:
    j block_4035
block_4034:
    fsub f0 f3 f0
    j block_4035
block_4035:
    fclt f0 f1
    bc1t block_4037
block_4036:
    fsub f0 f2 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_4038
block_4037:
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_4038
block_4038:
    addi r3 r0 -1
    beq r2 r3 block_4040
block_4039:
    j block_4041
block_4040:
    fneg f0 f0
    j block_4041
block_4041:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 25584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 25588
    j block_3953
block_3955:
    lwcZ f0 r0 25556
    #0.25
    flui f1 16000
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f5 f4 f5
    fsub f0 f0 f5
    #0.0
    flui f5 0
    fclt f5 f0
    bc1t block_4043
block_4042:
    fadd f0 f0 f4
    j block_4044
block_4043:
    j block_4044
block_4044:
    fclt f3 f0
    bc1t block_4046
block_4045:
    addi r2 r0 1
    j block_4047
block_4046:
    mv r2 r0
    j block_4047
block_4047:
    fclt f3 f0
    bc1t block_4049
block_4048:
    j block_4050
block_4049:
    fsub f0 f0 f3
    j block_4050
block_4050:
    fclt f2 f0
    bc1t block_4052
block_4051:
    j block_4053
block_4052:
    fsub f0 f3 f0
    j block_4053
block_4053:
    fclt f1 f0
    bc1t block_4055
block_4054:
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_4056
block_4055:
    fsub f0 f2 f0
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_4056
block_4056:
    bne r2 r0 block_4058
    j block_4057
block_4057:
    fneg f0 f0
    j block_4059
block_4058:
    j block_4059
block_4059:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 25580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 25584
    j block_3953
block_3952:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_4061
block_4060:
    fmv f1 f2
    j block_4062
block_4061:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4062
block_4062:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4064
block_4063:
    mv r2 r0
    j block_4065
block_4064:
    addi r2 r0 1
    j block_4065
block_4065:
    lwcZ f0 r0 25560
    lw r3 r1 20
    lwcZ f1 r3 8
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r3 f1
    itof f2 r3
    fclt f1 f2
    bc1t block_4067
block_4066:
    fmv f1 f2
    j block_4068
block_4067:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4068
block_4068:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4070
block_4069:
    mv r3 r0
    j block_4071
block_4070:
    addi r3 r0 1
    j block_4071
block_4071:
    bne r2 r0 block_4073
    j block_4072
block_4072:
    bne r3 r0 block_4076
    j block_4075
block_4075:
    #255.0
    flui f0 17279
    j block_4074
block_4076:
    #0.0
    flui f0 0
    j block_4074
block_4073:
    bne r3 r0 block_4078
    j block_4077
block_4077:
    #0.0
    flui f0 0
    j block_4074
block_4078:
    #255.0
    flui f0 17279
    j block_4074
block_4074:
    swcZ f0 r0 25584
    j block_3953
block_3953:
    lw r2 r0 25536
    lw r3 r2 0
    lw r4 r3 0
    addi r5 r0 -1
    sw r1 r29 96
    beq r4 r5 block_4080
block_4079:
    addi r5 r0 99
    sw r1 r29 96
    sw r3 r29 60
    sw r2 r29 4
    beq r4 r5 block_4083
block_4082:
    sll r5 r4 2
    lw r5 r5 25048
    lwcZ f0 r0 25552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 25992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_4086
block_4085:
    addi r7 r0 2
    beq r6 r7 block_4089
block_4088:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_4091
block_4090:
    lwcZ f4 r4 4
    fmul f4 f4 f0
    lwcZ f5 r4 8
    fmul f5 f5 f1
    fadd f4 f4 f5
    lwcZ f5 r4 12
    fmul f5 f5 f2
    fadd f4 f4 f5
    fmul f5 f0 f0
    lw r6 r5 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r5 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r5 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r5 12
    beq r6 r0 block_4093
block_4092:
    fmul f6 f1 f2
    lw r6 r5 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r5 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r5 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_4094
block_4093:
    fmv f0 f5
    j block_4094
block_4094:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_4096
block_4095:
    j block_4097
block_4096:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_4097
block_4097:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4099
block_4098:
    mv r6 r0
    j block_4100
block_4099:
    addi r6 r0 1
    j block_4100
block_4100:
    bne r6 r0 block_4102
    j block_4101
block_4101:
    mv r4 r0
    j block_4087
block_4102:
    lw r5 r5 24
    bne r5 r0 block_4104
    j block_4103
block_4103:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fsub f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_4105
block_4104:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fadd f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_4105
block_4105:
    addi r4 r0 1
    j block_4087
block_4091:
    mv r4 r0
    j block_4087
block_4089:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_4107
block_4106:
    mv r5 r0
    j block_4108
block_4107:
    addi r5 r0 1
    j block_4108
block_4108:
    bne r5 r0 block_4110
    j block_4109
block_4109:
    mv r4 r0
    j block_4087
block_4110:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_4087
block_4086:
    lw r6 r0 25988
    lwcZ f3 r4 0
    fsub f3 f3 f0
    lwcZ f4 r4 4
    fmul f3 f3 f4
    lwcZ f4 r6 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4112
block_4111:
    j block_4113
block_4112:
    fneg f4 f4
    j block_4113
block_4113:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_4115
block_4114:
    mv r7 r0
    j block_4116
block_4115:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4118
block_4117:
    j block_4119
block_4118:
    fneg f4 f4
    j block_4119
block_4119:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4121
block_4120:
    mv r7 r0
    j block_4116
block_4121:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4123
block_4122:
    mv r7 r0
    j block_4124
block_4123:
    addi r7 r0 1
    j block_4124
block_4124:
    bne r7 r0 block_4126
    j block_4125
block_4125:
    addi r7 r0 1
    j block_4116
block_4126:
    mv r7 r0
    j block_4116
block_4116:
    bne r7 r0 block_4128
    j block_4127
block_4127:
    lwcZ f3 r4 8
    fsub f3 f3 f1
    lwcZ f4 r4 12
    fmul f3 f3 f4
    lwcZ f4 r6 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4130
block_4129:
    j block_4131
block_4130:
    fneg f4 f4
    j block_4131
block_4131:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_4133
block_4132:
    mv r7 r0
    j block_4134
block_4133:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4136
block_4135:
    j block_4137
block_4136:
    fneg f4 f4
    j block_4137
block_4137:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4139
block_4138:
    mv r7 r0
    j block_4134
block_4139:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4141
block_4140:
    mv r7 r0
    j block_4142
block_4141:
    addi r7 r0 1
    j block_4142
block_4142:
    bne r7 r0 block_4144
    j block_4143
block_4143:
    addi r7 r0 1
    j block_4134
block_4144:
    mv r7 r0
    j block_4134
block_4134:
    bne r7 r0 block_4146
    j block_4145
block_4145:
    lwcZ f3 r4 16
    fsub f2 f3 f2
    lwcZ f3 r4 20
    fmul f2 f2 f3
    lwcZ f3 r6 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_4148
block_4147:
    j block_4149
block_4148:
    fneg f0 f0
    j block_4149
block_4149:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_4151
block_4150:
    mv r4 r0
    j block_4152
block_4151:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4154
block_4153:
    j block_4155
block_4154:
    fneg f0 f0
    j block_4155
block_4155:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_4157
block_4156:
    mv r4 r0
    j block_4152
block_4157:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4159
block_4158:
    mv r4 r0
    j block_4160
block_4159:
    addi r4 r0 1
    j block_4160
block_4160:
    bne r4 r0 block_4162
    j block_4161
block_4161:
    addi r4 r0 1
    j block_4152
block_4162:
    mv r4 r0
    j block_4152
block_4152:
    bne r4 r0 block_4164
    j block_4163
block_4163:
    mv r4 r0
    j block_4087
block_4164:
    swcZ f2 r0 25540
    addi r4 r0 3
    j block_4087
block_4146:
    swcZ f3 r0 25540
    addi r4 r0 2
    j block_4087
block_4128:
    swcZ f3 r0 25540
    addi r4 r0 1
    j block_4087
block_4087:
    sw r1 r29 96
    sw r3 r29 60
    sw r2 r29 4
    beq r4 r0 block_4166
block_4165:
    lwcZ f0 r0 25540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    sw r1 r29 96
    sw r3 r29 60
    sw r2 r29 4
    fclt f0 f1
    bc1t block_4168
block_4167:
    mv r1 r0
    j block_4084
block_4168:
    addi r4 r0 1
    sw r1 r29 96
    sw r3 r29 60
    sw r2 r29 4
    mv r2 r3
    mv r1 r4
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_group.4292
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4170
    j block_4169
block_4169:
    mv r1 r0
    j block_4084
block_4170:
    addi r1 r0 1
    j block_4084
block_4166:
    mv r1 r0
    j block_4084
block_4083:
    addi r1 r0 1
    j block_4084
block_4084:
    bne r1 r0 block_4172
    j block_4171
block_4171:
    addi r1 r0 1
    lw r2 r29 4
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    j block_4081
block_4172:
    addi r1 r0 1
    lw r2 r29 60
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_group.4292
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4174
    j block_4173
block_4173:
    addi r1 r0 1
    lw r2 r29 4
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    j block_4081
block_4174:
    addi r1 r0 1
    j block_4081
block_4080:
    mv r1 r0
    j block_4081
block_4081:
    bne r1 r0 block_4176
    j block_4175
block_4175:
    lwcZ f0 r0 25568
    lwcZ f1 r0 25312
    fmul f0 f0 f1
    lwcZ f1 r0 25572
    lwcZ f2 r0 25316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    lwcZ f2 r0 25320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4178
block_4177:
    mv r1 r0
    j block_4179
block_4178:
    addi r1 r0 1
    j block_4179
block_4179:
    bne r1 r0 block_4181
    j block_4180
block_4180:
    #0.0
    flui f0 0
    j block_4182
block_4181:
    j block_4182
block_4182:
    lwcZ f1 r29 24
    fmul f0 f1 f0
    lw r1 r29 96
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 25592
    lwcZ f2 r0 25580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25592
    lwcZ f1 r0 25596
    lwcZ f2 r0 25584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25596
    lwcZ f1 r0 25600
    lwcZ f2 r0 25588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 25600
    j block_3922
block_4176:
    j block_3922
block_3921:
    addi r2 r1 1
    sll r2 r2 2
    lwab r2 r3 r2
    #-0.006666667
    flui f1 -17446
    fori f1 f1 29710
    fmul f0 f0 f1
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 25548
    lw r5 r0 25536
    sw r4 r29 80
    sw r3 r29 52
    sw r2 r29 36
    sw r1 r29 32
    swcZ f0 r29 16
    mv r3 r2
    mv r1 r0
    mv r2 r5
    sw r31 r29 104
    addi r29 r29 108
    jal trace_or_matrix_fast.4483
    subi r29 r29 108
    lw r31 r29 104
    lwcZ f0 r0 25548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_4184
block_4183:
    mv r1 r0
    j block_4185
block_4184:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_4187
block_4186:
    mv r1 r0
    j block_4185
block_4187:
    addi r1 r0 1
    j block_4185
block_4185:
    bne r1 r0 block_4189
    j block_4188
block_4188:
    j block_3922
block_4189:
    lw r1 r0 25564
    sll r1 r1 2
    lw r1 r1 25048
    lw r2 r29 36
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_4191
block_4190:
    addi r2 r0 2
    beq r3 r2 block_4194
block_4193:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r2 r1 20
    lwcZ f3 r2 8
    fsub f2 f2 f3
    lw r2 r1 16
    lwcZ f3 r2 0
    fmul f3 f0 f3
    lw r2 r1 16
    lwcZ f4 r2 4
    fmul f4 f1 f4
    lw r2 r1 16
    lwcZ f5 r2 8
    fmul f5 f2 f5
    lw r2 r1 12
    beq r2 r0 block_4196
block_4195:
    lw r2 r1 36
    lwcZ f6 r2 8
    fmul f6 f1 f6
    lw r2 r1 36
    lwcZ f7 r2 4
    fmul f7 f2 f7
    fadd f6 f6 f7
    #0.5
    flui f7 16128
    fmul f6 f6 f7
    fadd f3 f3 f6
    swcZ f3 r0 25568
    lw r2 r1 36
    lwcZ f3 r2 8
    fmul f3 f0 f3
    lw r2 r1 36
    lwcZ f6 r2 0
    fmul f2 f2 f6
    fadd f2 f3 f2
    #0.5
    flui f3 16128
    fmul f2 f2 f3
    fadd f2 f4 f2
    swcZ f2 r0 25572
    lw r2 r1 36
    lwcZ f2 r2 4
    fmul f0 f0 f2
    lw r2 r1 36
    lwcZ f2 r2 0
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.5
    flui f1 16128
    fmul f0 f0 f1
    fadd f0 f5 f0
    swcZ f0 r0 25576
    j block_4197
block_4196:
    swcZ f3 r0 25568
    swcZ f4 r0 25572
    swcZ f5 r0 25576
    j block_4197
block_4197:
    lw r2 r1 24
    lwcZ f0 r0 25568
    fmul f0 f0 f0
    lwcZ f1 r0 25572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4199
block_4198:
    bne r2 r0 block_4202
    j block_4201
block_4201:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4200
block_4202:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4200
block_4199:
    #1.0
    flui f0 16256
    j block_4200
block_4200:
    lwcZ f1 r0 25568
    fmul f1 f1 f0
    swcZ f1 r0 25568
    lwcZ f1 r0 25572
    fmul f1 f1 f0
    swcZ f1 r0 25572
    lwcZ f1 r0 25576
    fmul f0 f1 f0
    swcZ f0 r0 25576
    j block_4192
block_4194:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 25568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 25572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 25576
    j block_4192
block_4191:
    lw r3 r0 25544
    #0.0
    flui f0 0
    swcZ f0 r0 25568
    swcZ f0 r0 25572
    swcZ f0 r0 25576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4204
block_4203:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4207
block_4206:
    mv r2 r0
    j block_4208
block_4207:
    addi r2 r0 1
    j block_4208
block_4208:
    bne r2 r0 block_4210
    j block_4209
block_4209:
    #-1.0
    flui f0 -16512
    j block_4205
block_4210:
    #1.0
    flui f0 16256
    j block_4205
block_4204:
    #0.0
    flui f0 0
    j block_4205
block_4205:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 25568
    j block_4192
block_4192:
    lw r2 r1 0
    lw r3 r1 32
    lwcZ f0 r3 0
    swcZ f0 r0 25580
    lw r3 r1 32
    lwcZ f0 r3 4
    swcZ f0 r0 25584
    lw r3 r1 32
    lwcZ f0 r3 8
    swcZ f0 r0 25588
    addi r3 r0 1
    beq r2 r3 block_4212
block_4211:
    addi r3 r0 2
    beq r2 r3 block_4215
block_4214:
    addi r3 r0 3
    beq r2 r3 block_4217
block_4216:
    addi r3 r0 4
    beq r2 r3 block_4219
block_4218:
    j block_4213
block_4219:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lw r2 r1 16
    lwcZ f1 r2 0
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fmul f0 f0 f1
    lwcZ f1 r0 25560
    lw r2 r1 20
    lwcZ f2 r2 8
    fsub f1 f1 f2
    lw r2 r1 16
    lwcZ f2 r2 8
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    fmul f1 f1 f2
    fmul f2 f0 f0
    fmul f3 f1 f1
    fadd f2 f2 f3
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_4221
block_4220:
    fmv f3 f0
    j block_4222
block_4221:
    fneg f3 f0
    j block_4222
block_4222:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_4224
block_4223:
    finv_init f3 f0
    #2.0
    flui f4 16384
    fmul f0 f0 f3
    fsub f0 f4 f0
    fmul f0 f3 f0
    fmul f0 f1 f0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4227
block_4226:
    j block_4228
block_4227:
    fneg f0 f0
    j block_4228
block_4228:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4230
block_4229:
    mv r2 r0
    j block_4231
block_4230:
    addi r2 r0 1
    j block_4231
block_4231:
    bne r2 r0 block_4233
    j block_4232
block_4232:
    fneg f0 f0
    j block_4234
block_4233:
    j block_4234
block_4234:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_4236
block_4235:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_4239
block_4238:
    #1.5707964
    flui f1 16329
    fori f1 f1 4059
    #1.0
    flui f3 16256
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fsub f0 f1 f0
    j block_4237
block_4239:
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.0
    flui f3 16256
    fsub f3 f0 f3
    #1.0
    flui f4 16256
    fadd f0 f0 f4
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fadd f0 f1 f0
    j block_4237
block_4236:
    fmul f1 f0 f0
    fmul f3 f1 f0
    fmul f4 f1 f3
    fmul f5 f1 f4
    fmul f6 f1 f5
    fmul f7 f1 f6
    fmul f1 f1 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f0 f0 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f0 f0 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f0 f0 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f0 f0 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f0 f0 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f1 f3 f1
    fadd f0 f0 f1
    j block_4237
block_4237:
    bne r2 r0 block_4241
    j block_4240
block_4240:
    fneg f0 f0
    j block_4242
block_4241:
    j block_4242
block_4242:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_4225
block_4224:
    #15.0
    flui f0 16752
    j block_4225
block_4225:
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_4244
block_4243:
    j block_4245
block_4244:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_4245
block_4245:
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f3 r2 4
    fsub f1 f1 f3
    lw r2 r1 16
    lwcZ f3 r2 4
    sqrt_init f4 f3
    fmul f3 f3 f4
    #1.5
    flui f5 16320
    #0.5
    flui f6 16128
    fmul f4 f6 f4
    fmul f4 f4 f3
    fsub f4 f5 f4
    fmul f3 f3 f4
    fmul f1 f1 f3
    #0.0
    flui f3 0
    fclt f2 f3
    bc1t block_4247
block_4246:
    fmv f3 f2
    j block_4248
block_4247:
    fneg f3 f2
    j block_4248
block_4248:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_4250
block_4249:
    finv_init f3 f2
    #2.0
    flui f4 16384
    fmul f2 f2 f3
    fsub f2 f4 f2
    fmul f2 f3 f2
    fmul f1 f1 f2
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_4253
block_4252:
    j block_4254
block_4253:
    fneg f1 f1
    j block_4254
block_4254:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_4256
block_4255:
    mv r2 r0
    j block_4257
block_4256:
    addi r2 r0 1
    j block_4257
block_4257:
    bne r2 r0 block_4259
    j block_4258
block_4258:
    fneg f1 f1
    j block_4260
block_4259:
    j block_4260
block_4260:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_4262
block_4261:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_4265
block_4264:
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #1.0
    flui f3 16256
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fsub f1 f2 f1
    j block_4263
block_4265:
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.0
    flui f3 16256
    fsub f3 f1 f3
    #1.0
    flui f4 16256
    fadd f1 f1 f4
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fadd f1 f2 f1
    j block_4263
block_4262:
    fmul f2 f1 f1
    fmul f3 f2 f1
    fmul f4 f2 f3
    fmul f5 f2 f4
    fmul f6 f2 f5
    fmul f7 f2 f6
    fmul f2 f2 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f1 f1 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f1 f1 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f1 f1 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f1 f1 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f1 f1 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f2 f3 f2
    fadd f1 f1 f2
    j block_4263
block_4263:
    bne r2 r0 block_4267
    j block_4266
block_4266:
    fneg f1 f1
    j block_4268
block_4267:
    j block_4268
block_4268:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_4251
block_4250:
    #15.0
    flui f1 16752
    j block_4251
block_4251:
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_4270
block_4269:
    j block_4271
block_4270:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_4271
block_4271:
    fsub f1 f1 f2
    #0.15
    flui f2 15897
    fori f2 f2 -26214
    #0.5
    flui f3 16128
    fsub f0 f3 f0
    fmul f0 f0 f0
    fsub f0 f2 f0
    #0.5
    flui f2 16128
    fsub f1 f2 f1
    fmul f1 f1 f1
    fsub f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4273
block_4272:
    mv r2 r0
    j block_4274
block_4273:
    addi r2 r0 1
    j block_4274
block_4274:
    bne r2 r0 block_4276
    j block_4275
block_4275:
    j block_4277
block_4276:
    #0.0
    flui f0 0
    j block_4277
block_4277:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 25588
    j block_4213
block_4217:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25560
    lw r2 r1 20
    lwcZ f2 r2 8
    fsub f1 f1 f2
    fmul f0 f0 f0
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.1
    flui f1 15820
    fori f1 f1 -13107
    fmul f0 f0 f1
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_4279
block_4278:
    j block_4280
block_4279:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_4280
block_4280:
    fsub f0 f0 f1
    #3.1415927
    flui f1 16457
    fori f1 f1 4059
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f4 f4 f5
    fsub f0 f0 f4
    #0.0
    flui f4 0
    fclt f4 f0
    bc1t block_4282
block_4281:
    fneg f0 f0
    j block_4283
block_4282:
    j block_4283
block_4283:
    fclt f3 f0
    bc1t block_4285
block_4284:
    addi r2 r0 1
    j block_4286
block_4285:
    addi r2 r0 -1
    j block_4286
block_4286:
    fclt f3 f0
    bc1t block_4288
block_4287:
    j block_4289
block_4288:
    fsub f0 f0 f3
    j block_4289
block_4289:
    fclt f2 f0
    bc1t block_4291
block_4290:
    j block_4292
block_4291:
    sub r2 r0 r2
    j block_4292
block_4292:
    fclt f2 f0
    bc1t block_4294
block_4293:
    j block_4295
block_4294:
    fsub f0 f3 f0
    j block_4295
block_4295:
    fclt f0 f1
    bc1t block_4297
block_4296:
    fsub f0 f2 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_4298
block_4297:
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_4298
block_4298:
    addi r3 r0 -1
    beq r2 r3 block_4300
block_4299:
    j block_4301
block_4300:
    fneg f0 f0
    j block_4301
block_4301:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 25584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 25588
    j block_4213
block_4215:
    lwcZ f0 r0 25556
    #0.25
    flui f1 16000
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f5 f4 f5
    fsub f0 f0 f5
    #0.0
    flui f5 0
    fclt f5 f0
    bc1t block_4303
block_4302:
    fadd f0 f0 f4
    j block_4304
block_4303:
    j block_4304
block_4304:
    fclt f3 f0
    bc1t block_4306
block_4305:
    addi r2 r0 1
    j block_4307
block_4306:
    mv r2 r0
    j block_4307
block_4307:
    fclt f3 f0
    bc1t block_4309
block_4308:
    j block_4310
block_4309:
    fsub f0 f0 f3
    j block_4310
block_4310:
    fclt f2 f0
    bc1t block_4312
block_4311:
    j block_4313
block_4312:
    fsub f0 f3 f0
    j block_4313
block_4313:
    fclt f1 f0
    bc1t block_4315
block_4314:
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_4316
block_4315:
    fsub f0 f2 f0
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_4316
block_4316:
    bne r2 r0 block_4318
    j block_4317
block_4317:
    fneg f0 f0
    j block_4319
block_4318:
    j block_4319
block_4319:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 25580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 25584
    j block_4213
block_4212:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_4321
block_4320:
    fmv f1 f2
    j block_4322
block_4321:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4322
block_4322:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4324
block_4323:
    mv r2 r0
    j block_4325
block_4324:
    addi r2 r0 1
    j block_4325
block_4325:
    lwcZ f0 r0 25560
    lw r3 r1 20
    lwcZ f1 r3 8
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r3 f1
    itof f2 r3
    fclt f1 f2
    bc1t block_4327
block_4326:
    fmv f1 f2
    j block_4328
block_4327:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4328
block_4328:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4330
block_4329:
    mv r3 r0
    j block_4331
block_4330:
    addi r3 r0 1
    j block_4331
block_4331:
    bne r2 r0 block_4333
    j block_4332
block_4332:
    bne r3 r0 block_4336
    j block_4335
block_4335:
    #255.0
    flui f0 17279
    j block_4334
block_4336:
    #0.0
    flui f0 0
    j block_4334
block_4333:
    bne r3 r0 block_4338
    j block_4337
block_4337:
    #0.0
    flui f0 0
    j block_4334
block_4338:
    #255.0
    flui f0 17279
    j block_4334
block_4334:
    swcZ f0 r0 25584
    j block_4213
block_4213:
    lw r2 r0 25536
    lw r3 r2 0
    lw r4 r3 0
    addi r5 r0 -1
    sw r1 r29 92
    beq r4 r5 block_4340
block_4339:
    addi r5 r0 99
    sw r1 r29 92
    sw r3 r29 56
    sw r2 r29 0
    beq r4 r5 block_4343
block_4342:
    sll r5 r4 2
    lw r5 r5 25048
    lwcZ f0 r0 25552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 25992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_4346
block_4345:
    addi r7 r0 2
    beq r6 r7 block_4349
block_4348:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_4351
block_4350:
    lwcZ f4 r4 4
    fmul f4 f4 f0
    lwcZ f5 r4 8
    fmul f5 f5 f1
    fadd f4 f4 f5
    lwcZ f5 r4 12
    fmul f5 f5 f2
    fadd f4 f4 f5
    fmul f5 f0 f0
    lw r6 r5 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r5 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r5 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r5 12
    beq r6 r0 block_4353
block_4352:
    fmul f6 f1 f2
    lw r6 r5 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r5 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r5 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_4354
block_4353:
    fmv f0 f5
    j block_4354
block_4354:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_4356
block_4355:
    j block_4357
block_4356:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_4357
block_4357:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4359
block_4358:
    mv r6 r0
    j block_4360
block_4359:
    addi r6 r0 1
    j block_4360
block_4360:
    bne r6 r0 block_4362
    j block_4361
block_4361:
    mv r4 r0
    j block_4347
block_4362:
    lw r5 r5 24
    bne r5 r0 block_4364
    j block_4363
block_4363:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fsub f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_4365
block_4364:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fadd f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_4365
block_4365:
    addi r4 r0 1
    j block_4347
block_4351:
    mv r4 r0
    j block_4347
block_4349:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_4367
block_4366:
    mv r5 r0
    j block_4368
block_4367:
    addi r5 r0 1
    j block_4368
block_4368:
    bne r5 r0 block_4370
    j block_4369
block_4369:
    mv r4 r0
    j block_4347
block_4370:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_4347
block_4346:
    lw r6 r0 25988
    lwcZ f3 r4 0
    fsub f3 f3 f0
    lwcZ f4 r4 4
    fmul f3 f3 f4
    lwcZ f4 r6 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4372
block_4371:
    j block_4373
block_4372:
    fneg f4 f4
    j block_4373
block_4373:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_4375
block_4374:
    mv r7 r0
    j block_4376
block_4375:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4378
block_4377:
    j block_4379
block_4378:
    fneg f4 f4
    j block_4379
block_4379:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4381
block_4380:
    mv r7 r0
    j block_4376
block_4381:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4383
block_4382:
    mv r7 r0
    j block_4384
block_4383:
    addi r7 r0 1
    j block_4384
block_4384:
    bne r7 r0 block_4386
    j block_4385
block_4385:
    addi r7 r0 1
    j block_4376
block_4386:
    mv r7 r0
    j block_4376
block_4376:
    bne r7 r0 block_4388
    j block_4387
block_4387:
    lwcZ f3 r4 8
    fsub f3 f3 f1
    lwcZ f4 r4 12
    fmul f3 f3 f4
    lwcZ f4 r6 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4390
block_4389:
    j block_4391
block_4390:
    fneg f4 f4
    j block_4391
block_4391:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_4393
block_4392:
    mv r7 r0
    j block_4394
block_4393:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4396
block_4395:
    j block_4397
block_4396:
    fneg f4 f4
    j block_4397
block_4397:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4399
block_4398:
    mv r7 r0
    j block_4394
block_4399:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4401
block_4400:
    mv r7 r0
    j block_4402
block_4401:
    addi r7 r0 1
    j block_4402
block_4402:
    bne r7 r0 block_4404
    j block_4403
block_4403:
    addi r7 r0 1
    j block_4394
block_4404:
    mv r7 r0
    j block_4394
block_4394:
    bne r7 r0 block_4406
    j block_4405
block_4405:
    lwcZ f3 r4 16
    fsub f2 f3 f2
    lwcZ f3 r4 20
    fmul f2 f2 f3
    lwcZ f3 r6 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_4408
block_4407:
    j block_4409
block_4408:
    fneg f0 f0
    j block_4409
block_4409:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_4411
block_4410:
    mv r4 r0
    j block_4412
block_4411:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4414
block_4413:
    j block_4415
block_4414:
    fneg f0 f0
    j block_4415
block_4415:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_4417
block_4416:
    mv r4 r0
    j block_4412
block_4417:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4419
block_4418:
    mv r4 r0
    j block_4420
block_4419:
    addi r4 r0 1
    j block_4420
block_4420:
    bne r4 r0 block_4422
    j block_4421
block_4421:
    addi r4 r0 1
    j block_4412
block_4422:
    mv r4 r0
    j block_4412
block_4412:
    bne r4 r0 block_4424
    j block_4423
block_4423:
    mv r4 r0
    j block_4347
block_4424:
    swcZ f2 r0 25540
    addi r4 r0 3
    j block_4347
block_4406:
    swcZ f3 r0 25540
    addi r4 r0 2
    j block_4347
block_4388:
    swcZ f3 r0 25540
    addi r4 r0 1
    j block_4347
block_4347:
    sw r1 r29 92
    sw r3 r29 56
    sw r2 r29 0
    beq r4 r0 block_4426
block_4425:
    lwcZ f0 r0 25540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    sw r1 r29 92
    sw r3 r29 56
    sw r2 r29 0
    fclt f0 f1
    bc1t block_4428
block_4427:
    mv r1 r0
    j block_4344
block_4428:
    addi r4 r0 1
    sw r1 r29 92
    sw r3 r29 56
    sw r2 r29 0
    mv r2 r3
    mv r1 r4
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_group.4292
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4430
    j block_4429
block_4429:
    mv r1 r0
    j block_4344
block_4430:
    addi r1 r0 1
    j block_4344
block_4426:
    mv r1 r0
    j block_4344
block_4343:
    addi r1 r0 1
    j block_4344
block_4344:
    bne r1 r0 block_4432
    j block_4431
block_4431:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    j block_4341
block_4432:
    addi r1 r0 1
    lw r2 r29 56
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_group.4292
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4434
    j block_4433
block_4433:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    j block_4341
block_4434:
    addi r1 r0 1
    j block_4341
block_4340:
    mv r1 r0
    j block_4341
block_4341:
    bne r1 r0 block_4436
    j block_4435
block_4435:
    lwcZ f0 r0 25568
    lwcZ f1 r0 25312
    fmul f0 f0 f1
    lwcZ f1 r0 25572
    lwcZ f2 r0 25316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    lwcZ f2 r0 25320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4438
block_4437:
    mv r1 r0
    j block_4439
block_4438:
    addi r1 r0 1
    j block_4439
block_4439:
    bne r1 r0 block_4441
    j block_4440
block_4440:
    #0.0
    flui f0 0
    j block_4442
block_4441:
    j block_4442
block_4442:
    lwcZ f1 r29 16
    fmul f0 f1 f0
    lw r1 r29 92
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 25592
    lwcZ f2 r0 25580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25592
    lwcZ f1 r0 25596
    lwcZ f2 r0 25584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25596
    lwcZ f1 r0 25600
    lwcZ f2 r0 25588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 25600
    j block_3922
block_4436:
    j block_3922
block_3922:
    lw r1 r29 32
    subi r4 r1 2
    lw r1 r29 52
    lw r2 r29 80
    lw r3 r29 100
    sw r31 r29 104
    addi r29 r29 108
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 108
    lw r31 r29 104
    jr r31
block_3916:
    jr r31
block_3636:
    jr r31
main:
block_0:
    sw r0 r0 25000
    #0.0
    flui f0 0
    addi r1 r0 25004
    sw r1 r0 25044
    sw r1 r0 25040
    sw r1 r0 25036
    sw r1 r0 25032
    sw r0 r0 25028
    sw r1 r0 25024
    sw r1 r0 25020
    sw r0 r0 25016
    sw r0 r0 25012
    sw r0 r0 25008
    sw r0 r0 25004
    addi r1 r0 25004
    sw r1 r0 25284
    sw r1 r0 25280
    sw r1 r0 25276
    sw r1 r0 25272
    sw r1 r0 25268
    sw r1 r0 25264
    sw r1 r0 25260
    sw r1 r0 25256
    sw r1 r0 25252
    sw r1 r0 25248
    sw r1 r0 25244
    sw r1 r0 25240
    sw r1 r0 25236
    sw r1 r0 25232
    sw r1 r0 25228
    sw r1 r0 25224
    sw r1 r0 25220
    sw r1 r0 25216
    sw r1 r0 25212
    sw r1 r0 25208
    sw r1 r0 25204
    sw r1 r0 25200
    sw r1 r0 25196
    sw r1 r0 25192
    sw r1 r0 25188
    sw r1 r0 25184
    sw r1 r0 25180
    sw r1 r0 25176
    sw r1 r0 25172
    sw r1 r0 25168
    sw r1 r0 25164
    sw r1 r0 25160
    sw r1 r0 25156
    sw r1 r0 25152
    sw r1 r0 25148
    sw r1 r0 25144
    sw r1 r0 25140
    sw r1 r0 25136
    sw r1 r0 25132
    sw r1 r0 25128
    sw r1 r0 25124
    sw r1 r0 25120
    sw r1 r0 25116
    sw r1 r0 25112
    sw r1 r0 25108
    sw r1 r0 25104
    sw r1 r0 25100
    sw r1 r0 25096
    sw r1 r0 25092
    sw r1 r0 25088
    sw r1 r0 25084
    sw r1 r0 25080
    sw r1 r0 25076
    sw r1 r0 25072
    sw r1 r0 25068
    sw r1 r0 25064
    sw r1 r0 25060
    sw r1 r0 25056
    sw r1 r0 25052
    sw r1 r0 25048
    #0.0
    flui f0 0
    swcZ f0 r0 25296
    swcZ f0 r0 25292
    swcZ f0 r0 25288
    #0.0
    flui f0 0
    swcZ f0 r0 25308
    swcZ f0 r0 25304
    swcZ f0 r0 25300
    #0.0
    flui f0 0
    swcZ f0 r0 25320
    swcZ f0 r0 25316
    swcZ f0 r0 25312
    #255.0
    flui f0 17279
    swcZ f0 r0 25324
    addi r1 r0 -1
    sw r1 r0 25328
    addi r1 r0 25328
    sw r1 r0 25528
    sw r1 r0 25524
    sw r1 r0 25520
    sw r1 r0 25516
    sw r1 r0 25512
    sw r1 r0 25508
    sw r1 r0 25504
    sw r1 r0 25500
    sw r1 r0 25496
    sw r1 r0 25492
    sw r1 r0 25488
    sw r1 r0 25484
    sw r1 r0 25480
    sw r1 r0 25476
    sw r1 r0 25472
    sw r1 r0 25468
    sw r1 r0 25464
    sw r1 r0 25460
    sw r1 r0 25456
    sw r1 r0 25452
    sw r1 r0 25448
    sw r1 r0 25444
    sw r1 r0 25440
    sw r1 r0 25436
    sw r1 r0 25432
    sw r1 r0 25428
    sw r1 r0 25424
    sw r1 r0 25420
    sw r1 r0 25416
    sw r1 r0 25412
    sw r1 r0 25408
    sw r1 r0 25404
    sw r1 r0 25400
    sw r1 r0 25396
    sw r1 r0 25392
    sw r1 r0 25388
    sw r1 r0 25384
    sw r1 r0 25380
    sw r1 r0 25376
    sw r1 r0 25372
    sw r1 r0 25368
    sw r1 r0 25364
    sw r1 r0 25360
    sw r1 r0 25356
    sw r1 r0 25352
    sw r1 r0 25348
    sw r1 r0 25344
    sw r1 r0 25340
    sw r1 r0 25336
    sw r1 r0 25332
    lw r1 r0 25332
    sw r1 r0 25532
    addi r1 r0 25532
    sw r1 r0 25536
    #0.0
    flui f0 0
    swcZ f0 r0 25540
    sw r0 r0 25544
    #1000000000.0
    flui f0 20078
    fori f0 f0 27432
    swcZ f0 r0 25548
    #0.0
    flui f0 0
    swcZ f0 r0 25560
    swcZ f0 r0 25556
    swcZ f0 r0 25552
    sw r0 r0 25564
    #0.0
    flui f0 0
    swcZ f0 r0 25576
    swcZ f0 r0 25572
    swcZ f0 r0 25568
    #0.0
    flui f0 0
    swcZ f0 r0 25588
    swcZ f0 r0 25584
    swcZ f0 r0 25580
    #0.0
    flui f0 0
    swcZ f0 r0 25600
    swcZ f0 r0 25596
    swcZ f0 r0 25592
    #0.0
    flui f0 0
    swcZ f0 r0 25612
    swcZ f0 r0 25608
    swcZ f0 r0 25604
    sw r0 r0 25620
    sw r0 r0 25616
    sw r0 r0 25628
    sw r0 r0 25624
    #0.0
    flui f0 0
    swcZ f0 r0 25632
    #0.0
    flui f0 0
    swcZ f0 r0 25644
    swcZ f0 r0 25640
    swcZ f0 r0 25636
    #0.0
    flui f0 0
    swcZ f0 r0 25656
    swcZ f0 r0 25652
    swcZ f0 r0 25648
    #0.0
    flui f0 0
    swcZ f0 r0 25668
    swcZ f0 r0 25664
    swcZ f0 r0 25660
    #0.0
    flui f0 0
    swcZ f0 r0 25680
    swcZ f0 r0 25676
    swcZ f0 r0 25672
    #0.0
    flui f0 0
    swcZ f0 r0 25692
    swcZ f0 r0 25688
    swcZ f0 r0 25684
    #0.0
    flui f0 0
    swcZ f0 r0 25704
    swcZ f0 r0 25700
    swcZ f0 r0 25696
    #0.0
    flui f0 0
    addi r1 r0 25708
    addi r2 r0 25708
    sw r2 r0 25712
    sw r1 r0 25708
    addi r1 r0 25716
    sw r1 r0 25732
    sw r1 r0 25728
    sw r1 r0 25724
    sw r1 r0 25720
    sw r1 r0 25716
    #0.0
    flui f0 0
    addi r1 r0 25736
    #0.0
    flui f0 0
    swcZ f0 r0 25744
    swcZ f0 r0 25740
    swcZ f0 r0 25736
    addi r2 r0 25736
    sw r1 r0 25984
    sw r1 r0 25980
    sw r1 r0 25976
    sw r1 r0 25972
    sw r1 r0 25968
    sw r1 r0 25964
    sw r1 r0 25960
    sw r1 r0 25956
    sw r1 r0 25952
    sw r1 r0 25948
    sw r1 r0 25944
    sw r1 r0 25940
    sw r1 r0 25936
    sw r1 r0 25932
    sw r1 r0 25928
    sw r1 r0 25924
    sw r1 r0 25920
    sw r1 r0 25916
    sw r1 r0 25912
    sw r1 r0 25908
    sw r1 r0 25904
    sw r1 r0 25900
    sw r1 r0 25896
    sw r1 r0 25892
    sw r1 r0 25888
    sw r1 r0 25884
    sw r1 r0 25880
    sw r1 r0 25876
    sw r1 r0 25872
    sw r1 r0 25868
    sw r1 r0 25864
    sw r1 r0 25860
    sw r1 r0 25856
    sw r1 r0 25852
    sw r1 r0 25848
    sw r1 r0 25844
    sw r1 r0 25840
    sw r1 r0 25836
    sw r1 r0 25832
    sw r1 r0 25828
    sw r1 r0 25824
    sw r1 r0 25820
    sw r1 r0 25816
    sw r1 r0 25812
    sw r1 r0 25808
    sw r1 r0 25804
    sw r1 r0 25800
    sw r1 r0 25796
    sw r1 r0 25792
    sw r1 r0 25788
    sw r1 r0 25784
    sw r1 r0 25780
    sw r1 r0 25776
    sw r1 r0 25772
    sw r1 r0 25768
    sw r1 r0 25764
    sw r1 r0 25760
    sw r1 r0 25756
    sw r1 r0 25752
    sw r1 r0 25748
    addi r1 r0 25748
    sw r1 r0 25992
    sw r2 r0 25988
    addi r1 r0 25988
    #0.0
    flui f0 0
    addi r2 r0 25996
    addi r3 r0 25996
    sw r3 r0 26000
    sw r2 r0 25996
    addi r2 r0 25996
    #0.0
    flui f0 0
    swcZ f0 r0 26012
    sw r2 r0 26008
    sw r0 r0 26004
    addi r2 r0 26004
    sw r2 r0 26732
    sw r2 r0 26728
    sw r2 r0 26724
    sw r2 r0 26720
    sw r2 r0 26716
    sw r2 r0 26712
    sw r2 r0 26708
    sw r2 r0 26704
    sw r2 r0 26700
    sw r2 r0 26696
    sw r2 r0 26692
    sw r2 r0 26688
    sw r2 r0 26684
    sw r2 r0 26680
    sw r2 r0 26676
    sw r2 r0 26672
    sw r2 r0 26668
    sw r2 r0 26664
    sw r2 r0 26660
    sw r2 r0 26656
    sw r2 r0 26652
    sw r2 r0 26648
    sw r2 r0 26644
    sw r2 r0 26640
    sw r2 r0 26636
    sw r2 r0 26632
    sw r2 r0 26628
    sw r2 r0 26624
    sw r2 r0 26620
    sw r2 r0 26616
    sw r2 r0 26612
    sw r2 r0 26608
    sw r2 r0 26604
    sw r2 r0 26600
    sw r2 r0 26596
    sw r2 r0 26592
    sw r2 r0 26588
    sw r2 r0 26584
    sw r2 r0 26580
    sw r2 r0 26576
    sw r2 r0 26572
    sw r2 r0 26568
    sw r2 r0 26564
    sw r2 r0 26560
    sw r2 r0 26556
    sw r2 r0 26552
    sw r2 r0 26548
    sw r2 r0 26544
    sw r2 r0 26540
    sw r2 r0 26536
    sw r2 r0 26532
    sw r2 r0 26528
    sw r2 r0 26524
    sw r2 r0 26520
    sw r2 r0 26516
    sw r2 r0 26512
    sw r2 r0 26508
    sw r2 r0 26504
    sw r2 r0 26500
    sw r2 r0 26496
    sw r2 r0 26492
    sw r2 r0 26488
    sw r2 r0 26484
    sw r2 r0 26480
    sw r2 r0 26476
    sw r2 r0 26472
    sw r2 r0 26468
    sw r2 r0 26464
    sw r2 r0 26460
    sw r2 r0 26456
    sw r2 r0 26452
    sw r2 r0 26448
    sw r2 r0 26444
    sw r2 r0 26440
    sw r2 r0 26436
    sw r2 r0 26432
    sw r2 r0 26428
    sw r2 r0 26424
    sw r2 r0 26420
    sw r2 r0 26416
    sw r2 r0 26412
    sw r2 r0 26408
    sw r2 r0 26404
    sw r2 r0 26400
    sw r2 r0 26396
    sw r2 r0 26392
    sw r2 r0 26388
    sw r2 r0 26384
    sw r2 r0 26380
    sw r2 r0 26376
    sw r2 r0 26372
    sw r2 r0 26368
    sw r2 r0 26364
    sw r2 r0 26360
    sw r2 r0 26356
    sw r2 r0 26352
    sw r2 r0 26348
    sw r2 r0 26344
    sw r2 r0 26340
    sw r2 r0 26336
    sw r2 r0 26332
    sw r2 r0 26328
    sw r2 r0 26324
    sw r2 r0 26320
    sw r2 r0 26316
    sw r2 r0 26312
    sw r2 r0 26308
    sw r2 r0 26304
    sw r2 r0 26300
    sw r2 r0 26296
    sw r2 r0 26292
    sw r2 r0 26288
    sw r2 r0 26284
    sw r2 r0 26280
    sw r2 r0 26276
    sw r2 r0 26272
    sw r2 r0 26268
    sw r2 r0 26264
    sw r2 r0 26260
    sw r2 r0 26256
    sw r2 r0 26252
    sw r2 r0 26248
    sw r2 r0 26244
    sw r2 r0 26240
    sw r2 r0 26236
    sw r2 r0 26232
    sw r2 r0 26228
    sw r2 r0 26224
    sw r2 r0 26220
    sw r2 r0 26216
    sw r2 r0 26212
    sw r2 r0 26208
    sw r2 r0 26204
    sw r2 r0 26200
    sw r2 r0 26196
    sw r2 r0 26192
    sw r2 r0 26188
    sw r2 r0 26184
    sw r2 r0 26180
    sw r2 r0 26176
    sw r2 r0 26172
    sw r2 r0 26168
    sw r2 r0 26164
    sw r2 r0 26160
    sw r2 r0 26156
    sw r2 r0 26152
    sw r2 r0 26148
    sw r2 r0 26144
    sw r2 r0 26140
    sw r2 r0 26136
    sw r2 r0 26132
    sw r2 r0 26128
    sw r2 r0 26124
    sw r2 r0 26120
    sw r2 r0 26116
    sw r2 r0 26112
    sw r2 r0 26108
    sw r2 r0 26104
    sw r2 r0 26100
    sw r2 r0 26096
    sw r2 r0 26092
    sw r2 r0 26088
    sw r2 r0 26084
    sw r2 r0 26080
    sw r2 r0 26076
    sw r2 r0 26072
    sw r2 r0 26068
    sw r2 r0 26064
    sw r2 r0 26060
    sw r2 r0 26056
    sw r2 r0 26052
    sw r2 r0 26048
    sw r2 r0 26044
    sw r2 r0 26040
    sw r2 r0 26036
    sw r2 r0 26032
    sw r2 r0 26028
    sw r2 r0 26024
    sw r2 r0 26020
    sw r2 r0 26016
    sw r0 r0 26736
    addi r2 r0 128
    addi r3 r0 128
    sw r2 r0 25616
    sw r3 r0 25620
    addi r3 r0 64
    sw r3 r0 25624
    addi r3 r0 64
    sw r3 r0 25628
    #128.0
    flui f0 17152
    itof f1 r2
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r0 25632
    lw r2 r0 25616
    #0.0
    flui f0 0
    swcZ f0 r0 26748
    swcZ f0 r0 26744
    swcZ f0 r0 26740
    addi r3 r0 26740
    #0.0
    flui f0 0
    swcZ f0 r0 26760
    swcZ f0 r0 26756
    swcZ f0 r0 26752
    addi r4 r0 26752
    sw r4 r0 26780
    sw r4 r0 26776
    sw r4 r0 26772
    sw r4 r0 26768
    sw r4 r0 26764
    addi r4 r0 26764
    #0.0
    flui f0 0
    swcZ f0 r0 26792
    swcZ f0 r0 26788
    swcZ f0 r0 26784
    addi r5 r0 26784
    sw r5 r0 26768
    #0.0
    flui f0 0
    swcZ f0 r0 26804
    swcZ f0 r0 26800
    swcZ f0 r0 26796
    addi r5 r0 26796
    sw r5 r0 26772
    #0.0
    flui f0 0
    swcZ f0 r0 26816
    swcZ f0 r0 26812
    swcZ f0 r0 26808
    addi r5 r0 26808
    sw r5 r0 26776
    #0.0
    flui f0 0
    swcZ f0 r0 26828
    swcZ f0 r0 26824
    swcZ f0 r0 26820
    addi r5 r0 26820
    sw r5 r0 26780
    sw r0 r0 26848
    sw r0 r0 26844
    sw r0 r0 26840
    sw r0 r0 26836
    sw r0 r0 26832
    addi r5 r0 26832
    sw r0 r0 26868
    sw r0 r0 26864
    sw r0 r0 26860
    sw r0 r0 26856
    sw r0 r0 26852
    addi r6 r0 26852
    #0.0
    flui f0 0
    swcZ f0 r0 26880
    swcZ f0 r0 26876
    swcZ f0 r0 26872
    addi r7 r0 26872
    sw r7 r0 26900
    sw r7 r0 26896
    sw r7 r0 26892
    sw r7 r0 26888
    sw r7 r0 26884
    addi r7 r0 26884
    #0.0
    flui f0 0
    swcZ f0 r0 26912
    swcZ f0 r0 26908
    swcZ f0 r0 26904
    addi r8 r0 26904
    sw r8 r0 26888
    #0.0
    flui f0 0
    swcZ f0 r0 26924
    swcZ f0 r0 26920
    swcZ f0 r0 26916
    addi r8 r0 26916
    sw r8 r0 26892
    #0.0
    flui f0 0
    swcZ f0 r0 26936
    swcZ f0 r0 26932
    swcZ f0 r0 26928
    addi r8 r0 26928
    sw r8 r0 26896
    #0.0
    flui f0 0
    swcZ f0 r0 26948
    swcZ f0 r0 26944
    swcZ f0 r0 26940
    addi r8 r0 26940
    sw r8 r0 26900
    #0.0
    flui f0 0
    swcZ f0 r0 26960
    swcZ f0 r0 26956
    swcZ f0 r0 26952
    addi r8 r0 26952
    sw r8 r0 26980
    sw r8 r0 26976
    sw r8 r0 26972
    sw r8 r0 26968
    sw r8 r0 26964
    addi r8 r0 26964
    #0.0
    flui f0 0
    swcZ f0 r0 26992
    swcZ f0 r0 26988
    swcZ f0 r0 26984
    addi r9 r0 26984
    sw r9 r0 26968
    #0.0
    flui f0 0
    swcZ f0 r0 27004
    swcZ f0 r0 27000
    swcZ f0 r0 26996
    addi r9 r0 26996
    sw r9 r0 26972
    #0.0
    flui f0 0
    swcZ f0 r0 27016
    swcZ f0 r0 27012
    swcZ f0 r0 27008
    addi r9 r0 27008
    sw r9 r0 26976
    #0.0
    flui f0 0
    swcZ f0 r0 27028
    swcZ f0 r0 27024
    swcZ f0 r0 27020
    addi r9 r0 27020
    sw r9 r0 26980
    sw r0 r0 27032
    addi r9 r0 27032
    #0.0
    flui f0 0
    swcZ f0 r0 27044
    swcZ f0 r0 27040
    swcZ f0 r0 27036
    addi r10 r0 27036
    sw r10 r0 27064
    sw r10 r0 27060
    sw r10 r0 27056
    sw r10 r0 27052
    sw r10 r0 27048
    addi r10 r0 27048
    #0.0
    flui f0 0
    swcZ f0 r0 27076
    swcZ f0 r0 27072
    swcZ f0 r0 27068
    addi r11 r0 27068
    sw r11 r0 27052
    #0.0
    flui f0 0
    swcZ f0 r0 27088
    swcZ f0 r0 27084
    swcZ f0 r0 27080
    addi r11 r0 27080
    sw r11 r0 27056
    #0.0
    flui f0 0
    swcZ f0 r0 27100
    swcZ f0 r0 27096
    swcZ f0 r0 27092
    addi r11 r0 27092
    sw r11 r0 27060
    #0.0
    flui f0 0
    swcZ f0 r0 27112
    swcZ f0 r0 27108
    swcZ f0 r0 27104
    addi r11 r0 27104
    sw r11 r0 27064
    sw r10 r0 27144
    sw r9 r0 27140
    sw r8 r0 27136
    sw r7 r0 27132
    sw r6 r0 27128
    sw r5 r0 27124
    sw r4 r0 27120
    sw r3 r0 27116
    addi r3 r0 27116
    beq r0 r2 arrayexit.87557
    sll r28 r2  2
arrayloop.87556:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87556
    sll r28 r2  2
    mv r2 r30
    add r30 r30 r28
arrayexit.87557:
    lw r3 r0 25616
    subi r3 r3 2
    sw r1 r29 48
    blt r3 r0 block_2
block_1:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r4 r30
    addi r30 r30 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r30 0
    sw r5 r30 4
    sw r5 r30 8
    sw r5 r30 12
    sw r5 r30 16
    mv r5 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 16
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r6 r30
    addi r30 r30 20
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r7 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r30 0
    sw r8 r30 4
    sw r8 r30 8
    sw r8 r30 12
    sw r8 r30 16
    mv r8 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 16
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r30 0
    sw r9 r30 4
    sw r9 r30 8
    sw r9 r30 12
    sw r9 r30 16
    mv r9 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 16
    sw r0 r30 0
    mv r10 r30
    addi r30 r30 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r30 0
    sw r11 r30 4
    sw r11 r30 8
    sw r11 r30 12
    sw r11 r30 16
    mv r11 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 16
    mv r12 r30
    addi r30 r30 32
    sw r11 r12 28
    sw r10 r12 24
    sw r9 r12 20
    sw r8 r12 16
    sw r7 r12 12
    sw r6 r12 8
    sw r5 r12 4
    sw r4 r12 0
    mv r4 r12
    sll r5 r3 2
    swab r4 r2 r5
    subi r3 r3 1
    sw r1 r29 48
    mv r1 r2
    mv r2 r3
    sw r31 r29 92
    addi r29 r29 96
    jal init_line_elements.5340
    subi r29 r29 96
    lw r31 r29 92
    j block_3
block_2:
    mv r1 r2
    j block_3
block_3:
    lw r2 r0 25616
    #0.0
    flui f0 0
    swcZ f0 r0 27156
    swcZ f0 r0 27152
    swcZ f0 r0 27148
    addi r3 r0 27148
    #0.0
    flui f0 0
    swcZ f0 r0 27168
    swcZ f0 r0 27164
    swcZ f0 r0 27160
    addi r4 r0 27160
    sw r4 r0 27188
    sw r4 r0 27184
    sw r4 r0 27180
    sw r4 r0 27176
    sw r4 r0 27172
    addi r4 r0 27172
    #0.0
    flui f0 0
    swcZ f0 r0 27200
    swcZ f0 r0 27196
    swcZ f0 r0 27192
    addi r5 r0 27192
    sw r5 r0 27176
    #0.0
    flui f0 0
    swcZ f0 r0 27212
    swcZ f0 r0 27208
    swcZ f0 r0 27204
    addi r5 r0 27204
    sw r5 r0 27180
    #0.0
    flui f0 0
    swcZ f0 r0 27224
    swcZ f0 r0 27220
    swcZ f0 r0 27216
    addi r5 r0 27216
    sw r5 r0 27184
    #0.0
    flui f0 0
    swcZ f0 r0 27236
    swcZ f0 r0 27232
    swcZ f0 r0 27228
    addi r5 r0 27228
    sw r5 r0 27188
    sw r0 r0 27256
    sw r0 r0 27252
    sw r0 r0 27248
    sw r0 r0 27244
    sw r0 r0 27240
    addi r5 r0 27240
    sw r0 r0 27276
    sw r0 r0 27272
    sw r0 r0 27268
    sw r0 r0 27264
    sw r0 r0 27260
    addi r6 r0 27260
    #0.0
    flui f0 0
    swcZ f0 r0 27288
    swcZ f0 r0 27284
    swcZ f0 r0 27280
    addi r7 r0 27280
    sw r7 r0 27308
    sw r7 r0 27304
    sw r7 r0 27300
    sw r7 r0 27296
    sw r7 r0 27292
    addi r7 r0 27292
    #0.0
    flui f0 0
    swcZ f0 r0 27320
    swcZ f0 r0 27316
    swcZ f0 r0 27312
    addi r8 r0 27312
    sw r8 r0 27296
    #0.0
    flui f0 0
    swcZ f0 r0 27332
    swcZ f0 r0 27328
    swcZ f0 r0 27324
    addi r8 r0 27324
    sw r8 r0 27300
    #0.0
    flui f0 0
    swcZ f0 r0 27344
    swcZ f0 r0 27340
    swcZ f0 r0 27336
    addi r8 r0 27336
    sw r8 r0 27304
    #0.0
    flui f0 0
    swcZ f0 r0 27356
    swcZ f0 r0 27352
    swcZ f0 r0 27348
    addi r8 r0 27348
    sw r8 r0 27308
    #0.0
    flui f0 0
    swcZ f0 r0 27368
    swcZ f0 r0 27364
    swcZ f0 r0 27360
    addi r8 r0 27360
    sw r8 r0 27388
    sw r8 r0 27384
    sw r8 r0 27380
    sw r8 r0 27376
    sw r8 r0 27372
    addi r8 r0 27372
    #0.0
    flui f0 0
    swcZ f0 r0 27400
    swcZ f0 r0 27396
    swcZ f0 r0 27392
    addi r9 r0 27392
    sw r9 r0 27376
    #0.0
    flui f0 0
    swcZ f0 r0 27412
    swcZ f0 r0 27408
    swcZ f0 r0 27404
    addi r9 r0 27404
    sw r9 r0 27380
    #0.0
    flui f0 0
    swcZ f0 r0 27424
    swcZ f0 r0 27420
    swcZ f0 r0 27416
    addi r9 r0 27416
    sw r9 r0 27384
    #0.0
    flui f0 0
    swcZ f0 r0 27436
    swcZ f0 r0 27432
    swcZ f0 r0 27428
    addi r9 r0 27428
    sw r9 r0 27388
    sw r0 r0 27440
    addi r9 r0 27440
    #0.0
    flui f0 0
    swcZ f0 r0 27452
    swcZ f0 r0 27448
    swcZ f0 r0 27444
    addi r10 r0 27444
    sw r10 r0 27472
    sw r10 r0 27468
    sw r10 r0 27464
    sw r10 r0 27460
    sw r10 r0 27456
    addi r10 r0 27456
    #0.0
    flui f0 0
    swcZ f0 r0 27484
    swcZ f0 r0 27480
    swcZ f0 r0 27476
    addi r11 r0 27476
    sw r11 r0 27460
    #0.0
    flui f0 0
    swcZ f0 r0 27496
    swcZ f0 r0 27492
    swcZ f0 r0 27488
    addi r11 r0 27488
    sw r11 r0 27464
    #0.0
    flui f0 0
    swcZ f0 r0 27508
    swcZ f0 r0 27504
    swcZ f0 r0 27500
    addi r11 r0 27500
    sw r11 r0 27468
    #0.0
    flui f0 0
    swcZ f0 r0 27520
    swcZ f0 r0 27516
    swcZ f0 r0 27512
    addi r11 r0 27512
    sw r11 r0 27472
    sw r10 r0 27552
    sw r9 r0 27548
    sw r8 r0 27544
    sw r7 r0 27540
    sw r6 r0 27536
    sw r5 r0 27532
    sw r4 r0 27528
    sw r3 r0 27524
    addi r3 r0 27524
    beq r0 r2 arrayexit.87559
    sll r28 r2  2
arrayloop.87558:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87558
    sll r28 r2  2
    mv r2 r30
    add r30 r30 r28
arrayexit.87559:
    lw r3 r0 25616
    subi r3 r3 2
    sw r1 r29 80
    blt r3 r0 block_5
block_4:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r4 r30
    addi r30 r30 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r30 0
    sw r5 r30 4
    sw r5 r30 8
    sw r5 r30 12
    sw r5 r30 16
    mv r5 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 16
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r6 r30
    addi r30 r30 20
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r7 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r30 0
    sw r8 r30 4
    sw r8 r30 8
    sw r8 r30 12
    sw r8 r30 16
    mv r8 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 16
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r30 0
    sw r9 r30 4
    sw r9 r30 8
    sw r9 r30 12
    sw r9 r30 16
    mv r9 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 16
    sw r0 r30 0
    mv r10 r30
    addi r30 r30 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r30 0
    sw r11 r30 4
    sw r11 r30 8
    sw r11 r30 12
    sw r11 r30 16
    mv r11 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 16
    mv r12 r30
    addi r30 r30 32
    sw r11 r12 28
    sw r10 r12 24
    sw r9 r12 20
    sw r8 r12 16
    sw r7 r12 12
    sw r6 r12 8
    sw r5 r12 4
    sw r4 r12 0
    mv r4 r12
    sll r5 r3 2
    swab r4 r2 r5
    subi r3 r3 1
    sw r1 r29 80
    mv r1 r2
    mv r2 r3
    sw r31 r29 92
    addi r29 r29 96
    jal init_line_elements.5340
    subi r29 r29 96
    lw r31 r29 92
    j block_6
block_5:
    mv r1 r2
    j block_6
block_6:
    lw r2 r0 25616
    #0.0
    flui f0 0
    swcZ f0 r0 27564
    swcZ f0 r0 27560
    swcZ f0 r0 27556
    addi r3 r0 27556
    #0.0
    flui f0 0
    swcZ f0 r0 27576
    swcZ f0 r0 27572
    swcZ f0 r0 27568
    addi r4 r0 27568
    sw r4 r0 27596
    sw r4 r0 27592
    sw r4 r0 27588
    sw r4 r0 27584
    sw r4 r0 27580
    addi r4 r0 27580
    #0.0
    flui f0 0
    swcZ f0 r0 27608
    swcZ f0 r0 27604
    swcZ f0 r0 27600
    addi r5 r0 27600
    sw r5 r0 27584
    #0.0
    flui f0 0
    swcZ f0 r0 27620
    swcZ f0 r0 27616
    swcZ f0 r0 27612
    addi r5 r0 27612
    sw r5 r0 27588
    #0.0
    flui f0 0
    swcZ f0 r0 27632
    swcZ f0 r0 27628
    swcZ f0 r0 27624
    addi r5 r0 27624
    sw r5 r0 27592
    #0.0
    flui f0 0
    swcZ f0 r0 27644
    swcZ f0 r0 27640
    swcZ f0 r0 27636
    addi r5 r0 27636
    sw r5 r0 27596
    sw r0 r0 27664
    sw r0 r0 27660
    sw r0 r0 27656
    sw r0 r0 27652
    sw r0 r0 27648
    addi r5 r0 27648
    sw r0 r0 27684
    sw r0 r0 27680
    sw r0 r0 27676
    sw r0 r0 27672
    sw r0 r0 27668
    addi r6 r0 27668
    #0.0
    flui f0 0
    swcZ f0 r0 27696
    swcZ f0 r0 27692
    swcZ f0 r0 27688
    addi r7 r0 27688
    sw r7 r0 27716
    sw r7 r0 27712
    sw r7 r0 27708
    sw r7 r0 27704
    sw r7 r0 27700
    addi r7 r0 27700
    #0.0
    flui f0 0
    swcZ f0 r0 27728
    swcZ f0 r0 27724
    swcZ f0 r0 27720
    addi r8 r0 27720
    sw r8 r0 27704
    #0.0
    flui f0 0
    swcZ f0 r0 27740
    swcZ f0 r0 27736
    swcZ f0 r0 27732
    addi r8 r0 27732
    sw r8 r0 27708
    #0.0
    flui f0 0
    swcZ f0 r0 27752
    swcZ f0 r0 27748
    swcZ f0 r0 27744
    addi r8 r0 27744
    sw r8 r0 27712
    #0.0
    flui f0 0
    swcZ f0 r0 27764
    swcZ f0 r0 27760
    swcZ f0 r0 27756
    addi r8 r0 27756
    sw r8 r0 27716
    #0.0
    flui f0 0
    swcZ f0 r0 27776
    swcZ f0 r0 27772
    swcZ f0 r0 27768
    addi r8 r0 27768
    sw r8 r0 27796
    sw r8 r0 27792
    sw r8 r0 27788
    sw r8 r0 27784
    sw r8 r0 27780
    addi r8 r0 27780
    #0.0
    flui f0 0
    swcZ f0 r0 27808
    swcZ f0 r0 27804
    swcZ f0 r0 27800
    addi r9 r0 27800
    sw r9 r0 27784
    #0.0
    flui f0 0
    swcZ f0 r0 27820
    swcZ f0 r0 27816
    swcZ f0 r0 27812
    addi r9 r0 27812
    sw r9 r0 27788
    #0.0
    flui f0 0
    swcZ f0 r0 27832
    swcZ f0 r0 27828
    swcZ f0 r0 27824
    addi r9 r0 27824
    sw r9 r0 27792
    #0.0
    flui f0 0
    swcZ f0 r0 27844
    swcZ f0 r0 27840
    swcZ f0 r0 27836
    addi r9 r0 27836
    sw r9 r0 27796
    sw r0 r0 27848
    addi r9 r0 27848
    #0.0
    flui f0 0
    swcZ f0 r0 27860
    swcZ f0 r0 27856
    swcZ f0 r0 27852
    addi r10 r0 27852
    sw r10 r0 27880
    sw r10 r0 27876
    sw r10 r0 27872
    sw r10 r0 27868
    sw r10 r0 27864
    addi r10 r0 27864
    #0.0
    flui f0 0
    swcZ f0 r0 27892
    swcZ f0 r0 27888
    swcZ f0 r0 27884
    addi r11 r0 27884
    sw r11 r0 27868
    #0.0
    flui f0 0
    swcZ f0 r0 27904
    swcZ f0 r0 27900
    swcZ f0 r0 27896
    addi r11 r0 27896
    sw r11 r0 27872
    #0.0
    flui f0 0
    swcZ f0 r0 27916
    swcZ f0 r0 27912
    swcZ f0 r0 27908
    addi r11 r0 27908
    sw r11 r0 27876
    #0.0
    flui f0 0
    swcZ f0 r0 27928
    swcZ f0 r0 27924
    swcZ f0 r0 27920
    addi r11 r0 27920
    sw r11 r0 27880
    sw r10 r0 27960
    sw r9 r0 27956
    sw r8 r0 27952
    sw r7 r0 27948
    sw r6 r0 27944
    sw r5 r0 27940
    sw r4 r0 27936
    sw r3 r0 27932
    addi r3 r0 27932
    beq r0 r2 arrayexit.87561
    sll r28 r2  2
arrayloop.87560:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.87560
    sll r28 r2  2
    mv r2 r30
    add r30 r30 r28
arrayexit.87561:
    lw r3 r0 25616
    subi r3 r3 2
    sw r1 r29 28
    blt r3 r0 block_8
block_7:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r4 r30
    addi r30 r30 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r5 r30
    addi r30 r30 12
    sw r5 r30 0
    sw r5 r30 4
    sw r5 r30 8
    sw r5 r30 12
    sw r5 r30 16
    mv r5 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    sw r6 r5 16
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r6 r30
    addi r30 r30 20
    sw r0 r30 0
    sw r0 r30 4
    sw r0 r30 8
    sw r0 r30 12
    sw r0 r30 16
    mv r7 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r8 r30
    addi r30 r30 12
    sw r8 r30 0
    sw r8 r30 4
    sw r8 r30 8
    sw r8 r30 12
    sw r8 r30 16
    mv r8 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r8 16
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r9 r30
    addi r30 r30 12
    sw r9 r30 0
    sw r9 r30 4
    sw r9 r30 8
    sw r9 r30 12
    sw r9 r30 16
    mv r9 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    sw r10 r9 16
    sw r0 r30 0
    mv r10 r30
    addi r30 r30 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    sw r11 r30 0
    sw r11 r30 4
    sw r11 r30 8
    sw r11 r30 12
    sw r11 r30 16
    mv r11 r30
    addi r30 r30 20
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 12
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r12 r30
    addi r30 r30 12
    sw r12 r11 16
    mv r12 r30
    addi r30 r30 32
    sw r11 r12 28
    sw r10 r12 24
    sw r9 r12 20
    sw r8 r12 16
    sw r7 r12 12
    sw r6 r12 8
    sw r5 r12 4
    sw r4 r12 0
    mv r4 r12
    sll r5 r3 2
    swab r4 r2 r5
    subi r3 r3 1
    sw r1 r29 28
    mv r1 r2
    mv r2 r3
    sw r31 r29 92
    addi r29 r29 96
    jal init_line_elements.5340
    subi r29 r29 96
    lw r31 r29 92
    j block_9
block_8:
    mv r1 r2
    j block_9
block_9:
    inflt f0
    swcZ f0 r0 25288
    inflt f0
    swcZ f0 r0 25292
    inflt f0
    swcZ f0 r0 25296
    inflt f0
    #0.017453292
    flui f1 15502
    fori f1 f1 -1483
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f4 f4 f5
    fsub f4 f0 f4
    #0.0
    flui f5 0
    fclt f5 f4
    bc1t block_11
block_10:
    fneg f4 f4
    j block_12
block_11:
    j block_12
block_12:
    fclt f3 f4
    bc1t block_14
block_13:
    addi r2 r0 1
    j block_15
block_14:
    addi r2 r0 -1
    j block_15
block_15:
    fclt f3 f4
    bc1t block_17
block_16:
    j block_18
block_17:
    fsub f4 f4 f3
    j block_18
block_18:
    fclt f2 f4
    bc1t block_20
block_19:
    j block_21
block_20:
    sub r2 r0 r2
    j block_21
block_21:
    fclt f2 f4
    bc1t block_23
block_22:
    fmv f3 f4
    j block_24
block_23:
    fsub f3 f3 f4
    j block_24
block_24:
    fclt f3 f1
    bc1t block_26
block_25:
    fsub f1 f2 f3
    fmul f2 f1 f1
    fmul f3 f2 f1
    fmul f4 f3 f2
    fmul f2 f4 f2
    #0.16666669
    flui f5 15914
    fori f5 f5 -21844
    fmul f3 f5 f3
    fsub f1 f1 f3
    #0.008332824
    flui f3 15368
    fori f3 f3 -31130
    fmul f3 f3 f4
    fadd f1 f1 f3
    #0.00019587841
    flui f3 14669
    fori f3 f3 25782
    fmul f2 f3 f2
    fsub f1 f1 f2
    j block_27
block_26:
    fmul f1 f3 f3
    fmul f2 f1 f1
    fmul f3 f2 f1
    #1.0
    flui f4 16256
    #0.5
    flui f5 16128
    fmul f1 f5 f1
    fsub f1 f4 f1
    #0.04166368
    flui f4 15658
    fori f4 f4 -22647
    fmul f2 f4 f2
    fadd f1 f1 f2
    #0.0013695068
    flui f2 15027
    fori f2 f2 -32506
    fmul f2 f2 f3
    fsub f1 f1 f2
    j block_27
block_27:
    addi r3 r0 -1
    beq r2 r3 block_29
block_28:
    j block_30
block_29:
    fneg f1 f1
    j block_30
block_30:
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.5707964
    flui f3 16329
    fori f3 f3 4059
    #3.1415927
    flui f4 16457
    fori f4 f4 4059
    #6.2831855
    flui f5 16585
    fori f5 f5 4059
    #0.15915494
    flui f6 15906
    fori f6 f6 -1661
    fmul f6 f0 f6
    ftoi r2 f6
    itof f6 r2
    fmul f6 f5 f6
    fsub f0 f0 f6
    #0.0
    flui f6 0
    fclt f6 f0
    bc1t block_32
block_31:
    fadd f0 f0 f5
    j block_33
block_32:
    j block_33
block_33:
    fclt f4 f0
    bc1t block_35
block_34:
    addi r2 r0 1
    j block_36
block_35:
    mv r2 r0
    j block_36
block_36:
    fclt f4 f0
    bc1t block_38
block_37:
    j block_39
block_38:
    fsub f0 f0 f4
    j block_39
block_39:
    fclt f3 f0
    bc1t block_41
block_40:
    j block_42
block_41:
    fsub f0 f4 f0
    j block_42
block_42:
    fclt f2 f0
    bc1t block_44
block_43:
    fmul f2 f0 f0
    fmul f3 f2 f0
    fmul f4 f3 f2
    fmul f2 f4 f2
    #0.16666669
    flui f5 15914
    fori f5 f5 -21844
    fmul f3 f5 f3
    fsub f0 f0 f3
    #0.008332824
    flui f3 15368
    fori f3 f3 -31130
    fmul f3 f3 f4
    fadd f0 f0 f3
    #0.00019587841
    flui f3 14669
    fori f3 f3 25782
    fmul f2 f3 f2
    fsub f0 f0 f2
    j block_45
block_44:
    fsub f0 f3 f0
    fmul f0 f0 f0
    fmul f2 f0 f0
    fmul f3 f2 f0
    #1.0
    flui f4 16256
    #0.5
    flui f5 16128
    fmul f0 f5 f0
    fsub f0 f4 f0
    #0.04166368
    flui f4 15658
    fori f4 f4 -22647
    fmul f2 f4 f2
    fadd f0 f0 f2
    #0.0013695068
    flui f2 15027
    fori f2 f2 -32506
    fmul f2 f2 f3
    fsub f0 f0 f2
    j block_45
block_45:
    bne r2 r0 block_47
    j block_46
block_46:
    fneg f0 f0
    j block_48
block_47:
    j block_48
block_48:
    inflt f2
    #0.017453292
    flui f3 15502
    fori f3 f3 -1483
    fmul f2 f2 f3
    #0.7853982
    flui f3 16201
    fori f3 f3 4059
    #1.5707964
    flui f4 16329
    fori f4 f4 4059
    #3.1415927
    flui f5 16457
    fori f5 f5 4059
    #6.2831855
    flui f6 16585
    fori f6 f6 4059
    #0.15915494
    flui f7 15906
    fori f7 f7 -1661
    fmul f7 f2 f7
    ftoi r2 f7
    itof f7 r2
    fmul f6 f6 f7
    fsub f6 f2 f6
    #0.0
    flui f7 0
    fclt f7 f6
    bc1t block_50
block_49:
    fneg f6 f6
    j block_51
block_50:
    j block_51
block_51:
    fclt f5 f6
    bc1t block_53
block_52:
    addi r2 r0 1
    j block_54
block_53:
    addi r2 r0 -1
    j block_54
block_54:
    fclt f5 f6
    bc1t block_56
block_55:
    j block_57
block_56:
    fsub f6 f6 f5
    j block_57
block_57:
    fclt f4 f6
    bc1t block_59
block_58:
    j block_60
block_59:
    sub r2 r0 r2
    j block_60
block_60:
    fclt f4 f6
    bc1t block_62
block_61:
    fmv f5 f6
    j block_63
block_62:
    fsub f5 f5 f6
    j block_63
block_63:
    fclt f5 f3
    bc1t block_65
block_64:
    fsub f3 f4 f5
    fmul f4 f3 f3
    fmul f5 f4 f3
    fmul f6 f5 f4
    fmul f4 f6 f4
    #0.16666669
    flui f7 15914
    fori f7 f7 -21844
    fmul f5 f7 f5
    fsub f3 f3 f5
    #0.008332824
    flui f5 15368
    fori f5 f5 -31130
    fmul f5 f5 f6
    fadd f3 f3 f5
    #0.00019587841
    flui f5 14669
    fori f5 f5 25782
    fmul f4 f5 f4
    fsub f3 f3 f4
    j block_66
block_65:
    fmul f3 f5 f5
    fmul f4 f3 f3
    fmul f5 f4 f3
    #1.0
    flui f6 16256
    #0.5
    flui f7 16128
    fmul f3 f7 f3
    fsub f3 f6 f3
    #0.04166368
    flui f6 15658
    fori f6 f6 -22647
    fmul f4 f6 f4
    fadd f3 f3 f4
    #0.0013695068
    flui f4 15027
    fori f4 f4 -32506
    fmul f4 f4 f5
    fsub f3 f3 f4
    j block_66
block_66:
    addi r3 r0 -1
    beq r2 r3 block_68
block_67:
    j block_69
block_68:
    fneg f3 f3
    j block_69
block_69:
    #0.7853982
    flui f4 16201
    fori f4 f4 4059
    #1.5707964
    flui f5 16329
    fori f5 f5 4059
    #3.1415927
    flui f6 16457
    fori f6 f6 4059
    #6.2831855
    flui f7 16585
    fori f7 f7 4059
    #0.15915494
    flui f8 15906
    fori f8 f8 -1661
    fmul f8 f2 f8
    ftoi r2 f8
    itof f8 r2
    fmul f8 f7 f8
    fsub f2 f2 f8
    #0.0
    flui f8 0
    fclt f8 f2
    bc1t block_71
block_70:
    fadd f2 f2 f7
    j block_72
block_71:
    j block_72
block_72:
    fclt f6 f2
    bc1t block_74
block_73:
    addi r2 r0 1
    j block_75
block_74:
    mv r2 r0
    j block_75
block_75:
    fclt f6 f2
    bc1t block_77
block_76:
    j block_78
block_77:
    fsub f2 f2 f6
    j block_78
block_78:
    fclt f5 f2
    bc1t block_80
block_79:
    j block_81
block_80:
    fsub f2 f6 f2
    j block_81
block_81:
    fclt f4 f2
    bc1t block_83
block_82:
    fmul f4 f2 f2
    fmul f5 f4 f2
    fmul f6 f5 f4
    fmul f4 f6 f4
    #0.16666669
    flui f7 15914
    fori f7 f7 -21844
    fmul f5 f7 f5
    fsub f2 f2 f5
    #0.008332824
    flui f5 15368
    fori f5 f5 -31130
    fmul f5 f5 f6
    fadd f2 f2 f5
    #0.00019587841
    flui f5 14669
    fori f5 f5 25782
    fmul f4 f5 f4
    fsub f2 f2 f4
    j block_84
block_83:
    fsub f2 f5 f2
    fmul f2 f2 f2
    fmul f4 f2 f2
    fmul f5 f4 f2
    #1.0
    flui f6 16256
    #0.5
    flui f7 16128
    fmul f2 f7 f2
    fsub f2 f6 f2
    #0.04166368
    flui f6 15658
    fori f6 f6 -22647
    fmul f4 f6 f4
    fadd f2 f2 f4
    #0.0013695068
    flui f4 15027
    fori f4 f4 -32506
    fmul f4 f4 f5
    fsub f2 f2 f4
    j block_84
block_84:
    bne r2 r0 block_86
    j block_85
block_85:
    fneg f2 f2
    j block_87
block_86:
    j block_87
block_87:
    fmul f4 f1 f2
    #200.0
    flui f5 17224
    fmul f4 f4 f5
    swcZ f4 r0 25684
    #-200.0
    flui f4 -15544
    fmul f4 f0 f4
    swcZ f4 r0 25688
    fmul f4 f1 f3
    #200.0
    flui f5 17224
    fmul f4 f4 f5
    swcZ f4 r0 25692
    swcZ f3 r0 25660
    #0.0
    flui f4 0
    swcZ f4 r0 25664
    fneg f4 f2
    swcZ f4 r0 25668
    fneg f4 f0
    fmul f2 f4 f2
    swcZ f2 r0 25672
    fneg f1 f1
    swcZ f1 r0 25676
    fneg f0 f0
    fmul f0 f0 f3
    swcZ f0 r0 25680
    lwcZ f0 r0 25288
    lwcZ f1 r0 25684
    fsub f0 f0 f1
    swcZ f0 r0 25300
    lwcZ f0 r0 25292
    lwcZ f1 r0 25688
    fsub f0 f0 f1
    swcZ f0 r0 25304
    lwcZ f0 r0 25296
    lwcZ f1 r0 25692
    fsub f0 f0 f1
    swcZ f0 r0 25308
    inint r2
    inflt f0
    #0.017453292
    flui f1 15502
    fori f1 f1 -1483
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f5 f4 f5
    fsub f5 f0 f5
    #0.0
    flui f6 0
    fclt f6 f5
    bc1t block_89
block_88:
    fadd f4 f5 f4
    j block_90
block_89:
    fmv f4 f5
    j block_90
block_90:
    fclt f3 f4
    bc1t block_92
block_91:
    addi r2 r0 1
    j block_93
block_92:
    mv r2 r0
    j block_93
block_93:
    fclt f3 f4
    bc1t block_95
block_94:
    j block_96
block_95:
    fsub f4 f4 f3
    j block_96
block_96:
    fclt f2 f4
    bc1t block_98
block_97:
    fmv f3 f4
    j block_99
block_98:
    fsub f3 f3 f4
    j block_99
block_99:
    fclt f1 f3
    bc1t block_101
block_100:
    fmul f1 f3 f3
    fmul f2 f1 f3
    fmul f4 f2 f1
    fmul f1 f4 f1
    #0.16666669
    flui f5 15914
    fori f5 f5 -21844
    fmul f2 f5 f2
    fsub f2 f3 f2
    #0.008332824
    flui f3 15368
    fori f3 f3 -31130
    fmul f3 f3 f4
    fadd f2 f2 f3
    #0.00019587841
    flui f3 14669
    fori f3 f3 25782
    fmul f1 f3 f1
    fsub f1 f2 f1
    j block_102
block_101:
    fsub f1 f2 f3
    fmul f1 f1 f1
    fmul f2 f1 f1
    fmul f3 f2 f1
    #1.0
    flui f4 16256
    #0.5
    flui f5 16128
    fmul f1 f5 f1
    fsub f1 f4 f1
    #0.04166368
    flui f4 15658
    fori f4 f4 -22647
    fmul f2 f4 f2
    fadd f1 f1 f2
    #0.0013695068
    flui f2 15027
    fori f2 f2 -32506
    fmul f2 f2 f3
    fsub f1 f1 f2
    j block_102
block_102:
    bne r2 r0 block_104
    j block_103
block_103:
    fneg f1 f1
    j block_105
block_104:
    j block_105
block_105:
    fneg f1 f1
    swcZ f1 r0 25316
    inflt f1
    #0.017453292
    flui f2 15502
    fori f2 f2 -1483
    fmul f1 f1 f2
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.5707964
    flui f3 16329
    fori f3 f3 4059
    #3.1415927
    flui f4 16457
    fori f4 f4 4059
    #6.2831855
    flui f5 16585
    fori f5 f5 4059
    #0.15915494
    flui f6 15906
    fori f6 f6 -1661
    fmul f6 f0 f6
    ftoi r2 f6
    itof f6 r2
    fmul f5 f5 f6
    fsub f0 f0 f5
    #0.0
    flui f5 0
    fclt f5 f0
    bc1t block_107
block_106:
    fneg f0 f0
    j block_108
block_107:
    j block_108
block_108:
    fclt f4 f0
    bc1t block_110
block_109:
    addi r2 r0 1
    j block_111
block_110:
    addi r2 r0 -1
    j block_111
block_111:
    fclt f4 f0
    bc1t block_113
block_112:
    j block_114
block_113:
    fsub f0 f0 f4
    j block_114
block_114:
    fclt f3 f0
    bc1t block_116
block_115:
    j block_117
block_116:
    sub r2 r0 r2
    j block_117
block_117:
    fclt f3 f0
    bc1t block_119
block_118:
    j block_120
block_119:
    fsub f0 f4 f0
    j block_120
block_120:
    fclt f0 f2
    bc1t block_122
block_121:
    fsub f0 f3 f0
    fmul f2 f0 f0
    fmul f3 f2 f0
    fmul f4 f3 f2
    fmul f2 f4 f2
    #0.16666669
    flui f5 15914
    fori f5 f5 -21844
    fmul f3 f5 f3
    fsub f0 f0 f3
    #0.008332824
    flui f3 15368
    fori f3 f3 -31130
    fmul f3 f3 f4
    fadd f0 f0 f3
    #0.00019587841
    flui f3 14669
    fori f3 f3 25782
    fmul f2 f3 f2
    fsub f0 f0 f2
    j block_123
block_122:
    fmul f0 f0 f0
    fmul f2 f0 f0
    fmul f3 f2 f0
    #1.0
    flui f4 16256
    #0.5
    flui f5 16128
    fmul f0 f5 f0
    fsub f0 f4 f0
    #0.04166368
    flui f4 15658
    fori f4 f4 -22647
    fmul f2 f4 f2
    fadd f0 f0 f2
    #0.0013695068
    flui f2 15027
    fori f2 f2 -32506
    fmul f2 f2 f3
    fsub f0 f0 f2
    j block_123
block_123:
    addi r3 r0 -1
    beq r2 r3 block_125
block_124:
    j block_126
block_125:
    fneg f0 f0
    j block_126
block_126:
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.5707964
    flui f3 16329
    fori f3 f3 4059
    #3.1415927
    flui f4 16457
    fori f4 f4 4059
    #6.2831855
    flui f5 16585
    fori f5 f5 4059
    #0.15915494
    flui f6 15906
    fori f6 f6 -1661
    fmul f6 f1 f6
    ftoi r2 f6
    itof f6 r2
    fmul f6 f5 f6
    fsub f6 f1 f6
    #0.0
    flui f7 0
    fclt f7 f6
    bc1t block_128
block_127:
    fadd f5 f6 f5
    j block_129
block_128:
    fmv f5 f6
    j block_129
block_129:
    fclt f4 f5
    bc1t block_131
block_130:
    addi r2 r0 1
    j block_132
block_131:
    mv r2 r0
    j block_132
block_132:
    fclt f4 f5
    bc1t block_134
block_133:
    j block_135
block_134:
    fsub f5 f5 f4
    j block_135
block_135:
    fclt f3 f5
    bc1t block_137
block_136:
    fmv f4 f5
    j block_138
block_137:
    fsub f4 f4 f5
    j block_138
block_138:
    fclt f2 f4
    bc1t block_140
block_139:
    fmul f2 f4 f4
    fmul f3 f2 f4
    fmul f5 f3 f2
    fmul f2 f5 f2
    #0.16666669
    flui f6 15914
    fori f6 f6 -21844
    fmul f3 f6 f3
    fsub f3 f4 f3
    #0.008332824
    flui f4 15368
    fori f4 f4 -31130
    fmul f4 f4 f5
    fadd f3 f3 f4
    #0.00019587841
    flui f4 14669
    fori f4 f4 25782
    fmul f2 f4 f2
    fsub f2 f3 f2
    j block_141
block_140:
    fsub f2 f3 f4
    fmul f2 f2 f2
    fmul f3 f2 f2
    fmul f4 f3 f2
    #1.0
    flui f5 16256
    #0.5
    flui f6 16128
    fmul f2 f6 f2
    fsub f2 f5 f2
    #0.04166368
    flui f5 15658
    fori f5 f5 -22647
    fmul f3 f5 f3
    fadd f2 f2 f3
    #0.0013695068
    flui f3 15027
    fori f3 f3 -32506
    fmul f3 f3 f4
    fsub f2 f2 f3
    j block_141
block_141:
    bne r2 r0 block_143
    j block_142
block_142:
    fneg f2 f2
    j block_144
block_143:
    j block_144
block_144:
    fmul f2 f0 f2
    swcZ f2 r0 25312
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.5707964
    flui f3 16329
    fori f3 f3 4059
    #3.1415927
    flui f4 16457
    fori f4 f4 4059
    #6.2831855
    flui f5 16585
    fori f5 f5 4059
    #0.15915494
    flui f6 15906
    fori f6 f6 -1661
    fmul f6 f1 f6
    ftoi r2 f6
    itof f6 r2
    fmul f5 f5 f6
    fsub f1 f1 f5
    #0.0
    flui f5 0
    fclt f5 f1
    bc1t block_146
block_145:
    fneg f1 f1
    j block_147
block_146:
    j block_147
block_147:
    fclt f4 f1
    bc1t block_149
block_148:
    addi r2 r0 1
    j block_150
block_149:
    addi r2 r0 -1
    j block_150
block_150:
    fclt f4 f1
    bc1t block_152
block_151:
    j block_153
block_152:
    fsub f1 f1 f4
    j block_153
block_153:
    fclt f3 f1
    bc1t block_155
block_154:
    j block_156
block_155:
    sub r2 r0 r2
    j block_156
block_156:
    fclt f3 f1
    bc1t block_158
block_157:
    j block_159
block_158:
    fsub f1 f4 f1
    j block_159
block_159:
    fclt f1 f2
    bc1t block_161
block_160:
    fsub f1 f3 f1
    fmul f2 f1 f1
    fmul f3 f2 f1
    fmul f4 f3 f2
    fmul f2 f4 f2
    #0.16666669
    flui f5 15914
    fori f5 f5 -21844
    fmul f3 f5 f3
    fsub f1 f1 f3
    #0.008332824
    flui f3 15368
    fori f3 f3 -31130
    fmul f3 f3 f4
    fadd f1 f1 f3
    #0.00019587841
    flui f3 14669
    fori f3 f3 25782
    fmul f2 f3 f2
    fsub f1 f1 f2
    j block_162
block_161:
    fmul f1 f1 f1
    fmul f2 f1 f1
    fmul f3 f2 f1
    #1.0
    flui f4 16256
    #0.5
    flui f5 16128
    fmul f1 f5 f1
    fsub f1 f4 f1
    #0.04166368
    flui f4 15658
    fori f4 f4 -22647
    fmul f2 f4 f2
    fadd f1 f1 f2
    #0.0013695068
    flui f2 15027
    fori f2 f2 -32506
    fmul f2 f2 f3
    fsub f1 f1 f2
    j block_162
block_162:
    addi r3 r0 -1
    beq r2 r3 block_164
block_163:
    j block_165
block_164:
    fneg f1 f1
    j block_165
block_165:
    fmul f0 f0 f1
    swcZ f0 r0 25320
    inflt f0
    swcZ f0 r0 25324
    sw r1 r29 68
    mv r1 r0
    sw r31 r29 92
    addi r29 r29 96
    jal read_object.3424
    subi r29 r29 96
    lw r31 r29 92
    mv r1 r0
    sw r31 r29 92
    addi r29 r29 96
    jal read_net_item.3434
    subi r29 r29 96
    lw r31 r29 92
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_167
block_166:
    sw r1 r0 25332
    addi r1 r0 1
    sw r31 r29 92
    addi r29 r29 96
    jal read_and_network.3461
    subi r29 r29 96
    lw r31 r29 92
    j block_168
block_167:
    j block_168
block_168:
    mv r1 r0
    sw r31 r29 92
    addi r29 r29 96
    jal read_net_item.3434
    subi r29 r29 96
    lw r31 r29 92
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_170
block_169:
    addi r2 r0 1
    sw r1 r29 64
    mv r1 r2
    sw r31 r29 92
    addi r29 r29 96
    jal read_or_network.3447
    subi r29 r29 96
    lw r31 r29 92
    lw r2 r29 64
    sw r2 r1 0
    j block_171
block_170:
    sw r1 r30 0
    mv r1 r30
    addi r30 r30 4
    j block_171
block_171:
    sw r1 r0 25536
    out r0 80
    out r0 54
    out r0 10
    lw r1 r0 25616
    blt r1 r0 block_173
block_172:
    j block_174
block_173:
    out r0 45
    sub r1 r0 r1
    j block_174
block_174:
    sw r31 r29 92
    addi r29 r29 96
    jal print_uint.2118
    subi r29 r29 96
    lw r31 r29 92
    out r0 32
    lw r1 r0 25620
    blt r1 r0 block_176
block_175:
    j block_177
block_176:
    out r0 45
    sub r1 r0 r1
    j block_177
block_177:
    sw r31 r29 92
    addi r29 r29 96
    jal print_uint.2118
    subi r29 r29 96
    lw r31 r29 92
    out r0 32
    addi r1 r0 255
    blt r1 r0 block_179
block_178:
    addi r1 r0 255
    j block_180
block_179:
    out r0 45
    addi r1 r0 -255
    j block_180
block_180:
    sw r31 r29 92
    addi r29 r29 96
    jal print_uint.2118
    subi r29 r29 96
    lw r31 r29 92
    out r0 10
    addi r1 r0 4
    blt r1 r0 block_182
block_181:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r1 r30
    addi r30 r30 12
    lw r2 r0 25000
    beq r0 r2 arrayexit.87563
    sll r28 r2  2
arrayloop.87562:
    subi r28 r28 4
    swab r1 r30 r28
    bne r0 r28 arrayloop.87562
    sll r28 r2  2
    mv r2 r30
    add r30 r30 r28
arrayexit.87563:
    mv r3 r30
    addi r30 r30 8
    sw r2 r3 4
    sw r1 r3 0
    mv r1 r3
    sw r1 r30 0
    sw r1 r30 4
    sw r1 r30 8
    sw r1 r30 12
    sw r1 r30 16
    sw r1 r30 20
    sw r1 r30 24
    sw r1 r30 28
    sw r1 r30 32
    sw r1 r30 36
    sw r1 r30 40
    sw r1 r30 44
    sw r1 r30 48
    sw r1 r30 52
    sw r1 r30 56
    sw r1 r30 60
    sw r1 r30 64
    sw r1 r30 68
    sw r1 r30 72
    sw r1 r30 76
    sw r1 r30 80
    sw r1 r30 84
    sw r1 r30 88
    sw r1 r30 92
    sw r1 r30 96
    sw r1 r30 100
    sw r1 r30 104
    sw r1 r30 108
    sw r1 r30 112
    sw r1 r30 116
    sw r1 r30 120
    sw r1 r30 124
    sw r1 r30 128
    sw r1 r30 132
    sw r1 r30 136
    sw r1 r30 140
    sw r1 r30 144
    sw r1 r30 148
    sw r1 r30 152
    sw r1 r30 156
    sw r1 r30 160
    sw r1 r30 164
    sw r1 r30 168
    sw r1 r30 172
    sw r1 r30 176
    sw r1 r30 180
    sw r1 r30 184
    sw r1 r30 188
    sw r1 r30 192
    sw r1 r30 196
    sw r1 r30 200
    sw r1 r30 204
    sw r1 r30 208
    sw r1 r30 212
    sw r1 r30 216
    sw r1 r30 220
    sw r1 r30 224
    sw r1 r30 228
    sw r1 r30 232
    sw r1 r30 236
    sw r1 r30 240
    sw r1 r30 244
    sw r1 r30 248
    sw r1 r30 252
    sw r1 r30 256
    sw r1 r30 260
    sw r1 r30 264
    sw r1 r30 268
    sw r1 r30 272
    sw r1 r30 276
    sw r1 r30 280
    sw r1 r30 284
    sw r1 r30 288
    sw r1 r30 292
    sw r1 r30 296
    sw r1 r30 300
    sw r1 r30 304
    sw r1 r30 308
    sw r1 r30 312
    sw r1 r30 316
    sw r1 r30 320
    sw r1 r30 324
    sw r1 r30 328
    sw r1 r30 332
    sw r1 r30 336
    sw r1 r30 340
    sw r1 r30 344
    sw r1 r30 348
    sw r1 r30 352
    sw r1 r30 356
    sw r1 r30 360
    sw r1 r30 364
    sw r1 r30 368
    sw r1 r30 372
    sw r1 r30 376
    sw r1 r30 380
    sw r1 r30 384
    sw r1 r30 388
    sw r1 r30 392
    sw r1 r30 396
    sw r1 r30 400
    sw r1 r30 404
    sw r1 r30 408
    sw r1 r30 412
    sw r1 r30 416
    sw r1 r30 420
    sw r1 r30 424
    sw r1 r30 428
    sw r1 r30 432
    sw r1 r30 436
    sw r1 r30 440
    sw r1 r30 444
    sw r1 r30 448
    sw r1 r30 452
    sw r1 r30 456
    sw r1 r30 460
    sw r1 r30 464
    sw r1 r30 468
    sw r1 r30 472
    sw r1 r30 476
    mv r1 r30
    addi r30 r30 480
    sw r1 r0 25732
    lw r1 r0 25732
    addi r2 r0 118
    sw r31 r29 92
    addi r29 r29 96
    jal create_dirvec_elements.5492
    subi r29 r29 96
    lw r31 r29 92
    addi r1 r0 3
    sw r31 r29 92
    addi r29 r29 96
    jal create_dirvecs.5501
    subi r29 r29 96
    lw r31 r29 92
    j block_183
block_182:
    j block_183
block_183:
    addi r1 r0 9
    blt r1 r0 block_185
block_184:
    itof f0 r1
    #0.2
    flui f1 15948
    fori f1 f1 -13107
    fmul f0 f0 f1
    #0.9
    flui f1 16230
    fori f1 f1 26214
    fsub f0 f0 f1
    addi r1 r0 4
    mv r3 r0
    mv r2 r0
    sw r31 r29 92
    addi r29 r29 96
    jal calc_dirvecs.5436
    subi r29 r29 96
    lw r31 r29 92
    addi r1 r0 8
    addi r2 r0 2
    addi r3 r0 5
    blt r2 r3 block_188
block_187:
    addi r2 r0 -3
    j block_189
block_188:
    addi r2 r0 2
    j block_189
block_189:
    addi r3 r0 4
    sw r31 r29 92
    addi r29 r29 96
    jal calc_dirvec_rows.5466
    subi r29 r29 96
    lw r31 r29 92
    j block_186
block_185:
    j block_186
block_186:
    addi r1 r0 4
    blt r1 r0 block_191
block_190:
    lw r1 r0 25732
    addi r2 r0 119
    sw r31 r29 92
    addi r29 r29 96
    jal init_dirvec_constants.5514
    subi r29 r29 96
    lw r31 r29 92
    addi r1 r0 3
    sw r31 r29 92
    addi r29 r29 96
    jal init_vecset_constants.5522
    subi r29 r29 96
    lw r31 r29 92
    j block_192
block_191:
    j block_192
block_192:
    lw r1 r0 25988
    lwcZ f0 r0 25312
    swcZ f0 r1 0
    lwcZ f0 r0 25316
    swcZ f0 r1 4
    lwcZ f0 r0 25320
    swcZ f0 r1 8
    lw r1 r0 25000
    subi r1 r1 1
    blt r1 r0 block_194
block_193:
    sll r2 r1 2
    lw r2 r2 25048
    lw r3 r0 25992
    lw r4 r0 25988
    lw r5 r2 4
    addi r6 r0 1
    beq r5 r6 block_197
block_196:
    addi r6 r0 2
    beq r5 r6 block_200
block_199:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    mv r5 r30
    addi r30 r30 20
    lwcZ f0 r4 0
    lwcZ f1 r4 4
    lwcZ f2 r4 8
    fmul f3 f0 f0
    lw r6 r2 16
    lwcZ f4 r6 0
    fmul f3 f3 f4
    fmul f4 f1 f1
    lw r6 r2 16
    lwcZ f5 r6 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f4 f2 f2
    lw r6 r2 16
    lwcZ f5 r6 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r6 r2 12
    beq r6 r0 block_202
block_201:
    fmul f4 f1 f2
    lw r6 r2 36
    lwcZ f5 r6 0
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f0
    lw r6 r2 36
    lwcZ f4 r6 4
    fmul f2 f2 f4
    fadd f2 f3 f2
    fmul f0 f0 f1
    lw r6 r2 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_203
block_202:
    fmv f0 f3
    j block_203
block_203:
    lwcZ f1 r4 0
    lw r6 r2 16
    lwcZ f2 r6 0
    fmul f1 f1 f2
    fneg f1 f1
    lwcZ f2 r4 4
    lw r6 r2 16
    lwcZ f3 r6 4
    fmul f2 f2 f3
    fneg f2 f2
    lwcZ f3 r4 8
    lw r6 r2 16
    lwcZ f4 r6 8
    fmul f3 f3 f4
    fneg f3 f3
    swcZ f0 r5 0
    lw r6 r2 12
    beq r6 r0 block_205
block_204:
    lwcZ f4 r4 8
    lw r6 r2 36
    lwcZ f5 r6 4
    fmul f4 f4 f5
    lwcZ f5 r4 4
    lw r6 r2 36
    lwcZ f6 r6 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fsub f1 f1 f4
    swcZ f1 r5 4
    lwcZ f1 r4 8
    lw r6 r2 36
    lwcZ f4 r6 0
    fmul f1 f1 f4
    lwcZ f4 r4 0
    lw r6 r2 36
    lwcZ f5 r6 8
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.5
    flui f4 16128
    fmul f1 f1 f4
    fsub f1 f2 f1
    swcZ f1 r5 8
    lwcZ f1 r4 4
    lw r6 r2 36
    lwcZ f2 r6 0
    fmul f1 f1 f2
    lwcZ f2 r4 0
    lw r2 r2 36
    lwcZ f4 r2 4
    fmul f2 f2 f4
    fadd f1 f1 f2
    #0.5
    flui f2 16128
    fmul f1 f1 f2
    fsub f1 f3 f1
    swcZ f1 r5 12
    j block_206
block_205:
    swcZ f1 r5 4
    swcZ f2 r5 8
    swcZ f3 r5 12
    j block_206
block_206:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_208
block_207:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r5 16
    j block_209
block_208:
    j block_209
block_209:
    sll r2 r1 2
    swab r5 r3 r2
    j block_198
block_200:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    mv r5 r30
    addi r30 r30 16
    lwcZ f0 r4 0
    lw r6 r2 16
    lwcZ f1 r6 0
    fmul f0 f0 f1
    lwcZ f1 r4 4
    lw r6 r2 16
    lwcZ f2 r6 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r4 8
    lw r4 r2 16
    lwcZ f2 r4 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_211
block_210:
    mv r4 r0
    j block_212
block_211:
    addi r4 r0 1
    j block_212
block_212:
    bne r4 r0 block_214
    j block_213
block_213:
    #0.0
    flui f0 0
    swcZ f0 r5 0
    j block_215
block_214:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    swcZ f1 r5 0
    lw r4 r2 16
    lwcZ f1 r4 0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r5 4
    lw r4 r2 16
    lwcZ f1 r4 4
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f4 f0 f2
    fsub f3 f3 f4
    fmul f2 f2 f3
    fmul f1 f1 f2
    fneg f1 f1
    swcZ f1 r5 8
    lw r2 r2 16
    lwcZ f1 r2 8
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    fneg f0 f0
    swcZ f0 r5 12
    j block_215
block_215:
    sll r2 r1 2
    swab r5 r3 r2
    j block_198
block_197:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    swcZ f0 r30 16
    swcZ f0 r30 20
    mv r5 r30
    addi r30 r30 24
    lwcZ f0 r4 0
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_217
block_216:
    lw r6 r2 24
    lwcZ f0 r4 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_220
block_219:
    mv r7 r0
    j block_221
block_220:
    addi r7 r0 1
    j block_221
block_221:
    bne r6 r0 block_223
    j block_222
block_222:
    mv r6 r7
    j block_224
block_223:
    bne r7 r0 block_226
    j block_225
block_225:
    addi r6 r0 1
    j block_224
block_226:
    mv r6 r0
    j block_224
block_224:
    lw r7 r2 16
    lwcZ f0 r7 0
    bne r6 r0 block_228
    j block_227
block_227:
    fneg f0 f0
    j block_229
block_228:
    j block_229
block_229:
    swcZ f0 r5 0
    #1.0
    flui f0 16256
    lwcZ f1 r4 0
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r5 4
    j block_218
block_217:
    #0.0
    flui f0 0
    swcZ f0 r5 4
    j block_218
block_218:
    lwcZ f0 r4 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_231
block_230:
    lw r6 r2 24
    lwcZ f0 r4 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_234
block_233:
    mv r7 r0
    j block_235
block_234:
    addi r7 r0 1
    j block_235
block_235:
    bne r6 r0 block_237
    j block_236
block_236:
    mv r6 r7
    j block_238
block_237:
    bne r7 r0 block_240
    j block_239
block_239:
    addi r6 r0 1
    j block_238
block_240:
    mv r6 r0
    j block_238
block_238:
    lw r7 r2 16
    lwcZ f0 r7 4
    bne r6 r0 block_242
    j block_241
block_241:
    fneg f0 f0
    j block_243
block_242:
    j block_243
block_243:
    swcZ f0 r5 8
    #1.0
    flui f0 16256
    lwcZ f1 r4 4
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r5 12
    j block_232
block_231:
    #0.0
    flui f0 0
    swcZ f0 r5 12
    j block_232
block_232:
    lwcZ f0 r4 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_245
block_244:
    lw r6 r2 24
    lwcZ f0 r4 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_248
block_247:
    mv r7 r0
    j block_249
block_248:
    addi r7 r0 1
    j block_249
block_249:
    bne r6 r0 block_251
    j block_250
block_250:
    mv r6 r7
    j block_252
block_251:
    bne r7 r0 block_254
    j block_253
block_253:
    addi r6 r0 1
    j block_252
block_254:
    mv r6 r0
    j block_252
block_252:
    lw r2 r2 16
    lwcZ f0 r2 8
    bne r6 r0 block_256
    j block_255
block_255:
    fneg f0 f0
    j block_257
block_256:
    j block_257
block_257:
    swcZ f0 r5 16
    #1.0
    flui f0 16256
    lwcZ f1 r4 8
    finv_init f2 f1
    #2.0
    flui f3 16384
    fmul f1 f1 f2
    fsub f1 f3 f1
    fmul f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r5 20
    j block_246
block_245:
    #0.0
    flui f0 0
    swcZ f0 r5 20
    j block_246
block_246:
    sll r2 r1 2
    swab r5 r3 r2
    j block_198
block_198:
    subi r2 r1 1
    lw r1 r29 48
    sw r31 r29 92
    addi r29 r29 96
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 96
    lw r31 r29 92
    j block_195
block_194:
    j block_195
block_195:
    lw r1 r0 25000
    subi r1 r1 1
    blt r1 r0 block_259
block_258:
    sll r2 r1 2
    lw r2 r2 25048
    lw r3 r2 8
    addi r4 r0 2
    beq r3 r4 block_262
block_261:
    j block_260
block_262:
    lw r3 r2 28
    lwcZ f0 r3 0
    #1.0
    flui f1 16256
    fclt f0 f1
    bc1t block_264
block_263:
    j block_260
block_264:
    lw r3 r2 4
    addi r4 r0 1
    beq r3 r4 block_266
block_265:
    addi r4 r0 2
    beq r3 r4 block_268
block_267:
    j block_260
block_268:
    sll r1 r1 2
    addi r1 r1 1
    lw r3 r0 26736
    #1.0
    flui f0 16256
    lw r4 r2 28
    lwcZ f1 r4 0
    fsub f0 f0 f1
    lw r4 r2 16
    lwcZ f1 r0 25312
    lwcZ f2 r4 0
    fmul f1 f1 f2
    lwcZ f2 r0 25316
    lwcZ f3 r4 4
    fmul f2 f2 f3
    fadd f1 f1 f2
    lwcZ f2 r0 25320
    lwcZ f3 r4 8
    fmul f2 f2 f3
    fadd f1 f1 f2
    #2.0
    flui f2 16384
    lw r4 r2 16
    lwcZ f3 r4 0
    fmul f2 f2 f3
    fmul f2 f2 f1
    lwcZ f3 r0 25312
    fsub f2 f2 f3
    #2.0
    flui f3 16384
    lw r4 r2 16
    lwcZ f4 r4 4
    fmul f3 f3 f4
    fmul f3 f3 f1
    lwcZ f4 r0 25316
    fsub f3 f3 f4
    #2.0
    flui f4 16384
    lw r2 r2 16
    lwcZ f5 r2 8
    fmul f4 f4 f5
    fmul f1 f4 f1
    lwcZ f4 r0 25320
    fsub f1 f1 f4
    #0.0
    flui f4 0
    swcZ f4 r30 0
    swcZ f4 r30 4
    swcZ f4 r30 8
    mv r2 r30
    addi r30 r30 12
    lw r4 r0 25000
    beq r0 r4 arrayexit.87565
    sll r28 r4  2
arrayloop.87564:
    subi r28 r28 4
    swab r2 r30 r28
    bne r0 r28 arrayloop.87564
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.87565:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r2 r5 0
    mv r2 r5
    lw r4 r2 0
    swcZ f2 r4 0
    swcZ f3 r4 4
    swcZ f1 r4 8
    lw r4 r0 25000
    subi r4 r4 1
    sw r1 r29 88
    sw r3 r29 76
    sw r2 r29 44
    swcZ f0 r29 24
    mv r1 r2
    mv r2 r4
    sw r31 r29 92
    addi r29 r29 96
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 96
    lw r31 r29 92
    mv r1 r30
    addi r30 r30 12
    lwcZ f0 r29 24
    swcZ f0 r1 8
    lw r2 r29 44
    sw r2 r1 4
    lw r2 r29 88
    sw r2 r1 0
    lw r2 r29 76
    sll r3 r2 2
    sw r1 r3 26016
    addi r1 r2 1
    sw r1 r0 26736
    j block_260
block_266:
    sll r1 r1 2
    lw r3 r0 26736
    #1.0
    flui f0 16256
    lw r2 r2 28
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25312
    fneg f1 f1
    lwcZ f2 r0 25316
    fneg f2 f2
    lwcZ f3 r0 25320
    fneg f3 f3
    addi r2 r1 1
    lwcZ f4 r0 25312
    #0.0
    flui f5 0
    swcZ f5 r30 0
    swcZ f5 r30 4
    swcZ f5 r30 8
    mv r4 r30
    addi r30 r30 12
    lw r5 r0 25000
    beq r0 r5 arrayexit.87567
    sll r28 r5  2
arrayloop.87566:
    subi r28 r28 4
    swab r4 r30 r28
    bne r0 r28 arrayloop.87566
    sll r28 r5  2
    mv r5 r30
    add r30 r30 r28
arrayexit.87567:
    mv r6 r30
    addi r30 r30 8
    sw r5 r6 4
    sw r4 r6 0
    mv r4 r6
    lw r5 r4 0
    swcZ f4 r5 0
    swcZ f2 r5 4
    swcZ f3 r5 8
    lw r5 r0 25000
    subi r5 r5 1
    sw r1 r29 84
    sw r3 r29 72
    swcZ f3 r29 60
    swcZ f2 r29 56
    swcZ f1 r29 52
    sw r4 r29 32
    swcZ f0 r29 20
    sw r2 r29 0
    mv r2 r5
    mv r1 r4
    sw r31 r29 92
    addi r29 r29 96
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 96
    lw r31 r29 92
    mv r1 r30
    addi r30 r30 12
    lwcZ f0 r29 20
    swcZ f0 r1 8
    lw r2 r29 32
    sw r2 r1 4
    lw r2 r29 0
    sw r2 r1 0
    lw r2 r29 72
    sll r3 r2 2
    sw r1 r3 26016
    addi r1 r2 1
    lw r3 r29 84
    addi r4 r3 2
    lwcZ f1 r0 25316
    #0.0
    flui f2 0
    swcZ f2 r30 0
    swcZ f2 r30 4
    swcZ f2 r30 8
    mv r5 r30
    addi r30 r30 12
    lw r6 r0 25000
    beq r0 r6 arrayexit.87569
    sll r28 r6  2
arrayloop.87568:
    subi r28 r28 4
    swab r5 r30 r28
    bne r0 r28 arrayloop.87568
    sll r28 r6  2
    mv r6 r30
    add r30 r30 r28
arrayexit.87569:
    mv r7 r30
    addi r30 r30 8
    sw r6 r7 4
    sw r5 r7 0
    mv r5 r7
    lw r6 r5 0
    lwcZ f2 r29 52
    swcZ f2 r6 0
    swcZ f1 r6 4
    lwcZ f1 r29 60
    swcZ f1 r6 8
    lw r6 r0 25000
    subi r6 r6 1
    sw r3 r29 84
    sw r2 r29 72
    swcZ f2 r29 52
    sw r5 r29 36
    swcZ f0 r29 20
    sw r4 r29 8
    sw r1 r29 4
    mv r2 r6
    mv r1 r5
    sw r31 r29 92
    addi r29 r29 96
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 96
    lw r31 r29 92
    mv r1 r30
    addi r30 r30 12
    lwcZ f0 r29 20
    swcZ f0 r1 8
    lw r2 r29 36
    sw r2 r1 4
    lw r2 r29 8
    sw r2 r1 0
    lw r2 r29 4
    sll r2 r2 2
    sw r1 r2 26016
    lw r1 r29 72
    addi r2 r1 2
    lw r3 r29 84
    addi r3 r3 3
    lwcZ f1 r0 25320
    #0.0
    flui f2 0
    swcZ f2 r30 0
    swcZ f2 r30 4
    swcZ f2 r30 8
    mv r4 r30
    addi r30 r30 12
    lw r5 r0 25000
    beq r0 r5 arrayexit.87571
    sll r28 r5  2
arrayloop.87570:
    subi r28 r28 4
    swab r4 r30 r28
    bne r0 r28 arrayloop.87570
    sll r28 r5  2
    mv r5 r30
    add r30 r30 r28
arrayexit.87571:
    mv r6 r30
    addi r30 r30 8
    sw r5 r6 4
    sw r4 r6 0
    mv r4 r6
    lw r5 r4 0
    lwcZ f2 r29 52
    swcZ f2 r5 0
    lwcZ f2 r29 56
    swcZ f2 r5 4
    swcZ f1 r5 8
    lw r5 r0 25000
    subi r5 r5 1
    sw r1 r29 72
    sw r4 r29 40
    swcZ f0 r29 20
    sw r3 r29 16
    sw r2 r29 12
    mv r2 r5
    mv r1 r4
    sw r31 r29 92
    addi r29 r29 96
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 96
    lw r31 r29 92
    mv r1 r30
    addi r30 r30 12
    lwcZ f0 r29 20
    swcZ f0 r1 8
    lw r2 r29 40
    sw r2 r1 4
    lw r2 r29 16
    sw r2 r1 0
    lw r2 r29 12
    sll r2 r2 2
    sw r1 r2 26016
    lw r1 r29 72
    addi r1 r1 3
    sw r1 r0 26736
    j block_260
block_259:
    j block_260
block_260:
    lwcZ f0 r0 25632
    lw r1 r0 25628
    sub r1 r0 r1
    itof f1 r1
    fmul f0 f0 f1
    lwcZ f1 r0 25672
    fmul f1 f0 f1
    lwcZ f2 r0 25684
    fadd f1 f1 f2
    lwcZ f2 r0 25676
    fmul f2 f0 f2
    lwcZ f3 r0 25688
    fadd f2 f2 f3
    lwcZ f3 r0 25680
    fmul f0 f0 f3
    lwcZ f3 r0 25692
    fadd f0 f0 f3
    lw r1 r0 25616
    subi r2 r1 1
    lw r1 r29 28
    sw r1 r29 28
    mv r3 r0
    fmv f30 f2
    fmv f2 f0
    fmv f0 f1
    fmv f1 f30
    sw r31 r29 92
    addi r29 r29 96
    jal pretrace_pixels.5163
    subi r29 r29 96
    lw r31 r29 92
    addi r5 r0 2
    lw r2 r29 80
    lw r3 r29 28
    lw r4 r29 68
    mv r1 r0
    sw r31 r29 92
    addi r29 r29 96
    jal scan_line.5270
    subi r29 r29 96
    lw r31 r29 92
    jr r31
pretrace_diffuse_rays.5142:
block_5076:
    addi r3 r0 4
    blt r3 r2 block_5078
block_5077:
    lw r3 r1 8
    sll r4 r2 2
    lwab r3 r3 r4
    blt r3 r0 block_5080
block_5079:
    lw r3 r1 12
    sll r4 r2 2
    lwab r3 r3 r4
    sw r2 r29 28
    bne r3 r0 block_5082
    j block_5081
block_5081:
    j block_5083
block_5082:
    lw r3 r1 24
    lw r3 r3 0
    #0.0
    flui f0 0
    swcZ f0 r0 25592
    swcZ f0 r0 25596
    swcZ f0 r0 25600
    lw r4 r1 28
    lw r5 r1 4
    sll r3 r3 2
    lw r3 r3 25716
    sll r6 r2 2
    lwab r4 r4 r6
    sll r6 r2 2
    lwab r5 r5 r6
    lwcZ f0 r5 0
    swcZ f0 r0 25648
    lwcZ f0 r5 4
    swcZ f0 r0 25652
    lwcZ f0 r5 8
    swcZ f0 r0 25656
    lw r6 r0 25000
    subi r6 r6 1
    sw r1 r29 32
    sw r2 r29 28
    sw r5 r29 20
    sw r4 r29 12
    sw r3 r29 4
    mv r2 r6
    mv r1 r5
    sw r31 r29 36
    addi r29 r29 40
    jal setup_startp_constants.4131
    subi r29 r29 40
    lw r31 r29 36
    addi r4 r0 118
    lw r1 r29 4
    lw r2 r29 12
    lw r3 r29 20
    sw r31 r29 36
    addi r29 r29 40
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 40
    lw r31 r29 36
    lw r1 r29 32
    lw r2 r1 20
    lw r3 r29 28
    sll r4 r3 2
    lwab r2 r2 r4
    lwcZ f0 r0 25592
    swcZ f0 r2 0
    lwcZ f0 r0 25596
    swcZ f0 r2 4
    lwcZ f0 r0 25600
    swcZ f0 r2 8
    j block_5083
block_5083:
    lw r2 r29 28
    addi r2 r2 1
    addi r3 r0 4
    blt r3 r2 block_5085
block_5084:
    lw r3 r1 8
    sll r4 r2 2
    lwab r3 r3 r4
    blt r3 r0 block_5087
block_5086:
    lw r3 r1 12
    sll r4 r2 2
    lwab r3 r3 r4
    sw r2 r29 24
    bne r3 r0 block_5089
    j block_5088
block_5088:
    j block_5090
block_5089:
    lw r3 r1 24
    lw r3 r3 0
    #0.0
    flui f0 0
    swcZ f0 r0 25592
    swcZ f0 r0 25596
    swcZ f0 r0 25600
    lw r4 r1 28
    lw r5 r1 4
    sll r3 r3 2
    lw r3 r3 25716
    sll r6 r2 2
    lwab r4 r4 r6
    sll r6 r2 2
    lwab r5 r5 r6
    lwcZ f0 r5 0
    swcZ f0 r0 25648
    lwcZ f0 r5 4
    swcZ f0 r0 25652
    lwcZ f0 r5 8
    swcZ f0 r0 25656
    lw r6 r0 25000
    subi r6 r6 1
    sw r1 r29 32
    sw r2 r29 24
    sw r5 r29 16
    sw r4 r29 8
    sw r3 r29 0
    mv r2 r6
    mv r1 r5
    sw r31 r29 36
    addi r29 r29 40
    jal setup_startp_constants.4131
    subi r29 r29 40
    lw r31 r29 36
    addi r1 r0 118
    blt r1 r0 block_5092
block_5091:
    lw r1 r29 0
    lw r2 r1 472
    lw r2 r2 0
    lwcZ f0 r2 0
    lw r3 r29 8
    lwcZ f1 r3 0
    fmul f0 f0 f1
    lwcZ f1 r2 4
    lwcZ f2 r3 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r2 8
    lwcZ f2 r3 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5095
block_5094:
    mv r2 r0
    j block_5096
block_5095:
    addi r2 r0 1
    j block_5096
block_5096:
    sw r3 r29 8
    sw r1 r29 0
    bne r2 r0 block_5098
    j block_5097
block_5097:
    lw r2 r1 472
    #0.006666667
    flui f1 15322
    fori f1 f1 29710
    fmul f0 f0 f1
    sw r3 r29 8
    sw r1 r29 0
    mv r1 r2
    sw r31 r29 36
    addi r29 r29 40
    jal trace_diffuse_ray.4917
    subi r29 r29 40
    lw r31 r29 36
    j block_5099
block_5098:
    lw r2 r1 476
    #-0.006666667
    flui f1 -17446
    fori f1 f1 29710
    fmul f0 f0 f1
    sw r3 r29 8
    sw r1 r29 0
    mv r1 r2
    sw r31 r29 36
    addi r29 r29 40
    jal trace_diffuse_ray.4917
    subi r29 r29 40
    lw r31 r29 36
    j block_5099
block_5099:
    addi r4 r0 116
    lw r1 r29 0
    lw r2 r29 8
    lw r3 r29 16
    sw r31 r29 36
    addi r29 r29 40
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 40
    lw r31 r29 36
    j block_5093
block_5092:
    j block_5093
block_5093:
    lw r1 r29 32
    lw r2 r1 20
    lw r3 r29 24
    sll r4 r3 2
    lwab r2 r2 r4
    lwcZ f0 r0 25592
    swcZ f0 r2 0
    lwcZ f0 r0 25596
    swcZ f0 r2 4
    lwcZ f0 r0 25600
    swcZ f0 r2 8
    j block_5090
block_5090:
    lw r2 r29 24
    addi r2 r2 1
    sw r31 r29 36
    addi r29 r29 40
    jal pretrace_diffuse_rays.5142
    subi r29 r29 40
    lw r31 r29 36
    jr r31
block_5087:
    jr r31
block_5085:
    jr r31
block_5080:
    jr r31
block_5078:
    jr r31
pretrace_pixels.5163:
block_5100:
    addi r4 r0 25696
    blt r2 r0 block_5102
block_5101:
    lwcZ f3 r0 25632
    lw r5 r0 25624
    sub r5 r2 r5
    itof f4 r5
    fmul f3 f3 f4
    lwcZ f4 r0 25660
    fmul f4 f3 f4
    fadd f4 f4 f0
    swcZ f4 r0 25696
    lwcZ f4 r0 25664
    fmul f4 f3 f4
    fadd f4 f4 f1
    swcZ f4 r0 25700
    lwcZ f4 r0 25668
    fmul f3 f3 f4
    fadd f3 f3 f2
    swcZ f3 r0 25704
    lwcZ f3 r0 25696
    fmul f3 f3 f3
    lwcZ f4 r0 25700
    fmul f4 f4 f4
    fadd f3 f3 f4
    lwcZ f4 r0 25704
    fmul f4 f4 f4
    fadd f3 f3 f4
    sqrt_init f4 f3
    fmul f3 f3 f4
    #1.5
    flui f5 16320
    #0.5
    flui f6 16128
    fmul f4 f6 f4
    fmul f4 f4 f3
    fsub f4 f5 f4
    fmul f3 f3 f4
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_5104
block_5103:
    #1.0
    flui f4 16256
    finv_init f5 f3
    #2.0
    flui f6 16384
    fmul f3 f3 f5
    fsub f3 f6 f3
    fmul f3 f5 f3
    fmul f3 f4 f3
    j block_5105
block_5104:
    #1.0
    flui f3 16256
    j block_5105
block_5105:
    lwcZ f4 r0 25696
    fmul f4 f4 f3
    swcZ f4 r0 25696
    lwcZ f4 r0 25700
    fmul f4 f4 f3
    swcZ f4 r0 25700
    lwcZ f4 r0 25704
    fmul f3 f4 f3
    swcZ f3 r0 25704
    #0.0
    flui f3 0
    swcZ f3 r0 25604
    swcZ f3 r0 25608
    swcZ f3 r0 25612
    lwcZ f3 r0 25300
    swcZ f3 r0 25636
    lwcZ f3 r0 25304
    swcZ f3 r0 25640
    lwcZ f3 r0 25308
    swcZ f3 r0 25644
    #1.0
    flui f3 16256
    sll r5 r2 2
    lwab r5 r1 r5
    #0.0
    flui f4 0
    sw r2 r29 36
    sw r1 r29 32
    swcZ f2 r29 28
    swcZ f1 r29 24
    swcZ f0 r29 20
    sw r3 r29 16
    mv r3 r5
    mv r2 r4
    mv r1 r0
    fmv f1 f4
    fmv f0 f3
    sw r31 r29 40
    addi r29 r29 44
    jal trace_ray.4807
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 36
    sll r2 r1 2
    lw r3 r29 32
    lwab r2 r3 r2
    lw r2 r2 0
    lwcZ f0 r0 25604
    swcZ f0 r2 0
    lwcZ f0 r0 25608
    swcZ f0 r2 4
    lwcZ f0 r0 25612
    swcZ f0 r2 8
    sll r2 r1 2
    lwab r2 r3 r2
    lw r2 r2 24
    lw r4 r29 16
    sw r4 r2 0
    sll r2 r1 2
    lwab r2 r3 r2
    addi r5 r0 4
    sw r1 r29 36
    sw r3 r29 32
    sw r4 r29 16
    blt r5 r0 block_5107
block_5106:
    lw r5 r2 8
    lw r5 r5 0
    sw r1 r29 36
    sw r3 r29 32
    sw r4 r29 16
    blt r5 r0 block_5110
block_5109:
    lw r5 r2 12
    lw r5 r5 0
    sw r1 r29 36
    sw r3 r29 32
    sw r4 r29 16
    sw r2 r29 12
    bne r5 r0 block_5112
    j block_5111
block_5111:
    j block_5113
block_5112:
    lw r5 r2 24
    lw r5 r5 0
    #0.0
    flui f0 0
    swcZ f0 r0 25592
    swcZ f0 r0 25596
    swcZ f0 r0 25600
    lw r6 r2 28
    lw r7 r2 4
    sll r5 r5 2
    lw r5 r5 25716
    lw r6 r6 0
    lw r7 r7 0
    lwcZ f0 r7 0
    swcZ f0 r0 25648
    lwcZ f0 r7 4
    swcZ f0 r0 25652
    lwcZ f0 r7 8
    swcZ f0 r0 25656
    lw r8 r0 25000
    subi r8 r8 1
    sw r1 r29 36
    sw r3 r29 32
    sw r4 r29 16
    sw r2 r29 12
    sw r7 r29 8
    sw r6 r29 4
    sw r5 r29 0
    mv r2 r8
    mv r1 r7
    sw r31 r29 40
    addi r29 r29 44
    jal setup_startp_constants.4131
    subi r29 r29 44
    lw r31 r29 40
    addi r1 r0 118
    blt r1 r0 block_5115
block_5114:
    lw r1 r29 0
    lw r2 r1 472
    lw r2 r2 0
    lwcZ f0 r2 0
    lw r3 r29 4
    lwcZ f1 r3 0
    fmul f0 f0 f1
    lwcZ f1 r2 4
    lwcZ f2 r3 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r2 8
    lwcZ f2 r3 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5118
block_5117:
    mv r2 r0
    j block_5119
block_5118:
    addi r2 r0 1
    j block_5119
block_5119:
    sw r3 r29 4
    sw r1 r29 0
    bne r2 r0 block_5121
    j block_5120
block_5120:
    lw r2 r1 472
    #0.006666667
    flui f1 15322
    fori f1 f1 29710
    fmul f0 f0 f1
    sw r3 r29 4
    sw r1 r29 0
    mv r1 r2
    sw r31 r29 40
    addi r29 r29 44
    jal trace_diffuse_ray.4917
    subi r29 r29 44
    lw r31 r29 40
    j block_5122
block_5121:
    lw r2 r1 476
    #-0.006666667
    flui f1 -17446
    fori f1 f1 29710
    fmul f0 f0 f1
    sw r3 r29 4
    sw r1 r29 0
    mv r1 r2
    sw r31 r29 40
    addi r29 r29 44
    jal trace_diffuse_ray.4917
    subi r29 r29 44
    lw r31 r29 40
    j block_5122
block_5122:
    addi r4 r0 116
    lw r1 r29 0
    lw r2 r29 4
    lw r3 r29 8
    sw r31 r29 40
    addi r29 r29 44
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 44
    lw r31 r29 40
    j block_5116
block_5115:
    j block_5116
block_5116:
    lw r1 r29 12
    lw r2 r1 20
    lw r2 r2 0
    lwcZ f0 r0 25592
    swcZ f0 r2 0
    lwcZ f0 r0 25596
    swcZ f0 r2 4
    lwcZ f0 r0 25600
    swcZ f0 r2 8
    j block_5113
block_5113:
    addi r2 r0 1
    lw r1 r29 12
    sw r31 r29 40
    addi r29 r29 44
    jal pretrace_diffuse_rays.5142
    subi r29 r29 44
    lw r31 r29 40
    j block_5108
block_5110:
    j block_5108
block_5107:
    j block_5108
block_5108:
    lw r1 r29 36
    subi r2 r1 1
    lw r1 r29 16
    addi r1 r1 1
    addi r3 r0 5
    blt r1 r3 block_5124
block_5123:
    subi r3 r1 5
    j block_5125
block_5124:
    mv r3 r1
    j block_5125
block_5125:
    lw r1 r29 32
    lwcZ f0 r29 20
    lwcZ f1 r29 24
    lwcZ f2 r29 28
    sw r31 r29 40
    addi r29 r29 44
    jal pretrace_pixels.5163
    subi r29 r29 44
    lw r31 r29 40
    jr r31
block_5102:
    jr r31
print_uint.2118:
block_269:
    addi r2 r0 10
    blt r1 r2 block_271
block_270:
    div10 r2 r1
    addi r3 r0 10
    sw r1 r29 16
    blt r2 r3 block_273
block_272:
    div10 r3 r2
    addi r4 r0 10
    sw r1 r29 16
    sw r3 r29 12
    sw r2 r29 4
    blt r3 r4 block_276
block_275:
    div10 r4 r3
    addi r5 r0 10
    sw r1 r29 16
    sw r3 r29 12
    sw r2 r29 4
    sw r4 r29 0
    blt r4 r5 block_279
block_278:
    div10 r5 r4
    sw r1 r29 16
    sw r3 r29 12
    sw r5 r29 8
    sw r2 r29 4
    sw r4 r29 0
    mv r1 r5
    sw r31 r29 20
    addi r29 r29 24
    jal print_uint.2118
    subi r29 r29 24
    lw r31 r29 20
    lw r1 r29 8
    sll r28 r1 3
    add r28 r28 r1
    add r1 r28 r1
    lw r2 r29 0
    sub r1 r2 r1
    addi r1 r1 48
    out r1 0
    j block_280
block_279:
    addi r5 r4 48
    out r5 0
    j block_280
block_280:
    lw r1 r29 0
    sll r28 r1 3
    add r28 r28 r1
    add r1 r28 r1
    lw r2 r29 12
    sub r1 r2 r1
    addi r1 r1 48
    out r1 0
    j block_277
block_276:
    addi r4 r3 48
    out r4 0
    j block_277
block_277:
    lw r1 r29 12
    sll r28 r1 3
    add r28 r28 r1
    add r1 r28 r1
    lw r2 r29 4
    sub r1 r2 r1
    addi r1 r1 48
    out r1 0
    j block_274
block_273:
    addi r3 r2 48
    out r3 0
    j block_274
block_274:
    sll r28 r2 3
    add r28 r28 r2
    add r1 r28 r2
    lw r2 r29 16
    sub r1 r2 r1
    addi r1 r1 48
    out r1 0
    jr r31
block_271:
    addi r1 r1 48
    out r1 0
    jr r31
read_and_network.3461:
block_679:
    inint r2
    addi r3 r0 -1
    sw r1 r29 36
    beq r2 r3 block_681
block_680:
    inint r3
    addi r4 r0 -1
    sw r1 r29 36
    sw r2 r29 32
    beq r3 r4 block_684
block_683:
    inint r4
    addi r5 r0 -1
    sw r1 r29 36
    sw r2 r29 32
    sw r3 r29 12
    beq r4 r5 block_687
block_686:
    addi r5 r0 3
    sw r1 r29 36
    sw r2 r29 32
    sw r4 r29 20
    sw r3 r29 12
    mv r1 r5
    sw r31 r29 40
    addi r29 r29 44
    jal read_net_item.3434
    subi r29 r29 44
    lw r31 r29 40
    lw r2 r29 20
    sw r2 r1 8
    j block_688
block_687:
    addi r4 r0 -1
    sw r4 r30 0
    sw r4 r30 4
    sw r4 r30 8
    mv r1 r30
    addi r30 r30 12
    j block_688
block_688:
    lw r2 r29 12
    sw r2 r1 4
    j block_685
block_684:
    addi r3 r0 -1
    sw r3 r30 0
    sw r3 r30 4
    mv r1 r30
    addi r30 r30 8
    j block_685
block_685:
    lw r2 r29 32
    sw r2 r1 0
    j block_682
block_681:
    addi r2 r0 -1
    sw r2 r30 0
    mv r1 r30
    addi r30 r30 4
    j block_682
block_682:
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_690
block_689:
    lw r2 r29 36
    sll r3 r2 2
    sw r1 r3 25332
    addi r1 r2 1
    inint r2
    addi r3 r0 -1
    sw r1 r29 4
    beq r2 r3 block_692
block_691:
    inint r3
    addi r4 r0 -1
    sw r2 r29 16
    sw r1 r29 4
    beq r3 r4 block_695
block_694:
    addi r4 r0 2
    sw r3 r29 24
    sw r2 r29 16
    sw r1 r29 4
    mv r1 r4
    sw r31 r29 40
    addi r29 r29 44
    jal read_net_item.3434
    subi r29 r29 44
    lw r31 r29 40
    lw r2 r29 24
    sw r2 r1 4
    j block_696
block_695:
    addi r3 r0 -1
    sw r3 r30 0
    sw r3 r30 4
    mv r1 r30
    addi r30 r30 8
    j block_696
block_696:
    lw r2 r29 16
    sw r2 r1 0
    j block_693
block_692:
    addi r2 r0 -1
    sw r2 r30 0
    mv r1 r30
    addi r30 r30 4
    j block_693
block_693:
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_698
block_697:
    lw r2 r29 4
    sll r3 r2 2
    sw r1 r3 25332
    addi r1 r2 1
    inint r2
    addi r3 r0 -1
    sw r1 r29 8
    beq r2 r3 block_700
block_699:
    addi r3 r0 1
    sw r2 r29 28
    sw r1 r29 8
    mv r1 r3
    sw r31 r29 40
    addi r29 r29 44
    jal read_net_item.3434
    subi r29 r29 44
    lw r31 r29 40
    lw r2 r29 28
    sw r2 r1 0
    j block_701
block_700:
    addi r2 r0 -1
    sw r2 r30 0
    mv r1 r30
    addi r30 r30 4
    j block_701
block_701:
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_703
block_702:
    lw r2 r29 8
    sll r3 r2 2
    sw r1 r3 25332
    addi r1 r2 1
    sw r1 r29 0
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal read_net_item.3434
    subi r29 r29 44
    lw r31 r29 40
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_705
block_704:
    lw r2 r29 0
    sll r3 r2 2
    sw r1 r3 25332
    addi r1 r2 1
    sw r31 r29 40
    addi r29 r29 44
    jal read_and_network.3461
    subi r29 r29 44
    lw r31 r29 40
    jr r31
block_705:
    jr r31
block_703:
    jr r31
block_698:
    jr r31
block_690:
    jr r31
read_net_item.3434:
block_646:
    inint r2
    addi r3 r0 -1
    beq r2 r3 block_648
block_647:
    addi r3 r1 1
    inint r4
    addi r5 r0 -1
    sw r1 r29 28
    sw r2 r29 16
    beq r4 r5 block_650
block_649:
    addi r5 r3 1
    inint r6
    addi r7 r0 -1
    sw r1 r29 28
    sw r4 r29 24
    sw r2 r29 16
    sw r3 r29 4
    beq r6 r7 block_653
block_652:
    addi r7 r5 1
    inint r8
    addi r9 r0 -1
    sw r1 r29 28
    sw r4 r29 24
    sw r2 r29 16
    sw r6 r29 12
    sw r5 r29 8
    sw r3 r29 4
    beq r8 r9 block_656
block_655:
    addi r9 r7 1
    sw r1 r29 28
    sw r4 r29 24
    sw r8 r29 20
    sw r2 r29 16
    sw r6 r29 12
    sw r5 r29 8
    sw r3 r29 4
    sw r7 r29 0
    mv r1 r9
    sw r31 r29 32
    addi r29 r29 36
    jal read_net_item.3434
    subi r29 r29 36
    lw r31 r29 32
    lw r2 r29 0
    sll r2 r2 2
    lw r3 r29 20
    swab r3 r1 r2
    j block_657
block_656:
    addi r7 r7 1
    addi r8 r0 -1
    beq r0 r7 arrayexit.87573
    sll r28 r7  2
arrayloop.87572:
    subi r28 r28 4
    swab r8 r30 r28
    bne r0 r28 arrayloop.87572
    sll r28 r7  2
    mv r1 r30
    add r30 r30 r28
arrayexit.87573:
    j block_657
block_657:
    lw r2 r29 8
    sll r2 r2 2
    lw r3 r29 12
    swab r3 r1 r2
    j block_654
block_653:
    addi r5 r5 1
    addi r6 r0 -1
    beq r0 r5 arrayexit.87575
    sll r28 r5  2
arrayloop.87574:
    subi r28 r28 4
    swab r6 r30 r28
    bne r0 r28 arrayloop.87574
    sll r28 r5  2
    mv r1 r30
    add r30 r30 r28
arrayexit.87575:
    j block_654
block_654:
    lw r2 r29 4
    sll r2 r2 2
    lw r3 r29 24
    swab r3 r1 r2
    j block_651
block_650:
    addi r3 r3 1
    addi r4 r0 -1
    beq r0 r3 arrayexit.87577
    sll r28 r3  2
arrayloop.87576:
    subi r28 r28 4
    swab r4 r30 r28
    bne r0 r28 arrayloop.87576
    sll r28 r3  2
    mv r1 r30
    add r30 r30 r28
arrayexit.87577:
    j block_651
block_651:
    lw r2 r29 28
    sll r2 r2 2
    lw r3 r29 16
    swab r3 r1 r2
    jr r31
block_648:
    addi r1 r1 1
    addi r2 r0 -1
    beq r0 r1 arrayexit.87579
    sll r28 r1  2
arrayloop.87578:
    subi r28 r28 4
    swab r2 r30 r28
    bne r0 r28 arrayloop.87578
    sll r28 r1  2
    mv r1 r30
    add r30 r30 r28
arrayexit.87579:
    jr r31
read_object.3424:
block_281:
    addi r2 r0 60
    blt r1 r2 block_283
block_282:
    jr r31
block_283:
    inint r2
    addi r3 r0 -1
    beq r2 r3 block_285
block_284:
    inint r3
    inint r4
    inint r5
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    inflt f0
    swcZ f0 r6 0
    inflt f0
    swcZ f0 r6 4
    inflt f0
    swcZ f0 r6 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r7 r30
    addi r30 r30 12
    inflt f0
    swcZ f0 r7 0
    inflt f0
    swcZ f0 r7 4
    inflt f0
    swcZ f0 r7 8
    inflt f0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_288
block_287:
    mv r8 r0
    j block_289
block_288:
    addi r8 r0 1
    j block_289
block_289:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    mv r9 r30
    addi r30 r30 8
    inflt f0
    swcZ f0 r9 0
    inflt f0
    swcZ f0 r9 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    inflt f0
    swcZ f0 r10 0
    inflt f0
    swcZ f0 r10 4
    inflt f0
    swcZ f0 r10 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    beq r5 r0 block_291
block_290:
    inflt f0
    #0.017453292
    flui f1 15502
    fori f1 f1 -1483
    fmul f0 f0 f1
    swcZ f0 r11 0
    inflt f0
    #0.017453292
    flui f1 15502
    fori f1 f1 -1483
    fmul f0 f0 f1
    swcZ f0 r11 4
    inflt f0
    #0.017453292
    flui f1 15502
    fori f1 f1 -1483
    fmul f0 f0 f1
    swcZ f0 r11 8
    j block_292
block_291:
    j block_292
block_292:
    addi r12 r0 2
    beq r3 r12 block_294
block_293:
    mv r12 r8
    j block_295
block_294:
    addi r12 r0 1
    j block_295
block_295:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    mv r13 r30
    addi r30 r30 16
    mv r14 r30
    addi r30 r30 44
    sw r13 r14 40
    sw r11 r14 36
    sw r10 r14 32
    sw r9 r14 28
    sw r12 r14 24
    sw r7 r14 20
    sw r6 r14 16
    sw r5 r14 12
    sw r4 r14 8
    sw r3 r14 4
    sw r2 r14 0
    mv r2 r14
    sll r4 r1 2
    sw r2 r4 25048
    addi r2 r0 3
    beq r3 r2 block_297
block_296:
    addi r2 r0 2
    beq r3 r2 block_300
block_299:
    j block_298
block_300:
    bne r8 r0 block_302
    j block_301
block_301:
    addi r2 r0 1
    j block_303
block_302:
    mv r2 r0
    j block_303
block_303:
    lwcZ f0 r6 0
    fmul f0 f0 f0
    lwcZ f1 r6 4
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r6 8
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_305
block_304:
    bne r2 r0 block_308
    j block_307
block_307:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_306
block_308:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_306
block_305:
    #1.0
    flui f0 16256
    j block_306
block_306:
    lwcZ f1 r6 0
    fmul f1 f1 f0
    swcZ f1 r6 0
    lwcZ f1 r6 4
    fmul f1 f1 f0
    swcZ f1 r6 4
    lwcZ f1 r6 8
    fmul f0 f1 f0
    swcZ f0 r6 8
    j block_298
block_297:
    lwcZ f0 r6 0
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_310
block_309:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_313
block_312:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_316
block_315:
    mv r2 r0
    j block_317
block_316:
    addi r2 r0 1
    j block_317
block_317:
    bne r2 r0 block_319
    j block_318
block_318:
    #-1.0
    flui f1 -16512
    j block_314
block_319:
    #1.0
    flui f1 16256
    j block_314
block_313:
    #0.0
    flui f1 0
    j block_314
block_314:
    fmul f0 f0 f0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_311
block_310:
    #0.0
    flui f0 0
    j block_311
block_311:
    swcZ f0 r6 0
    lwcZ f0 r6 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_321
block_320:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_324
block_323:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_327
block_326:
    mv r2 r0
    j block_328
block_327:
    addi r2 r0 1
    j block_328
block_328:
    bne r2 r0 block_330
    j block_329
block_329:
    #-1.0
    flui f1 -16512
    j block_325
block_330:
    #1.0
    flui f1 16256
    j block_325
block_324:
    #0.0
    flui f1 0
    j block_325
block_325:
    fmul f0 f0 f0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_322
block_321:
    #0.0
    flui f0 0
    j block_322
block_322:
    swcZ f0 r6 4
    lwcZ f0 r6 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_332
block_331:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_335
block_334:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_338
block_337:
    mv r2 r0
    j block_339
block_338:
    addi r2 r0 1
    j block_339
block_339:
    bne r2 r0 block_341
    j block_340
block_340:
    #-1.0
    flui f1 -16512
    j block_336
block_341:
    #1.0
    flui f1 16256
    j block_336
block_335:
    #0.0
    flui f1 0
    j block_336
block_336:
    fmul f0 f0 f0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_333
block_332:
    #0.0
    flui f0 0
    j block_333
block_333:
    swcZ f0 r6 8
    j block_298
block_298:
    beq r5 r0 block_343
block_342:
    lwcZ f0 r11 0
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f4 f4 f5
    fsub f0 f0 f4
    #0.0
    flui f4 0
    fclt f4 f0
    bc1t block_346
block_345:
    fneg f0 f0
    j block_347
block_346:
    j block_347
block_347:
    fclt f3 f0
    bc1t block_349
block_348:
    addi r2 r0 1
    j block_350
block_349:
    addi r2 r0 -1
    j block_350
block_350:
    fclt f3 f0
    bc1t block_352
block_351:
    j block_353
block_352:
    fsub f0 f0 f3
    j block_353
block_353:
    fclt f2 f0
    bc1t block_355
block_354:
    j block_356
block_355:
    sub r2 r0 r2
    j block_356
block_356:
    fclt f2 f0
    bc1t block_358
block_357:
    j block_359
block_358:
    fsub f0 f3 f0
    j block_359
block_359:
    fclt f0 f1
    bc1t block_361
block_360:
    fsub f0 f2 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_362
block_361:
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_362
block_362:
    addi r3 r0 -1
    beq r2 r3 block_364
block_363:
    j block_365
block_364:
    fneg f0 f0
    j block_365
block_365:
    lwcZ f1 r11 0
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.5707964
    flui f3 16329
    fori f3 f3 4059
    #3.1415927
    flui f4 16457
    fori f4 f4 4059
    #6.2831855
    flui f5 16585
    fori f5 f5 4059
    #0.15915494
    flui f6 15906
    fori f6 f6 -1661
    fmul f6 f1 f6
    ftoi r2 f6
    itof f6 r2
    fmul f6 f5 f6
    fsub f1 f1 f6
    #0.0
    flui f6 0
    fclt f6 f1
    bc1t block_367
block_366:
    fadd f1 f1 f5
    j block_368
block_367:
    j block_368
block_368:
    fclt f4 f1
    bc1t block_370
block_369:
    addi r2 r0 1
    j block_371
block_370:
    mv r2 r0
    j block_371
block_371:
    fclt f4 f1
    bc1t block_373
block_372:
    j block_374
block_373:
    fsub f1 f1 f4
    j block_374
block_374:
    fclt f3 f1
    bc1t block_376
block_375:
    j block_377
block_376:
    fsub f1 f4 f1
    j block_377
block_377:
    fclt f2 f1
    bc1t block_379
block_378:
    fmul f2 f1 f1
    fmul f3 f2 f1
    fmul f4 f3 f2
    fmul f2 f4 f2
    #0.16666669
    flui f5 15914
    fori f5 f5 -21844
    fmul f3 f5 f3
    fsub f1 f1 f3
    #0.008332824
    flui f3 15368
    fori f3 f3 -31130
    fmul f3 f3 f4
    fadd f1 f1 f3
    #0.00019587841
    flui f3 14669
    fori f3 f3 25782
    fmul f2 f3 f2
    fsub f1 f1 f2
    j block_380
block_379:
    fsub f1 f3 f1
    fmul f1 f1 f1
    fmul f2 f1 f1
    fmul f3 f2 f1
    #1.0
    flui f4 16256
    #0.5
    flui f5 16128
    fmul f1 f5 f1
    fsub f1 f4 f1
    #0.04166368
    flui f4 15658
    fori f4 f4 -22647
    fmul f2 f4 f2
    fadd f1 f1 f2
    #0.0013695068
    flui f2 15027
    fori f2 f2 -32506
    fmul f2 f2 f3
    fsub f1 f1 f2
    j block_380
block_380:
    bne r2 r0 block_382
    j block_381
block_381:
    fneg f1 f1
    j block_383
block_382:
    j block_383
block_383:
    lwcZ f2 r11 4
    #0.7853982
    flui f3 16201
    fori f3 f3 4059
    #1.5707964
    flui f4 16329
    fori f4 f4 4059
    #3.1415927
    flui f5 16457
    fori f5 f5 4059
    #6.2831855
    flui f6 16585
    fori f6 f6 4059
    #0.15915494
    flui f7 15906
    fori f7 f7 -1661
    fmul f7 f2 f7
    ftoi r2 f7
    itof f7 r2
    fmul f6 f6 f7
    fsub f2 f2 f6
    #0.0
    flui f6 0
    fclt f6 f2
    bc1t block_385
block_384:
    fneg f2 f2
    j block_386
block_385:
    j block_386
block_386:
    fclt f5 f2
    bc1t block_388
block_387:
    addi r2 r0 1
    j block_389
block_388:
    addi r2 r0 -1
    j block_389
block_389:
    fclt f5 f2
    bc1t block_391
block_390:
    j block_392
block_391:
    fsub f2 f2 f5
    j block_392
block_392:
    fclt f4 f2
    bc1t block_394
block_393:
    j block_395
block_394:
    sub r2 r0 r2
    j block_395
block_395:
    fclt f4 f2
    bc1t block_397
block_396:
    j block_398
block_397:
    fsub f2 f5 f2
    j block_398
block_398:
    fclt f2 f3
    bc1t block_400
block_399:
    fsub f2 f4 f2
    fmul f3 f2 f2
    fmul f4 f3 f2
    fmul f5 f4 f3
    fmul f3 f5 f3
    #0.16666669
    flui f6 15914
    fori f6 f6 -21844
    fmul f4 f6 f4
    fsub f2 f2 f4
    #0.008332824
    flui f4 15368
    fori f4 f4 -31130
    fmul f4 f4 f5
    fadd f2 f2 f4
    #0.00019587841
    flui f4 14669
    fori f4 f4 25782
    fmul f3 f4 f3
    fsub f2 f2 f3
    j block_401
block_400:
    fmul f2 f2 f2
    fmul f3 f2 f2
    fmul f4 f3 f2
    #1.0
    flui f5 16256
    #0.5
    flui f6 16128
    fmul f2 f6 f2
    fsub f2 f5 f2
    #0.04166368
    flui f5 15658
    fori f5 f5 -22647
    fmul f3 f5 f3
    fadd f2 f2 f3
    #0.0013695068
    flui f3 15027
    fori f3 f3 -32506
    fmul f3 f3 f4
    fsub f2 f2 f3
    j block_401
block_401:
    addi r3 r0 -1
    beq r2 r3 block_403
block_402:
    j block_404
block_403:
    fneg f2 f2
    j block_404
block_404:
    lwcZ f3 r11 4
    #0.7853982
    flui f4 16201
    fori f4 f4 4059
    #1.5707964
    flui f5 16329
    fori f5 f5 4059
    #3.1415927
    flui f6 16457
    fori f6 f6 4059
    #6.2831855
    flui f7 16585
    fori f7 f7 4059
    #0.15915494
    flui f8 15906
    fori f8 f8 -1661
    fmul f8 f3 f8
    ftoi r2 f8
    itof f8 r2
    fmul f8 f7 f8
    fsub f3 f3 f8
    #0.0
    flui f8 0
    fclt f8 f3
    bc1t block_406
block_405:
    fadd f3 f3 f7
    j block_407
block_406:
    j block_407
block_407:
    fclt f6 f3
    bc1t block_409
block_408:
    addi r2 r0 1
    j block_410
block_409:
    mv r2 r0
    j block_410
block_410:
    fclt f6 f3
    bc1t block_412
block_411:
    j block_413
block_412:
    fsub f3 f3 f6
    j block_413
block_413:
    fclt f5 f3
    bc1t block_415
block_414:
    j block_416
block_415:
    fsub f3 f6 f3
    j block_416
block_416:
    fclt f4 f3
    bc1t block_418
block_417:
    fmul f4 f3 f3
    fmul f5 f4 f3
    fmul f6 f5 f4
    fmul f4 f6 f4
    #0.16666669
    flui f7 15914
    fori f7 f7 -21844
    fmul f5 f7 f5
    fsub f3 f3 f5
    #0.008332824
    flui f5 15368
    fori f5 f5 -31130
    fmul f5 f5 f6
    fadd f3 f3 f5
    #0.00019587841
    flui f5 14669
    fori f5 f5 25782
    fmul f4 f5 f4
    fsub f3 f3 f4
    j block_419
block_418:
    fsub f3 f5 f3
    fmul f3 f3 f3
    fmul f4 f3 f3
    fmul f5 f4 f3
    #1.0
    flui f6 16256
    #0.5
    flui f7 16128
    fmul f3 f7 f3
    fsub f3 f6 f3
    #0.04166368
    flui f6 15658
    fori f6 f6 -22647
    fmul f4 f6 f4
    fadd f3 f3 f4
    #0.0013695068
    flui f4 15027
    fori f4 f4 -32506
    fmul f4 f4 f5
    fsub f3 f3 f4
    j block_419
block_419:
    bne r2 r0 block_421
    j block_420
block_420:
    fneg f3 f3
    j block_422
block_421:
    j block_422
block_422:
    lwcZ f4 r11 8
    #0.7853982
    flui f5 16201
    fori f5 f5 4059
    #1.5707964
    flui f6 16329
    fori f6 f6 4059
    #3.1415927
    flui f7 16457
    fori f7 f7 4059
    #6.2831855
    flui f8 16585
    fori f8 f8 4059
    #0.15915494
    flui f9 15906
    fori f9 f9 -1661
    fmul f9 f4 f9
    ftoi r2 f9
    itof f9 r2
    fmul f8 f8 f9
    fsub f4 f4 f8
    #0.0
    flui f8 0
    fclt f8 f4
    bc1t block_424
block_423:
    fneg f4 f4
    j block_425
block_424:
    j block_425
block_425:
    fclt f7 f4
    bc1t block_427
block_426:
    addi r2 r0 1
    j block_428
block_427:
    addi r2 r0 -1
    j block_428
block_428:
    fclt f7 f4
    bc1t block_430
block_429:
    j block_431
block_430:
    fsub f4 f4 f7
    j block_431
block_431:
    fclt f6 f4
    bc1t block_433
block_432:
    j block_434
block_433:
    sub r2 r0 r2
    j block_434
block_434:
    fclt f6 f4
    bc1t block_436
block_435:
    j block_437
block_436:
    fsub f4 f7 f4
    j block_437
block_437:
    fclt f4 f5
    bc1t block_439
block_438:
    fsub f4 f6 f4
    fmul f5 f4 f4
    fmul f6 f5 f4
    fmul f7 f6 f5
    fmul f5 f7 f5
    #0.16666669
    flui f8 15914
    fori f8 f8 -21844
    fmul f6 f8 f6
    fsub f4 f4 f6
    #0.008332824
    flui f6 15368
    fori f6 f6 -31130
    fmul f6 f6 f7
    fadd f4 f4 f6
    #0.00019587841
    flui f6 14669
    fori f6 f6 25782
    fmul f5 f6 f5
    fsub f4 f4 f5
    j block_440
block_439:
    fmul f4 f4 f4
    fmul f5 f4 f4
    fmul f6 f5 f4
    #1.0
    flui f7 16256
    #0.5
    flui f8 16128
    fmul f4 f8 f4
    fsub f4 f7 f4
    #0.04166368
    flui f7 15658
    fori f7 f7 -22647
    fmul f5 f7 f5
    fadd f4 f4 f5
    #0.0013695068
    flui f5 15027
    fori f5 f5 -32506
    fmul f5 f5 f6
    fsub f4 f4 f5
    j block_440
block_440:
    addi r3 r0 -1
    beq r2 r3 block_442
block_441:
    j block_443
block_442:
    fneg f4 f4
    j block_443
block_443:
    lwcZ f5 r11 8
    #0.7853982
    flui f6 16201
    fori f6 f6 4059
    #1.5707964
    flui f7 16329
    fori f7 f7 4059
    #3.1415927
    flui f8 16457
    fori f8 f8 4059
    #6.2831855
    flui f9 16585
    fori f9 f9 4059
    #0.15915494
    flui f10 15906
    fori f10 f10 -1661
    fmul f10 f5 f10
    ftoi r2 f10
    itof f10 r2
    fmul f10 f9 f10
    fsub f5 f5 f10
    #0.0
    flui f10 0
    fclt f10 f5
    bc1t block_445
block_444:
    fadd f5 f5 f9
    j block_446
block_445:
    j block_446
block_446:
    fclt f8 f5
    bc1t block_448
block_447:
    addi r2 r0 1
    j block_449
block_448:
    mv r2 r0
    j block_449
block_449:
    fclt f8 f5
    bc1t block_451
block_450:
    j block_452
block_451:
    fsub f5 f5 f8
    j block_452
block_452:
    fclt f7 f5
    bc1t block_454
block_453:
    j block_455
block_454:
    fsub f5 f8 f5
    j block_455
block_455:
    fclt f6 f5
    bc1t block_457
block_456:
    fmul f6 f5 f5
    fmul f7 f6 f5
    fmul f8 f7 f6
    fmul f6 f8 f6
    #0.16666669
    flui f9 15914
    fori f9 f9 -21844
    fmul f7 f9 f7
    fsub f5 f5 f7
    #0.008332824
    flui f7 15368
    fori f7 f7 -31130
    fmul f7 f7 f8
    fadd f5 f5 f7
    #0.00019587841
    flui f7 14669
    fori f7 f7 25782
    fmul f6 f7 f6
    fsub f5 f5 f6
    j block_458
block_457:
    fsub f5 f7 f5
    fmul f5 f5 f5
    fmul f6 f5 f5
    fmul f7 f6 f5
    #1.0
    flui f8 16256
    #0.5
    flui f9 16128
    fmul f5 f9 f5
    fsub f5 f8 f5
    #0.04166368
    flui f8 15658
    fori f8 f8 -22647
    fmul f6 f8 f6
    fadd f5 f5 f6
    #0.0013695068
    flui f6 15027
    fori f6 f6 -32506
    fmul f6 f6 f7
    fsub f5 f5 f6
    j block_458
block_458:
    bne r2 r0 block_460
    j block_459
block_459:
    fneg f5 f5
    j block_461
block_460:
    j block_461
block_461:
    fmul f6 f2 f4
    fmul f7 f1 f3
    fmul f7 f7 f4
    fmul f8 f0 f5
    fsub f7 f7 f8
    fmul f8 f0 f3
    fmul f8 f8 f4
    fmul f9 f1 f5
    fadd f8 f8 f9
    fmul f9 f2 f5
    fmul f10 f1 f3
    fmul f10 f10 f5
    fmul f11 f0 f4
    fadd f10 f10 f11
    fmul f11 f0 f3
    fmul f5 f11 f5
    fmul f4 f1 f4
    fsub f4 f5 f4
    fneg f3 f3
    fmul f1 f1 f2
    fmul f0 f0 f2
    lwcZ f2 r6 0
    lwcZ f5 r6 4
    lwcZ f11 r6 8
    fmul f12 f6 f6
    fmul f12 f2 f12
    fmul f13 f9 f9
    fmul f13 f5 f13
    fadd f12 f12 f13
    fmul f13 f3 f3
    fmul f13 f11 f13
    fadd f12 f12 f13
    swcZ f12 r6 0
    fmul f12 f7 f7
    fmul f12 f2 f12
    fmul f13 f10 f10
    fmul f13 f5 f13
    fadd f12 f12 f13
    fmul f13 f1 f1
    fmul f13 f11 f13
    fadd f12 f12 f13
    swcZ f12 r6 4
    fmul f12 f8 f8
    fmul f12 f2 f12
    fmul f13 f4 f4
    fmul f13 f5 f13
    fadd f12 f12 f13
    fmul f13 f0 f0
    fmul f13 f11 f13
    fadd f12 f12 f13
    swcZ f12 r6 8
    #2.0
    flui f12 16384
    fmul f13 f2 f7
    fmul f13 f13 f8
    fmul f14 f5 f10
    fmul f14 f14 f4
    fadd f13 f13 f14
    fmul f14 f11 f1
    fmul f14 f14 f0
    fadd f13 f13 f14
    fmul f12 f12 f13
    swcZ f12 r11 0
    #2.0
    flui f12 16384
    fmul f13 f2 f6
    fmul f8 f13 f8
    fmul f13 f5 f9
    fmul f4 f13 f4
    fadd f4 f8 f4
    fmul f8 f11 f3
    fmul f0 f8 f0
    fadd f0 f4 f0
    fmul f0 f12 f0
    swcZ f0 r11 4
    #2.0
    flui f0 16384
    fmul f2 f2 f6
    fmul f2 f2 f7
    fmul f4 f5 f9
    fmul f4 f4 f10
    fadd f2 f2 f4
    fmul f3 f11 f3
    fmul f1 f3 f1
    fadd f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r11 8
    j block_344
block_343:
    j block_344
block_344:
    addi r2 r0 1
    j block_286
block_285:
    mv r2 r0
    j block_286
block_286:
    bne r2 r0 block_463
    j block_462
block_462:
    sw r1 r0 25000
    jr r31
block_463:
    addi r1 r1 1
    addi r2 r0 60
    blt r1 r2 block_465
block_464:
    jr r31
block_465:
    inint r2
    addi r3 r0 -1
    beq r2 r3 block_467
block_466:
    inint r3
    inint r4
    inint r5
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r6 r30
    addi r30 r30 12
    inflt f0
    swcZ f0 r6 0
    inflt f0
    swcZ f0 r6 4
    inflt f0
    swcZ f0 r6 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r7 r30
    addi r30 r30 12
    inflt f0
    swcZ f0 r7 0
    inflt f0
    swcZ f0 r7 4
    inflt f0
    swcZ f0 r7 8
    inflt f0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_470
block_469:
    mv r8 r0
    j block_471
block_470:
    addi r8 r0 1
    j block_471
block_471:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    mv r9 r30
    addi r30 r30 8
    inflt f0
    swcZ f0 r9 0
    inflt f0
    swcZ f0 r9 4
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r10 r30
    addi r30 r30 12
    inflt f0
    swcZ f0 r10 0
    inflt f0
    swcZ f0 r10 4
    inflt f0
    swcZ f0 r10 8
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r11 r30
    addi r30 r30 12
    beq r5 r0 block_473
block_472:
    inflt f0
    #0.017453292
    flui f1 15502
    fori f1 f1 -1483
    fmul f0 f0 f1
    swcZ f0 r11 0
    inflt f0
    #0.017453292
    flui f1 15502
    fori f1 f1 -1483
    fmul f0 f0 f1
    swcZ f0 r11 4
    inflt f0
    #0.017453292
    flui f1 15502
    fori f1 f1 -1483
    fmul f0 f0 f1
    swcZ f0 r11 8
    j block_474
block_473:
    j block_474
block_474:
    addi r12 r0 2
    beq r3 r12 block_476
block_475:
    mv r12 r8
    j block_477
block_476:
    addi r12 r0 1
    j block_477
block_477:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    swcZ f0 r30 12
    mv r13 r30
    addi r30 r30 16
    mv r14 r30
    addi r30 r30 44
    sw r13 r14 40
    sw r11 r14 36
    sw r10 r14 32
    sw r9 r14 28
    sw r12 r14 24
    sw r7 r14 20
    sw r6 r14 16
    sw r5 r14 12
    sw r4 r14 8
    sw r3 r14 4
    sw r2 r14 0
    mv r2 r14
    sll r4 r1 2
    sw r2 r4 25048
    addi r2 r0 3
    beq r3 r2 block_479
block_478:
    addi r2 r0 2
    beq r3 r2 block_482
block_481:
    j block_480
block_482:
    bne r8 r0 block_484
    j block_483
block_483:
    addi r2 r0 1
    j block_485
block_484:
    mv r2 r0
    j block_485
block_485:
    lwcZ f0 r6 0
    fmul f0 f0 f0
    lwcZ f1 r6 4
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r6 8
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_487
block_486:
    bne r2 r0 block_490
    j block_489
block_489:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_488
block_490:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_488
block_487:
    #1.0
    flui f0 16256
    j block_488
block_488:
    lwcZ f1 r6 0
    fmul f1 f1 f0
    swcZ f1 r6 0
    lwcZ f1 r6 4
    fmul f1 f1 f0
    swcZ f1 r6 4
    lwcZ f1 r6 8
    fmul f0 f1 f0
    swcZ f0 r6 8
    j block_480
block_479:
    lwcZ f0 r6 0
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_492
block_491:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_495
block_494:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_498
block_497:
    mv r2 r0
    j block_499
block_498:
    addi r2 r0 1
    j block_499
block_499:
    bne r2 r0 block_501
    j block_500
block_500:
    #-1.0
    flui f1 -16512
    j block_496
block_501:
    #1.0
    flui f1 16256
    j block_496
block_495:
    #0.0
    flui f1 0
    j block_496
block_496:
    fmul f0 f0 f0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_493
block_492:
    #0.0
    flui f0 0
    j block_493
block_493:
    swcZ f0 r6 0
    lwcZ f0 r6 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_503
block_502:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_506
block_505:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_509
block_508:
    mv r2 r0
    j block_510
block_509:
    addi r2 r0 1
    j block_510
block_510:
    bne r2 r0 block_512
    j block_511
block_511:
    #-1.0
    flui f1 -16512
    j block_507
block_512:
    #1.0
    flui f1 16256
    j block_507
block_506:
    #0.0
    flui f1 0
    j block_507
block_507:
    fmul f0 f0 f0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_504
block_503:
    #0.0
    flui f0 0
    j block_504
block_504:
    swcZ f0 r6 4
    lwcZ f0 r6 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_514
block_513:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_517
block_516:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_520
block_519:
    mv r2 r0
    j block_521
block_520:
    addi r2 r0 1
    j block_521
block_521:
    bne r2 r0 block_523
    j block_522
block_522:
    #-1.0
    flui f1 -16512
    j block_518
block_523:
    #1.0
    flui f1 16256
    j block_518
block_517:
    #0.0
    flui f1 0
    j block_518
block_518:
    fmul f0 f0 f0
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_515
block_514:
    #0.0
    flui f0 0
    j block_515
block_515:
    swcZ f0 r6 8
    j block_480
block_480:
    beq r5 r0 block_525
block_524:
    lwcZ f0 r11 0
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f4 f4 f5
    fsub f0 f0 f4
    #0.0
    flui f4 0
    fclt f4 f0
    bc1t block_528
block_527:
    fneg f0 f0
    j block_529
block_528:
    j block_529
block_529:
    fclt f3 f0
    bc1t block_531
block_530:
    addi r2 r0 1
    j block_532
block_531:
    addi r2 r0 -1
    j block_532
block_532:
    fclt f3 f0
    bc1t block_534
block_533:
    j block_535
block_534:
    fsub f0 f0 f3
    j block_535
block_535:
    fclt f2 f0
    bc1t block_537
block_536:
    j block_538
block_537:
    sub r2 r0 r2
    j block_538
block_538:
    fclt f2 f0
    bc1t block_540
block_539:
    j block_541
block_540:
    fsub f0 f3 f0
    j block_541
block_541:
    fclt f0 f1
    bc1t block_543
block_542:
    fsub f0 f2 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_544
block_543:
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_544
block_544:
    addi r3 r0 -1
    beq r2 r3 block_546
block_545:
    j block_547
block_546:
    fneg f0 f0
    j block_547
block_547:
    lwcZ f1 r11 0
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.5707964
    flui f3 16329
    fori f3 f3 4059
    #3.1415927
    flui f4 16457
    fori f4 f4 4059
    #6.2831855
    flui f5 16585
    fori f5 f5 4059
    #0.15915494
    flui f6 15906
    fori f6 f6 -1661
    fmul f6 f1 f6
    ftoi r2 f6
    itof f6 r2
    fmul f6 f5 f6
    fsub f1 f1 f6
    #0.0
    flui f6 0
    fclt f6 f1
    bc1t block_549
block_548:
    fadd f1 f1 f5
    j block_550
block_549:
    j block_550
block_550:
    fclt f4 f1
    bc1t block_552
block_551:
    addi r2 r0 1
    j block_553
block_552:
    mv r2 r0
    j block_553
block_553:
    fclt f4 f1
    bc1t block_555
block_554:
    j block_556
block_555:
    fsub f1 f1 f4
    j block_556
block_556:
    fclt f3 f1
    bc1t block_558
block_557:
    j block_559
block_558:
    fsub f1 f4 f1
    j block_559
block_559:
    fclt f2 f1
    bc1t block_561
block_560:
    fmul f2 f1 f1
    fmul f3 f2 f1
    fmul f4 f3 f2
    fmul f2 f4 f2
    #0.16666669
    flui f5 15914
    fori f5 f5 -21844
    fmul f3 f5 f3
    fsub f1 f1 f3
    #0.008332824
    flui f3 15368
    fori f3 f3 -31130
    fmul f3 f3 f4
    fadd f1 f1 f3
    #0.00019587841
    flui f3 14669
    fori f3 f3 25782
    fmul f2 f3 f2
    fsub f1 f1 f2
    j block_562
block_561:
    fsub f1 f3 f1
    fmul f1 f1 f1
    fmul f2 f1 f1
    fmul f3 f2 f1
    #1.0
    flui f4 16256
    #0.5
    flui f5 16128
    fmul f1 f5 f1
    fsub f1 f4 f1
    #0.04166368
    flui f4 15658
    fori f4 f4 -22647
    fmul f2 f4 f2
    fadd f1 f1 f2
    #0.0013695068
    flui f2 15027
    fori f2 f2 -32506
    fmul f2 f2 f3
    fsub f1 f1 f2
    j block_562
block_562:
    bne r2 r0 block_564
    j block_563
block_563:
    fneg f1 f1
    j block_565
block_564:
    j block_565
block_565:
    lwcZ f2 r11 4
    #0.7853982
    flui f3 16201
    fori f3 f3 4059
    #1.5707964
    flui f4 16329
    fori f4 f4 4059
    #3.1415927
    flui f5 16457
    fori f5 f5 4059
    #6.2831855
    flui f6 16585
    fori f6 f6 4059
    #0.15915494
    flui f7 15906
    fori f7 f7 -1661
    fmul f7 f2 f7
    ftoi r2 f7
    itof f7 r2
    fmul f6 f6 f7
    fsub f2 f2 f6
    #0.0
    flui f6 0
    fclt f6 f2
    bc1t block_567
block_566:
    fneg f2 f2
    j block_568
block_567:
    j block_568
block_568:
    fclt f5 f2
    bc1t block_570
block_569:
    addi r2 r0 1
    j block_571
block_570:
    addi r2 r0 -1
    j block_571
block_571:
    fclt f5 f2
    bc1t block_573
block_572:
    j block_574
block_573:
    fsub f2 f2 f5
    j block_574
block_574:
    fclt f4 f2
    bc1t block_576
block_575:
    j block_577
block_576:
    sub r2 r0 r2
    j block_577
block_577:
    fclt f4 f2
    bc1t block_579
block_578:
    j block_580
block_579:
    fsub f2 f5 f2
    j block_580
block_580:
    fclt f2 f3
    bc1t block_582
block_581:
    fsub f2 f4 f2
    fmul f3 f2 f2
    fmul f4 f3 f2
    fmul f5 f4 f3
    fmul f3 f5 f3
    #0.16666669
    flui f6 15914
    fori f6 f6 -21844
    fmul f4 f6 f4
    fsub f2 f2 f4
    #0.008332824
    flui f4 15368
    fori f4 f4 -31130
    fmul f4 f4 f5
    fadd f2 f2 f4
    #0.00019587841
    flui f4 14669
    fori f4 f4 25782
    fmul f3 f4 f3
    fsub f2 f2 f3
    j block_583
block_582:
    fmul f2 f2 f2
    fmul f3 f2 f2
    fmul f4 f3 f2
    #1.0
    flui f5 16256
    #0.5
    flui f6 16128
    fmul f2 f6 f2
    fsub f2 f5 f2
    #0.04166368
    flui f5 15658
    fori f5 f5 -22647
    fmul f3 f5 f3
    fadd f2 f2 f3
    #0.0013695068
    flui f3 15027
    fori f3 f3 -32506
    fmul f3 f3 f4
    fsub f2 f2 f3
    j block_583
block_583:
    addi r3 r0 -1
    beq r2 r3 block_585
block_584:
    j block_586
block_585:
    fneg f2 f2
    j block_586
block_586:
    lwcZ f3 r11 4
    #0.7853982
    flui f4 16201
    fori f4 f4 4059
    #1.5707964
    flui f5 16329
    fori f5 f5 4059
    #3.1415927
    flui f6 16457
    fori f6 f6 4059
    #6.2831855
    flui f7 16585
    fori f7 f7 4059
    #0.15915494
    flui f8 15906
    fori f8 f8 -1661
    fmul f8 f3 f8
    ftoi r2 f8
    itof f8 r2
    fmul f8 f7 f8
    fsub f3 f3 f8
    #0.0
    flui f8 0
    fclt f8 f3
    bc1t block_588
block_587:
    fadd f3 f3 f7
    j block_589
block_588:
    j block_589
block_589:
    fclt f6 f3
    bc1t block_591
block_590:
    addi r2 r0 1
    j block_592
block_591:
    mv r2 r0
    j block_592
block_592:
    fclt f6 f3
    bc1t block_594
block_593:
    j block_595
block_594:
    fsub f3 f3 f6
    j block_595
block_595:
    fclt f5 f3
    bc1t block_597
block_596:
    j block_598
block_597:
    fsub f3 f6 f3
    j block_598
block_598:
    fclt f4 f3
    bc1t block_600
block_599:
    fmul f4 f3 f3
    fmul f5 f4 f3
    fmul f6 f5 f4
    fmul f4 f6 f4
    #0.16666669
    flui f7 15914
    fori f7 f7 -21844
    fmul f5 f7 f5
    fsub f3 f3 f5
    #0.008332824
    flui f5 15368
    fori f5 f5 -31130
    fmul f5 f5 f6
    fadd f3 f3 f5
    #0.00019587841
    flui f5 14669
    fori f5 f5 25782
    fmul f4 f5 f4
    fsub f3 f3 f4
    j block_601
block_600:
    fsub f3 f5 f3
    fmul f3 f3 f3
    fmul f4 f3 f3
    fmul f5 f4 f3
    #1.0
    flui f6 16256
    #0.5
    flui f7 16128
    fmul f3 f7 f3
    fsub f3 f6 f3
    #0.04166368
    flui f6 15658
    fori f6 f6 -22647
    fmul f4 f6 f4
    fadd f3 f3 f4
    #0.0013695068
    flui f4 15027
    fori f4 f4 -32506
    fmul f4 f4 f5
    fsub f3 f3 f4
    j block_601
block_601:
    bne r2 r0 block_603
    j block_602
block_602:
    fneg f3 f3
    j block_604
block_603:
    j block_604
block_604:
    lwcZ f4 r11 8
    #0.7853982
    flui f5 16201
    fori f5 f5 4059
    #1.5707964
    flui f6 16329
    fori f6 f6 4059
    #3.1415927
    flui f7 16457
    fori f7 f7 4059
    #6.2831855
    flui f8 16585
    fori f8 f8 4059
    #0.15915494
    flui f9 15906
    fori f9 f9 -1661
    fmul f9 f4 f9
    ftoi r2 f9
    itof f9 r2
    fmul f8 f8 f9
    fsub f4 f4 f8
    #0.0
    flui f8 0
    fclt f8 f4
    bc1t block_606
block_605:
    fneg f4 f4
    j block_607
block_606:
    j block_607
block_607:
    fclt f7 f4
    bc1t block_609
block_608:
    addi r2 r0 1
    j block_610
block_609:
    addi r2 r0 -1
    j block_610
block_610:
    fclt f7 f4
    bc1t block_612
block_611:
    j block_613
block_612:
    fsub f4 f4 f7
    j block_613
block_613:
    fclt f6 f4
    bc1t block_615
block_614:
    j block_616
block_615:
    sub r2 r0 r2
    j block_616
block_616:
    fclt f6 f4
    bc1t block_618
block_617:
    j block_619
block_618:
    fsub f4 f7 f4
    j block_619
block_619:
    fclt f4 f5
    bc1t block_621
block_620:
    fsub f4 f6 f4
    fmul f5 f4 f4
    fmul f6 f5 f4
    fmul f7 f6 f5
    fmul f5 f7 f5
    #0.16666669
    flui f8 15914
    fori f8 f8 -21844
    fmul f6 f8 f6
    fsub f4 f4 f6
    #0.008332824
    flui f6 15368
    fori f6 f6 -31130
    fmul f6 f6 f7
    fadd f4 f4 f6
    #0.00019587841
    flui f6 14669
    fori f6 f6 25782
    fmul f5 f6 f5
    fsub f4 f4 f5
    j block_622
block_621:
    fmul f4 f4 f4
    fmul f5 f4 f4
    fmul f6 f5 f4
    #1.0
    flui f7 16256
    #0.5
    flui f8 16128
    fmul f4 f8 f4
    fsub f4 f7 f4
    #0.04166368
    flui f7 15658
    fori f7 f7 -22647
    fmul f5 f7 f5
    fadd f4 f4 f5
    #0.0013695068
    flui f5 15027
    fori f5 f5 -32506
    fmul f5 f5 f6
    fsub f4 f4 f5
    j block_622
block_622:
    addi r3 r0 -1
    beq r2 r3 block_624
block_623:
    j block_625
block_624:
    fneg f4 f4
    j block_625
block_625:
    lwcZ f5 r11 8
    #0.7853982
    flui f6 16201
    fori f6 f6 4059
    #1.5707964
    flui f7 16329
    fori f7 f7 4059
    #3.1415927
    flui f8 16457
    fori f8 f8 4059
    #6.2831855
    flui f9 16585
    fori f9 f9 4059
    #0.15915494
    flui f10 15906
    fori f10 f10 -1661
    fmul f10 f5 f10
    ftoi r2 f10
    itof f10 r2
    fmul f10 f9 f10
    fsub f5 f5 f10
    #0.0
    flui f10 0
    fclt f10 f5
    bc1t block_627
block_626:
    fadd f5 f5 f9
    j block_628
block_627:
    j block_628
block_628:
    fclt f8 f5
    bc1t block_630
block_629:
    addi r2 r0 1
    j block_631
block_630:
    mv r2 r0
    j block_631
block_631:
    fclt f8 f5
    bc1t block_633
block_632:
    j block_634
block_633:
    fsub f5 f5 f8
    j block_634
block_634:
    fclt f7 f5
    bc1t block_636
block_635:
    j block_637
block_636:
    fsub f5 f8 f5
    j block_637
block_637:
    fclt f6 f5
    bc1t block_639
block_638:
    fmul f6 f5 f5
    fmul f7 f6 f5
    fmul f8 f7 f6
    fmul f6 f8 f6
    #0.16666669
    flui f9 15914
    fori f9 f9 -21844
    fmul f7 f9 f7
    fsub f5 f5 f7
    #0.008332824
    flui f7 15368
    fori f7 f7 -31130
    fmul f7 f7 f8
    fadd f5 f5 f7
    #0.00019587841
    flui f7 14669
    fori f7 f7 25782
    fmul f6 f7 f6
    fsub f5 f5 f6
    j block_640
block_639:
    fsub f5 f7 f5
    fmul f5 f5 f5
    fmul f6 f5 f5
    fmul f7 f6 f5
    #1.0
    flui f8 16256
    #0.5
    flui f9 16128
    fmul f5 f9 f5
    fsub f5 f8 f5
    #0.04166368
    flui f8 15658
    fori f8 f8 -22647
    fmul f6 f8 f6
    fadd f5 f5 f6
    #0.0013695068
    flui f6 15027
    fori f6 f6 -32506
    fmul f6 f6 f7
    fsub f5 f5 f6
    j block_640
block_640:
    bne r2 r0 block_642
    j block_641
block_641:
    fneg f5 f5
    j block_643
block_642:
    j block_643
block_643:
    fmul f6 f2 f4
    fmul f7 f1 f3
    fmul f7 f7 f4
    fmul f8 f0 f5
    fsub f7 f7 f8
    fmul f8 f0 f3
    fmul f8 f8 f4
    fmul f9 f1 f5
    fadd f8 f8 f9
    fmul f9 f2 f5
    fmul f10 f1 f3
    fmul f10 f10 f5
    fmul f11 f0 f4
    fadd f10 f10 f11
    fmul f11 f0 f3
    fmul f5 f11 f5
    fmul f4 f1 f4
    fsub f4 f5 f4
    fneg f3 f3
    fmul f1 f1 f2
    fmul f0 f0 f2
    lwcZ f2 r6 0
    lwcZ f5 r6 4
    lwcZ f11 r6 8
    fmul f12 f6 f6
    fmul f12 f2 f12
    fmul f13 f9 f9
    fmul f13 f5 f13
    fadd f12 f12 f13
    fmul f13 f3 f3
    fmul f13 f11 f13
    fadd f12 f12 f13
    swcZ f12 r6 0
    fmul f12 f7 f7
    fmul f12 f2 f12
    fmul f13 f10 f10
    fmul f13 f5 f13
    fadd f12 f12 f13
    fmul f13 f1 f1
    fmul f13 f11 f13
    fadd f12 f12 f13
    swcZ f12 r6 4
    fmul f12 f8 f8
    fmul f12 f2 f12
    fmul f13 f4 f4
    fmul f13 f5 f13
    fadd f12 f12 f13
    fmul f13 f0 f0
    fmul f13 f11 f13
    fadd f12 f12 f13
    swcZ f12 r6 8
    #2.0
    flui f12 16384
    fmul f13 f2 f7
    fmul f13 f13 f8
    fmul f14 f5 f10
    fmul f14 f14 f4
    fadd f13 f13 f14
    fmul f14 f11 f1
    fmul f14 f14 f0
    fadd f13 f13 f14
    fmul f12 f12 f13
    swcZ f12 r11 0
    #2.0
    flui f12 16384
    fmul f13 f2 f6
    fmul f8 f13 f8
    fmul f13 f5 f9
    fmul f4 f13 f4
    fadd f4 f8 f4
    fmul f8 f11 f3
    fmul f0 f8 f0
    fadd f0 f4 f0
    fmul f0 f12 f0
    swcZ f0 r11 4
    #2.0
    flui f0 16384
    fmul f2 f2 f6
    fmul f2 f2 f7
    fmul f4 f5 f9
    fmul f4 f4 f10
    fadd f2 f2 f4
    fmul f3 f11 f3
    fmul f1 f3 f1
    fadd f1 f2 f1
    fmul f0 f0 f1
    swcZ f0 r11 8
    j block_526
block_525:
    j block_526
block_526:
    addi r2 r0 1
    j block_468
block_467:
    mv r2 r0
    j block_468
block_468:
    bne r2 r0 block_645
    j block_644
block_644:
    sw r1 r0 25000
    jr r31
block_645:
    addi r1 r1 1
    sw r31 r29 0
    addi r29 r29 4
    jal read_object.3424
    subi r29 r29 4
    lw r31 r29 0
    jr r31
read_or_network.3447:
block_658:
    inint r2
    addi r3 r0 -1
    sw r1 r29 24
    beq r2 r3 block_660
block_659:
    inint r3
    addi r4 r0 -1
    sw r1 r29 24
    sw r2 r29 20
    beq r3 r4 block_663
block_662:
    inint r4
    addi r5 r0 -1
    sw r1 r29 24
    sw r2 r29 20
    sw r3 r29 4
    beq r4 r5 block_666
block_665:
    addi r5 r0 3
    sw r1 r29 24
    sw r2 r29 20
    sw r4 r29 12
    sw r3 r29 4
    mv r1 r5
    sw r31 r29 36
    addi r29 r29 40
    jal read_net_item.3434
    subi r29 r29 40
    lw r31 r29 36
    lw r2 r29 12
    sw r2 r1 8
    j block_667
block_666:
    addi r4 r0 -1
    sw r4 r30 0
    sw r4 r30 4
    sw r4 r30 8
    mv r1 r30
    addi r30 r30 12
    j block_667
block_667:
    lw r2 r29 4
    sw r2 r1 4
    j block_664
block_663:
    addi r3 r0 -1
    sw r3 r30 0
    sw r3 r30 4
    mv r1 r30
    addi r30 r30 8
    j block_664
block_664:
    lw r2 r29 20
    sw r2 r1 0
    j block_661
block_660:
    addi r2 r0 -1
    sw r2 r30 0
    mv r1 r30
    addi r30 r30 4
    j block_661
block_661:
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_669
block_668:
    lw r2 r29 24
    addi r3 r2 1
    inint r4
    addi r5 r0 -1
    sw r1 r29 28
    sw r2 r29 24
    sw r3 r29 0
    beq r4 r5 block_671
block_670:
    inint r5
    addi r6 r0 -1
    sw r1 r29 28
    sw r2 r29 24
    sw r4 r29 8
    sw r3 r29 0
    beq r5 r6 block_674
block_673:
    addi r6 r0 2
    sw r1 r29 28
    sw r2 r29 24
    sw r5 r29 16
    sw r4 r29 8
    sw r3 r29 0
    mv r1 r6
    sw r31 r29 36
    addi r29 r29 40
    jal read_net_item.3434
    subi r29 r29 40
    lw r31 r29 36
    lw r2 r29 16
    sw r2 r1 4
    j block_675
block_674:
    addi r5 r0 -1
    sw r5 r30 0
    sw r5 r30 4
    mv r1 r30
    addi r30 r30 8
    j block_675
block_675:
    lw r2 r29 8
    sw r2 r1 0
    j block_672
block_671:
    addi r4 r0 -1
    sw r4 r30 0
    mv r1 r30
    addi r30 r30 4
    j block_672
block_672:
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_677
block_676:
    lw r2 r29 0
    addi r3 r2 1
    sw r1 r29 32
    sw r2 r29 0
    mv r1 r3
    sw r31 r29 36
    addi r29 r29 40
    jal read_or_network.3447
    subi r29 r29 40
    lw r31 r29 36
    lw r2 r29 0
    sll r2 r2 2
    lw r3 r29 32
    swab r3 r1 r2
    j block_678
block_677:
    lw r2 r29 0
    addi r2 r2 1
    beq r0 r2 arrayexit.87581
    sll r28 r2  2
arrayloop.87580:
    subi r28 r28 4
    swab r1 r30 r28
    bne r0 r28 arrayloop.87580
    sll r28 r2  2
    mv r1 r30
    add r30 r30 r28
arrayexit.87581:
    j block_678
block_678:
    lw r2 r29 24
    sll r2 r2 2
    lw r3 r29 28
    swab r3 r1 r2
    jr r31
block_669:
    lw r2 r29 24
    addi r2 r2 1
    beq r0 r2 arrayexit.87583
    sll r28 r2  2
arrayloop.87582:
    subi r28 r28 4
    swab r1 r30 r28
    bne r0 r28 arrayloop.87582
    sll r28 r2  2
    mv r1 r30
    add r30 r30 r28
arrayexit.87583:
    jr r31
scan_line.5270:
block_5225:
    lw r6 r0 25620
    blt r1 r6 block_5227
block_5226:
    jr r31
block_5227:
    lw r6 r0 25620
    subi r6 r6 1
    sw r1 r29 24
    sw r2 r29 20
    sw r4 r29 16
    sw r5 r29 12
    sw r3 r29 8
    blt r1 r6 block_5229
block_5228:
    j block_5230
block_5229:
    addi r6 r1 1
    lwcZ f0 r0 25632
    lw r7 r0 25628
    sub r6 r6 r7
    itof f1 r6
    fmul f0 f0 f1
    lwcZ f1 r0 25672
    fmul f1 f0 f1
    lwcZ f2 r0 25684
    fadd f1 f1 f2
    lwcZ f2 r0 25676
    fmul f2 f0 f2
    lwcZ f3 r0 25688
    fadd f2 f2 f3
    lwcZ f3 r0 25680
    fmul f0 f0 f3
    lwcZ f3 r0 25692
    fadd f0 f0 f3
    lw r6 r0 25616
    subi r6 r6 1
    sw r1 r29 24
    sw r2 r29 20
    sw r4 r29 16
    sw r5 r29 12
    sw r3 r29 8
    mv r3 r5
    mv r2 r6
    mv r1 r4
    fmv f30 f2
    fmv f2 f0
    fmv f0 f1
    fmv f1 f30
    sw r31 r29 28
    addi r29 r29 32
    jal pretrace_pixels.5163
    subi r29 r29 32
    lw r31 r29 28
    j block_5230
block_5230:
    lw r1 r0 25616
    blt r0 r1 block_5232
block_5231:
    j block_5233
block_5232:
    lw r4 r29 8
    lw r1 r4 0
    lw r1 r1 0
    lwcZ f0 r1 0
    swcZ f0 r0 25604
    lwcZ f0 r1 4
    swcZ f0 r0 25608
    lwcZ f0 r1 8
    swcZ f0 r0 25612
    lw r2 r29 24
    addi r1 r2 1
    lw r3 r0 25620
    blt r1 r3 block_5235
block_5234:
    mv r1 r0
    j block_5236
block_5235:
    blt r0 r2 block_5238
block_5237:
    mv r1 r0
    j block_5236
block_5238:
    addi r1 r0 1
    lw r3 r0 25616
    blt r1 r3 block_5240
block_5239:
    mv r1 r0
    j block_5236
block_5240:
    blt r0 r0 block_5242
block_5241:
    mv r1 r0
    j block_5236
block_5242:
    addi r1 r0 1
    j block_5236
block_5236:
    sw r2 r29 24
    sw r4 r29 8
    bne r1 r0 block_5244
    j block_5243
block_5243:
    lw r1 r4 0
    sw r2 r29 24
    sw r4 r29 8
    mv r2 r0
    sw r31 r29 28
    addi r29 r29 32
    jal do_without_neighbors.5035
    subi r29 r29 32
    lw r31 r29 28
    j block_5245
block_5244:
    lw r3 r29 20
    lw r5 r29 16
    sw r2 r29 24
    sw r3 r29 20
    sw r5 r29 16
    sw r4 r29 8
    mv r6 r0
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal try_exploit_neighbors.5085
    subi r29 r29 32
    lw r31 r29 28
    j block_5245
block_5245:
    lwcZ f0 r0 25604
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5247
block_5246:
    blt r1 r0 block_5250
block_5249:
    j block_5248
block_5250:
    mv r1 r0
    j block_5248
block_5247:
    addi r1 r0 255
    j block_5248
block_5248:
    out r1 0
    lwcZ f0 r0 25608
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5252
block_5251:
    blt r1 r0 block_5255
block_5254:
    j block_5253
block_5255:
    mv r1 r0
    j block_5253
block_5252:
    addi r1 r0 255
    j block_5253
block_5253:
    out r1 0
    lwcZ f0 r0 25612
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5257
block_5256:
    blt r1 r0 block_5260
block_5259:
    j block_5258
block_5260:
    mv r1 r0
    j block_5258
block_5257:
    addi r1 r0 255
    j block_5258
block_5258:
    out r1 0
    addi r1 r0 1
    lw r2 r29 24
    lw r3 r29 20
    lw r4 r29 8
    lw r5 r29 16
    sw r2 r29 24
    sw r3 r29 20
    sw r5 r29 16
    sw r4 r29 8
    sw r31 r29 28
    addi r29 r29 32
    jal scan_pixel.5250
    subi r29 r29 32
    lw r31 r29 28
    j block_5233
block_5233:
    lw r1 r29 24
    addi r2 r1 1
    lw r1 r29 12
    addi r1 r1 2
    addi r3 r0 5
    blt r1 r3 block_5262
block_5261:
    subi r3 r1 5
    j block_5263
block_5262:
    mv r3 r1
    j block_5263
block_5263:
    lw r1 r0 25620
    blt r2 r1 block_5265
block_5264:
    jr r31
block_5265:
    lw r1 r0 25620
    subi r1 r1 1
    sw r3 r29 4
    sw r2 r29 0
    blt r2 r1 block_5267
block_5266:
    j block_5268
block_5267:
    addi r1 r2 1
    lwcZ f0 r0 25632
    lw r4 r0 25628
    sub r1 r1 r4
    itof f1 r1
    fmul f0 f0 f1
    lwcZ f1 r0 25672
    fmul f1 f0 f1
    lwcZ f2 r0 25684
    fadd f1 f1 f2
    lwcZ f2 r0 25676
    fmul f2 f0 f2
    lwcZ f3 r0 25688
    fadd f2 f2 f3
    lwcZ f3 r0 25680
    fmul f0 f0 f3
    lwcZ f3 r0 25692
    fadd f0 f0 f3
    lw r1 r0 25616
    subi r1 r1 1
    lw r4 r29 20
    sw r4 r29 20
    sw r3 r29 4
    sw r2 r29 0
    mv r2 r1
    mv r1 r4
    fmv f30 f2
    fmv f2 f0
    fmv f0 f1
    fmv f1 f30
    sw r31 r29 28
    addi r29 r29 32
    jal pretrace_pixels.5163
    subi r29 r29 32
    lw r31 r29 28
    j block_5268
block_5268:
    lw r2 r29 0
    lw r3 r29 8
    lw r4 r29 16
    lw r5 r29 20
    sw r5 r29 20
    sw r4 r29 16
    sw r3 r29 8
    sw r2 r29 0
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal scan_pixel.5250
    subi r29 r29 32
    lw r31 r29 28
    lw r1 r29 0
    addi r1 r1 1
    lw r2 r29 4
    addi r2 r2 2
    addi r3 r0 5
    blt r2 r3 block_5270
block_5269:
    subi r5 r2 5
    j block_5271
block_5270:
    mv r5 r2
    j block_5271
block_5271:
    lw r2 r29 16
    lw r3 r29 20
    lw r4 r29 8
    sw r31 r29 28
    addi r29 r29 32
    jal scan_line.5270
    subi r29 r29 32
    lw r31 r29 28
    jr r31
scan_pixel.5250:
block_5126:
    lw r6 r0 25616
    blt r1 r6 block_5128
block_5127:
    jr r31
block_5128:
    sll r6 r1 2
    lwab r6 r4 r6
    lw r6 r6 0
    lwcZ f0 r6 0
    swcZ f0 r0 25604
    lwcZ f0 r6 4
    swcZ f0 r0 25608
    lwcZ f0 r6 8
    swcZ f0 r0 25612
    addi r6 r2 1
    lw r7 r0 25620
    blt r6 r7 block_5130
block_5129:
    mv r6 r0
    j block_5131
block_5130:
    blt r0 r2 block_5133
block_5132:
    mv r6 r0
    j block_5131
block_5133:
    addi r6 r1 1
    lw r7 r0 25616
    blt r6 r7 block_5135
block_5134:
    mv r6 r0
    j block_5131
block_5135:
    blt r0 r1 block_5137
block_5136:
    mv r6 r0
    j block_5131
block_5137:
    addi r6 r0 1
    j block_5131
block_5131:
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r4 r29 20
    bne r6 r0 block_5139
    j block_5138
block_5138:
    sll r6 r1 2
    lwab r6 r4 r6
    addi r7 r0 4
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r4 r29 20
    blt r7 r0 block_5142
block_5141:
    lw r7 r6 8
    lw r7 r7 0
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r4 r29 20
    blt r7 r0 block_5144
block_5143:
    lw r7 r6 12
    lw r7 r7 0
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r4 r29 20
    sw r6 r29 16
    bne r7 r0 block_5146
    j block_5145
block_5145:
    j block_5147
block_5146:
    lw r7 r6 20
    lw r8 r6 28
    lw r9 r6 4
    lw r10 r6 16
    lw r7 r7 0
    lwcZ f0 r7 0
    swcZ f0 r0 25592
    lwcZ f0 r7 4
    swcZ f0 r0 25596
    lwcZ f0 r7 8
    swcZ f0 r0 25600
    lw r7 r6 24
    lw r7 r7 0
    lw r8 r8 0
    lw r9 r9 0
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r10 r29 24
    sw r4 r29 20
    sw r6 r29 16
    sw r7 r29 12
    sw r9 r29 4
    sw r8 r29 0
    beq r7 r0 block_5149
block_5148:
    lw r11 r0 25716
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r10 r29 24
    sw r4 r29 20
    sw r6 r29 16
    sw r7 r29 12
    sw r9 r29 4
    sw r8 r29 0
    mv r3 r9
    mv r2 r8
    mv r1 r11
    sw r31 r29 44
    addi r29 r29 48
    jal trace_diffuse_rays.4959
    subi r29 r29 48
    lw r31 r29 44
    j block_5150
block_5149:
    j block_5150
block_5150:
    addi r1 r0 1
    lw r2 r29 12
    sw r2 r29 12
    beq r2 r1 block_5152
block_5151:
    lw r1 r0 25720
    lw r3 r29 0
    lw r4 r29 4
    sw r2 r29 12
    sw r4 r29 4
    sw r3 r29 0
    mv r2 r3
    mv r3 r4
    sw r31 r29 44
    addi r29 r29 48
    jal trace_diffuse_rays.4959
    subi r29 r29 48
    lw r31 r29 44
    j block_5153
block_5152:
    j block_5153
block_5153:
    addi r1 r0 2
    lw r2 r29 12
    sw r2 r29 12
    beq r2 r1 block_5155
block_5154:
    lw r1 r0 25724
    lw r3 r29 0
    lw r4 r29 4
    sw r2 r29 12
    sw r4 r29 4
    sw r3 r29 0
    mv r2 r3
    mv r3 r4
    sw r31 r29 44
    addi r29 r29 48
    jal trace_diffuse_rays.4959
    subi r29 r29 48
    lw r31 r29 44
    j block_5156
block_5155:
    j block_5156
block_5156:
    addi r1 r0 3
    lw r2 r29 12
    sw r2 r29 12
    beq r2 r1 block_5158
block_5157:
    lw r1 r0 25728
    lw r3 r29 0
    lw r4 r29 4
    sw r2 r29 12
    sw r4 r29 4
    sw r3 r29 0
    mv r2 r3
    mv r3 r4
    sw r31 r29 44
    addi r29 r29 48
    jal trace_diffuse_rays.4959
    subi r29 r29 48
    lw r31 r29 44
    j block_5159
block_5158:
    j block_5159
block_5159:
    addi r1 r0 4
    lw r2 r29 12
    beq r2 r1 block_5161
block_5160:
    lw r1 r0 25732
    lw r2 r29 0
    lw r3 r29 4
    sw r31 r29 44
    addi r29 r29 48
    jal trace_diffuse_rays.4959
    subi r29 r29 48
    lw r31 r29 44
    j block_5162
block_5161:
    j block_5162
block_5162:
    lw r1 r29 24
    lw r1 r1 0
    lwcZ f0 r0 25604
    lwcZ f1 r1 0
    lwcZ f2 r0 25592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25604
    lwcZ f0 r0 25608
    lwcZ f1 r1 4
    lwcZ f2 r0 25596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25608
    lwcZ f0 r0 25612
    lwcZ f1 r1 8
    lwcZ f2 r0 25600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25612
    j block_5147
block_5147:
    addi r2 r0 1
    lw r1 r29 16
    sw r31 r29 44
    addi r29 r29 48
    jal do_without_neighbors.5035
    subi r29 r29 48
    lw r31 r29 44
    j block_5140
block_5144:
    j block_5140
block_5142:
    j block_5140
block_5139:
    sll r6 r1 2
    lwab r6 r4 r6
    addi r7 r0 4
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r4 r29 20
    blt r7 r0 block_5164
block_5163:
    lw r7 r6 8
    lw r7 r7 0
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r4 r29 20
    blt r7 r0 block_5166
block_5165:
    sll r7 r1 2
    lwab r7 r4 r7
    lw r7 r7 8
    lw r7 r7 0
    sll r8 r1 2
    lwab r8 r3 r8
    lw r8 r8 8
    lw r8 r8 0
    beq r8 r7 block_5168
block_5167:
    mv r7 r0
    j block_5169
block_5168:
    sll r8 r1 2
    lwab r8 r5 r8
    lw r8 r8 8
    lw r8 r8 0
    beq r8 r7 block_5171
block_5170:
    mv r7 r0
    j block_5169
block_5171:
    subi r8 r1 1
    sll r8 r8 2
    lwab r8 r4 r8
    lw r8 r8 8
    lw r8 r8 0
    beq r8 r7 block_5173
block_5172:
    mv r7 r0
    j block_5169
block_5173:
    addi r8 r1 1
    sll r8 r8 2
    lwab r8 r4 r8
    lw r8 r8 8
    lw r8 r8 0
    beq r8 r7 block_5175
block_5174:
    mv r7 r0
    j block_5169
block_5175:
    addi r7 r0 1
    j block_5169
block_5169:
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r4 r29 20
    bne r7 r0 block_5177
    j block_5176
block_5176:
    sll r6 r1 2
    lwab r6 r4 r6
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r4 r29 20
    mv r2 r0
    mv r1 r6
    sw r31 r29 44
    addi r29 r29 48
    jal do_without_neighbors.5035
    subi r29 r29 48
    lw r31 r29 44
    j block_5140
block_5177:
    lw r6 r6 12
    lw r6 r6 0
    bne r6 r0 block_5179
    j block_5178
block_5178:
    j block_5180
block_5179:
    sll r6 r1 2
    lwab r6 r3 r6
    lw r6 r6 20
    subi r7 r1 1
    sll r7 r7 2
    lwab r7 r4 r7
    lw r7 r7 20
    sll r8 r1 2
    lwab r8 r4 r8
    lw r8 r8 20
    addi r9 r1 1
    sll r9 r9 2
    lwab r9 r4 r9
    lw r9 r9 20
    sll r10 r1 2
    lwab r10 r5 r10
    lw r10 r10 20
    lw r6 r6 0
    lwcZ f0 r6 0
    swcZ f0 r0 25592
    lwcZ f0 r6 4
    swcZ f0 r0 25596
    lwcZ f0 r6 8
    swcZ f0 r0 25600
    lw r6 r7 0
    lwcZ f0 r0 25592
    lwcZ f1 r6 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r6 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r6 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    lw r6 r8 0
    lwcZ f0 r0 25592
    lwcZ f1 r6 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r6 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r6 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    lw r6 r9 0
    lwcZ f0 r0 25592
    lwcZ f1 r6 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r6 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r6 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    lw r6 r10 0
    lwcZ f0 r0 25592
    lwcZ f1 r6 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r6 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r6 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    sll r6 r1 2
    lwab r6 r4 r6
    lw r6 r6 16
    lw r6 r6 0
    lwcZ f0 r0 25604
    lwcZ f1 r6 0
    lwcZ f2 r0 25592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25604
    lwcZ f0 r0 25608
    lwcZ f1 r6 4
    lwcZ f2 r0 25596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25608
    lwcZ f0 r0 25612
    lwcZ f1 r6 8
    lwcZ f2 r0 25600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25612
    j block_5180
block_5180:
    addi r6 r0 1
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r4 r29 20
    sw r31 r29 44
    addi r29 r29 48
    jal try_exploit_neighbors.5085
    subi r29 r29 48
    lw r31 r29 44
    j block_5140
block_5166:
    j block_5140
block_5164:
    j block_5140
block_5140:
    lwcZ f0 r0 25604
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5182
block_5181:
    blt r1 r0 block_5185
block_5184:
    j block_5183
block_5185:
    mv r1 r0
    j block_5183
block_5182:
    addi r1 r0 255
    j block_5183
block_5183:
    out r1 0
    lwcZ f0 r0 25608
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5187
block_5186:
    blt r1 r0 block_5190
block_5189:
    j block_5188
block_5190:
    mv r1 r0
    j block_5188
block_5187:
    addi r1 r0 255
    j block_5188
block_5188:
    out r1 0
    lwcZ f0 r0 25612
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5192
block_5191:
    blt r1 r0 block_5195
block_5194:
    j block_5193
block_5195:
    mv r1 r0
    j block_5193
block_5192:
    addi r1 r0 255
    j block_5193
block_5193:
    out r1 0
    lw r1 r29 36
    addi r1 r1 1
    lw r2 r0 25616
    blt r1 r2 block_5197
block_5196:
    jr r31
block_5197:
    sll r2 r1 2
    lw r4 r29 20
    lwab r2 r4 r2
    lw r2 r2 0
    lwcZ f0 r2 0
    swcZ f0 r0 25604
    lwcZ f0 r2 4
    swcZ f0 r0 25608
    lwcZ f0 r2 8
    swcZ f0 r0 25612
    lw r2 r29 40
    addi r3 r2 1
    lw r5 r0 25620
    blt r3 r5 block_5199
block_5198:
    mv r3 r0
    j block_5200
block_5199:
    blt r0 r2 block_5202
block_5201:
    mv r3 r0
    j block_5200
block_5202:
    addi r3 r1 1
    lw r5 r0 25616
    blt r3 r5 block_5204
block_5203:
    mv r3 r0
    j block_5200
block_5204:
    blt r0 r1 block_5206
block_5205:
    mv r3 r0
    j block_5200
block_5206:
    addi r3 r0 1
    j block_5200
block_5200:
    sw r2 r29 40
    sw r4 r29 20
    sw r1 r29 8
    bne r3 r0 block_5208
    j block_5207
block_5207:
    sll r3 r1 2
    lwab r3 r4 r3
    sw r2 r29 40
    sw r4 r29 20
    sw r1 r29 8
    mv r2 r0
    mv r1 r3
    sw r31 r29 44
    addi r29 r29 48
    jal do_without_neighbors.5035
    subi r29 r29 48
    lw r31 r29 44
    j block_5209
block_5208:
    lw r3 r29 32
    lw r5 r29 28
    sw r2 r29 40
    sw r3 r29 32
    sw r5 r29 28
    sw r4 r29 20
    sw r1 r29 8
    mv r6 r0
    sw r31 r29 44
    addi r29 r29 48
    jal try_exploit_neighbors.5085
    subi r29 r29 48
    lw r31 r29 44
    j block_5209
block_5209:
    lwcZ f0 r0 25604
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5211
block_5210:
    blt r1 r0 block_5214
block_5213:
    j block_5212
block_5214:
    mv r1 r0
    j block_5212
block_5211:
    addi r1 r0 255
    j block_5212
block_5212:
    out r1 0
    lwcZ f0 r0 25608
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5216
block_5215:
    blt r1 r0 block_5219
block_5218:
    j block_5217
block_5219:
    mv r1 r0
    j block_5217
block_5216:
    addi r1 r0 255
    j block_5217
block_5217:
    out r1 0
    lwcZ f0 r0 25612
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5221
block_5220:
    blt r1 r0 block_5224
block_5223:
    j block_5222
block_5224:
    mv r1 r0
    j block_5222
block_5221:
    addi r1 r0 255
    j block_5222
block_5222:
    out r1 0
    lw r1 r29 8
    addi r1 r1 1
    lw r2 r29 40
    lw r3 r29 32
    lw r4 r29 20
    lw r5 r29 28
    sw r31 r29 44
    addi r29 r29 48
    jal scan_pixel.5250
    subi r29 r29 48
    lw r31 r29 44
    jr r31
setup_startp_constants.4131:
block_835:
    blt r2 r0 block_837
block_836:
    sll r3 r2 2
    lw r3 r3 25048
    lw r4 r3 40
    lw r5 r3 4
    lwcZ f0 r1 0
    lw r6 r3 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    swcZ f0 r4 0
    lwcZ f0 r1 4
    lw r6 r3 20
    lwcZ f1 r6 4
    fsub f0 f0 f1
    swcZ f0 r4 4
    lwcZ f0 r1 8
    lw r6 r3 20
    lwcZ f1 r6 8
    fsub f0 f0 f1
    swcZ f0 r4 8
    addi r6 r0 2
    beq r5 r6 block_839
block_838:
    addi r6 r0 2
    blt r6 r5 block_842
block_841:
    j block_840
block_842:
    lwcZ f0 r4 0
    lwcZ f1 r4 4
    lwcZ f2 r4 8
    fmul f3 f0 f0
    lw r6 r3 16
    lwcZ f4 r6 0
    fmul f3 f3 f4
    fmul f4 f1 f1
    lw r6 r3 16
    lwcZ f5 r6 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f4 f2 f2
    lw r6 r3 16
    lwcZ f5 r6 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r6 r3 12
    beq r6 r0 block_844
block_843:
    fmul f4 f1 f2
    lw r6 r3 36
    lwcZ f5 r6 0
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f0
    lw r6 r3 36
    lwcZ f4 r6 4
    fmul f2 f2 f4
    fadd f2 f3 f2
    fmul f0 f0 f1
    lw r3 r3 36
    lwcZ f1 r3 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_845
block_844:
    fmv f0 f3
    j block_845
block_845:
    addi r3 r0 3
    beq r5 r3 block_847
block_846:
    j block_848
block_847:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_848
block_848:
    swcZ f0 r4 12
    j block_840
block_839:
    lw r3 r3 16
    lwcZ f0 r4 0
    lwcZ f1 r4 4
    lwcZ f2 r4 8
    lwcZ f3 r3 0
    fmul f0 f3 f0
    lwcZ f3 r3 4
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r3 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r4 12
    j block_840
block_840:
    subi r2 r2 1
    sw r31 r29 0
    addi r29 r29 4
    jal setup_startp_constants.4131
    subi r29 r29 4
    lw r31 r29 0
    jr r31
block_837:
    jr r31
shadow_check_and_group.4251:
block_1070:
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_1072
block_1071:
    sll r3 r1 2
    lwab r3 r2 r3
    sll r4 r3 2
    lw r4 r4 25048
    lwcZ f0 r0 25552
    lw r5 r4 20
    lwcZ f1 r5 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r5 r4 20
    lwcZ f2 r5 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r5 r4 20
    lwcZ f3 r5 8
    fsub f2 f2 f3
    lw r5 r0 25992
    sll r6 r3 2
    lwab r5 r5 r6
    lw r6 r4 4
    addi r7 r0 1
    beq r6 r7 block_1074
block_1073:
    addi r7 r0 2
    beq r6 r7 block_1077
block_1076:
    lwcZ f3 r5 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1079
block_1078:
    lwcZ f4 r5 4
    fmul f4 f4 f0
    lwcZ f5 r5 8
    fmul f5 f5 f1
    fadd f4 f4 f5
    lwcZ f5 r5 12
    fmul f5 f5 f2
    fadd f4 f4 f5
    fmul f5 f0 f0
    lw r6 r4 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r4 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r4 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r4 12
    beq r6 r0 block_1081
block_1080:
    fmul f6 f1 f2
    lw r6 r4 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r4 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r4 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_1082
block_1081:
    fmv f0 f5
    j block_1082
block_1082:
    lw r6 r4 4
    addi r7 r0 3
    beq r6 r7 block_1084
block_1083:
    j block_1085
block_1084:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_1085
block_1085:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_1087
block_1086:
    mv r6 r0
    j block_1088
block_1087:
    addi r6 r0 1
    j block_1088
block_1088:
    bne r6 r0 block_1090
    j block_1089
block_1089:
    mv r4 r0
    j block_1075
block_1090:
    lw r4 r4 24
    bne r4 r0 block_1092
    j block_1091
block_1091:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fsub f0 f4 f0
    lwcZ f1 r5 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_1093
block_1092:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fadd f0 f4 f0
    lwcZ f1 r5 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_1093
block_1093:
    addi r4 r0 1
    j block_1075
block_1079:
    mv r4 r0
    j block_1075
block_1077:
    lwcZ f3 r5 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1095
block_1094:
    mv r4 r0
    j block_1096
block_1095:
    addi r4 r0 1
    j block_1096
block_1096:
    bne r4 r0 block_1098
    j block_1097
block_1097:
    mv r4 r0
    j block_1075
block_1098:
    lwcZ f3 r5 4
    fmul f0 f3 f0
    lwcZ f3 r5 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r5 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_1075
block_1074:
    lw r6 r0 25988
    lwcZ f3 r5 0
    fsub f3 f3 f0
    lwcZ f4 r5 4
    fmul f3 f3 f4
    lwcZ f4 r6 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1100
block_1099:
    j block_1101
block_1100:
    fneg f4 f4
    j block_1101
block_1101:
    lw r7 r4 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1103
block_1102:
    mv r7 r0
    j block_1104
block_1103:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1106
block_1105:
    j block_1107
block_1106:
    fneg f4 f4
    j block_1107
block_1107:
    lw r7 r4 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1109
block_1108:
    mv r7 r0
    j block_1104
block_1109:
    lwcZ f4 r5 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1111
block_1110:
    mv r7 r0
    j block_1112
block_1111:
    addi r7 r0 1
    j block_1112
block_1112:
    bne r7 r0 block_1114
    j block_1113
block_1113:
    addi r7 r0 1
    j block_1104
block_1114:
    mv r7 r0
    j block_1104
block_1104:
    bne r7 r0 block_1116
    j block_1115
block_1115:
    lwcZ f3 r5 8
    fsub f3 f3 f1
    lwcZ f4 r5 12
    fmul f3 f3 f4
    lwcZ f4 r6 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1118
block_1117:
    j block_1119
block_1118:
    fneg f4 f4
    j block_1119
block_1119:
    lw r7 r4 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_1121
block_1120:
    mv r7 r0
    j block_1122
block_1121:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1124
block_1123:
    j block_1125
block_1124:
    fneg f4 f4
    j block_1125
block_1125:
    lw r7 r4 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1127
block_1126:
    mv r7 r0
    j block_1122
block_1127:
    lwcZ f4 r5 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1129
block_1128:
    mv r7 r0
    j block_1130
block_1129:
    addi r7 r0 1
    j block_1130
block_1130:
    bne r7 r0 block_1132
    j block_1131
block_1131:
    addi r7 r0 1
    j block_1122
block_1132:
    mv r7 r0
    j block_1122
block_1122:
    bne r7 r0 block_1134
    j block_1133
block_1133:
    lwcZ f3 r5 16
    fsub f2 f3 f2
    lwcZ f3 r5 20
    fmul f2 f2 f3
    lwcZ f3 r6 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_1136
block_1135:
    j block_1137
block_1136:
    fneg f0 f0
    j block_1137
block_1137:
    lw r7 r4 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_1139
block_1138:
    mv r4 r0
    j block_1140
block_1139:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_1142
block_1141:
    j block_1143
block_1142:
    fneg f0 f0
    j block_1143
block_1143:
    lw r4 r4 16
    lwcZ f1 r4 4
    fclt f0 f1
    bc1t block_1145
block_1144:
    mv r4 r0
    j block_1140
block_1145:
    lwcZ f0 r5 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_1147
block_1146:
    mv r4 r0
    j block_1148
block_1147:
    addi r4 r0 1
    j block_1148
block_1148:
    bne r4 r0 block_1150
    j block_1149
block_1149:
    addi r4 r0 1
    j block_1140
block_1150:
    mv r4 r0
    j block_1140
block_1140:
    bne r4 r0 block_1152
    j block_1151
block_1151:
    mv r4 r0
    j block_1075
block_1152:
    swcZ f2 r0 25540
    addi r4 r0 3
    j block_1075
block_1134:
    swcZ f3 r0 25540
    addi r4 r0 2
    j block_1075
block_1116:
    swcZ f3 r0 25540
    addi r4 r0 1
    j block_1075
block_1075:
    lwcZ f0 r0 25540
    beq r4 r0 block_1154
block_1153:
    #-0.2
    flui f1 -16820
    fori f1 f1 -13107
    fclt f0 f1
    bc1t block_1157
block_1156:
    mv r4 r0
    j block_1155
block_1157:
    addi r4 r0 1
    j block_1155
block_1154:
    mv r4 r0
    j block_1155
block_1155:
    bne r4 r0 block_1159
    j block_1158
block_1158:
    sll r3 r3 2
    lw r3 r3 25048
    lw r3 r3 24
    bne r3 r0 block_1161
    j block_1160
block_1160:
    mv r1 r0
    jr r31
block_1161:
    addi r1 r1 1
    sw r31 r29 8
    addi r29 r29 12
    jal shadow_check_and_group.4251
    subi r29 r29 12
    lw r31 r29 8
    jr r31
block_1159:
    #0.01
    flui f1 15395
    fori f1 f1 -10486
    fadd f0 f0 f1
    lwcZ f1 r0 25312
    fmul f1 f1 f0
    lwcZ f2 r0 25552
    fadd f1 f1 f2
    lwcZ f2 r0 25316
    fmul f2 f2 f0
    lwcZ f3 r0 25556
    fadd f2 f2 f3
    lwcZ f3 r0 25320
    fmul f0 f3 f0
    lwcZ f3 r0 25560
    fadd f0 f0 f3
    lw r3 r2 0
    addi r4 r0 -1
    sw r1 r29 4
    sw r2 r29 0
    beq r3 r4 block_1163
block_1162:
    sll r3 r3 2
    lw r3 r3 25048
    lw r4 r3 20
    lwcZ f3 r4 0
    fsub f3 f1 f3
    lw r4 r3 20
    lwcZ f4 r4 4
    fsub f4 f2 f4
    lw r4 r3 20
    lwcZ f5 r4 8
    fsub f5 f0 f5
    lw r4 r3 4
    addi r5 r0 1
    beq r4 r5 block_1166
block_1165:
    addi r5 r0 2
    beq r4 r5 block_1169
block_1168:
    fmul f6 f3 f3
    lw r4 r3 16
    lwcZ f7 r4 0
    fmul f6 f6 f7
    fmul f7 f4 f4
    lw r4 r3 16
    lwcZ f8 r4 4
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f7 f5 f5
    lw r4 r3 16
    lwcZ f8 r4 8
    fmul f7 f7 f8
    fadd f6 f6 f7
    lw r4 r3 12
    beq r4 r0 block_1171
block_1170:
    fmul f7 f4 f5
    lw r4 r3 36
    lwcZ f8 r4 0
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f5 f5 f3
    lw r4 r3 36
    lwcZ f7 r4 4
    fmul f5 f5 f7
    fadd f5 f6 f5
    fmul f3 f3 f4
    lw r4 r3 36
    lwcZ f4 r4 8
    fmul f3 f3 f4
    fadd f3 f5 f3
    j block_1172
block_1171:
    fmv f3 f6
    j block_1172
block_1172:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_1174
block_1173:
    j block_1175
block_1174:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_1175
block_1175:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1177
block_1176:
    mv r4 r0
    j block_1178
block_1177:
    addi r4 r0 1
    j block_1178
block_1178:
    bne r3 r0 block_1180
    j block_1179
block_1179:
    mv r3 r4
    j block_1181
block_1180:
    bne r4 r0 block_1183
    j block_1182
block_1182:
    addi r3 r0 1
    j block_1181
block_1183:
    mv r3 r0
    j block_1181
block_1181:
    bne r3 r0 block_1185
    j block_1184
block_1184:
    addi r3 r0 1
    j block_1167
block_1185:
    mv r3 r0
    j block_1167
block_1169:
    lw r4 r3 16
    lwcZ f6 r4 0
    fmul f3 f6 f3
    lwcZ f6 r4 4
    fmul f4 f6 f4
    fadd f3 f3 f4
    lwcZ f4 r4 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1187
block_1186:
    mv r4 r0
    j block_1188
block_1187:
    addi r4 r0 1
    j block_1188
block_1188:
    bne r3 r0 block_1190
    j block_1189
block_1189:
    mv r3 r4
    j block_1191
block_1190:
    bne r4 r0 block_1193
    j block_1192
block_1192:
    addi r3 r0 1
    j block_1191
block_1193:
    mv r3 r0
    j block_1191
block_1191:
    bne r3 r0 block_1195
    j block_1194
block_1194:
    addi r3 r0 1
    j block_1167
block_1195:
    mv r3 r0
    j block_1167
block_1166:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_1197
block_1196:
    j block_1198
block_1197:
    fneg f3 f3
    j block_1198
block_1198:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_1200
block_1199:
    mv r4 r0
    j block_1201
block_1200:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_1203
block_1202:
    fmv f3 f4
    j block_1204
block_1203:
    fneg f3 f4
    j block_1204
block_1204:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_1206
block_1205:
    mv r4 r0
    j block_1201
block_1206:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_1208
block_1207:
    fmv f3 f5
    j block_1209
block_1208:
    fneg f3 f5
    j block_1209
block_1209:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_1211
block_1210:
    mv r4 r0
    j block_1201
block_1211:
    addi r4 r0 1
    j block_1201
block_1201:
    bne r4 r0 block_1213
    j block_1212
block_1212:
    lw r3 r3 24
    bne r3 r0 block_1215
    j block_1214
block_1214:
    addi r3 r0 1
    j block_1167
block_1215:
    mv r3 r0
    j block_1167
block_1213:
    lw r3 r3 24
    j block_1167
block_1167:
    sw r1 r29 4
    sw r2 r29 0
    bne r3 r0 block_1217
    j block_1216
block_1216:
    lw r3 r2 4
    addi r4 r0 -1
    sw r1 r29 4
    sw r2 r29 0
    beq r3 r4 block_1219
block_1218:
    sll r3 r3 2
    lw r3 r3 25048
    lw r4 r3 20
    lwcZ f3 r4 0
    fsub f3 f1 f3
    lw r4 r3 20
    lwcZ f4 r4 4
    fsub f4 f2 f4
    lw r4 r3 20
    lwcZ f5 r4 8
    fsub f5 f0 f5
    lw r4 r3 4
    addi r5 r0 1
    beq r4 r5 block_1221
block_1220:
    addi r5 r0 2
    beq r4 r5 block_1224
block_1223:
    fmul f6 f3 f3
    lw r4 r3 16
    lwcZ f7 r4 0
    fmul f6 f6 f7
    fmul f7 f4 f4
    lw r4 r3 16
    lwcZ f8 r4 4
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f7 f5 f5
    lw r4 r3 16
    lwcZ f8 r4 8
    fmul f7 f7 f8
    fadd f6 f6 f7
    lw r4 r3 12
    beq r4 r0 block_1226
block_1225:
    fmul f7 f4 f5
    lw r4 r3 36
    lwcZ f8 r4 0
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f5 f5 f3
    lw r4 r3 36
    lwcZ f7 r4 4
    fmul f5 f5 f7
    fadd f5 f6 f5
    fmul f3 f3 f4
    lw r4 r3 36
    lwcZ f4 r4 8
    fmul f3 f3 f4
    fadd f3 f5 f3
    j block_1227
block_1226:
    fmv f3 f6
    j block_1227
block_1227:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_1229
block_1228:
    j block_1230
block_1229:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_1230
block_1230:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1232
block_1231:
    mv r4 r0
    j block_1233
block_1232:
    addi r4 r0 1
    j block_1233
block_1233:
    bne r3 r0 block_1235
    j block_1234
block_1234:
    mv r3 r4
    j block_1236
block_1235:
    bne r4 r0 block_1238
    j block_1237
block_1237:
    addi r3 r0 1
    j block_1236
block_1238:
    mv r3 r0
    j block_1236
block_1236:
    bne r3 r0 block_1240
    j block_1239
block_1239:
    addi r3 r0 1
    j block_1222
block_1240:
    mv r3 r0
    j block_1222
block_1224:
    lw r4 r3 16
    lwcZ f6 r4 0
    fmul f3 f6 f3
    lwcZ f6 r4 4
    fmul f4 f6 f4
    fadd f3 f3 f4
    lwcZ f4 r4 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1242
block_1241:
    mv r4 r0
    j block_1243
block_1242:
    addi r4 r0 1
    j block_1243
block_1243:
    bne r3 r0 block_1245
    j block_1244
block_1244:
    mv r3 r4
    j block_1246
block_1245:
    bne r4 r0 block_1248
    j block_1247
block_1247:
    addi r3 r0 1
    j block_1246
block_1248:
    mv r3 r0
    j block_1246
block_1246:
    bne r3 r0 block_1250
    j block_1249
block_1249:
    addi r3 r0 1
    j block_1222
block_1250:
    mv r3 r0
    j block_1222
block_1221:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_1252
block_1251:
    j block_1253
block_1252:
    fneg f3 f3
    j block_1253
block_1253:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_1255
block_1254:
    mv r4 r0
    j block_1256
block_1255:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_1258
block_1257:
    fmv f3 f4
    j block_1259
block_1258:
    fneg f3 f4
    j block_1259
block_1259:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_1261
block_1260:
    mv r4 r0
    j block_1256
block_1261:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_1263
block_1262:
    fmv f3 f5
    j block_1264
block_1263:
    fneg f3 f5
    j block_1264
block_1264:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_1266
block_1265:
    mv r4 r0
    j block_1256
block_1266:
    addi r4 r0 1
    j block_1256
block_1256:
    bne r4 r0 block_1268
    j block_1267
block_1267:
    lw r3 r3 24
    bne r3 r0 block_1270
    j block_1269
block_1269:
    addi r3 r0 1
    j block_1222
block_1270:
    mv r3 r0
    j block_1222
block_1268:
    lw r3 r3 24
    j block_1222
block_1222:
    sw r1 r29 4
    sw r2 r29 0
    bne r3 r0 block_1272
    j block_1271
block_1271:
    lw r3 r2 8
    addi r4 r0 -1
    sw r1 r29 4
    sw r2 r29 0
    beq r3 r4 block_1274
block_1273:
    sll r3 r3 2
    lw r3 r3 25048
    lw r4 r3 20
    lwcZ f3 r4 0
    fsub f3 f1 f3
    lw r4 r3 20
    lwcZ f4 r4 4
    fsub f4 f2 f4
    lw r4 r3 20
    lwcZ f5 r4 8
    fsub f5 f0 f5
    lw r4 r3 4
    addi r5 r0 1
    beq r4 r5 block_1276
block_1275:
    addi r5 r0 2
    beq r4 r5 block_1279
block_1278:
    fmul f6 f3 f3
    lw r4 r3 16
    lwcZ f7 r4 0
    fmul f6 f6 f7
    fmul f7 f4 f4
    lw r4 r3 16
    lwcZ f8 r4 4
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f7 f5 f5
    lw r4 r3 16
    lwcZ f8 r4 8
    fmul f7 f7 f8
    fadd f6 f6 f7
    lw r4 r3 12
    beq r4 r0 block_1281
block_1280:
    fmul f7 f4 f5
    lw r4 r3 36
    lwcZ f8 r4 0
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f5 f5 f3
    lw r4 r3 36
    lwcZ f7 r4 4
    fmul f5 f5 f7
    fadd f5 f6 f5
    fmul f3 f3 f4
    lw r4 r3 36
    lwcZ f4 r4 8
    fmul f3 f3 f4
    fadd f3 f5 f3
    j block_1282
block_1281:
    fmv f3 f6
    j block_1282
block_1282:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_1284
block_1283:
    j block_1285
block_1284:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_1285
block_1285:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1287
block_1286:
    mv r4 r0
    j block_1288
block_1287:
    addi r4 r0 1
    j block_1288
block_1288:
    bne r3 r0 block_1290
    j block_1289
block_1289:
    mv r3 r4
    j block_1291
block_1290:
    bne r4 r0 block_1293
    j block_1292
block_1292:
    addi r3 r0 1
    j block_1291
block_1293:
    mv r3 r0
    j block_1291
block_1291:
    bne r3 r0 block_1295
    j block_1294
block_1294:
    addi r3 r0 1
    j block_1277
block_1295:
    mv r3 r0
    j block_1277
block_1279:
    lw r4 r3 16
    lwcZ f6 r4 0
    fmul f3 f6 f3
    lwcZ f6 r4 4
    fmul f4 f6 f4
    fadd f3 f3 f4
    lwcZ f4 r4 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1297
block_1296:
    mv r4 r0
    j block_1298
block_1297:
    addi r4 r0 1
    j block_1298
block_1298:
    bne r3 r0 block_1300
    j block_1299
block_1299:
    mv r3 r4
    j block_1301
block_1300:
    bne r4 r0 block_1303
    j block_1302
block_1302:
    addi r3 r0 1
    j block_1301
block_1303:
    mv r3 r0
    j block_1301
block_1301:
    bne r3 r0 block_1305
    j block_1304
block_1304:
    addi r3 r0 1
    j block_1277
block_1305:
    mv r3 r0
    j block_1277
block_1276:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_1307
block_1306:
    j block_1308
block_1307:
    fneg f3 f3
    j block_1308
block_1308:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_1310
block_1309:
    mv r4 r0
    j block_1311
block_1310:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_1313
block_1312:
    fmv f3 f4
    j block_1314
block_1313:
    fneg f3 f4
    j block_1314
block_1314:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_1316
block_1315:
    mv r4 r0
    j block_1311
block_1316:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_1318
block_1317:
    fmv f3 f5
    j block_1319
block_1318:
    fneg f3 f5
    j block_1319
block_1319:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_1321
block_1320:
    mv r4 r0
    j block_1311
block_1321:
    addi r4 r0 1
    j block_1311
block_1311:
    bne r4 r0 block_1323
    j block_1322
block_1322:
    lw r3 r3 24
    bne r3 r0 block_1325
    j block_1324
block_1324:
    addi r3 r0 1
    j block_1277
block_1325:
    mv r3 r0
    j block_1277
block_1323:
    lw r3 r3 24
    j block_1277
block_1277:
    sw r1 r29 4
    sw r2 r29 0
    bne r3 r0 block_1327
    j block_1326
block_1326:
    addi r3 r0 3
    sw r1 r29 4
    sw r2 r29 0
    mv r1 r3
    fmv f30 f2
    fmv f2 f0
    fmv f0 f1
    fmv f1 f30
    sw r31 r29 8
    addi r29 r29 12
    jal check_all_inside.4238
    subi r29 r29 12
    lw r31 r29 8
    j block_1164
block_1327:
    mv r1 r0
    j block_1164
block_1274:
    addi r1 r0 1
    j block_1164
block_1272:
    mv r1 r0
    j block_1164
block_1219:
    addi r1 r0 1
    j block_1164
block_1217:
    mv r1 r0
    j block_1164
block_1163:
    addi r1 r0 1
    j block_1164
block_1164:
    bne r1 r0 block_1329
    j block_1328
block_1328:
    lw r1 r29 4
    addi r1 r1 1
    lw r2 r29 0
    sw r31 r29 8
    addi r29 r29 12
    jal shadow_check_and_group.4251
    subi r29 r29 12
    lw r31 r29 8
    jr r31
block_1329:
    addi r1 r0 1
    jr r31
block_1072:
    mv r1 r0
    jr r31
shadow_check_one_or_group.4292:
block_1330:
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_1332
block_1331:
    sll r3 r3 2
    lw r3 r3 25332
    sw r2 r29 16
    sw r1 r29 12
    mv r2 r3
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_1334
    j block_1333
block_1333:
    lw r1 r29 12
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 16
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1336
block_1335:
    sll r2 r2 2
    lw r2 r2 25332
    sw r3 r29 16
    sw r1 r29 4
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_1338
    j block_1337
block_1337:
    lw r1 r29 4
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 16
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1340
block_1339:
    sll r2 r2 2
    lw r2 r2 25332
    sw r3 r29 16
    sw r1 r29 8
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_1342
    j block_1341
block_1341:
    lw r1 r29 8
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 16
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1344
block_1343:
    sll r2 r2 2
    lw r2 r2 25332
    sw r3 r29 16
    sw r1 r29 0
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_1346
    j block_1345
block_1345:
    lw r1 r29 0
    addi r1 r1 1
    lw r2 r29 16
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_one_or_group.4292
    subi r29 r29 24
    lw r31 r29 20
    jr r31
block_1346:
    addi r1 r0 1
    jr r31
block_1344:
    mv r1 r0
    jr r31
block_1342:
    addi r1 r0 1
    jr r31
block_1340:
    mv r1 r0
    jr r31
block_1338:
    addi r1 r0 1
    jr r31
block_1336:
    mv r1 r0
    jr r31
block_1334:
    addi r1 r0 1
    jr r31
block_1332:
    mv r1 r0
    jr r31
shadow_check_one_or_matrix.4303:
block_1347:
    sll r3 r1 2
    lwab r3 r2 r3
    lw r4 r3 0
    addi r5 r0 -1
    beq r4 r5 block_1349
block_1348:
    addi r5 r0 99
    sw r2 r29 24
    sw r1 r29 20
    sw r3 r29 8
    beq r4 r5 block_1351
block_1350:
    sll r5 r4 2
    lw r5 r5 25048
    lwcZ f0 r0 25552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 25992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_1354
block_1353:
    addi r7 r0 2
    beq r6 r7 block_1357
block_1356:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1359
block_1358:
    lwcZ f4 r4 4
    fmul f4 f4 f0
    lwcZ f5 r4 8
    fmul f5 f5 f1
    fadd f4 f4 f5
    lwcZ f5 r4 12
    fmul f5 f5 f2
    fadd f4 f4 f5
    fmul f5 f0 f0
    lw r6 r5 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r5 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r5 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r5 12
    beq r6 r0 block_1361
block_1360:
    fmul f6 f1 f2
    lw r6 r5 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r5 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r5 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_1362
block_1361:
    fmv f0 f5
    j block_1362
block_1362:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_1364
block_1363:
    j block_1365
block_1364:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_1365
block_1365:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_1367
block_1366:
    mv r6 r0
    j block_1368
block_1367:
    addi r6 r0 1
    j block_1368
block_1368:
    bne r6 r0 block_1370
    j block_1369
block_1369:
    mv r4 r0
    j block_1355
block_1370:
    lw r5 r5 24
    bne r5 r0 block_1372
    j block_1371
block_1371:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fsub f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_1373
block_1372:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fadd f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_1373
block_1373:
    addi r4 r0 1
    j block_1355
block_1359:
    mv r4 r0
    j block_1355
block_1357:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1375
block_1374:
    mv r5 r0
    j block_1376
block_1375:
    addi r5 r0 1
    j block_1376
block_1376:
    bne r5 r0 block_1378
    j block_1377
block_1377:
    mv r4 r0
    j block_1355
block_1378:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_1355
block_1354:
    lw r6 r0 25988
    lwcZ f3 r4 0
    fsub f3 f3 f0
    lwcZ f4 r4 4
    fmul f3 f3 f4
    lwcZ f4 r6 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1380
block_1379:
    j block_1381
block_1380:
    fneg f4 f4
    j block_1381
block_1381:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1383
block_1382:
    mv r7 r0
    j block_1384
block_1383:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1386
block_1385:
    j block_1387
block_1386:
    fneg f4 f4
    j block_1387
block_1387:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1389
block_1388:
    mv r7 r0
    j block_1384
block_1389:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1391
block_1390:
    mv r7 r0
    j block_1392
block_1391:
    addi r7 r0 1
    j block_1392
block_1392:
    bne r7 r0 block_1394
    j block_1393
block_1393:
    addi r7 r0 1
    j block_1384
block_1394:
    mv r7 r0
    j block_1384
block_1384:
    bne r7 r0 block_1396
    j block_1395
block_1395:
    lwcZ f3 r4 8
    fsub f3 f3 f1
    lwcZ f4 r4 12
    fmul f3 f3 f4
    lwcZ f4 r6 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1398
block_1397:
    j block_1399
block_1398:
    fneg f4 f4
    j block_1399
block_1399:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_1401
block_1400:
    mv r7 r0
    j block_1402
block_1401:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1404
block_1403:
    j block_1405
block_1404:
    fneg f4 f4
    j block_1405
block_1405:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1407
block_1406:
    mv r7 r0
    j block_1402
block_1407:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1409
block_1408:
    mv r7 r0
    j block_1410
block_1409:
    addi r7 r0 1
    j block_1410
block_1410:
    bne r7 r0 block_1412
    j block_1411
block_1411:
    addi r7 r0 1
    j block_1402
block_1412:
    mv r7 r0
    j block_1402
block_1402:
    bne r7 r0 block_1414
    j block_1413
block_1413:
    lwcZ f3 r4 16
    fsub f2 f3 f2
    lwcZ f3 r4 20
    fmul f2 f2 f3
    lwcZ f3 r6 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_1416
block_1415:
    j block_1417
block_1416:
    fneg f0 f0
    j block_1417
block_1417:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_1419
block_1418:
    mv r4 r0
    j block_1420
block_1419:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_1422
block_1421:
    j block_1423
block_1422:
    fneg f0 f0
    j block_1423
block_1423:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_1425
block_1424:
    mv r4 r0
    j block_1420
block_1425:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_1427
block_1426:
    mv r4 r0
    j block_1428
block_1427:
    addi r4 r0 1
    j block_1428
block_1428:
    bne r4 r0 block_1430
    j block_1429
block_1429:
    addi r4 r0 1
    j block_1420
block_1430:
    mv r4 r0
    j block_1420
block_1420:
    bne r4 r0 block_1432
    j block_1431
block_1431:
    mv r4 r0
    j block_1355
block_1432:
    swcZ f2 r0 25540
    addi r4 r0 3
    j block_1355
block_1414:
    swcZ f3 r0 25540
    addi r4 r0 2
    j block_1355
block_1396:
    swcZ f3 r0 25540
    addi r4 r0 1
    j block_1355
block_1355:
    sw r2 r29 24
    sw r1 r29 20
    sw r3 r29 8
    beq r4 r0 block_1434
block_1433:
    lwcZ f0 r0 25540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    sw r2 r29 24
    sw r1 r29 20
    sw r3 r29 8
    fclt f0 f1
    bc1t block_1436
block_1435:
    mv r1 r0
    j block_1352
block_1436:
    lw r4 r3 4
    addi r5 r0 -1
    sw r2 r29 24
    sw r1 r29 20
    sw r3 r29 8
    beq r4 r5 block_1438
block_1437:
    sll r4 r4 2
    lw r4 r4 25332
    sw r2 r29 24
    sw r1 r29 20
    sw r3 r29 8
    mv r2 r4
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1441
    j block_1440
block_1440:
    lw r1 r29 8
    lw r2 r1 8
    addi r3 r0 -1
    sw r1 r29 8
    beq r2 r3 block_1443
block_1442:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 8
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1445
    j block_1444
block_1444:
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    sw r1 r29 8
    beq r2 r3 block_1447
block_1446:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 8
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1449
    j block_1448
block_1448:
    addi r1 r0 4
    lw r2 r29 8
    sw r2 r29 8
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1439
block_1449:
    addi r1 r0 1
    j block_1439
block_1447:
    mv r1 r0
    j block_1439
block_1445:
    addi r1 r0 1
    j block_1439
block_1443:
    mv r1 r0
    j block_1439
block_1441:
    addi r1 r0 1
    j block_1439
block_1438:
    mv r1 r0
    j block_1439
block_1439:
    bne r1 r0 block_1451
    j block_1450
block_1450:
    mv r1 r0
    j block_1352
block_1451:
    addi r1 r0 1
    j block_1352
block_1434:
    mv r1 r0
    j block_1352
block_1351:
    addi r1 r0 1
    j block_1352
block_1352:
    bne r1 r0 block_1453
    j block_1452
block_1452:
    lw r1 r29 20
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 24
    lwab r2 r3 r2
    lw r4 r2 0
    addi r5 r0 -1
    beq r4 r5 block_1455
block_1454:
    addi r5 r0 99
    sw r3 r29 24
    sw r2 r29 16
    sw r1 r29 4
    beq r4 r5 block_1457
block_1456:
    sll r5 r4 2
    lw r5 r5 25048
    lwcZ f0 r0 25552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 25992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_1460
block_1459:
    addi r7 r0 2
    beq r6 r7 block_1463
block_1462:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1465
block_1464:
    lwcZ f4 r4 4
    fmul f4 f4 f0
    lwcZ f5 r4 8
    fmul f5 f5 f1
    fadd f4 f4 f5
    lwcZ f5 r4 12
    fmul f5 f5 f2
    fadd f4 f4 f5
    fmul f5 f0 f0
    lw r6 r5 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r5 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r5 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r5 12
    beq r6 r0 block_1467
block_1466:
    fmul f6 f1 f2
    lw r6 r5 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r5 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r5 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_1468
block_1467:
    fmv f0 f5
    j block_1468
block_1468:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_1470
block_1469:
    j block_1471
block_1470:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_1471
block_1471:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_1473
block_1472:
    mv r6 r0
    j block_1474
block_1473:
    addi r6 r0 1
    j block_1474
block_1474:
    bne r6 r0 block_1476
    j block_1475
block_1475:
    mv r4 r0
    j block_1461
block_1476:
    lw r5 r5 24
    bne r5 r0 block_1478
    j block_1477
block_1477:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fsub f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_1479
block_1478:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fadd f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_1479
block_1479:
    addi r4 r0 1
    j block_1461
block_1465:
    mv r4 r0
    j block_1461
block_1463:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1481
block_1480:
    mv r5 r0
    j block_1482
block_1481:
    addi r5 r0 1
    j block_1482
block_1482:
    bne r5 r0 block_1484
    j block_1483
block_1483:
    mv r4 r0
    j block_1461
block_1484:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_1461
block_1460:
    lw r6 r0 25988
    lwcZ f3 r4 0
    fsub f3 f3 f0
    lwcZ f4 r4 4
    fmul f3 f3 f4
    lwcZ f4 r6 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1486
block_1485:
    j block_1487
block_1486:
    fneg f4 f4
    j block_1487
block_1487:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1489
block_1488:
    mv r7 r0
    j block_1490
block_1489:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1492
block_1491:
    j block_1493
block_1492:
    fneg f4 f4
    j block_1493
block_1493:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1495
block_1494:
    mv r7 r0
    j block_1490
block_1495:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1497
block_1496:
    mv r7 r0
    j block_1498
block_1497:
    addi r7 r0 1
    j block_1498
block_1498:
    bne r7 r0 block_1500
    j block_1499
block_1499:
    addi r7 r0 1
    j block_1490
block_1500:
    mv r7 r0
    j block_1490
block_1490:
    bne r7 r0 block_1502
    j block_1501
block_1501:
    lwcZ f3 r4 8
    fsub f3 f3 f1
    lwcZ f4 r4 12
    fmul f3 f3 f4
    lwcZ f4 r6 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1504
block_1503:
    j block_1505
block_1504:
    fneg f4 f4
    j block_1505
block_1505:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_1507
block_1506:
    mv r7 r0
    j block_1508
block_1507:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1510
block_1509:
    j block_1511
block_1510:
    fneg f4 f4
    j block_1511
block_1511:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1513
block_1512:
    mv r7 r0
    j block_1508
block_1513:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1515
block_1514:
    mv r7 r0
    j block_1516
block_1515:
    addi r7 r0 1
    j block_1516
block_1516:
    bne r7 r0 block_1518
    j block_1517
block_1517:
    addi r7 r0 1
    j block_1508
block_1518:
    mv r7 r0
    j block_1508
block_1508:
    bne r7 r0 block_1520
    j block_1519
block_1519:
    lwcZ f3 r4 16
    fsub f2 f3 f2
    lwcZ f3 r4 20
    fmul f2 f2 f3
    lwcZ f3 r6 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_1522
block_1521:
    j block_1523
block_1522:
    fneg f0 f0
    j block_1523
block_1523:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_1525
block_1524:
    mv r4 r0
    j block_1526
block_1525:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_1528
block_1527:
    j block_1529
block_1528:
    fneg f0 f0
    j block_1529
block_1529:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_1531
block_1530:
    mv r4 r0
    j block_1526
block_1531:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_1533
block_1532:
    mv r4 r0
    j block_1534
block_1533:
    addi r4 r0 1
    j block_1534
block_1534:
    bne r4 r0 block_1536
    j block_1535
block_1535:
    addi r4 r0 1
    j block_1526
block_1536:
    mv r4 r0
    j block_1526
block_1526:
    bne r4 r0 block_1538
    j block_1537
block_1537:
    mv r4 r0
    j block_1461
block_1538:
    swcZ f2 r0 25540
    addi r4 r0 3
    j block_1461
block_1520:
    swcZ f3 r0 25540
    addi r4 r0 2
    j block_1461
block_1502:
    swcZ f3 r0 25540
    addi r4 r0 1
    j block_1461
block_1461:
    sw r3 r29 24
    sw r2 r29 16
    sw r1 r29 4
    beq r4 r0 block_1540
block_1539:
    lwcZ f0 r0 25540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    sw r3 r29 24
    sw r2 r29 16
    sw r1 r29 4
    fclt f0 f1
    bc1t block_1542
block_1541:
    mv r1 r0
    j block_1458
block_1542:
    lw r4 r2 4
    addi r5 r0 -1
    sw r3 r29 24
    sw r2 r29 16
    sw r1 r29 4
    beq r4 r5 block_1544
block_1543:
    sll r4 r4 2
    lw r4 r4 25332
    sw r3 r29 24
    sw r2 r29 16
    sw r1 r29 4
    mv r2 r4
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1547
    j block_1546
block_1546:
    lw r1 r29 16
    lw r2 r1 8
    addi r3 r0 -1
    sw r1 r29 16
    beq r2 r3 block_1549
block_1548:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 16
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1551
    j block_1550
block_1550:
    addi r1 r0 3
    lw r2 r29 16
    sw r2 r29 16
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1545
block_1551:
    addi r1 r0 1
    j block_1545
block_1549:
    mv r1 r0
    j block_1545
block_1547:
    addi r1 r0 1
    j block_1545
block_1544:
    mv r1 r0
    j block_1545
block_1545:
    bne r1 r0 block_1553
    j block_1552
block_1552:
    mv r1 r0
    j block_1458
block_1553:
    addi r1 r0 1
    j block_1458
block_1540:
    mv r1 r0
    j block_1458
block_1457:
    addi r1 r0 1
    j block_1458
block_1458:
    bne r1 r0 block_1555
    j block_1554
block_1554:
    lw r1 r29 4
    addi r1 r1 1
    lw r2 r29 24
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 32
    lw r31 r29 28
    jr r31
block_1555:
    lw r1 r29 16
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_1557
block_1556:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 16
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1560
    j block_1559
block_1559:
    lw r1 r29 16
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_1562
block_1561:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 16
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1564
    j block_1563
block_1563:
    addi r1 r0 3
    lw r2 r29 16
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1558
block_1564:
    addi r1 r0 1
    j block_1558
block_1562:
    mv r1 r0
    j block_1558
block_1560:
    addi r1 r0 1
    j block_1558
block_1557:
    mv r1 r0
    j block_1558
block_1558:
    bne r1 r0 block_1566
    j block_1565
block_1565:
    lw r1 r29 4
    addi r1 r1 1
    lw r2 r29 24
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 32
    lw r31 r29 28
    jr r31
block_1566:
    addi r1 r0 1
    jr r31
block_1455:
    mv r1 r0
    jr r31
block_1453:
    lw r1 r29 8
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_1568
block_1567:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 8
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1571
    j block_1570
block_1570:
    lw r1 r29 8
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_1573
block_1572:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 8
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1575
    j block_1574
block_1574:
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_1577
block_1576:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 8
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1579
    j block_1578
block_1578:
    addi r1 r0 4
    lw r2 r29 8
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1569
block_1579:
    addi r1 r0 1
    j block_1569
block_1577:
    mv r1 r0
    j block_1569
block_1575:
    addi r1 r0 1
    j block_1569
block_1573:
    mv r1 r0
    j block_1569
block_1571:
    addi r1 r0 1
    j block_1569
block_1568:
    mv r1 r0
    j block_1569
block_1569:
    bne r1 r0 block_1581
    j block_1580
block_1580:
    lw r1 r29 20
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 24
    lwab r2 r3 r2
    lw r4 r2 0
    addi r5 r0 -1
    beq r4 r5 block_1583
block_1582:
    addi r5 r0 99
    sw r3 r29 24
    sw r2 r29 12
    sw r1 r29 0
    beq r4 r5 block_1585
block_1584:
    sll r5 r4 2
    lw r5 r5 25048
    lwcZ f0 r0 25552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 25992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_1588
block_1587:
    addi r7 r0 2
    beq r6 r7 block_1591
block_1590:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1593
block_1592:
    lwcZ f4 r4 4
    fmul f4 f4 f0
    lwcZ f5 r4 8
    fmul f5 f5 f1
    fadd f4 f4 f5
    lwcZ f5 r4 12
    fmul f5 f5 f2
    fadd f4 f4 f5
    fmul f5 f0 f0
    lw r6 r5 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r5 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r5 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r5 12
    beq r6 r0 block_1595
block_1594:
    fmul f6 f1 f2
    lw r6 r5 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r5 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r5 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_1596
block_1595:
    fmv f0 f5
    j block_1596
block_1596:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_1598
block_1597:
    j block_1599
block_1598:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_1599
block_1599:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_1601
block_1600:
    mv r6 r0
    j block_1602
block_1601:
    addi r6 r0 1
    j block_1602
block_1602:
    bne r6 r0 block_1604
    j block_1603
block_1603:
    mv r4 r0
    j block_1589
block_1604:
    lw r5 r5 24
    bne r5 r0 block_1606
    j block_1605
block_1605:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fsub f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_1607
block_1606:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fadd f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_1607
block_1607:
    addi r4 r0 1
    j block_1589
block_1593:
    mv r4 r0
    j block_1589
block_1591:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1609
block_1608:
    mv r5 r0
    j block_1610
block_1609:
    addi r5 r0 1
    j block_1610
block_1610:
    bne r5 r0 block_1612
    j block_1611
block_1611:
    mv r4 r0
    j block_1589
block_1612:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_1589
block_1588:
    lw r6 r0 25988
    lwcZ f3 r4 0
    fsub f3 f3 f0
    lwcZ f4 r4 4
    fmul f3 f3 f4
    lwcZ f4 r6 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1614
block_1613:
    j block_1615
block_1614:
    fneg f4 f4
    j block_1615
block_1615:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1617
block_1616:
    mv r7 r0
    j block_1618
block_1617:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1620
block_1619:
    j block_1621
block_1620:
    fneg f4 f4
    j block_1621
block_1621:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1623
block_1622:
    mv r7 r0
    j block_1618
block_1623:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1625
block_1624:
    mv r7 r0
    j block_1626
block_1625:
    addi r7 r0 1
    j block_1626
block_1626:
    bne r7 r0 block_1628
    j block_1627
block_1627:
    addi r7 r0 1
    j block_1618
block_1628:
    mv r7 r0
    j block_1618
block_1618:
    bne r7 r0 block_1630
    j block_1629
block_1629:
    lwcZ f3 r4 8
    fsub f3 f3 f1
    lwcZ f4 r4 12
    fmul f3 f3 f4
    lwcZ f4 r6 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1632
block_1631:
    j block_1633
block_1632:
    fneg f4 f4
    j block_1633
block_1633:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_1635
block_1634:
    mv r7 r0
    j block_1636
block_1635:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1638
block_1637:
    j block_1639
block_1638:
    fneg f4 f4
    j block_1639
block_1639:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1641
block_1640:
    mv r7 r0
    j block_1636
block_1641:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1643
block_1642:
    mv r7 r0
    j block_1644
block_1643:
    addi r7 r0 1
    j block_1644
block_1644:
    bne r7 r0 block_1646
    j block_1645
block_1645:
    addi r7 r0 1
    j block_1636
block_1646:
    mv r7 r0
    j block_1636
block_1636:
    bne r7 r0 block_1648
    j block_1647
block_1647:
    lwcZ f3 r4 16
    fsub f2 f3 f2
    lwcZ f3 r4 20
    fmul f2 f2 f3
    lwcZ f3 r6 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_1650
block_1649:
    j block_1651
block_1650:
    fneg f0 f0
    j block_1651
block_1651:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_1653
block_1652:
    mv r4 r0
    j block_1654
block_1653:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_1656
block_1655:
    j block_1657
block_1656:
    fneg f0 f0
    j block_1657
block_1657:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_1659
block_1658:
    mv r4 r0
    j block_1654
block_1659:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_1661
block_1660:
    mv r4 r0
    j block_1662
block_1661:
    addi r4 r0 1
    j block_1662
block_1662:
    bne r4 r0 block_1664
    j block_1663
block_1663:
    addi r4 r0 1
    j block_1654
block_1664:
    mv r4 r0
    j block_1654
block_1654:
    bne r4 r0 block_1666
    j block_1665
block_1665:
    mv r4 r0
    j block_1589
block_1666:
    swcZ f2 r0 25540
    addi r4 r0 3
    j block_1589
block_1648:
    swcZ f3 r0 25540
    addi r4 r0 2
    j block_1589
block_1630:
    swcZ f3 r0 25540
    addi r4 r0 1
    j block_1589
block_1589:
    sw r3 r29 24
    sw r2 r29 12
    sw r1 r29 0
    beq r4 r0 block_1668
block_1667:
    lwcZ f0 r0 25540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    sw r3 r29 24
    sw r2 r29 12
    sw r1 r29 0
    fclt f0 f1
    bc1t block_1670
block_1669:
    mv r1 r0
    j block_1586
block_1670:
    lw r4 r2 4
    addi r5 r0 -1
    sw r3 r29 24
    sw r2 r29 12
    sw r1 r29 0
    beq r4 r5 block_1672
block_1671:
    sll r4 r4 2
    lw r4 r4 25332
    sw r3 r29 24
    sw r2 r29 12
    sw r1 r29 0
    mv r2 r4
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1675
    j block_1674
block_1674:
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    sw r1 r29 12
    beq r2 r3 block_1677
block_1676:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 12
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1679
    j block_1678
block_1678:
    addi r1 r0 3
    lw r2 r29 12
    sw r2 r29 12
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1673
block_1679:
    addi r1 r0 1
    j block_1673
block_1677:
    mv r1 r0
    j block_1673
block_1675:
    addi r1 r0 1
    j block_1673
block_1672:
    mv r1 r0
    j block_1673
block_1673:
    bne r1 r0 block_1681
    j block_1680
block_1680:
    mv r1 r0
    j block_1586
block_1681:
    addi r1 r0 1
    j block_1586
block_1668:
    mv r1 r0
    j block_1586
block_1585:
    addi r1 r0 1
    j block_1586
block_1586:
    bne r1 r0 block_1683
    j block_1682
block_1682:
    lw r1 r29 0
    addi r1 r1 1
    lw r2 r29 24
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 32
    lw r31 r29 28
    jr r31
block_1683:
    lw r1 r29 12
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_1685
block_1684:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 12
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1688
    j block_1687
block_1687:
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_1690
block_1689:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 12
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1692
    j block_1691
block_1691:
    addi r1 r0 3
    lw r2 r29 12
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1686
block_1692:
    addi r1 r0 1
    j block_1686
block_1690:
    mv r1 r0
    j block_1686
block_1688:
    addi r1 r0 1
    j block_1686
block_1685:
    mv r1 r0
    j block_1686
block_1686:
    bne r1 r0 block_1694
    j block_1693
block_1693:
    lw r1 r29 0
    addi r1 r1 1
    lw r2 r29 24
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 32
    lw r31 r29 28
    jr r31
block_1694:
    addi r1 r0 1
    jr r31
block_1583:
    mv r1 r0
    jr r31
block_1581:
    addi r1 r0 1
    jr r31
block_1349:
    mv r1 r0
    jr r31
solve_each_element.4326:
block_1695:
    sll r4 r1 2
    lwab r4 r2 r4
    addi r5 r0 -1
    beq r4 r5 block_1697
block_1696:
    sll r5 r4 2
    lw r5 r5 25048
    lwcZ f0 r0 25636
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 25640
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 25644
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_1699
block_1698:
    addi r7 r0 2
    beq r6 r7 block_1702
block_1701:
    lwcZ f3 r3 0
    lwcZ f4 r3 4
    lwcZ f5 r3 8
    fmul f6 f3 f3
    lw r6 r5 16
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fmul f7 f4 f4
    lw r6 r5 16
    lwcZ f8 r6 4
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f7 f5 f5
    lw r6 r5 16
    lwcZ f8 r6 8
    fmul f7 f7 f8
    fadd f6 f6 f7
    lw r6 r5 12
    beq r6 r0 block_1704
block_1703:
    fmul f7 f4 f5
    lw r6 r5 36
    lwcZ f8 r6 0
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f5 f5 f3
    lw r6 r5 36
    lwcZ f7 r6 4
    fmul f5 f5 f7
    fadd f5 f6 f5
    fmul f3 f3 f4
    lw r6 r5 36
    lwcZ f4 r6 8
    fmul f3 f3 f4
    fadd f3 f5 f3
    j block_1705
block_1704:
    fmv f3 f6
    j block_1705
block_1705:
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1707
block_1706:
    lwcZ f4 r3 0
    lwcZ f5 r3 4
    lwcZ f6 r3 8
    fmul f7 f4 f0
    lw r6 r5 16
    lwcZ f8 r6 0
    fmul f7 f7 f8
    fmul f8 f5 f1
    lw r6 r5 16
    lwcZ f9 r6 4
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f8 f6 f2
    lw r6 r5 16
    lwcZ f9 r6 8
    fmul f8 f8 f9
    fadd f7 f7 f8
    lw r6 r5 12
    beq r6 r0 block_1709
block_1708:
    fmul f8 f6 f1
    fmul f9 f5 f2
    fadd f8 f8 f9
    lw r6 r5 36
    lwcZ f9 r6 0
    fmul f8 f8 f9
    fmul f9 f4 f2
    fmul f6 f6 f0
    fadd f6 f9 f6
    lw r6 r5 36
    lwcZ f9 r6 4
    fmul f6 f6 f9
    fadd f6 f8 f6
    fmul f4 f4 f1
    fmul f5 f5 f0
    fadd f4 f4 f5
    lw r6 r5 36
    lwcZ f5 r6 8
    fmul f4 f4 f5
    fadd f4 f6 f4
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fadd f4 f7 f4
    j block_1710
block_1709:
    fmv f4 f7
    j block_1710
block_1710:
    fmul f5 f0 f0
    lw r6 r5 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r5 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r5 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r5 12
    beq r6 r0 block_1712
block_1711:
    fmul f6 f1 f2
    lw r6 r5 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r5 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r5 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_1713
block_1712:
    fmv f0 f5
    j block_1713
block_1713:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_1715
block_1714:
    j block_1716
block_1715:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_1716
block_1716:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_1718
block_1717:
    mv r6 r0
    j block_1719
block_1718:
    addi r6 r0 1
    j block_1719
block_1719:
    bne r6 r0 block_1721
    j block_1720
block_1720:
    mv r5 r0
    j block_1700
block_1721:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f5 16128
    fmul f1 f5 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    lw r5 r5 24
    bne r5 r0 block_1723
    j block_1722
block_1722:
    fneg f0 f0
    j block_1724
block_1723:
    j block_1724
block_1724:
    fsub f0 f0 f4
    finv_init f1 f3
    #2.0
    flui f2 16384
    fmul f3 f3 f1
    fsub f2 f2 f3
    fmul f1 f1 f2
    fmul f0 f0 f1
    swcZ f0 r0 25540
    addi r5 r0 1
    j block_1700
block_1707:
    mv r5 r0
    j block_1700
block_1702:
    lw r5 r5 16
    lwcZ f3 r3 0
    lwcZ f4 r5 0
    fmul f3 f3 f4
    lwcZ f4 r3 4
    lwcZ f5 r5 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    lwcZ f4 r3 8
    lwcZ f5 r5 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    #0.0
    flui f4 0
    fclt f4 f3
    bc1t block_1726
block_1725:
    mv r6 r0
    j block_1727
block_1726:
    addi r6 r0 1
    j block_1727
block_1727:
    bne r6 r0 block_1729
    j block_1728
block_1728:
    mv r5 r0
    j block_1700
block_1729:
    lwcZ f4 r5 0
    fmul f0 f4 f0
    lwcZ f4 r5 4
    fmul f1 f4 f1
    fadd f0 f0 f1
    lwcZ f1 r5 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    finv_init f1 f3
    #2.0
    flui f2 16384
    fmul f3 f3 f1
    fsub f2 f2 f3
    fmul f1 f1 f2
    fmul f0 f0 f1
    swcZ f0 r0 25540
    addi r5 r0 1
    j block_1700
block_1699:
    lwcZ f3 r3 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1731
block_1730:
    lw r6 r5 16
    lw r7 r5 24
    lwcZ f3 r3 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1734
block_1733:
    mv r8 r0
    j block_1735
block_1734:
    addi r8 r0 1
    j block_1735
block_1735:
    bne r7 r0 block_1737
    j block_1736
block_1736:
    mv r7 r8
    j block_1738
block_1737:
    bne r8 r0 block_1740
    j block_1739
block_1739:
    addi r7 r0 1
    j block_1738
block_1740:
    mv r7 r0
    j block_1738
block_1738:
    lwcZ f3 r6 0
    bne r7 r0 block_1742
    j block_1741
block_1741:
    fneg f3 f3
    j block_1743
block_1742:
    j block_1743
block_1743:
    fsub f3 f3 f0
    lwcZ f4 r3 0
    finv_init f5 f4
    #2.0
    flui f6 16384
    fmul f4 f4 f5
    fsub f4 f6 f4
    fmul f4 f5 f4
    fmul f3 f3 f4
    lwcZ f4 r3 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1745
block_1744:
    j block_1746
block_1745:
    fneg f4 f4
    j block_1746
block_1746:
    lwcZ f5 r6 4
    fclt f4 f5
    bc1t block_1748
block_1747:
    mv r6 r0
    j block_1732
block_1748:
    lwcZ f4 r3 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1750
block_1749:
    j block_1751
block_1750:
    fneg f4 f4
    j block_1751
block_1751:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_1753
block_1752:
    mv r6 r0
    j block_1732
block_1753:
    swcZ f3 r0 25540
    addi r6 r0 1
    j block_1732
block_1731:
    mv r6 r0
    j block_1732
block_1732:
    bne r6 r0 block_1755
    j block_1754
block_1754:
    lwcZ f3 r3 4
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1757
block_1756:
    lw r6 r5 16
    lw r7 r5 24
    lwcZ f3 r3 4
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1760
block_1759:
    mv r8 r0
    j block_1761
block_1760:
    addi r8 r0 1
    j block_1761
block_1761:
    bne r7 r0 block_1763
    j block_1762
block_1762:
    mv r7 r8
    j block_1764
block_1763:
    bne r8 r0 block_1766
    j block_1765
block_1765:
    addi r7 r0 1
    j block_1764
block_1766:
    mv r7 r0
    j block_1764
block_1764:
    lwcZ f3 r6 4
    bne r7 r0 block_1768
    j block_1767
block_1767:
    fneg f3 f3
    j block_1769
block_1768:
    j block_1769
block_1769:
    fsub f3 f3 f1
    lwcZ f4 r3 4
    finv_init f5 f4
    #2.0
    flui f6 16384
    fmul f4 f4 f5
    fsub f4 f6 f4
    fmul f4 f5 f4
    fmul f3 f3 f4
    lwcZ f4 r3 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1771
block_1770:
    j block_1772
block_1771:
    fneg f4 f4
    j block_1772
block_1772:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_1774
block_1773:
    mv r6 r0
    j block_1758
block_1774:
    lwcZ f4 r3 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1776
block_1775:
    j block_1777
block_1776:
    fneg f4 f4
    j block_1777
block_1777:
    lwcZ f5 r6 0
    fclt f4 f5
    bc1t block_1779
block_1778:
    mv r6 r0
    j block_1758
block_1779:
    swcZ f3 r0 25540
    addi r6 r0 1
    j block_1758
block_1757:
    mv r6 r0
    j block_1758
block_1758:
    bne r6 r0 block_1781
    j block_1780
block_1780:
    lwcZ f3 r3 8
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1783
block_1782:
    lw r6 r5 16
    lw r5 r5 24
    lwcZ f3 r3 8
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1786
block_1785:
    mv r7 r0
    j block_1787
block_1786:
    addi r7 r0 1
    j block_1787
block_1787:
    bne r5 r0 block_1789
    j block_1788
block_1788:
    mv r5 r7
    j block_1790
block_1789:
    bne r7 r0 block_1792
    j block_1791
block_1791:
    addi r5 r0 1
    j block_1790
block_1792:
    mv r5 r0
    j block_1790
block_1790:
    lwcZ f3 r6 8
    bne r5 r0 block_1794
    j block_1793
block_1793:
    fneg f3 f3
    j block_1795
block_1794:
    j block_1795
block_1795:
    fsub f2 f3 f2
    lwcZ f3 r3 8
    finv_init f4 f3
    #2.0
    flui f5 16384
    fmul f3 f3 f4
    fsub f3 f5 f3
    fmul f3 f4 f3
    fmul f2 f2 f3
    lwcZ f3 r3 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_1797
block_1796:
    j block_1798
block_1797:
    fneg f0 f0
    j block_1798
block_1798:
    lwcZ f3 r6 0
    fclt f0 f3
    bc1t block_1800
block_1799:
    mv r5 r0
    j block_1784
block_1800:
    lwcZ f0 r3 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_1802
block_1801:
    j block_1803
block_1802:
    fneg f0 f0
    j block_1803
block_1803:
    lwcZ f1 r6 4
    fclt f0 f1
    bc1t block_1805
block_1804:
    mv r5 r0
    j block_1784
block_1805:
    swcZ f2 r0 25540
    addi r5 r0 1
    j block_1784
block_1783:
    mv r5 r0
    j block_1784
block_1784:
    bne r5 r0 block_1807
    j block_1806
block_1806:
    mv r5 r0
    j block_1700
block_1807:
    addi r5 r0 3
    j block_1700
block_1781:
    addi r5 r0 2
    j block_1700
block_1755:
    addi r5 r0 1
    j block_1700
block_1700:
    beq r5 r0 block_1809
block_1808:
    lwcZ f0 r0 25540
    #0.0
    flui f1 0
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    fclt f1 f0
    bc1t block_1811
block_1810:
    j block_1812
block_1811:
    lwcZ f1 r0 25548
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    fclt f0 f1
    bc1t block_1814
block_1813:
    j block_1812
block_1814:
    #0.01
    flui f1 15395
    fori f1 f1 -10486
    fadd f0 f0 f1
    lwcZ f1 r3 0
    fmul f1 f1 f0
    lwcZ f2 r0 25636
    fadd f1 f1 f2
    lwcZ f2 r3 4
    fmul f2 f2 f0
    lwcZ f3 r0 25640
    fadd f2 f2 f3
    lwcZ f3 r3 8
    fmul f3 f3 f0
    lwcZ f4 r0 25644
    fadd f3 f3 f4
    lw r6 r2 0
    addi r7 r0 -1
    sw r5 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r4 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    beq r6 r7 block_1816
block_1815:
    sll r6 r6 2
    lw r6 r6 25048
    lw r7 r6 20
    lwcZ f4 r7 0
    fsub f4 f1 f4
    lw r7 r6 20
    lwcZ f5 r7 4
    fsub f5 f2 f5
    lw r7 r6 20
    lwcZ f6 r7 8
    fsub f6 f3 f6
    lw r7 r6 4
    addi r8 r0 1
    beq r7 r8 block_1819
block_1818:
    addi r8 r0 2
    beq r7 r8 block_1822
block_1821:
    fmul f7 f4 f4
    lw r7 r6 16
    lwcZ f8 r7 0
    fmul f7 f7 f8
    fmul f8 f5 f5
    lw r7 r6 16
    lwcZ f9 r7 4
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f8 f6 f6
    lw r7 r6 16
    lwcZ f9 r7 8
    fmul f8 f8 f9
    fadd f7 f7 f8
    lw r7 r6 12
    beq r7 r0 block_1824
block_1823:
    fmul f8 f5 f6
    lw r7 r6 36
    lwcZ f9 r7 0
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f6 f6 f4
    lw r7 r6 36
    lwcZ f8 r7 4
    fmul f6 f6 f8
    fadd f6 f7 f6
    fmul f4 f4 f5
    lw r7 r6 36
    lwcZ f5 r7 8
    fmul f4 f4 f5
    fadd f4 f6 f4
    j block_1825
block_1824:
    fmv f4 f7
    j block_1825
block_1825:
    lw r7 r6 4
    addi r8 r0 3
    beq r7 r8 block_1827
block_1826:
    j block_1828
block_1827:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_1828
block_1828:
    lw r6 r6 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1830
block_1829:
    mv r7 r0
    j block_1831
block_1830:
    addi r7 r0 1
    j block_1831
block_1831:
    bne r6 r0 block_1833
    j block_1832
block_1832:
    mv r6 r7
    j block_1834
block_1833:
    bne r7 r0 block_1836
    j block_1835
block_1835:
    addi r6 r0 1
    j block_1834
block_1836:
    mv r6 r0
    j block_1834
block_1834:
    bne r6 r0 block_1838
    j block_1837
block_1837:
    addi r6 r0 1
    j block_1820
block_1838:
    mv r6 r0
    j block_1820
block_1822:
    lw r7 r6 16
    lwcZ f7 r7 0
    fmul f4 f7 f4
    lwcZ f7 r7 4
    fmul f5 f7 f5
    fadd f4 f4 f5
    lwcZ f5 r7 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    lw r6 r6 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1840
block_1839:
    mv r7 r0
    j block_1841
block_1840:
    addi r7 r0 1
    j block_1841
block_1841:
    bne r6 r0 block_1843
    j block_1842
block_1842:
    mv r6 r7
    j block_1844
block_1843:
    bne r7 r0 block_1846
    j block_1845
block_1845:
    addi r6 r0 1
    j block_1844
block_1846:
    mv r6 r0
    j block_1844
block_1844:
    bne r6 r0 block_1848
    j block_1847
block_1847:
    addi r6 r0 1
    j block_1820
block_1848:
    mv r6 r0
    j block_1820
block_1819:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_1850
block_1849:
    j block_1851
block_1850:
    fneg f4 f4
    j block_1851
block_1851:
    lw r7 r6 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_1853
block_1852:
    mv r7 r0
    j block_1854
block_1853:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_1856
block_1855:
    fmv f4 f5
    j block_1857
block_1856:
    fneg f4 f5
    j block_1857
block_1857:
    lw r7 r6 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1859
block_1858:
    mv r7 r0
    j block_1854
block_1859:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_1861
block_1860:
    fmv f4 f6
    j block_1862
block_1861:
    fneg f4 f6
    j block_1862
block_1862:
    lw r7 r6 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1864
block_1863:
    mv r7 r0
    j block_1854
block_1864:
    addi r7 r0 1
    j block_1854
block_1854:
    bne r7 r0 block_1866
    j block_1865
block_1865:
    lw r6 r6 24
    bne r6 r0 block_1868
    j block_1867
block_1867:
    addi r6 r0 1
    j block_1820
block_1868:
    mv r6 r0
    j block_1820
block_1866:
    lw r6 r6 24
    j block_1820
block_1820:
    sw r5 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r4 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    bne r6 r0 block_1870
    j block_1869
block_1869:
    lw r6 r2 4
    addi r7 r0 -1
    sw r5 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r4 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    beq r6 r7 block_1872
block_1871:
    sll r6 r6 2
    lw r6 r6 25048
    lw r7 r6 20
    lwcZ f4 r7 0
    fsub f4 f1 f4
    lw r7 r6 20
    lwcZ f5 r7 4
    fsub f5 f2 f5
    lw r7 r6 20
    lwcZ f6 r7 8
    fsub f6 f3 f6
    lw r7 r6 4
    addi r8 r0 1
    beq r7 r8 block_1874
block_1873:
    addi r8 r0 2
    beq r7 r8 block_1877
block_1876:
    fmul f7 f4 f4
    lw r7 r6 16
    lwcZ f8 r7 0
    fmul f7 f7 f8
    fmul f8 f5 f5
    lw r7 r6 16
    lwcZ f9 r7 4
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f8 f6 f6
    lw r7 r6 16
    lwcZ f9 r7 8
    fmul f8 f8 f9
    fadd f7 f7 f8
    lw r7 r6 12
    beq r7 r0 block_1879
block_1878:
    fmul f8 f5 f6
    lw r7 r6 36
    lwcZ f9 r7 0
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f6 f6 f4
    lw r7 r6 36
    lwcZ f8 r7 4
    fmul f6 f6 f8
    fadd f6 f7 f6
    fmul f4 f4 f5
    lw r7 r6 36
    lwcZ f5 r7 8
    fmul f4 f4 f5
    fadd f4 f6 f4
    j block_1880
block_1879:
    fmv f4 f7
    j block_1880
block_1880:
    lw r7 r6 4
    addi r8 r0 3
    beq r7 r8 block_1882
block_1881:
    j block_1883
block_1882:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_1883
block_1883:
    lw r6 r6 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1885
block_1884:
    mv r7 r0
    j block_1886
block_1885:
    addi r7 r0 1
    j block_1886
block_1886:
    bne r6 r0 block_1888
    j block_1887
block_1887:
    mv r6 r7
    j block_1889
block_1888:
    bne r7 r0 block_1891
    j block_1890
block_1890:
    addi r6 r0 1
    j block_1889
block_1891:
    mv r6 r0
    j block_1889
block_1889:
    bne r6 r0 block_1893
    j block_1892
block_1892:
    addi r6 r0 1
    j block_1875
block_1893:
    mv r6 r0
    j block_1875
block_1877:
    lw r7 r6 16
    lwcZ f7 r7 0
    fmul f4 f7 f4
    lwcZ f7 r7 4
    fmul f5 f7 f5
    fadd f4 f4 f5
    lwcZ f5 r7 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    lw r6 r6 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1895
block_1894:
    mv r7 r0
    j block_1896
block_1895:
    addi r7 r0 1
    j block_1896
block_1896:
    bne r6 r0 block_1898
    j block_1897
block_1897:
    mv r6 r7
    j block_1899
block_1898:
    bne r7 r0 block_1901
    j block_1900
block_1900:
    addi r6 r0 1
    j block_1899
block_1901:
    mv r6 r0
    j block_1899
block_1899:
    bne r6 r0 block_1903
    j block_1902
block_1902:
    addi r6 r0 1
    j block_1875
block_1903:
    mv r6 r0
    j block_1875
block_1874:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_1905
block_1904:
    j block_1906
block_1905:
    fneg f4 f4
    j block_1906
block_1906:
    lw r7 r6 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_1908
block_1907:
    mv r7 r0
    j block_1909
block_1908:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_1911
block_1910:
    fmv f4 f5
    j block_1912
block_1911:
    fneg f4 f5
    j block_1912
block_1912:
    lw r7 r6 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1914
block_1913:
    mv r7 r0
    j block_1909
block_1914:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_1916
block_1915:
    fmv f4 f6
    j block_1917
block_1916:
    fneg f4 f6
    j block_1917
block_1917:
    lw r7 r6 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1919
block_1918:
    mv r7 r0
    j block_1909
block_1919:
    addi r7 r0 1
    j block_1909
block_1909:
    bne r7 r0 block_1921
    j block_1920
block_1920:
    lw r6 r6 24
    bne r6 r0 block_1923
    j block_1922
block_1922:
    addi r6 r0 1
    j block_1875
block_1923:
    mv r6 r0
    j block_1875
block_1921:
    lw r6 r6 24
    j block_1875
block_1875:
    sw r5 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r4 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    bne r6 r0 block_1925
    j block_1924
block_1924:
    lw r6 r2 8
    addi r7 r0 -1
    sw r5 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r4 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    beq r6 r7 block_1927
block_1926:
    sll r6 r6 2
    lw r6 r6 25048
    lw r7 r6 20
    lwcZ f4 r7 0
    fsub f4 f1 f4
    lw r7 r6 20
    lwcZ f5 r7 4
    fsub f5 f2 f5
    lw r7 r6 20
    lwcZ f6 r7 8
    fsub f6 f3 f6
    lw r7 r6 4
    addi r8 r0 1
    beq r7 r8 block_1929
block_1928:
    addi r8 r0 2
    beq r7 r8 block_1932
block_1931:
    fmul f7 f4 f4
    lw r7 r6 16
    lwcZ f8 r7 0
    fmul f7 f7 f8
    fmul f8 f5 f5
    lw r7 r6 16
    lwcZ f9 r7 4
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f8 f6 f6
    lw r7 r6 16
    lwcZ f9 r7 8
    fmul f8 f8 f9
    fadd f7 f7 f8
    lw r7 r6 12
    beq r7 r0 block_1934
block_1933:
    fmul f8 f5 f6
    lw r7 r6 36
    lwcZ f9 r7 0
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f6 f6 f4
    lw r7 r6 36
    lwcZ f8 r7 4
    fmul f6 f6 f8
    fadd f6 f7 f6
    fmul f4 f4 f5
    lw r7 r6 36
    lwcZ f5 r7 8
    fmul f4 f4 f5
    fadd f4 f6 f4
    j block_1935
block_1934:
    fmv f4 f7
    j block_1935
block_1935:
    lw r7 r6 4
    addi r8 r0 3
    beq r7 r8 block_1937
block_1936:
    j block_1938
block_1937:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_1938
block_1938:
    lw r6 r6 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1940
block_1939:
    mv r7 r0
    j block_1941
block_1940:
    addi r7 r0 1
    j block_1941
block_1941:
    bne r6 r0 block_1943
    j block_1942
block_1942:
    mv r6 r7
    j block_1944
block_1943:
    bne r7 r0 block_1946
    j block_1945
block_1945:
    addi r6 r0 1
    j block_1944
block_1946:
    mv r6 r0
    j block_1944
block_1944:
    bne r6 r0 block_1948
    j block_1947
block_1947:
    addi r6 r0 1
    j block_1930
block_1948:
    mv r6 r0
    j block_1930
block_1932:
    lw r7 r6 16
    lwcZ f7 r7 0
    fmul f4 f7 f4
    lwcZ f7 r7 4
    fmul f5 f7 f5
    fadd f4 f4 f5
    lwcZ f5 r7 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    lw r6 r6 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1950
block_1949:
    mv r7 r0
    j block_1951
block_1950:
    addi r7 r0 1
    j block_1951
block_1951:
    bne r6 r0 block_1953
    j block_1952
block_1952:
    mv r6 r7
    j block_1954
block_1953:
    bne r7 r0 block_1956
    j block_1955
block_1955:
    addi r6 r0 1
    j block_1954
block_1956:
    mv r6 r0
    j block_1954
block_1954:
    bne r6 r0 block_1958
    j block_1957
block_1957:
    addi r6 r0 1
    j block_1930
block_1958:
    mv r6 r0
    j block_1930
block_1929:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_1960
block_1959:
    j block_1961
block_1960:
    fneg f4 f4
    j block_1961
block_1961:
    lw r7 r6 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_1963
block_1962:
    mv r7 r0
    j block_1964
block_1963:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_1966
block_1965:
    fmv f4 f5
    j block_1967
block_1966:
    fneg f4 f5
    j block_1967
block_1967:
    lw r7 r6 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1969
block_1968:
    mv r7 r0
    j block_1964
block_1969:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_1971
block_1970:
    fmv f4 f6
    j block_1972
block_1971:
    fneg f4 f6
    j block_1972
block_1972:
    lw r7 r6 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1974
block_1973:
    mv r7 r0
    j block_1964
block_1974:
    addi r7 r0 1
    j block_1964
block_1964:
    bne r7 r0 block_1976
    j block_1975
block_1975:
    lw r6 r6 24
    bne r6 r0 block_1978
    j block_1977
block_1977:
    addi r6 r0 1
    j block_1930
block_1978:
    mv r6 r0
    j block_1930
block_1976:
    lw r6 r6 24
    j block_1930
block_1930:
    sw r5 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r4 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    bne r6 r0 block_1980
    j block_1979
block_1979:
    addi r6 r0 3
    sw r5 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r4 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    mv r1 r6
    fmv f0 f1
    fmv f1 f2
    fmv f2 f3
    sw r31 r29 36
    addi r29 r29 40
    jal check_all_inside.4238
    subi r29 r29 40
    lw r31 r29 36
    j block_1817
block_1980:
    mv r1 r0
    j block_1817
block_1927:
    addi r1 r0 1
    j block_1817
block_1925:
    mv r1 r0
    j block_1817
block_1872:
    addi r1 r0 1
    j block_1817
block_1870:
    mv r1 r0
    j block_1817
block_1816:
    addi r1 r0 1
    j block_1817
block_1817:
    bne r1 r0 block_1982
    j block_1981
block_1981:
    j block_1812
block_1982:
    lwcZ f0 r29 28
    swcZ f0 r0 25548
    lwcZ f0 r29 16
    swcZ f0 r0 25552
    lwcZ f0 r29 20
    swcZ f0 r0 25556
    lwcZ f0 r29 24
    swcZ f0 r0 25560
    lw r1 r29 12
    sw r1 r0 25564
    lw r1 r29 32
    sw r1 r0 25544
    j block_1812
block_1812:
    lw r1 r29 8
    addi r1 r1 1
    lw r2 r29 0
    lw r3 r29 4
    sw r31 r29 36
    addi r29 r29 40
    jal solve_each_element.4326
    subi r29 r29 40
    lw r31 r29 36
    jr r31
block_1809:
    sll r4 r4 2
    lw r4 r4 25048
    lw r4 r4 24
    bne r4 r0 block_1984
    j block_1983
block_1983:
    jr r31
block_1984:
    addi r1 r1 1
    sw r31 r29 36
    addi r29 r29 40
    jal solve_each_element.4326
    subi r29 r29 40
    lw r31 r29 36
    jr r31
block_1697:
    jr r31
solve_each_element_fast.4421:
block_2293:
    lw r4 r3 0
    sll r5 r1 2
    lwab r5 r2 r5
    addi r6 r0 -1
    beq r5 r6 block_2295
block_2294:
    sll r6 r5 2
    lw r6 r6 25048
    lw r7 r6 40
    lwcZ f0 r7 0
    lwcZ f1 r7 4
    lwcZ f2 r7 8
    lw r8 r3 4
    sll r9 r5 2
    lwab r8 r8 r9
    lw r9 r6 4
    addi r10 r0 1
    beq r9 r10 block_2297
block_2296:
    addi r10 r0 2
    beq r9 r10 block_2300
block_2299:
    lwcZ f3 r8 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2302
block_2301:
    lwcZ f4 r8 4
    fmul f0 f4 f0
    lwcZ f4 r8 8
    fmul f1 f4 f1
    fadd f0 f0 f1
    lwcZ f1 r8 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r7 12
    fmul f2 f0 f0
    fmul f1 f3 f1
    fsub f1 f2 f1
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_2304
block_2303:
    mv r7 r0
    j block_2305
block_2304:
    addi r7 r0 1
    j block_2305
block_2305:
    bne r7 r0 block_2307
    j block_2306
block_2306:
    mv r6 r0
    j block_2298
block_2307:
    lw r6 r6 24
    bne r6 r0 block_2309
    j block_2308
block_2308:
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fsub f0 f0 f1
    lwcZ f1 r8 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_2310
block_2309:
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r8 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_2310
block_2310:
    addi r6 r0 1
    j block_2298
block_2302:
    mv r6 r0
    j block_2298
block_2300:
    lwcZ f0 r8 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2312
block_2311:
    mv r6 r0
    j block_2313
block_2312:
    addi r6 r0 1
    j block_2313
block_2313:
    bne r6 r0 block_2315
    j block_2314
block_2314:
    mv r6 r0
    j block_2298
block_2315:
    lwcZ f0 r8 0
    lwcZ f1 r7 12
    fmul f0 f0 f1
    swcZ f0 r0 25540
    addi r6 r0 1
    j block_2298
block_2297:
    lw r7 r3 0
    lwcZ f3 r8 0
    fsub f3 f3 f0
    lwcZ f4 r8 4
    fmul f3 f3 f4
    lwcZ f4 r7 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2317
block_2316:
    j block_2318
block_2317:
    fneg f4 f4
    j block_2318
block_2318:
    lw r9 r6 16
    lwcZ f5 r9 4
    fclt f4 f5
    bc1t block_2320
block_2319:
    mv r9 r0
    j block_2321
block_2320:
    lwcZ f4 r7 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2323
block_2322:
    j block_2324
block_2323:
    fneg f4 f4
    j block_2324
block_2324:
    lw r9 r6 16
    lwcZ f5 r9 8
    fclt f4 f5
    bc1t block_2326
block_2325:
    mv r9 r0
    j block_2321
block_2326:
    lwcZ f4 r8 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2328
block_2327:
    mv r9 r0
    j block_2329
block_2328:
    addi r9 r0 1
    j block_2329
block_2329:
    bne r9 r0 block_2331
    j block_2330
block_2330:
    addi r9 r0 1
    j block_2321
block_2331:
    mv r9 r0
    j block_2321
block_2321:
    bne r9 r0 block_2333
    j block_2332
block_2332:
    lwcZ f3 r8 8
    fsub f3 f3 f1
    lwcZ f4 r8 12
    fmul f3 f3 f4
    lwcZ f4 r7 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2335
block_2334:
    j block_2336
block_2335:
    fneg f4 f4
    j block_2336
block_2336:
    lw r9 r6 16
    lwcZ f5 r9 0
    fclt f4 f5
    bc1t block_2338
block_2337:
    mv r9 r0
    j block_2339
block_2338:
    lwcZ f4 r7 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2341
block_2340:
    j block_2342
block_2341:
    fneg f4 f4
    j block_2342
block_2342:
    lw r9 r6 16
    lwcZ f5 r9 8
    fclt f4 f5
    bc1t block_2344
block_2343:
    mv r9 r0
    j block_2339
block_2344:
    lwcZ f4 r8 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2346
block_2345:
    mv r9 r0
    j block_2347
block_2346:
    addi r9 r0 1
    j block_2347
block_2347:
    bne r9 r0 block_2349
    j block_2348
block_2348:
    addi r9 r0 1
    j block_2339
block_2349:
    mv r9 r0
    j block_2339
block_2339:
    bne r9 r0 block_2351
    j block_2350
block_2350:
    lwcZ f3 r8 16
    fsub f2 f3 f2
    lwcZ f3 r8 20
    fmul f2 f2 f3
    lwcZ f3 r7 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_2353
block_2352:
    j block_2354
block_2353:
    fneg f0 f0
    j block_2354
block_2354:
    lw r9 r6 16
    lwcZ f3 r9 0
    fclt f0 f3
    bc1t block_2356
block_2355:
    mv r6 r0
    j block_2357
block_2356:
    lwcZ f0 r7 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2359
block_2358:
    j block_2360
block_2359:
    fneg f0 f0
    j block_2360
block_2360:
    lw r6 r6 16
    lwcZ f1 r6 4
    fclt f0 f1
    bc1t block_2362
block_2361:
    mv r6 r0
    j block_2357
block_2362:
    lwcZ f0 r8 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_2364
block_2363:
    mv r6 r0
    j block_2365
block_2364:
    addi r6 r0 1
    j block_2365
block_2365:
    bne r6 r0 block_2367
    j block_2366
block_2366:
    addi r6 r0 1
    j block_2357
block_2367:
    mv r6 r0
    j block_2357
block_2357:
    bne r6 r0 block_2369
    j block_2368
block_2368:
    mv r6 r0
    j block_2298
block_2369:
    swcZ f2 r0 25540
    addi r6 r0 3
    j block_2298
block_2351:
    swcZ f3 r0 25540
    addi r6 r0 2
    j block_2298
block_2333:
    swcZ f3 r0 25540
    addi r6 r0 1
    j block_2298
block_2298:
    beq r6 r0 block_2371
block_2370:
    lwcZ f0 r0 25540
    #0.0
    flui f1 0
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    fclt f1 f0
    bc1t block_2373
block_2372:
    j block_2374
block_2373:
    lwcZ f1 r0 25548
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    fclt f0 f1
    bc1t block_2376
block_2375:
    j block_2374
block_2376:
    #0.01
    flui f1 15395
    fori f1 f1 -10486
    fadd f0 f0 f1
    lwcZ f1 r4 0
    fmul f1 f1 f0
    lwcZ f2 r0 25648
    fadd f1 f1 f2
    lwcZ f2 r4 4
    fmul f2 f2 f0
    lwcZ f3 r0 25652
    fadd f2 f2 f3
    lwcZ f3 r4 8
    fmul f3 f3 f0
    lwcZ f4 r0 25656
    fadd f3 f3 f4
    lw r4 r2 0
    addi r7 r0 -1
    sw r6 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r5 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    beq r4 r7 block_2378
block_2377:
    sll r4 r4 2
    lw r4 r4 25048
    lw r7 r4 20
    lwcZ f4 r7 0
    fsub f4 f1 f4
    lw r7 r4 20
    lwcZ f5 r7 4
    fsub f5 f2 f5
    lw r7 r4 20
    lwcZ f6 r7 8
    fsub f6 f3 f6
    lw r7 r4 4
    addi r8 r0 1
    beq r7 r8 block_2381
block_2380:
    addi r8 r0 2
    beq r7 r8 block_2384
block_2383:
    fmul f7 f4 f4
    lw r7 r4 16
    lwcZ f8 r7 0
    fmul f7 f7 f8
    fmul f8 f5 f5
    lw r7 r4 16
    lwcZ f9 r7 4
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f8 f6 f6
    lw r7 r4 16
    lwcZ f9 r7 8
    fmul f8 f8 f9
    fadd f7 f7 f8
    lw r7 r4 12
    beq r7 r0 block_2386
block_2385:
    fmul f8 f5 f6
    lw r7 r4 36
    lwcZ f9 r7 0
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f6 f6 f4
    lw r7 r4 36
    lwcZ f8 r7 4
    fmul f6 f6 f8
    fadd f6 f7 f6
    fmul f4 f4 f5
    lw r7 r4 36
    lwcZ f5 r7 8
    fmul f4 f4 f5
    fadd f4 f6 f4
    j block_2387
block_2386:
    fmv f4 f7
    j block_2387
block_2387:
    lw r7 r4 4
    addi r8 r0 3
    beq r7 r8 block_2389
block_2388:
    j block_2390
block_2389:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_2390
block_2390:
    lw r4 r4 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2392
block_2391:
    mv r7 r0
    j block_2393
block_2392:
    addi r7 r0 1
    j block_2393
block_2393:
    bne r4 r0 block_2395
    j block_2394
block_2394:
    mv r4 r7
    j block_2396
block_2395:
    bne r7 r0 block_2398
    j block_2397
block_2397:
    addi r4 r0 1
    j block_2396
block_2398:
    mv r4 r0
    j block_2396
block_2396:
    bne r4 r0 block_2400
    j block_2399
block_2399:
    addi r4 r0 1
    j block_2382
block_2400:
    mv r4 r0
    j block_2382
block_2384:
    lw r7 r4 16
    lwcZ f7 r7 0
    fmul f4 f7 f4
    lwcZ f7 r7 4
    fmul f5 f7 f5
    fadd f4 f4 f5
    lwcZ f5 r7 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    lw r4 r4 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2402
block_2401:
    mv r7 r0
    j block_2403
block_2402:
    addi r7 r0 1
    j block_2403
block_2403:
    bne r4 r0 block_2405
    j block_2404
block_2404:
    mv r4 r7
    j block_2406
block_2405:
    bne r7 r0 block_2408
    j block_2407
block_2407:
    addi r4 r0 1
    j block_2406
block_2408:
    mv r4 r0
    j block_2406
block_2406:
    bne r4 r0 block_2410
    j block_2409
block_2409:
    addi r4 r0 1
    j block_2382
block_2410:
    mv r4 r0
    j block_2382
block_2381:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_2412
block_2411:
    j block_2413
block_2412:
    fneg f4 f4
    j block_2413
block_2413:
    lw r7 r4 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_2415
block_2414:
    mv r7 r0
    j block_2416
block_2415:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_2418
block_2417:
    fmv f4 f5
    j block_2419
block_2418:
    fneg f4 f5
    j block_2419
block_2419:
    lw r7 r4 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_2421
block_2420:
    mv r7 r0
    j block_2416
block_2421:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_2423
block_2422:
    fmv f4 f6
    j block_2424
block_2423:
    fneg f4 f6
    j block_2424
block_2424:
    lw r7 r4 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_2426
block_2425:
    mv r7 r0
    j block_2416
block_2426:
    addi r7 r0 1
    j block_2416
block_2416:
    bne r7 r0 block_2428
    j block_2427
block_2427:
    lw r4 r4 24
    bne r4 r0 block_2430
    j block_2429
block_2429:
    addi r4 r0 1
    j block_2382
block_2430:
    mv r4 r0
    j block_2382
block_2428:
    lw r4 r4 24
    j block_2382
block_2382:
    sw r6 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r5 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    bne r4 r0 block_2432
    j block_2431
block_2431:
    lw r4 r2 4
    addi r7 r0 -1
    sw r6 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r5 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    beq r4 r7 block_2434
block_2433:
    sll r4 r4 2
    lw r4 r4 25048
    lw r7 r4 20
    lwcZ f4 r7 0
    fsub f4 f1 f4
    lw r7 r4 20
    lwcZ f5 r7 4
    fsub f5 f2 f5
    lw r7 r4 20
    lwcZ f6 r7 8
    fsub f6 f3 f6
    lw r7 r4 4
    addi r8 r0 1
    beq r7 r8 block_2436
block_2435:
    addi r8 r0 2
    beq r7 r8 block_2439
block_2438:
    fmul f7 f4 f4
    lw r7 r4 16
    lwcZ f8 r7 0
    fmul f7 f7 f8
    fmul f8 f5 f5
    lw r7 r4 16
    lwcZ f9 r7 4
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f8 f6 f6
    lw r7 r4 16
    lwcZ f9 r7 8
    fmul f8 f8 f9
    fadd f7 f7 f8
    lw r7 r4 12
    beq r7 r0 block_2441
block_2440:
    fmul f8 f5 f6
    lw r7 r4 36
    lwcZ f9 r7 0
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f6 f6 f4
    lw r7 r4 36
    lwcZ f8 r7 4
    fmul f6 f6 f8
    fadd f6 f7 f6
    fmul f4 f4 f5
    lw r7 r4 36
    lwcZ f5 r7 8
    fmul f4 f4 f5
    fadd f4 f6 f4
    j block_2442
block_2441:
    fmv f4 f7
    j block_2442
block_2442:
    lw r7 r4 4
    addi r8 r0 3
    beq r7 r8 block_2444
block_2443:
    j block_2445
block_2444:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_2445
block_2445:
    lw r4 r4 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2447
block_2446:
    mv r7 r0
    j block_2448
block_2447:
    addi r7 r0 1
    j block_2448
block_2448:
    bne r4 r0 block_2450
    j block_2449
block_2449:
    mv r4 r7
    j block_2451
block_2450:
    bne r7 r0 block_2453
    j block_2452
block_2452:
    addi r4 r0 1
    j block_2451
block_2453:
    mv r4 r0
    j block_2451
block_2451:
    bne r4 r0 block_2455
    j block_2454
block_2454:
    addi r4 r0 1
    j block_2437
block_2455:
    mv r4 r0
    j block_2437
block_2439:
    lw r7 r4 16
    lwcZ f7 r7 0
    fmul f4 f7 f4
    lwcZ f7 r7 4
    fmul f5 f7 f5
    fadd f4 f4 f5
    lwcZ f5 r7 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    lw r4 r4 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2457
block_2456:
    mv r7 r0
    j block_2458
block_2457:
    addi r7 r0 1
    j block_2458
block_2458:
    bne r4 r0 block_2460
    j block_2459
block_2459:
    mv r4 r7
    j block_2461
block_2460:
    bne r7 r0 block_2463
    j block_2462
block_2462:
    addi r4 r0 1
    j block_2461
block_2463:
    mv r4 r0
    j block_2461
block_2461:
    bne r4 r0 block_2465
    j block_2464
block_2464:
    addi r4 r0 1
    j block_2437
block_2465:
    mv r4 r0
    j block_2437
block_2436:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_2467
block_2466:
    j block_2468
block_2467:
    fneg f4 f4
    j block_2468
block_2468:
    lw r7 r4 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_2470
block_2469:
    mv r7 r0
    j block_2471
block_2470:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_2473
block_2472:
    fmv f4 f5
    j block_2474
block_2473:
    fneg f4 f5
    j block_2474
block_2474:
    lw r7 r4 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_2476
block_2475:
    mv r7 r0
    j block_2471
block_2476:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_2478
block_2477:
    fmv f4 f6
    j block_2479
block_2478:
    fneg f4 f6
    j block_2479
block_2479:
    lw r7 r4 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_2481
block_2480:
    mv r7 r0
    j block_2471
block_2481:
    addi r7 r0 1
    j block_2471
block_2471:
    bne r7 r0 block_2483
    j block_2482
block_2482:
    lw r4 r4 24
    bne r4 r0 block_2485
    j block_2484
block_2484:
    addi r4 r0 1
    j block_2437
block_2485:
    mv r4 r0
    j block_2437
block_2483:
    lw r4 r4 24
    j block_2437
block_2437:
    sw r6 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r5 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    bne r4 r0 block_2487
    j block_2486
block_2486:
    lw r4 r2 8
    addi r7 r0 -1
    sw r6 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r5 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    beq r4 r7 block_2489
block_2488:
    sll r4 r4 2
    lw r4 r4 25048
    lw r7 r4 20
    lwcZ f4 r7 0
    fsub f4 f1 f4
    lw r7 r4 20
    lwcZ f5 r7 4
    fsub f5 f2 f5
    lw r7 r4 20
    lwcZ f6 r7 8
    fsub f6 f3 f6
    lw r7 r4 4
    addi r8 r0 1
    beq r7 r8 block_2491
block_2490:
    addi r8 r0 2
    beq r7 r8 block_2494
block_2493:
    fmul f7 f4 f4
    lw r7 r4 16
    lwcZ f8 r7 0
    fmul f7 f7 f8
    fmul f8 f5 f5
    lw r7 r4 16
    lwcZ f9 r7 4
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f8 f6 f6
    lw r7 r4 16
    lwcZ f9 r7 8
    fmul f8 f8 f9
    fadd f7 f7 f8
    lw r7 r4 12
    beq r7 r0 block_2496
block_2495:
    fmul f8 f5 f6
    lw r7 r4 36
    lwcZ f9 r7 0
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f6 f6 f4
    lw r7 r4 36
    lwcZ f8 r7 4
    fmul f6 f6 f8
    fadd f6 f7 f6
    fmul f4 f4 f5
    lw r7 r4 36
    lwcZ f5 r7 8
    fmul f4 f4 f5
    fadd f4 f6 f4
    j block_2497
block_2496:
    fmv f4 f7
    j block_2497
block_2497:
    lw r7 r4 4
    addi r8 r0 3
    beq r7 r8 block_2499
block_2498:
    j block_2500
block_2499:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_2500
block_2500:
    lw r4 r4 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2502
block_2501:
    mv r7 r0
    j block_2503
block_2502:
    addi r7 r0 1
    j block_2503
block_2503:
    bne r4 r0 block_2505
    j block_2504
block_2504:
    mv r4 r7
    j block_2506
block_2505:
    bne r7 r0 block_2508
    j block_2507
block_2507:
    addi r4 r0 1
    j block_2506
block_2508:
    mv r4 r0
    j block_2506
block_2506:
    bne r4 r0 block_2510
    j block_2509
block_2509:
    addi r4 r0 1
    j block_2492
block_2510:
    mv r4 r0
    j block_2492
block_2494:
    lw r7 r4 16
    lwcZ f7 r7 0
    fmul f4 f7 f4
    lwcZ f7 r7 4
    fmul f5 f7 f5
    fadd f4 f4 f5
    lwcZ f5 r7 8
    fmul f5 f5 f6
    fadd f4 f4 f5
    lw r4 r4 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2512
block_2511:
    mv r7 r0
    j block_2513
block_2512:
    addi r7 r0 1
    j block_2513
block_2513:
    bne r4 r0 block_2515
    j block_2514
block_2514:
    mv r4 r7
    j block_2516
block_2515:
    bne r7 r0 block_2518
    j block_2517
block_2517:
    addi r4 r0 1
    j block_2516
block_2518:
    mv r4 r0
    j block_2516
block_2516:
    bne r4 r0 block_2520
    j block_2519
block_2519:
    addi r4 r0 1
    j block_2492
block_2520:
    mv r4 r0
    j block_2492
block_2491:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_2522
block_2521:
    j block_2523
block_2522:
    fneg f4 f4
    j block_2523
block_2523:
    lw r7 r4 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_2525
block_2524:
    mv r7 r0
    j block_2526
block_2525:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_2528
block_2527:
    fmv f4 f5
    j block_2529
block_2528:
    fneg f4 f5
    j block_2529
block_2529:
    lw r7 r4 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_2531
block_2530:
    mv r7 r0
    j block_2526
block_2531:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_2533
block_2532:
    fmv f4 f6
    j block_2534
block_2533:
    fneg f4 f6
    j block_2534
block_2534:
    lw r7 r4 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_2536
block_2535:
    mv r7 r0
    j block_2526
block_2536:
    addi r7 r0 1
    j block_2526
block_2526:
    bne r7 r0 block_2538
    j block_2537
block_2537:
    lw r4 r4 24
    bne r4 r0 block_2540
    j block_2539
block_2539:
    addi r4 r0 1
    j block_2492
block_2540:
    mv r4 r0
    j block_2492
block_2538:
    lw r4 r4 24
    j block_2492
block_2492:
    sw r6 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r5 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    bne r4 r0 block_2542
    j block_2541
block_2541:
    addi r4 r0 3
    sw r6 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r5 r29 12
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    mv r1 r4
    fmv f0 f1
    fmv f1 f2
    fmv f2 f3
    sw r31 r29 36
    addi r29 r29 40
    jal check_all_inside.4238
    subi r29 r29 40
    lw r31 r29 36
    j block_2379
block_2542:
    mv r1 r0
    j block_2379
block_2489:
    addi r1 r0 1
    j block_2379
block_2487:
    mv r1 r0
    j block_2379
block_2434:
    addi r1 r0 1
    j block_2379
block_2432:
    mv r1 r0
    j block_2379
block_2378:
    addi r1 r0 1
    j block_2379
block_2379:
    bne r1 r0 block_2544
    j block_2543
block_2543:
    j block_2374
block_2544:
    lwcZ f0 r29 28
    swcZ f0 r0 25548
    lwcZ f0 r29 16
    swcZ f0 r0 25552
    lwcZ f0 r29 20
    swcZ f0 r0 25556
    lwcZ f0 r29 24
    swcZ f0 r0 25560
    lw r1 r29 12
    sw r1 r0 25564
    lw r1 r29 32
    sw r1 r0 25544
    j block_2374
block_2374:
    lw r1 r29 8
    addi r1 r1 1
    lw r2 r29 0
    lw r3 r29 4
    sw r31 r29 36
    addi r29 r29 40
    jal solve_each_element_fast.4421
    subi r29 r29 40
    lw r31 r29 36
    jr r31
block_2371:
    sll r4 r5 2
    lw r4 r4 25048
    lw r4 r4 24
    bne r4 r0 block_2546
    j block_2545
block_2545:
    jr r31
block_2546:
    addi r1 r1 1
    sw r31 r29 36
    addi r29 r29 40
    jal solve_each_element_fast.4421
    subi r29 r29 40
    lw r31 r29 36
    jr r31
block_2295:
    jr r31
solve_one_or_network.4375:
block_1985:
    sll r4 r1 2
    lwab r4 r2 r4
    addi r5 r0 -1
    beq r4 r5 block_1987
block_1986:
    sll r4 r4 2
    lw r4 r4 25332
    sw r2 r29 36
    sw r1 r29 32
    sw r3 r29 28
    mv r2 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element.4326
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 32
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1989
block_1988:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 12
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element.4326
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 12
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1991
block_1990:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 24
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element.4326
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 24
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1993
block_1992:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 4
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element.4326
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 4
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1995
block_1994:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 16
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element.4326
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 16
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1997
block_1996:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 8
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element.4326
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 8
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1999
block_1998:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 20
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element.4326
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 20
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_2001
block_2000:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 0
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element.4326
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 0
    addi r1 r1 1
    lw r2 r29 36
    lw r3 r29 28
    sw r31 r29 40
    addi r29 r29 44
    jal solve_one_or_network.4375
    subi r29 r29 44
    lw r31 r29 40
    jr r31
block_2001:
    jr r31
block_1999:
    jr r31
block_1997:
    jr r31
block_1995:
    jr r31
block_1993:
    jr r31
block_1991:
    jr r31
block_1989:
    jr r31
block_1987:
    jr r31
solve_one_or_network_fast.4471:
block_2547:
    sll r4 r1 2
    lwab r4 r2 r4
    addi r5 r0 -1
    beq r4 r5 block_2549
block_2548:
    sll r4 r4 2
    lw r4 r4 25332
    sw r2 r29 36
    sw r1 r29 32
    sw r3 r29 28
    mv r2 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element_fast.4421
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 32
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_2551
block_2550:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 12
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element_fast.4421
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 12
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_2553
block_2552:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 24
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element_fast.4421
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 24
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_2555
block_2554:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 4
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element_fast.4421
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 4
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_2557
block_2556:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 16
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element_fast.4421
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 16
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_2559
block_2558:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 8
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element_fast.4421
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 8
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_2561
block_2560:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 20
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element_fast.4421
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 20
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 36
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_2563
block_2562:
    sll r2 r2 2
    lw r2 r2 25332
    lw r4 r29 28
    sw r3 r29 36
    sw r4 r29 28
    sw r1 r29 0
    mv r3 r4
    mv r1 r0
    sw r31 r29 40
    addi r29 r29 44
    jal solve_each_element_fast.4421
    subi r29 r29 44
    lw r31 r29 40
    lw r1 r29 0
    addi r1 r1 1
    lw r2 r29 36
    lw r3 r29 28
    sw r31 r29 40
    addi r29 r29 44
    jal solve_one_or_network_fast.4471
    subi r29 r29 44
    lw r31 r29 40
    jr r31
block_2563:
    jr r31
block_2561:
    jr r31
block_2559:
    jr r31
block_2557:
    jr r31
block_2555:
    jr r31
block_2553:
    jr r31
block_2551:
    jr r31
block_2549:
    jr r31
trace_diffuse_ray.4917:
block_3355:
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 25548
    lw r2 r0 25536
    swcZ f0 r29 8
    sw r1 r29 4
    mv r3 r1
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal trace_or_matrix_fast.4483
    subi r29 r29 24
    lw r31 r29 20
    lwcZ f0 r0 25548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_3357
block_3356:
    mv r1 r0
    j block_3358
block_3357:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_3360
block_3359:
    mv r1 r0
    j block_3358
block_3360:
    addi r1 r0 1
    j block_3358
block_3358:
    bne r1 r0 block_3362
    j block_3361
block_3361:
    jr r31
block_3362:
    lw r1 r0 25564
    sll r1 r1 2
    lw r1 r1 25048
    lw r2 r29 4
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_3364
block_3363:
    addi r2 r0 2
    beq r3 r2 block_3367
block_3366:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r2 r1 20
    lwcZ f3 r2 8
    fsub f2 f2 f3
    lw r2 r1 16
    lwcZ f3 r2 0
    fmul f3 f0 f3
    lw r2 r1 16
    lwcZ f4 r2 4
    fmul f4 f1 f4
    lw r2 r1 16
    lwcZ f5 r2 8
    fmul f5 f2 f5
    lw r2 r1 12
    beq r2 r0 block_3369
block_3368:
    lw r2 r1 36
    lwcZ f6 r2 8
    fmul f6 f1 f6
    lw r2 r1 36
    lwcZ f7 r2 4
    fmul f7 f2 f7
    fadd f6 f6 f7
    #0.5
    flui f7 16128
    fmul f6 f6 f7
    fadd f3 f3 f6
    swcZ f3 r0 25568
    lw r2 r1 36
    lwcZ f3 r2 8
    fmul f3 f0 f3
    lw r2 r1 36
    lwcZ f6 r2 0
    fmul f2 f2 f6
    fadd f2 f3 f2
    #0.5
    flui f3 16128
    fmul f2 f2 f3
    fadd f2 f4 f2
    swcZ f2 r0 25572
    lw r2 r1 36
    lwcZ f2 r2 4
    fmul f0 f0 f2
    lw r2 r1 36
    lwcZ f2 r2 0
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.5
    flui f1 16128
    fmul f0 f0 f1
    fadd f0 f5 f0
    swcZ f0 r0 25576
    j block_3370
block_3369:
    swcZ f3 r0 25568
    swcZ f4 r0 25572
    swcZ f5 r0 25576
    j block_3370
block_3370:
    lw r2 r1 24
    lwcZ f0 r0 25568
    fmul f0 f0 f0
    lwcZ f1 r0 25572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3372
block_3371:
    bne r2 r0 block_3375
    j block_3374
block_3374:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_3373
block_3375:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_3373
block_3372:
    #1.0
    flui f0 16256
    j block_3373
block_3373:
    lwcZ f1 r0 25568
    fmul f1 f1 f0
    swcZ f1 r0 25568
    lwcZ f1 r0 25572
    fmul f1 f1 f0
    swcZ f1 r0 25572
    lwcZ f1 r0 25576
    fmul f0 f1 f0
    swcZ f0 r0 25576
    j block_3365
block_3367:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 25568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 25572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 25576
    j block_3365
block_3364:
    lw r3 r0 25544
    #0.0
    flui f0 0
    swcZ f0 r0 25568
    swcZ f0 r0 25572
    swcZ f0 r0 25576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3377
block_3376:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3380
block_3379:
    mv r2 r0
    j block_3381
block_3380:
    addi r2 r0 1
    j block_3381
block_3381:
    bne r2 r0 block_3383
    j block_3382
block_3382:
    #-1.0
    flui f0 -16512
    j block_3378
block_3383:
    #1.0
    flui f0 16256
    j block_3378
block_3377:
    #0.0
    flui f0 0
    j block_3378
block_3378:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 25568
    j block_3365
block_3365:
    lw r2 r1 0
    lw r3 r1 32
    lwcZ f0 r3 0
    swcZ f0 r0 25580
    lw r3 r1 32
    lwcZ f0 r3 4
    swcZ f0 r0 25584
    lw r3 r1 32
    lwcZ f0 r3 8
    swcZ f0 r0 25588
    addi r3 r0 1
    beq r2 r3 block_3385
block_3384:
    addi r3 r0 2
    beq r2 r3 block_3388
block_3387:
    addi r3 r0 3
    beq r2 r3 block_3390
block_3389:
    addi r3 r0 4
    beq r2 r3 block_3392
block_3391:
    j block_3386
block_3392:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lw r2 r1 16
    lwcZ f1 r2 0
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fmul f0 f0 f1
    lwcZ f1 r0 25560
    lw r2 r1 20
    lwcZ f2 r2 8
    fsub f1 f1 f2
    lw r2 r1 16
    lwcZ f2 r2 8
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    fmul f1 f1 f2
    fmul f2 f0 f0
    fmul f3 f1 f1
    fadd f2 f2 f3
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_3394
block_3393:
    fmv f3 f0
    j block_3395
block_3394:
    fneg f3 f0
    j block_3395
block_3395:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_3397
block_3396:
    finv_init f3 f0
    #2.0
    flui f4 16384
    fmul f0 f0 f3
    fsub f0 f4 f0
    fmul f0 f3 f0
    fmul f0 f1 f0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_3400
block_3399:
    j block_3401
block_3400:
    fneg f0 f0
    j block_3401
block_3401:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3403
block_3402:
    mv r2 r0
    j block_3404
block_3403:
    addi r2 r0 1
    j block_3404
block_3404:
    bne r2 r0 block_3406
    j block_3405
block_3405:
    fneg f0 f0
    j block_3407
block_3406:
    j block_3407
block_3407:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_3409
block_3408:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_3412
block_3411:
    #1.5707964
    flui f1 16329
    fori f1 f1 4059
    #1.0
    flui f3 16256
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fsub f0 f1 f0
    j block_3410
block_3412:
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.0
    flui f3 16256
    fsub f3 f0 f3
    #1.0
    flui f4 16256
    fadd f0 f0 f4
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fadd f0 f1 f0
    j block_3410
block_3409:
    fmul f1 f0 f0
    fmul f3 f1 f0
    fmul f4 f1 f3
    fmul f5 f1 f4
    fmul f6 f1 f5
    fmul f7 f1 f6
    fmul f1 f1 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f0 f0 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f0 f0 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f0 f0 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f0 f0 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f0 f0 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f1 f3 f1
    fadd f0 f0 f1
    j block_3410
block_3410:
    bne r2 r0 block_3414
    j block_3413
block_3413:
    fneg f0 f0
    j block_3415
block_3414:
    j block_3415
block_3415:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_3398
block_3397:
    #15.0
    flui f0 16752
    j block_3398
block_3398:
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_3417
block_3416:
    j block_3418
block_3417:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_3418
block_3418:
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f3 r2 4
    fsub f1 f1 f3
    lw r2 r1 16
    lwcZ f3 r2 4
    sqrt_init f4 f3
    fmul f3 f3 f4
    #1.5
    flui f5 16320
    #0.5
    flui f6 16128
    fmul f4 f6 f4
    fmul f4 f4 f3
    fsub f4 f5 f4
    fmul f3 f3 f4
    fmul f1 f1 f3
    #0.0
    flui f3 0
    fclt f2 f3
    bc1t block_3420
block_3419:
    fmv f3 f2
    j block_3421
block_3420:
    fneg f3 f2
    j block_3421
block_3421:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_3423
block_3422:
    finv_init f3 f2
    #2.0
    flui f4 16384
    fmul f2 f2 f3
    fsub f2 f4 f2
    fmul f2 f3 f2
    fmul f1 f1 f2
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_3426
block_3425:
    j block_3427
block_3426:
    fneg f1 f1
    j block_3427
block_3427:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_3429
block_3428:
    mv r2 r0
    j block_3430
block_3429:
    addi r2 r0 1
    j block_3430
block_3430:
    bne r2 r0 block_3432
    j block_3431
block_3431:
    fneg f1 f1
    j block_3433
block_3432:
    j block_3433
block_3433:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_3435
block_3434:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_3438
block_3437:
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #1.0
    flui f3 16256
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fsub f1 f2 f1
    j block_3436
block_3438:
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.0
    flui f3 16256
    fsub f3 f1 f3
    #1.0
    flui f4 16256
    fadd f1 f1 f4
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fadd f1 f2 f1
    j block_3436
block_3435:
    fmul f2 f1 f1
    fmul f3 f2 f1
    fmul f4 f2 f3
    fmul f5 f2 f4
    fmul f6 f2 f5
    fmul f7 f2 f6
    fmul f2 f2 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f1 f1 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f1 f1 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f1 f1 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f1 f1 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f1 f1 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f2 f3 f2
    fadd f1 f1 f2
    j block_3436
block_3436:
    bne r2 r0 block_3440
    j block_3439
block_3439:
    fneg f1 f1
    j block_3441
block_3440:
    j block_3441
block_3441:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_3424
block_3423:
    #15.0
    flui f1 16752
    j block_3424
block_3424:
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_3443
block_3442:
    j block_3444
block_3443:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_3444
block_3444:
    fsub f1 f1 f2
    #0.15
    flui f2 15897
    fori f2 f2 -26214
    #0.5
    flui f3 16128
    fsub f0 f3 f0
    fmul f0 f0 f0
    fsub f0 f2 f0
    #0.5
    flui f2 16128
    fsub f1 f2 f1
    fmul f1 f1 f1
    fsub f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_3446
block_3445:
    mv r2 r0
    j block_3447
block_3446:
    addi r2 r0 1
    j block_3447
block_3447:
    bne r2 r0 block_3449
    j block_3448
block_3448:
    j block_3450
block_3449:
    #0.0
    flui f0 0
    j block_3450
block_3450:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 25588
    j block_3386
block_3390:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25560
    lw r2 r1 20
    lwcZ f2 r2 8
    fsub f1 f1 f2
    fmul f0 f0 f0
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.1
    flui f1 15820
    fori f1 f1 -13107
    fmul f0 f0 f1
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_3452
block_3451:
    j block_3453
block_3452:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_3453
block_3453:
    fsub f0 f0 f1
    #3.1415927
    flui f1 16457
    fori f1 f1 4059
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f4 f4 f5
    fsub f0 f0 f4
    #0.0
    flui f4 0
    fclt f4 f0
    bc1t block_3455
block_3454:
    fneg f0 f0
    j block_3456
block_3455:
    j block_3456
block_3456:
    fclt f3 f0
    bc1t block_3458
block_3457:
    addi r2 r0 1
    j block_3459
block_3458:
    addi r2 r0 -1
    j block_3459
block_3459:
    fclt f3 f0
    bc1t block_3461
block_3460:
    j block_3462
block_3461:
    fsub f0 f0 f3
    j block_3462
block_3462:
    fclt f2 f0
    bc1t block_3464
block_3463:
    j block_3465
block_3464:
    sub r2 r0 r2
    j block_3465
block_3465:
    fclt f2 f0
    bc1t block_3467
block_3466:
    j block_3468
block_3467:
    fsub f0 f3 f0
    j block_3468
block_3468:
    fclt f0 f1
    bc1t block_3470
block_3469:
    fsub f0 f2 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_3471
block_3470:
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_3471
block_3471:
    addi r3 r0 -1
    beq r2 r3 block_3473
block_3472:
    j block_3474
block_3473:
    fneg f0 f0
    j block_3474
block_3474:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 25584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 25588
    j block_3386
block_3388:
    lwcZ f0 r0 25556
    #0.25
    flui f1 16000
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f5 f4 f5
    fsub f0 f0 f5
    #0.0
    flui f5 0
    fclt f5 f0
    bc1t block_3476
block_3475:
    fadd f0 f0 f4
    j block_3477
block_3476:
    j block_3477
block_3477:
    fclt f3 f0
    bc1t block_3479
block_3478:
    addi r2 r0 1
    j block_3480
block_3479:
    mv r2 r0
    j block_3480
block_3480:
    fclt f3 f0
    bc1t block_3482
block_3481:
    j block_3483
block_3482:
    fsub f0 f0 f3
    j block_3483
block_3483:
    fclt f2 f0
    bc1t block_3485
block_3484:
    j block_3486
block_3485:
    fsub f0 f3 f0
    j block_3486
block_3486:
    fclt f1 f0
    bc1t block_3488
block_3487:
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_3489
block_3488:
    fsub f0 f2 f0
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_3489
block_3489:
    bne r2 r0 block_3491
    j block_3490
block_3490:
    fneg f0 f0
    j block_3492
block_3491:
    j block_3492
block_3492:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 25580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 25584
    j block_3386
block_3385:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_3494
block_3493:
    fmv f1 f2
    j block_3495
block_3494:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_3495
block_3495:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_3497
block_3496:
    mv r2 r0
    j block_3498
block_3497:
    addi r2 r0 1
    j block_3498
block_3498:
    lwcZ f0 r0 25560
    lw r3 r1 20
    lwcZ f1 r3 8
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r3 f1
    itof f2 r3
    fclt f1 f2
    bc1t block_3500
block_3499:
    fmv f1 f2
    j block_3501
block_3500:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_3501
block_3501:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_3503
block_3502:
    mv r3 r0
    j block_3504
block_3503:
    addi r3 r0 1
    j block_3504
block_3504:
    bne r2 r0 block_3506
    j block_3505
block_3505:
    bne r3 r0 block_3509
    j block_3508
block_3508:
    #255.0
    flui f0 17279
    j block_3507
block_3509:
    #0.0
    flui f0 0
    j block_3507
block_3506:
    bne r3 r0 block_3511
    j block_3510
block_3510:
    #0.0
    flui f0 0
    j block_3507
block_3511:
    #255.0
    flui f0 17279
    j block_3507
block_3507:
    swcZ f0 r0 25584
    j block_3386
block_3386:
    lw r2 r0 25536
    lw r3 r2 0
    lw r4 r3 0
    addi r5 r0 -1
    sw r1 r29 16
    beq r4 r5 block_3513
block_3512:
    addi r5 r0 99
    sw r1 r29 16
    sw r3 r29 12
    sw r2 r29 0
    beq r4 r5 block_3516
block_3515:
    sll r5 r4 2
    lw r5 r5 25048
    lwcZ f0 r0 25552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 25992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_3519
block_3518:
    addi r7 r0 2
    beq r6 r7 block_3522
block_3521:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_3524
block_3523:
    lwcZ f4 r4 4
    fmul f4 f4 f0
    lwcZ f5 r4 8
    fmul f5 f5 f1
    fadd f4 f4 f5
    lwcZ f5 r4 12
    fmul f5 f5 f2
    fadd f4 f4 f5
    fmul f5 f0 f0
    lw r6 r5 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r5 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r5 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r5 12
    beq r6 r0 block_3526
block_3525:
    fmul f6 f1 f2
    lw r6 r5 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r5 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r5 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_3527
block_3526:
    fmv f0 f5
    j block_3527
block_3527:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_3529
block_3528:
    j block_3530
block_3529:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_3530
block_3530:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3532
block_3531:
    mv r6 r0
    j block_3533
block_3532:
    addi r6 r0 1
    j block_3533
block_3533:
    bne r6 r0 block_3535
    j block_3534
block_3534:
    mv r4 r0
    j block_3520
block_3535:
    lw r5 r5 24
    bne r5 r0 block_3537
    j block_3536
block_3536:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fsub f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_3538
block_3537:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fadd f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_3538
block_3538:
    addi r4 r0 1
    j block_3520
block_3524:
    mv r4 r0
    j block_3520
block_3522:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_3540
block_3539:
    mv r5 r0
    j block_3541
block_3540:
    addi r5 r0 1
    j block_3541
block_3541:
    bne r5 r0 block_3543
    j block_3542
block_3542:
    mv r4 r0
    j block_3520
block_3543:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_3520
block_3519:
    lw r6 r0 25988
    lwcZ f3 r4 0
    fsub f3 f3 f0
    lwcZ f4 r4 4
    fmul f3 f3 f4
    lwcZ f4 r6 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3545
block_3544:
    j block_3546
block_3545:
    fneg f4 f4
    j block_3546
block_3546:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_3548
block_3547:
    mv r7 r0
    j block_3549
block_3548:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3551
block_3550:
    j block_3552
block_3551:
    fneg f4 f4
    j block_3552
block_3552:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_3554
block_3553:
    mv r7 r0
    j block_3549
block_3554:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_3556
block_3555:
    mv r7 r0
    j block_3557
block_3556:
    addi r7 r0 1
    j block_3557
block_3557:
    bne r7 r0 block_3559
    j block_3558
block_3558:
    addi r7 r0 1
    j block_3549
block_3559:
    mv r7 r0
    j block_3549
block_3549:
    bne r7 r0 block_3561
    j block_3560
block_3560:
    lwcZ f3 r4 8
    fsub f3 f3 f1
    lwcZ f4 r4 12
    fmul f3 f3 f4
    lwcZ f4 r6 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3563
block_3562:
    j block_3564
block_3563:
    fneg f4 f4
    j block_3564
block_3564:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_3566
block_3565:
    mv r7 r0
    j block_3567
block_3566:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3569
block_3568:
    j block_3570
block_3569:
    fneg f4 f4
    j block_3570
block_3570:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_3572
block_3571:
    mv r7 r0
    j block_3567
block_3572:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_3574
block_3573:
    mv r7 r0
    j block_3575
block_3574:
    addi r7 r0 1
    j block_3575
block_3575:
    bne r7 r0 block_3577
    j block_3576
block_3576:
    addi r7 r0 1
    j block_3567
block_3577:
    mv r7 r0
    j block_3567
block_3567:
    bne r7 r0 block_3579
    j block_3578
block_3578:
    lwcZ f3 r4 16
    fsub f2 f3 f2
    lwcZ f3 r4 20
    fmul f2 f2 f3
    lwcZ f3 r6 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_3581
block_3580:
    j block_3582
block_3581:
    fneg f0 f0
    j block_3582
block_3582:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_3584
block_3583:
    mv r4 r0
    j block_3585
block_3584:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_3587
block_3586:
    j block_3588
block_3587:
    fneg f0 f0
    j block_3588
block_3588:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_3590
block_3589:
    mv r4 r0
    j block_3585
block_3590:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3592
block_3591:
    mv r4 r0
    j block_3593
block_3592:
    addi r4 r0 1
    j block_3593
block_3593:
    bne r4 r0 block_3595
    j block_3594
block_3594:
    addi r4 r0 1
    j block_3585
block_3595:
    mv r4 r0
    j block_3585
block_3585:
    bne r4 r0 block_3597
    j block_3596
block_3596:
    mv r4 r0
    j block_3520
block_3597:
    swcZ f2 r0 25540
    addi r4 r0 3
    j block_3520
block_3579:
    swcZ f3 r0 25540
    addi r4 r0 2
    j block_3520
block_3561:
    swcZ f3 r0 25540
    addi r4 r0 1
    j block_3520
block_3520:
    sw r1 r29 16
    sw r3 r29 12
    sw r2 r29 0
    beq r4 r0 block_3599
block_3598:
    lwcZ f0 r0 25540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    sw r1 r29 16
    sw r3 r29 12
    sw r2 r29 0
    fclt f0 f1
    bc1t block_3601
block_3600:
    mv r1 r0
    j block_3517
block_3601:
    lw r4 r3 4
    addi r5 r0 -1
    sw r1 r29 16
    sw r3 r29 12
    sw r2 r29 0
    beq r4 r5 block_3603
block_3602:
    sll r4 r4 2
    lw r4 r4 25332
    sw r1 r29 16
    sw r3 r29 12
    sw r2 r29 0
    mv r2 r4
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_3606
    j block_3605
block_3605:
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    sw r1 r29 12
    beq r2 r3 block_3608
block_3607:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 12
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_3610
    j block_3609
block_3609:
    addi r1 r0 3
    lw r2 r29 12
    sw r2 r29 12
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_one_or_group.4292
    subi r29 r29 24
    lw r31 r29 20
    j block_3604
block_3610:
    addi r1 r0 1
    j block_3604
block_3608:
    mv r1 r0
    j block_3604
block_3606:
    addi r1 r0 1
    j block_3604
block_3603:
    mv r1 r0
    j block_3604
block_3604:
    bne r1 r0 block_3612
    j block_3611
block_3611:
    mv r1 r0
    j block_3517
block_3612:
    addi r1 r0 1
    j block_3517
block_3599:
    mv r1 r0
    j block_3517
block_3516:
    addi r1 r0 1
    j block_3517
block_3517:
    bne r1 r0 block_3614
    j block_3613
block_3613:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 24
    lw r31 r29 20
    j block_3514
block_3614:
    lw r1 r29 12
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_3616
block_3615:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 12
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_3619
    j block_3618
block_3618:
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3621
block_3620:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 12
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_3623
    j block_3622
block_3622:
    addi r1 r0 3
    lw r2 r29 12
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_one_or_group.4292
    subi r29 r29 24
    lw r31 r29 20
    j block_3617
block_3623:
    addi r1 r0 1
    j block_3617
block_3621:
    mv r1 r0
    j block_3617
block_3619:
    addi r1 r0 1
    j block_3617
block_3616:
    mv r1 r0
    j block_3617
block_3617:
    bne r1 r0 block_3625
    j block_3624
block_3624:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 24
    lw r31 r29 20
    j block_3514
block_3625:
    addi r1 r0 1
    j block_3514
block_3513:
    mv r1 r0
    j block_3514
block_3514:
    bne r1 r0 block_3627
    j block_3626
block_3626:
    lwcZ f0 r0 25568
    lwcZ f1 r0 25312
    fmul f0 f0 f1
    lwcZ f1 r0 25572
    lwcZ f2 r0 25316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    lwcZ f2 r0 25320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3629
block_3628:
    mv r1 r0
    j block_3630
block_3629:
    addi r1 r0 1
    j block_3630
block_3630:
    bne r1 r0 block_3632
    j block_3631
block_3631:
    #0.0
    flui f0 0
    j block_3633
block_3632:
    j block_3633
block_3633:
    lwcZ f1 r29 8
    fmul f0 f1 f0
    lw r1 r29 16
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 25592
    lwcZ f2 r0 25580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25592
    lwcZ f1 r0 25596
    lwcZ f2 r0 25584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25596
    lwcZ f1 r0 25600
    lwcZ f2 r0 25588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 25600
    jr r31
block_3627:
    jr r31
trace_diffuse_rays.4959:
block_4443:
    lwcZ f0 r3 0
    swcZ f0 r0 25648
    lwcZ f0 r3 4
    swcZ f0 r0 25652
    lwcZ f0 r3 8
    swcZ f0 r0 25656
    lw r4 r0 25000
    subi r4 r4 1
    sw r3 r29 48
    sw r2 r29 36
    sw r1 r29 24
    mv r2 r4
    mv r1 r3
    sw r31 r29 52
    addi r29 r29 56
    jal setup_startp_constants.4131
    subi r29 r29 56
    lw r31 r29 52
    addi r1 r0 118
    blt r1 r0 block_4445
block_4444:
    lw r1 r29 24
    lw r2 r1 472
    lw r2 r2 0
    lwcZ f0 r2 0
    lw r3 r29 36
    lwcZ f1 r3 0
    fmul f0 f0 f1
    lwcZ f1 r2 4
    lwcZ f2 r3 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r2 8
    lwcZ f2 r3 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4447
block_4446:
    mv r2 r0
    j block_4448
block_4447:
    addi r2 r0 1
    j block_4448
block_4448:
    sw r3 r29 36
    sw r1 r29 24
    bne r2 r0 block_4450
    j block_4449
block_4449:
    lw r2 r1 472
    #0.006666667
    flui f1 15322
    fori f1 f1 29710
    fmul f0 f0 f1
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 25548
    lw r4 r0 25536
    sw r3 r29 36
    sw r1 r29 24
    sw r2 r29 20
    swcZ f0 r29 12
    mv r3 r2
    mv r1 r0
    mv r2 r4
    sw r31 r29 52
    addi r29 r29 56
    jal trace_or_matrix_fast.4483
    subi r29 r29 56
    lw r31 r29 52
    lwcZ f0 r0 25548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_4453
block_4452:
    mv r1 r0
    j block_4454
block_4453:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_4456
block_4455:
    mv r1 r0
    j block_4454
block_4456:
    addi r1 r0 1
    j block_4454
block_4454:
    bne r1 r0 block_4458
    j block_4457
block_4457:
    j block_4451
block_4458:
    lw r1 r0 25564
    sll r1 r1 2
    lw r1 r1 25048
    lw r2 r29 20
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_4460
block_4459:
    addi r2 r0 2
    beq r3 r2 block_4463
block_4462:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r2 r1 20
    lwcZ f3 r2 8
    fsub f2 f2 f3
    lw r2 r1 16
    lwcZ f3 r2 0
    fmul f3 f0 f3
    lw r2 r1 16
    lwcZ f4 r2 4
    fmul f4 f1 f4
    lw r2 r1 16
    lwcZ f5 r2 8
    fmul f5 f2 f5
    lw r2 r1 12
    beq r2 r0 block_4465
block_4464:
    lw r2 r1 36
    lwcZ f6 r2 8
    fmul f6 f1 f6
    lw r2 r1 36
    lwcZ f7 r2 4
    fmul f7 f2 f7
    fadd f6 f6 f7
    #0.5
    flui f7 16128
    fmul f6 f6 f7
    fadd f3 f3 f6
    swcZ f3 r0 25568
    lw r2 r1 36
    lwcZ f3 r2 8
    fmul f3 f0 f3
    lw r2 r1 36
    lwcZ f6 r2 0
    fmul f2 f2 f6
    fadd f2 f3 f2
    #0.5
    flui f3 16128
    fmul f2 f2 f3
    fadd f2 f4 f2
    swcZ f2 r0 25572
    lw r2 r1 36
    lwcZ f2 r2 4
    fmul f0 f0 f2
    lw r2 r1 36
    lwcZ f2 r2 0
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.5
    flui f1 16128
    fmul f0 f0 f1
    fadd f0 f5 f0
    swcZ f0 r0 25576
    j block_4466
block_4465:
    swcZ f3 r0 25568
    swcZ f4 r0 25572
    swcZ f5 r0 25576
    j block_4466
block_4466:
    lw r2 r1 24
    lwcZ f0 r0 25568
    fmul f0 f0 f0
    lwcZ f1 r0 25572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4468
block_4467:
    bne r2 r0 block_4471
    j block_4470
block_4470:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4469
block_4471:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4469
block_4468:
    #1.0
    flui f0 16256
    j block_4469
block_4469:
    lwcZ f1 r0 25568
    fmul f1 f1 f0
    swcZ f1 r0 25568
    lwcZ f1 r0 25572
    fmul f1 f1 f0
    swcZ f1 r0 25572
    lwcZ f1 r0 25576
    fmul f0 f1 f0
    swcZ f0 r0 25576
    j block_4461
block_4463:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 25568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 25572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 25576
    j block_4461
block_4460:
    lw r3 r0 25544
    #0.0
    flui f0 0
    swcZ f0 r0 25568
    swcZ f0 r0 25572
    swcZ f0 r0 25576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4473
block_4472:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4476
block_4475:
    mv r2 r0
    j block_4477
block_4476:
    addi r2 r0 1
    j block_4477
block_4477:
    bne r2 r0 block_4479
    j block_4478
block_4478:
    #-1.0
    flui f0 -16512
    j block_4474
block_4479:
    #1.0
    flui f0 16256
    j block_4474
block_4473:
    #0.0
    flui f0 0
    j block_4474
block_4474:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 25568
    j block_4461
block_4461:
    lw r2 r1 0
    lw r3 r1 32
    lwcZ f0 r3 0
    swcZ f0 r0 25580
    lw r3 r1 32
    lwcZ f0 r3 4
    swcZ f0 r0 25584
    lw r3 r1 32
    lwcZ f0 r3 8
    swcZ f0 r0 25588
    addi r3 r0 1
    beq r2 r3 block_4481
block_4480:
    addi r3 r0 2
    beq r2 r3 block_4484
block_4483:
    addi r3 r0 3
    beq r2 r3 block_4486
block_4485:
    addi r3 r0 4
    beq r2 r3 block_4488
block_4487:
    j block_4482
block_4488:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lw r2 r1 16
    lwcZ f1 r2 0
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fmul f0 f0 f1
    lwcZ f1 r0 25560
    lw r2 r1 20
    lwcZ f2 r2 8
    fsub f1 f1 f2
    lw r2 r1 16
    lwcZ f2 r2 8
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    fmul f1 f1 f2
    fmul f2 f0 f0
    fmul f3 f1 f1
    fadd f2 f2 f3
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_4490
block_4489:
    fmv f3 f0
    j block_4491
block_4490:
    fneg f3 f0
    j block_4491
block_4491:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_4493
block_4492:
    finv_init f3 f0
    #2.0
    flui f4 16384
    fmul f0 f0 f3
    fsub f0 f4 f0
    fmul f0 f3 f0
    fmul f0 f1 f0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4496
block_4495:
    j block_4497
block_4496:
    fneg f0 f0
    j block_4497
block_4497:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4499
block_4498:
    mv r2 r0
    j block_4500
block_4499:
    addi r2 r0 1
    j block_4500
block_4500:
    bne r2 r0 block_4502
    j block_4501
block_4501:
    fneg f0 f0
    j block_4503
block_4502:
    j block_4503
block_4503:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_4505
block_4504:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_4508
block_4507:
    #1.5707964
    flui f1 16329
    fori f1 f1 4059
    #1.0
    flui f3 16256
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fsub f0 f1 f0
    j block_4506
block_4508:
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.0
    flui f3 16256
    fsub f3 f0 f3
    #1.0
    flui f4 16256
    fadd f0 f0 f4
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fadd f0 f1 f0
    j block_4506
block_4505:
    fmul f1 f0 f0
    fmul f3 f1 f0
    fmul f4 f1 f3
    fmul f5 f1 f4
    fmul f6 f1 f5
    fmul f7 f1 f6
    fmul f1 f1 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f0 f0 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f0 f0 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f0 f0 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f0 f0 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f0 f0 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f1 f3 f1
    fadd f0 f0 f1
    j block_4506
block_4506:
    bne r2 r0 block_4510
    j block_4509
block_4509:
    fneg f0 f0
    j block_4511
block_4510:
    j block_4511
block_4511:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_4494
block_4493:
    #15.0
    flui f0 16752
    j block_4494
block_4494:
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_4513
block_4512:
    j block_4514
block_4513:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_4514
block_4514:
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f3 r2 4
    fsub f1 f1 f3
    lw r2 r1 16
    lwcZ f3 r2 4
    sqrt_init f4 f3
    fmul f3 f3 f4
    #1.5
    flui f5 16320
    #0.5
    flui f6 16128
    fmul f4 f6 f4
    fmul f4 f4 f3
    fsub f4 f5 f4
    fmul f3 f3 f4
    fmul f1 f1 f3
    #0.0
    flui f3 0
    fclt f2 f3
    bc1t block_4516
block_4515:
    fmv f3 f2
    j block_4517
block_4516:
    fneg f3 f2
    j block_4517
block_4517:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_4519
block_4518:
    finv_init f3 f2
    #2.0
    flui f4 16384
    fmul f2 f2 f3
    fsub f2 f4 f2
    fmul f2 f3 f2
    fmul f1 f1 f2
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_4522
block_4521:
    j block_4523
block_4522:
    fneg f1 f1
    j block_4523
block_4523:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_4525
block_4524:
    mv r2 r0
    j block_4526
block_4525:
    addi r2 r0 1
    j block_4526
block_4526:
    bne r2 r0 block_4528
    j block_4527
block_4527:
    fneg f1 f1
    j block_4529
block_4528:
    j block_4529
block_4529:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_4531
block_4530:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_4534
block_4533:
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #1.0
    flui f3 16256
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fsub f1 f2 f1
    j block_4532
block_4534:
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.0
    flui f3 16256
    fsub f3 f1 f3
    #1.0
    flui f4 16256
    fadd f1 f1 f4
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fadd f1 f2 f1
    j block_4532
block_4531:
    fmul f2 f1 f1
    fmul f3 f2 f1
    fmul f4 f2 f3
    fmul f5 f2 f4
    fmul f6 f2 f5
    fmul f7 f2 f6
    fmul f2 f2 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f1 f1 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f1 f1 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f1 f1 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f1 f1 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f1 f1 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f2 f3 f2
    fadd f1 f1 f2
    j block_4532
block_4532:
    bne r2 r0 block_4536
    j block_4535
block_4535:
    fneg f1 f1
    j block_4537
block_4536:
    j block_4537
block_4537:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_4520
block_4519:
    #15.0
    flui f1 16752
    j block_4520
block_4520:
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_4539
block_4538:
    j block_4540
block_4539:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_4540
block_4540:
    fsub f1 f1 f2
    #0.15
    flui f2 15897
    fori f2 f2 -26214
    #0.5
    flui f3 16128
    fsub f0 f3 f0
    fmul f0 f0 f0
    fsub f0 f2 f0
    #0.5
    flui f2 16128
    fsub f1 f2 f1
    fmul f1 f1 f1
    fsub f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4542
block_4541:
    mv r2 r0
    j block_4543
block_4542:
    addi r2 r0 1
    j block_4543
block_4543:
    bne r2 r0 block_4545
    j block_4544
block_4544:
    j block_4546
block_4545:
    #0.0
    flui f0 0
    j block_4546
block_4546:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 25588
    j block_4482
block_4486:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25560
    lw r2 r1 20
    lwcZ f2 r2 8
    fsub f1 f1 f2
    fmul f0 f0 f0
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.1
    flui f1 15820
    fori f1 f1 -13107
    fmul f0 f0 f1
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_4548
block_4547:
    j block_4549
block_4548:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_4549
block_4549:
    fsub f0 f0 f1
    #3.1415927
    flui f1 16457
    fori f1 f1 4059
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f4 f4 f5
    fsub f0 f0 f4
    #0.0
    flui f4 0
    fclt f4 f0
    bc1t block_4551
block_4550:
    fneg f0 f0
    j block_4552
block_4551:
    j block_4552
block_4552:
    fclt f3 f0
    bc1t block_4554
block_4553:
    addi r2 r0 1
    j block_4555
block_4554:
    addi r2 r0 -1
    j block_4555
block_4555:
    fclt f3 f0
    bc1t block_4557
block_4556:
    j block_4558
block_4557:
    fsub f0 f0 f3
    j block_4558
block_4558:
    fclt f2 f0
    bc1t block_4560
block_4559:
    j block_4561
block_4560:
    sub r2 r0 r2
    j block_4561
block_4561:
    fclt f2 f0
    bc1t block_4563
block_4562:
    j block_4564
block_4563:
    fsub f0 f3 f0
    j block_4564
block_4564:
    fclt f0 f1
    bc1t block_4566
block_4565:
    fsub f0 f2 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_4567
block_4566:
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_4567
block_4567:
    addi r3 r0 -1
    beq r2 r3 block_4569
block_4568:
    j block_4570
block_4569:
    fneg f0 f0
    j block_4570
block_4570:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 25584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 25588
    j block_4482
block_4484:
    lwcZ f0 r0 25556
    #0.25
    flui f1 16000
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f5 f4 f5
    fsub f0 f0 f5
    #0.0
    flui f5 0
    fclt f5 f0
    bc1t block_4572
block_4571:
    fadd f0 f0 f4
    j block_4573
block_4572:
    j block_4573
block_4573:
    fclt f3 f0
    bc1t block_4575
block_4574:
    addi r2 r0 1
    j block_4576
block_4575:
    mv r2 r0
    j block_4576
block_4576:
    fclt f3 f0
    bc1t block_4578
block_4577:
    j block_4579
block_4578:
    fsub f0 f0 f3
    j block_4579
block_4579:
    fclt f2 f0
    bc1t block_4581
block_4580:
    j block_4582
block_4581:
    fsub f0 f3 f0
    j block_4582
block_4582:
    fclt f1 f0
    bc1t block_4584
block_4583:
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_4585
block_4584:
    fsub f0 f2 f0
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_4585
block_4585:
    bne r2 r0 block_4587
    j block_4586
block_4586:
    fneg f0 f0
    j block_4588
block_4587:
    j block_4588
block_4588:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 25580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 25584
    j block_4482
block_4481:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_4590
block_4589:
    fmv f1 f2
    j block_4591
block_4590:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4591
block_4591:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4593
block_4592:
    mv r2 r0
    j block_4594
block_4593:
    addi r2 r0 1
    j block_4594
block_4594:
    lwcZ f0 r0 25560
    lw r3 r1 20
    lwcZ f1 r3 8
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r3 f1
    itof f2 r3
    fclt f1 f2
    bc1t block_4596
block_4595:
    fmv f1 f2
    j block_4597
block_4596:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4597
block_4597:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4599
block_4598:
    mv r3 r0
    j block_4600
block_4599:
    addi r3 r0 1
    j block_4600
block_4600:
    bne r2 r0 block_4602
    j block_4601
block_4601:
    bne r3 r0 block_4605
    j block_4604
block_4604:
    #255.0
    flui f0 17279
    j block_4603
block_4605:
    #0.0
    flui f0 0
    j block_4603
block_4602:
    bne r3 r0 block_4607
    j block_4606
block_4606:
    #0.0
    flui f0 0
    j block_4603
block_4607:
    #255.0
    flui f0 17279
    j block_4603
block_4603:
    swcZ f0 r0 25584
    j block_4482
block_4482:
    lw r2 r0 25536
    lw r3 r2 0
    lw r4 r3 0
    addi r5 r0 -1
    sw r1 r29 44
    beq r4 r5 block_4609
block_4608:
    addi r5 r0 99
    sw r1 r29 44
    sw r3 r29 32
    sw r2 r29 4
    beq r4 r5 block_4612
block_4611:
    sll r5 r4 2
    lw r5 r5 25048
    lwcZ f0 r0 25552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 25992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_4615
block_4614:
    addi r7 r0 2
    beq r6 r7 block_4618
block_4617:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_4620
block_4619:
    lwcZ f4 r4 4
    fmul f4 f4 f0
    lwcZ f5 r4 8
    fmul f5 f5 f1
    fadd f4 f4 f5
    lwcZ f5 r4 12
    fmul f5 f5 f2
    fadd f4 f4 f5
    fmul f5 f0 f0
    lw r6 r5 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r5 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r5 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r5 12
    beq r6 r0 block_4622
block_4621:
    fmul f6 f1 f2
    lw r6 r5 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r5 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r5 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_4623
block_4622:
    fmv f0 f5
    j block_4623
block_4623:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_4625
block_4624:
    j block_4626
block_4625:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_4626
block_4626:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4628
block_4627:
    mv r6 r0
    j block_4629
block_4628:
    addi r6 r0 1
    j block_4629
block_4629:
    bne r6 r0 block_4631
    j block_4630
block_4630:
    mv r4 r0
    j block_4616
block_4631:
    lw r5 r5 24
    bne r5 r0 block_4633
    j block_4632
block_4632:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fsub f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_4634
block_4633:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fadd f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_4634
block_4634:
    addi r4 r0 1
    j block_4616
block_4620:
    mv r4 r0
    j block_4616
block_4618:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_4636
block_4635:
    mv r5 r0
    j block_4637
block_4636:
    addi r5 r0 1
    j block_4637
block_4637:
    bne r5 r0 block_4639
    j block_4638
block_4638:
    mv r4 r0
    j block_4616
block_4639:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_4616
block_4615:
    lw r6 r0 25988
    lwcZ f3 r4 0
    fsub f3 f3 f0
    lwcZ f4 r4 4
    fmul f3 f3 f4
    lwcZ f4 r6 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4641
block_4640:
    j block_4642
block_4641:
    fneg f4 f4
    j block_4642
block_4642:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_4644
block_4643:
    mv r7 r0
    j block_4645
block_4644:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4647
block_4646:
    j block_4648
block_4647:
    fneg f4 f4
    j block_4648
block_4648:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4650
block_4649:
    mv r7 r0
    j block_4645
block_4650:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4652
block_4651:
    mv r7 r0
    j block_4653
block_4652:
    addi r7 r0 1
    j block_4653
block_4653:
    bne r7 r0 block_4655
    j block_4654
block_4654:
    addi r7 r0 1
    j block_4645
block_4655:
    mv r7 r0
    j block_4645
block_4645:
    bne r7 r0 block_4657
    j block_4656
block_4656:
    lwcZ f3 r4 8
    fsub f3 f3 f1
    lwcZ f4 r4 12
    fmul f3 f3 f4
    lwcZ f4 r6 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4659
block_4658:
    j block_4660
block_4659:
    fneg f4 f4
    j block_4660
block_4660:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_4662
block_4661:
    mv r7 r0
    j block_4663
block_4662:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4665
block_4664:
    j block_4666
block_4665:
    fneg f4 f4
    j block_4666
block_4666:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4668
block_4667:
    mv r7 r0
    j block_4663
block_4668:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4670
block_4669:
    mv r7 r0
    j block_4671
block_4670:
    addi r7 r0 1
    j block_4671
block_4671:
    bne r7 r0 block_4673
    j block_4672
block_4672:
    addi r7 r0 1
    j block_4663
block_4673:
    mv r7 r0
    j block_4663
block_4663:
    bne r7 r0 block_4675
    j block_4674
block_4674:
    lwcZ f3 r4 16
    fsub f2 f3 f2
    lwcZ f3 r4 20
    fmul f2 f2 f3
    lwcZ f3 r6 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_4677
block_4676:
    j block_4678
block_4677:
    fneg f0 f0
    j block_4678
block_4678:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_4680
block_4679:
    mv r4 r0
    j block_4681
block_4680:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4683
block_4682:
    j block_4684
block_4683:
    fneg f0 f0
    j block_4684
block_4684:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_4686
block_4685:
    mv r4 r0
    j block_4681
block_4686:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4688
block_4687:
    mv r4 r0
    j block_4689
block_4688:
    addi r4 r0 1
    j block_4689
block_4689:
    bne r4 r0 block_4691
    j block_4690
block_4690:
    addi r4 r0 1
    j block_4681
block_4691:
    mv r4 r0
    j block_4681
block_4681:
    bne r4 r0 block_4693
    j block_4692
block_4692:
    mv r4 r0
    j block_4616
block_4693:
    swcZ f2 r0 25540
    addi r4 r0 3
    j block_4616
block_4675:
    swcZ f3 r0 25540
    addi r4 r0 2
    j block_4616
block_4657:
    swcZ f3 r0 25540
    addi r4 r0 1
    j block_4616
block_4616:
    sw r1 r29 44
    sw r3 r29 32
    sw r2 r29 4
    beq r4 r0 block_4695
block_4694:
    lwcZ f0 r0 25540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    sw r1 r29 44
    sw r3 r29 32
    sw r2 r29 4
    fclt f0 f1
    bc1t block_4697
block_4696:
    mv r1 r0
    j block_4613
block_4697:
    addi r4 r0 1
    sw r1 r29 44
    sw r3 r29 32
    sw r2 r29 4
    mv r2 r3
    mv r1 r4
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_4699
    j block_4698
block_4698:
    mv r1 r0
    j block_4613
block_4699:
    addi r1 r0 1
    j block_4613
block_4695:
    mv r1 r0
    j block_4613
block_4612:
    addi r1 r0 1
    j block_4613
block_4613:
    bne r1 r0 block_4701
    j block_4700
block_4700:
    addi r1 r0 1
    lw r2 r29 4
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_4610
block_4701:
    addi r1 r0 1
    lw r2 r29 32
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_4703
    j block_4702
block_4702:
    addi r1 r0 1
    lw r2 r29 4
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_4610
block_4703:
    addi r1 r0 1
    j block_4610
block_4609:
    mv r1 r0
    j block_4610
block_4610:
    bne r1 r0 block_4705
    j block_4704
block_4704:
    lwcZ f0 r0 25568
    lwcZ f1 r0 25312
    fmul f0 f0 f1
    lwcZ f1 r0 25572
    lwcZ f2 r0 25316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    lwcZ f2 r0 25320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4707
block_4706:
    mv r1 r0
    j block_4708
block_4707:
    addi r1 r0 1
    j block_4708
block_4708:
    bne r1 r0 block_4710
    j block_4709
block_4709:
    #0.0
    flui f0 0
    j block_4711
block_4710:
    j block_4711
block_4711:
    lwcZ f1 r29 12
    fmul f0 f1 f0
    lw r1 r29 44
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 25592
    lwcZ f2 r0 25580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25592
    lwcZ f1 r0 25596
    lwcZ f2 r0 25584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25596
    lwcZ f1 r0 25600
    lwcZ f2 r0 25588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 25600
    j block_4451
block_4705:
    j block_4451
block_4450:
    lw r2 r1 476
    #-0.006666667
    flui f1 -17446
    fori f1 f1 29710
    fmul f0 f0 f1
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 25548
    lw r4 r0 25536
    sw r3 r29 36
    sw r1 r29 24
    sw r2 r29 16
    swcZ f0 r29 8
    mv r3 r2
    mv r1 r0
    mv r2 r4
    sw r31 r29 52
    addi r29 r29 56
    jal trace_or_matrix_fast.4483
    subi r29 r29 56
    lw r31 r29 52
    lwcZ f0 r0 25548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_4713
block_4712:
    mv r1 r0
    j block_4714
block_4713:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_4716
block_4715:
    mv r1 r0
    j block_4714
block_4716:
    addi r1 r0 1
    j block_4714
block_4714:
    bne r1 r0 block_4718
    j block_4717
block_4717:
    j block_4451
block_4718:
    lw r1 r0 25564
    sll r1 r1 2
    lw r1 r1 25048
    lw r2 r29 16
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_4720
block_4719:
    addi r2 r0 2
    beq r3 r2 block_4723
block_4722:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r2 r1 20
    lwcZ f3 r2 8
    fsub f2 f2 f3
    lw r2 r1 16
    lwcZ f3 r2 0
    fmul f3 f0 f3
    lw r2 r1 16
    lwcZ f4 r2 4
    fmul f4 f1 f4
    lw r2 r1 16
    lwcZ f5 r2 8
    fmul f5 f2 f5
    lw r2 r1 12
    beq r2 r0 block_4725
block_4724:
    lw r2 r1 36
    lwcZ f6 r2 8
    fmul f6 f1 f6
    lw r2 r1 36
    lwcZ f7 r2 4
    fmul f7 f2 f7
    fadd f6 f6 f7
    #0.5
    flui f7 16128
    fmul f6 f6 f7
    fadd f3 f3 f6
    swcZ f3 r0 25568
    lw r2 r1 36
    lwcZ f3 r2 8
    fmul f3 f0 f3
    lw r2 r1 36
    lwcZ f6 r2 0
    fmul f2 f2 f6
    fadd f2 f3 f2
    #0.5
    flui f3 16128
    fmul f2 f2 f3
    fadd f2 f4 f2
    swcZ f2 r0 25572
    lw r2 r1 36
    lwcZ f2 r2 4
    fmul f0 f0 f2
    lw r2 r1 36
    lwcZ f2 r2 0
    fmul f1 f1 f2
    fadd f0 f0 f1
    #0.5
    flui f1 16128
    fmul f0 f0 f1
    fadd f0 f5 f0
    swcZ f0 r0 25576
    j block_4726
block_4725:
    swcZ f3 r0 25568
    swcZ f4 r0 25572
    swcZ f5 r0 25576
    j block_4726
block_4726:
    lw r2 r1 24
    lwcZ f0 r0 25568
    fmul f0 f0 f0
    lwcZ f1 r0 25572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4728
block_4727:
    bne r2 r0 block_4731
    j block_4730
block_4730:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4729
block_4731:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4729
block_4728:
    #1.0
    flui f0 16256
    j block_4729
block_4729:
    lwcZ f1 r0 25568
    fmul f1 f1 f0
    swcZ f1 r0 25568
    lwcZ f1 r0 25572
    fmul f1 f1 f0
    swcZ f1 r0 25572
    lwcZ f1 r0 25576
    fmul f0 f1 f0
    swcZ f0 r0 25576
    j block_4721
block_4723:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 25568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 25572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 25576
    j block_4721
block_4720:
    lw r3 r0 25544
    #0.0
    flui f0 0
    swcZ f0 r0 25568
    swcZ f0 r0 25572
    swcZ f0 r0 25576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4733
block_4732:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4736
block_4735:
    mv r2 r0
    j block_4737
block_4736:
    addi r2 r0 1
    j block_4737
block_4737:
    bne r2 r0 block_4739
    j block_4738
block_4738:
    #-1.0
    flui f0 -16512
    j block_4734
block_4739:
    #1.0
    flui f0 16256
    j block_4734
block_4733:
    #0.0
    flui f0 0
    j block_4734
block_4734:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 25568
    j block_4721
block_4721:
    lw r2 r1 0
    lw r3 r1 32
    lwcZ f0 r3 0
    swcZ f0 r0 25580
    lw r3 r1 32
    lwcZ f0 r3 4
    swcZ f0 r0 25584
    lw r3 r1 32
    lwcZ f0 r3 8
    swcZ f0 r0 25588
    addi r3 r0 1
    beq r2 r3 block_4741
block_4740:
    addi r3 r0 2
    beq r2 r3 block_4744
block_4743:
    addi r3 r0 3
    beq r2 r3 block_4746
block_4745:
    addi r3 r0 4
    beq r2 r3 block_4748
block_4747:
    j block_4742
block_4748:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lw r2 r1 16
    lwcZ f1 r2 0
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fmul f0 f0 f1
    lwcZ f1 r0 25560
    lw r2 r1 20
    lwcZ f2 r2 8
    fsub f1 f1 f2
    lw r2 r1 16
    lwcZ f2 r2 8
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    fmul f1 f1 f2
    fmul f2 f0 f0
    fmul f3 f1 f1
    fadd f2 f2 f3
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_4750
block_4749:
    fmv f3 f0
    j block_4751
block_4750:
    fneg f3 f0
    j block_4751
block_4751:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_4753
block_4752:
    finv_init f3 f0
    #2.0
    flui f4 16384
    fmul f0 f0 f3
    fsub f0 f4 f0
    fmul f0 f3 f0
    fmul f0 f1 f0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4756
block_4755:
    j block_4757
block_4756:
    fneg f0 f0
    j block_4757
block_4757:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4759
block_4758:
    mv r2 r0
    j block_4760
block_4759:
    addi r2 r0 1
    j block_4760
block_4760:
    bne r2 r0 block_4762
    j block_4761
block_4761:
    fneg f0 f0
    j block_4763
block_4762:
    j block_4763
block_4763:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_4765
block_4764:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_4768
block_4767:
    #1.5707964
    flui f1 16329
    fori f1 f1 4059
    #1.0
    flui f3 16256
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fsub f0 f1 f0
    j block_4766
block_4768:
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.0
    flui f3 16256
    fsub f3 f0 f3
    #1.0
    flui f4 16256
    fadd f0 f0 f4
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fadd f0 f1 f0
    j block_4766
block_4765:
    fmul f1 f0 f0
    fmul f3 f1 f0
    fmul f4 f1 f3
    fmul f5 f1 f4
    fmul f6 f1 f5
    fmul f7 f1 f6
    fmul f1 f1 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f0 f0 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f0 f0 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f0 f0 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f0 f0 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f0 f0 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f1 f3 f1
    fadd f0 f0 f1
    j block_4766
block_4766:
    bne r2 r0 block_4770
    j block_4769
block_4769:
    fneg f0 f0
    j block_4771
block_4770:
    j block_4771
block_4771:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_4754
block_4753:
    #15.0
    flui f0 16752
    j block_4754
block_4754:
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_4773
block_4772:
    j block_4774
block_4773:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_4774
block_4774:
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r2 r1 20
    lwcZ f3 r2 4
    fsub f1 f1 f3
    lw r2 r1 16
    lwcZ f3 r2 4
    sqrt_init f4 f3
    fmul f3 f3 f4
    #1.5
    flui f5 16320
    #0.5
    flui f6 16128
    fmul f4 f6 f4
    fmul f4 f4 f3
    fsub f4 f5 f4
    fmul f3 f3 f4
    fmul f1 f1 f3
    #0.0
    flui f3 0
    fclt f2 f3
    bc1t block_4776
block_4775:
    fmv f3 f2
    j block_4777
block_4776:
    fneg f3 f2
    j block_4777
block_4777:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_4779
block_4778:
    finv_init f3 f2
    #2.0
    flui f4 16384
    fmul f2 f2 f3
    fsub f2 f4 f2
    fmul f2 f3 f2
    fmul f1 f1 f2
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_4782
block_4781:
    j block_4783
block_4782:
    fneg f1 f1
    j block_4783
block_4783:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_4785
block_4784:
    mv r2 r0
    j block_4786
block_4785:
    addi r2 r0 1
    j block_4786
block_4786:
    bne r2 r0 block_4788
    j block_4787
block_4787:
    fneg f1 f1
    j block_4789
block_4788:
    j block_4789
block_4789:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_4791
block_4790:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_4794
block_4793:
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #1.0
    flui f3 16256
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fsub f1 f2 f1
    j block_4792
block_4794:
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.0
    flui f3 16256
    fsub f3 f1 f3
    #1.0
    flui f4 16256
    fadd f1 f1 f4
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fadd f1 f2 f1
    j block_4792
block_4791:
    fmul f2 f1 f1
    fmul f3 f2 f1
    fmul f4 f2 f3
    fmul f5 f2 f4
    fmul f6 f2 f5
    fmul f7 f2 f6
    fmul f2 f2 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f1 f1 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f1 f1 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f1 f1 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f1 f1 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f1 f1 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f2 f3 f2
    fadd f1 f1 f2
    j block_4792
block_4792:
    bne r2 r0 block_4796
    j block_4795
block_4795:
    fneg f1 f1
    j block_4797
block_4796:
    j block_4797
block_4797:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_4780
block_4779:
    #15.0
    flui f1 16752
    j block_4780
block_4780:
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_4799
block_4798:
    j block_4800
block_4799:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_4800
block_4800:
    fsub f1 f1 f2
    #0.15
    flui f2 15897
    fori f2 f2 -26214
    #0.5
    flui f3 16128
    fsub f0 f3 f0
    fmul f0 f0 f0
    fsub f0 f2 f0
    #0.5
    flui f2 16128
    fsub f1 f2 f1
    fmul f1 f1 f1
    fsub f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4802
block_4801:
    mv r2 r0
    j block_4803
block_4802:
    addi r2 r0 1
    j block_4803
block_4803:
    bne r2 r0 block_4805
    j block_4804
block_4804:
    j block_4806
block_4805:
    #0.0
    flui f0 0
    j block_4806
block_4806:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 25588
    j block_4742
block_4746:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 25560
    lw r2 r1 20
    lwcZ f2 r2 8
    fsub f1 f1 f2
    fmul f0 f0 f0
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.1
    flui f1 15820
    fori f1 f1 -13107
    fmul f0 f0 f1
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_4808
block_4807:
    j block_4809
block_4808:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_4809
block_4809:
    fsub f0 f0 f1
    #3.1415927
    flui f1 16457
    fori f1 f1 4059
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f4 f4 f5
    fsub f0 f0 f4
    #0.0
    flui f4 0
    fclt f4 f0
    bc1t block_4811
block_4810:
    fneg f0 f0
    j block_4812
block_4811:
    j block_4812
block_4812:
    fclt f3 f0
    bc1t block_4814
block_4813:
    addi r2 r0 1
    j block_4815
block_4814:
    addi r2 r0 -1
    j block_4815
block_4815:
    fclt f3 f0
    bc1t block_4817
block_4816:
    j block_4818
block_4817:
    fsub f0 f0 f3
    j block_4818
block_4818:
    fclt f2 f0
    bc1t block_4820
block_4819:
    j block_4821
block_4820:
    sub r2 r0 r2
    j block_4821
block_4821:
    fclt f2 f0
    bc1t block_4823
block_4822:
    j block_4824
block_4823:
    fsub f0 f3 f0
    j block_4824
block_4824:
    fclt f0 f1
    bc1t block_4826
block_4825:
    fsub f0 f2 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_4827
block_4826:
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_4827
block_4827:
    addi r3 r0 -1
    beq r2 r3 block_4829
block_4828:
    j block_4830
block_4829:
    fneg f0 f0
    j block_4830
block_4830:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 25584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 25588
    j block_4742
block_4744:
    lwcZ f0 r0 25556
    #0.25
    flui f1 16000
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r2 f5
    itof f5 r2
    fmul f5 f4 f5
    fsub f0 f0 f5
    #0.0
    flui f5 0
    fclt f5 f0
    bc1t block_4832
block_4831:
    fadd f0 f0 f4
    j block_4833
block_4832:
    j block_4833
block_4833:
    fclt f3 f0
    bc1t block_4835
block_4834:
    addi r2 r0 1
    j block_4836
block_4835:
    mv r2 r0
    j block_4836
block_4836:
    fclt f3 f0
    bc1t block_4838
block_4837:
    j block_4839
block_4838:
    fsub f0 f0 f3
    j block_4839
block_4839:
    fclt f2 f0
    bc1t block_4841
block_4840:
    j block_4842
block_4841:
    fsub f0 f3 f0
    j block_4842
block_4842:
    fclt f1 f0
    bc1t block_4844
block_4843:
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_4845
block_4844:
    fsub f0 f2 f0
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_4845
block_4845:
    bne r2 r0 block_4847
    j block_4846
block_4846:
    fneg f0 f0
    j block_4848
block_4847:
    j block_4848
block_4848:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 25580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 25584
    j block_4742
block_4741:
    lwcZ f0 r0 25552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_4850
block_4849:
    fmv f1 f2
    j block_4851
block_4850:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4851
block_4851:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4853
block_4852:
    mv r2 r0
    j block_4854
block_4853:
    addi r2 r0 1
    j block_4854
block_4854:
    lwcZ f0 r0 25560
    lw r3 r1 20
    lwcZ f1 r3 8
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r3 f1
    itof f2 r3
    fclt f1 f2
    bc1t block_4856
block_4855:
    fmv f1 f2
    j block_4857
block_4856:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4857
block_4857:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4859
block_4858:
    mv r3 r0
    j block_4860
block_4859:
    addi r3 r0 1
    j block_4860
block_4860:
    bne r2 r0 block_4862
    j block_4861
block_4861:
    bne r3 r0 block_4865
    j block_4864
block_4864:
    #255.0
    flui f0 17279
    j block_4863
block_4865:
    #0.0
    flui f0 0
    j block_4863
block_4862:
    bne r3 r0 block_4867
    j block_4866
block_4866:
    #0.0
    flui f0 0
    j block_4863
block_4867:
    #255.0
    flui f0 17279
    j block_4863
block_4863:
    swcZ f0 r0 25584
    j block_4742
block_4742:
    lw r2 r0 25536
    lw r3 r2 0
    lw r4 r3 0
    addi r5 r0 -1
    sw r1 r29 40
    beq r4 r5 block_4869
block_4868:
    addi r5 r0 99
    sw r1 r29 40
    sw r3 r29 28
    sw r2 r29 0
    beq r4 r5 block_4872
block_4871:
    sll r5 r4 2
    lw r5 r5 25048
    lwcZ f0 r0 25552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 25992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_4875
block_4874:
    addi r7 r0 2
    beq r6 r7 block_4878
block_4877:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_4880
block_4879:
    lwcZ f4 r4 4
    fmul f4 f4 f0
    lwcZ f5 r4 8
    fmul f5 f5 f1
    fadd f4 f4 f5
    lwcZ f5 r4 12
    fmul f5 f5 f2
    fadd f4 f4 f5
    fmul f5 f0 f0
    lw r6 r5 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r5 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r5 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r5 12
    beq r6 r0 block_4882
block_4881:
    fmul f6 f1 f2
    lw r6 r5 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r5 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r5 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_4883
block_4882:
    fmv f0 f5
    j block_4883
block_4883:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_4885
block_4884:
    j block_4886
block_4885:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_4886
block_4886:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4888
block_4887:
    mv r6 r0
    j block_4889
block_4888:
    addi r6 r0 1
    j block_4889
block_4889:
    bne r6 r0 block_4891
    j block_4890
block_4890:
    mv r4 r0
    j block_4876
block_4891:
    lw r5 r5 24
    bne r5 r0 block_4893
    j block_4892
block_4892:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fsub f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_4894
block_4893:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fadd f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_4894
block_4894:
    addi r4 r0 1
    j block_4876
block_4880:
    mv r4 r0
    j block_4876
block_4878:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_4896
block_4895:
    mv r5 r0
    j block_4897
block_4896:
    addi r5 r0 1
    j block_4897
block_4897:
    bne r5 r0 block_4899
    j block_4898
block_4898:
    mv r4 r0
    j block_4876
block_4899:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_4876
block_4875:
    lw r6 r0 25988
    lwcZ f3 r4 0
    fsub f3 f3 f0
    lwcZ f4 r4 4
    fmul f3 f3 f4
    lwcZ f4 r6 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4901
block_4900:
    j block_4902
block_4901:
    fneg f4 f4
    j block_4902
block_4902:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_4904
block_4903:
    mv r7 r0
    j block_4905
block_4904:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4907
block_4906:
    j block_4908
block_4907:
    fneg f4 f4
    j block_4908
block_4908:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4910
block_4909:
    mv r7 r0
    j block_4905
block_4910:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4912
block_4911:
    mv r7 r0
    j block_4913
block_4912:
    addi r7 r0 1
    j block_4913
block_4913:
    bne r7 r0 block_4915
    j block_4914
block_4914:
    addi r7 r0 1
    j block_4905
block_4915:
    mv r7 r0
    j block_4905
block_4905:
    bne r7 r0 block_4917
    j block_4916
block_4916:
    lwcZ f3 r4 8
    fsub f3 f3 f1
    lwcZ f4 r4 12
    fmul f3 f3 f4
    lwcZ f4 r6 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4919
block_4918:
    j block_4920
block_4919:
    fneg f4 f4
    j block_4920
block_4920:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_4922
block_4921:
    mv r7 r0
    j block_4923
block_4922:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4925
block_4924:
    j block_4926
block_4925:
    fneg f4 f4
    j block_4926
block_4926:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4928
block_4927:
    mv r7 r0
    j block_4923
block_4928:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4930
block_4929:
    mv r7 r0
    j block_4931
block_4930:
    addi r7 r0 1
    j block_4931
block_4931:
    bne r7 r0 block_4933
    j block_4932
block_4932:
    addi r7 r0 1
    j block_4923
block_4933:
    mv r7 r0
    j block_4923
block_4923:
    bne r7 r0 block_4935
    j block_4934
block_4934:
    lwcZ f3 r4 16
    fsub f2 f3 f2
    lwcZ f3 r4 20
    fmul f2 f2 f3
    lwcZ f3 r6 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_4937
block_4936:
    j block_4938
block_4937:
    fneg f0 f0
    j block_4938
block_4938:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_4940
block_4939:
    mv r4 r0
    j block_4941
block_4940:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4943
block_4942:
    j block_4944
block_4943:
    fneg f0 f0
    j block_4944
block_4944:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_4946
block_4945:
    mv r4 r0
    j block_4941
block_4946:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4948
block_4947:
    mv r4 r0
    j block_4949
block_4948:
    addi r4 r0 1
    j block_4949
block_4949:
    bne r4 r0 block_4951
    j block_4950
block_4950:
    addi r4 r0 1
    j block_4941
block_4951:
    mv r4 r0
    j block_4941
block_4941:
    bne r4 r0 block_4953
    j block_4952
block_4952:
    mv r4 r0
    j block_4876
block_4953:
    swcZ f2 r0 25540
    addi r4 r0 3
    j block_4876
block_4935:
    swcZ f3 r0 25540
    addi r4 r0 2
    j block_4876
block_4917:
    swcZ f3 r0 25540
    addi r4 r0 1
    j block_4876
block_4876:
    sw r1 r29 40
    sw r3 r29 28
    sw r2 r29 0
    beq r4 r0 block_4955
block_4954:
    lwcZ f0 r0 25540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    sw r1 r29 40
    sw r3 r29 28
    sw r2 r29 0
    fclt f0 f1
    bc1t block_4957
block_4956:
    mv r1 r0
    j block_4873
block_4957:
    addi r4 r0 1
    sw r1 r29 40
    sw r3 r29 28
    sw r2 r29 0
    mv r2 r3
    mv r1 r4
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_4959
    j block_4958
block_4958:
    mv r1 r0
    j block_4873
block_4959:
    addi r1 r0 1
    j block_4873
block_4955:
    mv r1 r0
    j block_4873
block_4872:
    addi r1 r0 1
    j block_4873
block_4873:
    bne r1 r0 block_4961
    j block_4960
block_4960:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_4870
block_4961:
    addi r1 r0 1
    lw r2 r29 28
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_4963
    j block_4962
block_4962:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_4870
block_4963:
    addi r1 r0 1
    j block_4870
block_4869:
    mv r1 r0
    j block_4870
block_4870:
    bne r1 r0 block_4965
    j block_4964
block_4964:
    lwcZ f0 r0 25568
    lwcZ f1 r0 25312
    fmul f0 f0 f1
    lwcZ f1 r0 25572
    lwcZ f2 r0 25316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    lwcZ f2 r0 25320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4967
block_4966:
    mv r1 r0
    j block_4968
block_4967:
    addi r1 r0 1
    j block_4968
block_4968:
    bne r1 r0 block_4970
    j block_4969
block_4969:
    #0.0
    flui f0 0
    j block_4971
block_4970:
    j block_4971
block_4971:
    lwcZ f1 r29 8
    fmul f0 f1 f0
    lw r1 r29 40
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 25592
    lwcZ f2 r0 25580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25592
    lwcZ f1 r0 25596
    lwcZ f2 r0 25584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 25596
    lwcZ f1 r0 25600
    lwcZ f2 r0 25588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 25600
    j block_4451
block_4965:
    j block_4451
block_4451:
    addi r4 r0 116
    lw r1 r29 24
    lw r2 r29 36
    lw r3 r29 48
    sw r31 r29 52
    addi r29 r29 56
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 56
    lw r31 r29 52
    jr r31
block_4445:
    jr r31
trace_or_matrix.4387:
block_2002:
    sll r4 r1 2
    lwab r4 r2 r4
    lw r5 r4 0
    addi r6 r0 -1
    beq r5 r6 block_2004
block_2003:
    addi r6 r0 99
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    beq r5 r6 block_2006
block_2005:
    sll r5 r5 2
    lw r5 r5 25048
    lwcZ f0 r0 25636
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 25640
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 25644
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_2009
block_2008:
    addi r7 r0 2
    beq r6 r7 block_2012
block_2011:
    lwcZ f3 r3 0
    lwcZ f4 r3 4
    lwcZ f5 r3 8
    fmul f6 f3 f3
    lw r6 r5 16
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fmul f7 f4 f4
    lw r6 r5 16
    lwcZ f8 r6 4
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f7 f5 f5
    lw r6 r5 16
    lwcZ f8 r6 8
    fmul f7 f7 f8
    fadd f6 f6 f7
    lw r6 r5 12
    beq r6 r0 block_2014
block_2013:
    fmul f7 f4 f5
    lw r6 r5 36
    lwcZ f8 r6 0
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f5 f5 f3
    lw r6 r5 36
    lwcZ f7 r6 4
    fmul f5 f5 f7
    fadd f5 f6 f5
    fmul f3 f3 f4
    lw r6 r5 36
    lwcZ f4 r6 8
    fmul f3 f3 f4
    fadd f3 f5 f3
    j block_2015
block_2014:
    fmv f3 f6
    j block_2015
block_2015:
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2017
block_2016:
    lwcZ f4 r3 0
    lwcZ f5 r3 4
    lwcZ f6 r3 8
    fmul f7 f4 f0
    lw r6 r5 16
    lwcZ f8 r6 0
    fmul f7 f7 f8
    fmul f8 f5 f1
    lw r6 r5 16
    lwcZ f9 r6 4
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f8 f6 f2
    lw r6 r5 16
    lwcZ f9 r6 8
    fmul f8 f8 f9
    fadd f7 f7 f8
    lw r6 r5 12
    beq r6 r0 block_2019
block_2018:
    fmul f8 f6 f1
    fmul f9 f5 f2
    fadd f8 f8 f9
    lw r6 r5 36
    lwcZ f9 r6 0
    fmul f8 f8 f9
    fmul f9 f4 f2
    fmul f6 f6 f0
    fadd f6 f9 f6
    lw r6 r5 36
    lwcZ f9 r6 4
    fmul f6 f6 f9
    fadd f6 f8 f6
    fmul f4 f4 f1
    fmul f5 f5 f0
    fadd f4 f4 f5
    lw r6 r5 36
    lwcZ f5 r6 8
    fmul f4 f4 f5
    fadd f4 f6 f4
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fadd f4 f7 f4
    j block_2020
block_2019:
    fmv f4 f7
    j block_2020
block_2020:
    fmul f5 f0 f0
    lw r6 r5 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r5 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r5 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r5 12
    beq r6 r0 block_2022
block_2021:
    fmul f6 f1 f2
    lw r6 r5 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r5 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r5 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_2023
block_2022:
    fmv f0 f5
    j block_2023
block_2023:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_2025
block_2024:
    j block_2026
block_2025:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_2026
block_2026:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_2028
block_2027:
    mv r6 r0
    j block_2029
block_2028:
    addi r6 r0 1
    j block_2029
block_2029:
    bne r6 r0 block_2031
    j block_2030
block_2030:
    mv r5 r0
    j block_2010
block_2031:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f5 16128
    fmul f1 f5 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    lw r5 r5 24
    bne r5 r0 block_2033
    j block_2032
block_2032:
    fneg f0 f0
    j block_2034
block_2033:
    j block_2034
block_2034:
    fsub f0 f0 f4
    finv_init f1 f3
    #2.0
    flui f2 16384
    fmul f3 f3 f1
    fsub f2 f2 f3
    fmul f1 f1 f2
    fmul f0 f0 f1
    swcZ f0 r0 25540
    addi r5 r0 1
    j block_2010
block_2017:
    mv r5 r0
    j block_2010
block_2012:
    lw r5 r5 16
    lwcZ f3 r3 0
    lwcZ f4 r5 0
    fmul f3 f3 f4
    lwcZ f4 r3 4
    lwcZ f5 r5 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    lwcZ f4 r3 8
    lwcZ f5 r5 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    #0.0
    flui f4 0
    fclt f4 f3
    bc1t block_2036
block_2035:
    mv r6 r0
    j block_2037
block_2036:
    addi r6 r0 1
    j block_2037
block_2037:
    bne r6 r0 block_2039
    j block_2038
block_2038:
    mv r5 r0
    j block_2010
block_2039:
    lwcZ f4 r5 0
    fmul f0 f4 f0
    lwcZ f4 r5 4
    fmul f1 f4 f1
    fadd f0 f0 f1
    lwcZ f1 r5 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    finv_init f1 f3
    #2.0
    flui f2 16384
    fmul f3 f3 f1
    fsub f2 f2 f3
    fmul f1 f1 f2
    fmul f0 f0 f1
    swcZ f0 r0 25540
    addi r5 r0 1
    j block_2010
block_2009:
    lwcZ f3 r3 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2041
block_2040:
    lw r6 r5 16
    lw r7 r5 24
    lwcZ f3 r3 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2044
block_2043:
    mv r8 r0
    j block_2045
block_2044:
    addi r8 r0 1
    j block_2045
block_2045:
    bne r7 r0 block_2047
    j block_2046
block_2046:
    mv r7 r8
    j block_2048
block_2047:
    bne r8 r0 block_2050
    j block_2049
block_2049:
    addi r7 r0 1
    j block_2048
block_2050:
    mv r7 r0
    j block_2048
block_2048:
    lwcZ f3 r6 0
    bne r7 r0 block_2052
    j block_2051
block_2051:
    fneg f3 f3
    j block_2053
block_2052:
    j block_2053
block_2053:
    fsub f3 f3 f0
    lwcZ f4 r3 0
    finv_init f5 f4
    #2.0
    flui f6 16384
    fmul f4 f4 f5
    fsub f4 f6 f4
    fmul f4 f5 f4
    fmul f3 f3 f4
    lwcZ f4 r3 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2055
block_2054:
    j block_2056
block_2055:
    fneg f4 f4
    j block_2056
block_2056:
    lwcZ f5 r6 4
    fclt f4 f5
    bc1t block_2058
block_2057:
    mv r6 r0
    j block_2042
block_2058:
    lwcZ f4 r3 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2060
block_2059:
    j block_2061
block_2060:
    fneg f4 f4
    j block_2061
block_2061:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_2063
block_2062:
    mv r6 r0
    j block_2042
block_2063:
    swcZ f3 r0 25540
    addi r6 r0 1
    j block_2042
block_2041:
    mv r6 r0
    j block_2042
block_2042:
    bne r6 r0 block_2065
    j block_2064
block_2064:
    lwcZ f3 r3 4
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2067
block_2066:
    lw r6 r5 16
    lw r7 r5 24
    lwcZ f3 r3 4
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2070
block_2069:
    mv r8 r0
    j block_2071
block_2070:
    addi r8 r0 1
    j block_2071
block_2071:
    bne r7 r0 block_2073
    j block_2072
block_2072:
    mv r7 r8
    j block_2074
block_2073:
    bne r8 r0 block_2076
    j block_2075
block_2075:
    addi r7 r0 1
    j block_2074
block_2076:
    mv r7 r0
    j block_2074
block_2074:
    lwcZ f3 r6 4
    bne r7 r0 block_2078
    j block_2077
block_2077:
    fneg f3 f3
    j block_2079
block_2078:
    j block_2079
block_2079:
    fsub f3 f3 f1
    lwcZ f4 r3 4
    finv_init f5 f4
    #2.0
    flui f6 16384
    fmul f4 f4 f5
    fsub f4 f6 f4
    fmul f4 f5 f4
    fmul f3 f3 f4
    lwcZ f4 r3 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2081
block_2080:
    j block_2082
block_2081:
    fneg f4 f4
    j block_2082
block_2082:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_2084
block_2083:
    mv r6 r0
    j block_2068
block_2084:
    lwcZ f4 r3 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2086
block_2085:
    j block_2087
block_2086:
    fneg f4 f4
    j block_2087
block_2087:
    lwcZ f5 r6 0
    fclt f4 f5
    bc1t block_2089
block_2088:
    mv r6 r0
    j block_2068
block_2089:
    swcZ f3 r0 25540
    addi r6 r0 1
    j block_2068
block_2067:
    mv r6 r0
    j block_2068
block_2068:
    bne r6 r0 block_2091
    j block_2090
block_2090:
    lwcZ f3 r3 8
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2093
block_2092:
    lw r6 r5 16
    lw r5 r5 24
    lwcZ f3 r3 8
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2096
block_2095:
    mv r7 r0
    j block_2097
block_2096:
    addi r7 r0 1
    j block_2097
block_2097:
    bne r5 r0 block_2099
    j block_2098
block_2098:
    mv r5 r7
    j block_2100
block_2099:
    bne r7 r0 block_2102
    j block_2101
block_2101:
    addi r5 r0 1
    j block_2100
block_2102:
    mv r5 r0
    j block_2100
block_2100:
    lwcZ f3 r6 8
    bne r5 r0 block_2104
    j block_2103
block_2103:
    fneg f3 f3
    j block_2105
block_2104:
    j block_2105
block_2105:
    fsub f2 f3 f2
    lwcZ f3 r3 8
    finv_init f4 f3
    #2.0
    flui f5 16384
    fmul f3 f3 f4
    fsub f3 f5 f3
    fmul f3 f4 f3
    fmul f2 f2 f3
    lwcZ f3 r3 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_2107
block_2106:
    j block_2108
block_2107:
    fneg f0 f0
    j block_2108
block_2108:
    lwcZ f3 r6 0
    fclt f0 f3
    bc1t block_2110
block_2109:
    mv r5 r0
    j block_2094
block_2110:
    lwcZ f0 r3 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2112
block_2111:
    j block_2113
block_2112:
    fneg f0 f0
    j block_2113
block_2113:
    lwcZ f1 r6 4
    fclt f0 f1
    bc1t block_2115
block_2114:
    mv r5 r0
    j block_2094
block_2115:
    swcZ f2 r0 25540
    addi r5 r0 1
    j block_2094
block_2093:
    mv r5 r0
    j block_2094
block_2094:
    bne r5 r0 block_2117
    j block_2116
block_2116:
    mv r5 r0
    j block_2010
block_2117:
    addi r5 r0 3
    j block_2010
block_2091:
    addi r5 r0 2
    j block_2010
block_2065:
    addi r5 r0 1
    j block_2010
block_2010:
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    beq r5 r0 block_2119
block_2118:
    lwcZ f0 r0 25540
    lwcZ f1 r0 25548
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    fclt f0 f1
    bc1t block_2121
block_2120:
    j block_2007
block_2121:
    lw r5 r4 4
    addi r6 r0 -1
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    beq r5 r6 block_2123
block_2122:
    sll r5 r5 2
    lw r5 r5 25332
    sw r2 r29 20
    sw r1 r29 16
    sw r4 r29 8
    sw r3 r29 4
    mv r2 r5
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_2125
block_2124:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2127
block_2126:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2129
block_2128:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2131
block_2130:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2133
block_2132:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 28
    addi r3 r0 -1
    beq r2 r3 block_2135
block_2134:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 8
    lw r2 r29 8
    lw r3 r29 4
    sw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network.4375
    subi r29 r29 28
    lw r31 r29 24
    j block_2007
block_2135:
    j block_2007
block_2133:
    j block_2007
block_2131:
    j block_2007
block_2129:
    j block_2007
block_2127:
    j block_2007
block_2125:
    j block_2007
block_2123:
    j block_2007
block_2119:
    j block_2007
block_2006:
    lw r5 r4 4
    addi r6 r0 -1
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    beq r5 r6 block_2137
block_2136:
    sll r5 r5 2
    lw r5 r5 25332
    sw r2 r29 20
    sw r1 r29 16
    sw r4 r29 8
    sw r3 r29 4
    mv r2 r5
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_2139
block_2138:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2141
block_2140:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2143
block_2142:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2145
block_2144:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2147
block_2146:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 28
    addi r3 r0 -1
    beq r2 r3 block_2149
block_2148:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 8
    lw r2 r29 8
    lw r3 r29 4
    sw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network.4375
    subi r29 r29 28
    lw r31 r29 24
    j block_2007
block_2149:
    j block_2007
block_2147:
    j block_2007
block_2145:
    j block_2007
block_2143:
    j block_2007
block_2141:
    j block_2007
block_2139:
    j block_2007
block_2137:
    j block_2007
block_2007:
    lw r1 r29 16
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 20
    lwab r2 r3 r2
    lw r4 r2 0
    addi r5 r0 -1
    beq r4 r5 block_2151
block_2150:
    addi r5 r0 99
    sw r3 r29 20
    sw r1 r29 0
    beq r4 r5 block_2153
block_2152:
    sll r4 r4 2
    lw r4 r4 25048
    lwcZ f0 r0 25636
    lw r5 r4 20
    lwcZ f1 r5 0
    fsub f0 f0 f1
    lwcZ f1 r0 25640
    lw r5 r4 20
    lwcZ f2 r5 4
    fsub f1 f1 f2
    lwcZ f2 r0 25644
    lw r5 r4 20
    lwcZ f3 r5 8
    fsub f2 f2 f3
    lw r5 r4 4
    addi r6 r0 1
    beq r5 r6 block_2156
block_2155:
    addi r6 r0 2
    beq r5 r6 block_2159
block_2158:
    lw r5 r29 4
    lwcZ f3 r5 0
    lwcZ f4 r5 4
    lwcZ f5 r5 8
    fmul f6 f3 f3
    lw r6 r4 16
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fmul f7 f4 f4
    lw r6 r4 16
    lwcZ f8 r6 4
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f7 f5 f5
    lw r6 r4 16
    lwcZ f8 r6 8
    fmul f7 f7 f8
    fadd f6 f6 f7
    lw r6 r4 12
    beq r6 r0 block_2161
block_2160:
    fmul f7 f4 f5
    lw r6 r4 36
    lwcZ f8 r6 0
    fmul f7 f7 f8
    fadd f6 f6 f7
    fmul f5 f5 f3
    lw r6 r4 36
    lwcZ f7 r6 4
    fmul f5 f5 f7
    fadd f5 f6 f5
    fmul f3 f3 f4
    lw r6 r4 36
    lwcZ f4 r6 8
    fmul f3 f3 f4
    fadd f3 f5 f3
    j block_2162
block_2161:
    fmv f3 f6
    j block_2162
block_2162:
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2164
block_2163:
    lwcZ f4 r5 0
    lwcZ f5 r5 4
    lwcZ f6 r5 8
    fmul f7 f4 f0
    lw r6 r4 16
    lwcZ f8 r6 0
    fmul f7 f7 f8
    fmul f8 f5 f1
    lw r6 r4 16
    lwcZ f9 r6 4
    fmul f8 f8 f9
    fadd f7 f7 f8
    fmul f8 f6 f2
    lw r6 r4 16
    lwcZ f9 r6 8
    fmul f8 f8 f9
    fadd f7 f7 f8
    lw r6 r4 12
    beq r6 r0 block_2166
block_2165:
    fmul f8 f6 f1
    fmul f9 f5 f2
    fadd f8 f8 f9
    lw r6 r4 36
    lwcZ f9 r6 0
    fmul f8 f8 f9
    fmul f9 f4 f2
    fmul f6 f6 f0
    fadd f6 f9 f6
    lw r6 r4 36
    lwcZ f9 r6 4
    fmul f6 f6 f9
    fadd f6 f8 f6
    fmul f4 f4 f1
    fmul f5 f5 f0
    fadd f4 f4 f5
    lw r6 r4 36
    lwcZ f5 r6 8
    fmul f4 f4 f5
    fadd f4 f6 f4
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fadd f4 f7 f4
    j block_2167
block_2166:
    fmv f4 f7
    j block_2167
block_2167:
    fmul f5 f0 f0
    lw r6 r4 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r4 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r4 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r4 12
    beq r6 r0 block_2169
block_2168:
    fmul f6 f1 f2
    lw r6 r4 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r4 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r4 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_2170
block_2169:
    fmv f0 f5
    j block_2170
block_2170:
    lw r6 r4 4
    addi r7 r0 3
    beq r6 r7 block_2172
block_2171:
    j block_2173
block_2172:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_2173
block_2173:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_2175
block_2174:
    mv r6 r0
    j block_2176
block_2175:
    addi r6 r0 1
    j block_2176
block_2176:
    bne r6 r0 block_2178
    j block_2177
block_2177:
    mv r4 r0
    j block_2157
block_2178:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f5 16128
    fmul f1 f5 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    lw r4 r4 24
    bne r4 r0 block_2180
    j block_2179
block_2179:
    fneg f0 f0
    j block_2181
block_2180:
    j block_2181
block_2181:
    fsub f0 f0 f4
    finv_init f1 f3
    #2.0
    flui f2 16384
    fmul f3 f3 f1
    fsub f2 f2 f3
    fmul f1 f1 f2
    fmul f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_2157
block_2164:
    mv r4 r0
    j block_2157
block_2159:
    lw r4 r4 16
    lw r5 r29 4
    lwcZ f3 r5 0
    lwcZ f4 r4 0
    fmul f3 f3 f4
    lwcZ f4 r5 4
    lwcZ f5 r4 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    lwcZ f4 r5 8
    lwcZ f5 r4 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    #0.0
    flui f4 0
    fclt f4 f3
    bc1t block_2183
block_2182:
    mv r6 r0
    j block_2184
block_2183:
    addi r6 r0 1
    j block_2184
block_2184:
    bne r6 r0 block_2186
    j block_2185
block_2185:
    mv r4 r0
    j block_2157
block_2186:
    lwcZ f4 r4 0
    fmul f0 f4 f0
    lwcZ f4 r4 4
    fmul f1 f4 f1
    fadd f0 f0 f1
    lwcZ f1 r4 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    finv_init f1 f3
    #2.0
    flui f2 16384
    fmul f3 f3 f1
    fsub f2 f2 f3
    fmul f1 f1 f2
    fmul f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_2157
block_2156:
    lw r5 r29 4
    lwcZ f3 r5 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2188
block_2187:
    lw r6 r4 16
    lw r7 r4 24
    lwcZ f3 r5 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2191
block_2190:
    mv r8 r0
    j block_2192
block_2191:
    addi r8 r0 1
    j block_2192
block_2192:
    bne r7 r0 block_2194
    j block_2193
block_2193:
    mv r7 r8
    j block_2195
block_2194:
    bne r8 r0 block_2197
    j block_2196
block_2196:
    addi r7 r0 1
    j block_2195
block_2197:
    mv r7 r0
    j block_2195
block_2195:
    lwcZ f3 r6 0
    bne r7 r0 block_2199
    j block_2198
block_2198:
    fneg f3 f3
    j block_2200
block_2199:
    j block_2200
block_2200:
    fsub f3 f3 f0
    lwcZ f4 r5 0
    finv_init f5 f4
    #2.0
    flui f6 16384
    fmul f4 f4 f5
    fsub f4 f6 f4
    fmul f4 f5 f4
    fmul f3 f3 f4
    lwcZ f4 r5 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2202
block_2201:
    j block_2203
block_2202:
    fneg f4 f4
    j block_2203
block_2203:
    lwcZ f5 r6 4
    fclt f4 f5
    bc1t block_2205
block_2204:
    mv r6 r0
    j block_2189
block_2205:
    lwcZ f4 r5 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2207
block_2206:
    j block_2208
block_2207:
    fneg f4 f4
    j block_2208
block_2208:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_2210
block_2209:
    mv r6 r0
    j block_2189
block_2210:
    swcZ f3 r0 25540
    addi r6 r0 1
    j block_2189
block_2188:
    mv r6 r0
    j block_2189
block_2189:
    bne r6 r0 block_2212
    j block_2211
block_2211:
    lwcZ f3 r5 4
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2214
block_2213:
    lw r6 r4 16
    lw r7 r4 24
    lwcZ f3 r5 4
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2217
block_2216:
    mv r8 r0
    j block_2218
block_2217:
    addi r8 r0 1
    j block_2218
block_2218:
    bne r7 r0 block_2220
    j block_2219
block_2219:
    mv r7 r8
    j block_2221
block_2220:
    bne r8 r0 block_2223
    j block_2222
block_2222:
    addi r7 r0 1
    j block_2221
block_2223:
    mv r7 r0
    j block_2221
block_2221:
    lwcZ f3 r6 4
    bne r7 r0 block_2225
    j block_2224
block_2224:
    fneg f3 f3
    j block_2226
block_2225:
    j block_2226
block_2226:
    fsub f3 f3 f1
    lwcZ f4 r5 4
    finv_init f5 f4
    #2.0
    flui f6 16384
    fmul f4 f4 f5
    fsub f4 f6 f4
    fmul f4 f5 f4
    fmul f3 f3 f4
    lwcZ f4 r5 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2228
block_2227:
    j block_2229
block_2228:
    fneg f4 f4
    j block_2229
block_2229:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_2231
block_2230:
    mv r6 r0
    j block_2215
block_2231:
    lwcZ f4 r5 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2233
block_2232:
    j block_2234
block_2233:
    fneg f4 f4
    j block_2234
block_2234:
    lwcZ f5 r6 0
    fclt f4 f5
    bc1t block_2236
block_2235:
    mv r6 r0
    j block_2215
block_2236:
    swcZ f3 r0 25540
    addi r6 r0 1
    j block_2215
block_2214:
    mv r6 r0
    j block_2215
block_2215:
    bne r6 r0 block_2238
    j block_2237
block_2237:
    lwcZ f3 r5 8
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2240
block_2239:
    lw r6 r4 16
    lw r4 r4 24
    lwcZ f3 r5 8
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2243
block_2242:
    mv r7 r0
    j block_2244
block_2243:
    addi r7 r0 1
    j block_2244
block_2244:
    bne r4 r0 block_2246
    j block_2245
block_2245:
    mv r4 r7
    j block_2247
block_2246:
    bne r7 r0 block_2249
    j block_2248
block_2248:
    addi r4 r0 1
    j block_2247
block_2249:
    mv r4 r0
    j block_2247
block_2247:
    lwcZ f3 r6 8
    bne r4 r0 block_2251
    j block_2250
block_2250:
    fneg f3 f3
    j block_2252
block_2251:
    j block_2252
block_2252:
    fsub f2 f3 f2
    lwcZ f3 r5 8
    finv_init f4 f3
    #2.0
    flui f5 16384
    fmul f3 f3 f4
    fsub f3 f5 f3
    fmul f3 f4 f3
    fmul f2 f2 f3
    lwcZ f3 r5 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_2254
block_2253:
    j block_2255
block_2254:
    fneg f0 f0
    j block_2255
block_2255:
    lwcZ f3 r6 0
    fclt f0 f3
    bc1t block_2257
block_2256:
    mv r4 r0
    j block_2241
block_2257:
    lwcZ f0 r5 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2259
block_2258:
    j block_2260
block_2259:
    fneg f0 f0
    j block_2260
block_2260:
    lwcZ f1 r6 4
    fclt f0 f1
    bc1t block_2262
block_2261:
    mv r4 r0
    j block_2241
block_2262:
    swcZ f2 r0 25540
    addi r4 r0 1
    j block_2241
block_2240:
    mv r4 r0
    j block_2241
block_2241:
    bne r4 r0 block_2264
    j block_2263
block_2263:
    mv r4 r0
    j block_2157
block_2264:
    addi r4 r0 3
    j block_2157
block_2238:
    addi r4 r0 2
    j block_2157
block_2212:
    addi r4 r0 1
    j block_2157
block_2157:
    sw r3 r29 20
    sw r5 r29 4
    sw r1 r29 0
    beq r4 r0 block_2266
block_2265:
    lwcZ f0 r0 25540
    lwcZ f1 r0 25548
    sw r3 r29 20
    sw r5 r29 4
    sw r1 r29 0
    fclt f0 f1
    bc1t block_2268
block_2267:
    j block_2154
block_2268:
    lw r4 r2 4
    addi r6 r0 -1
    sw r3 r29 20
    sw r5 r29 4
    sw r1 r29 0
    beq r4 r6 block_2270
block_2269:
    sll r4 r4 2
    lw r4 r4 25332
    sw r3 r29 20
    sw r2 r29 12
    sw r5 r29 4
    sw r1 r29 0
    mv r3 r5
    mv r2 r4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_2272
block_2271:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2274
block_2273:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2276
block_2275:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2278
block_2277:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2280
block_2279:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 7
    lw r2 r29 12
    lw r3 r29 4
    sw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network.4375
    subi r29 r29 28
    lw r31 r29 24
    j block_2154
block_2280:
    j block_2154
block_2278:
    j block_2154
block_2276:
    j block_2154
block_2274:
    j block_2154
block_2272:
    j block_2154
block_2270:
    j block_2154
block_2266:
    j block_2154
block_2153:
    lw r4 r2 4
    addi r5 r0 -1
    sw r3 r29 20
    sw r1 r29 0
    beq r4 r5 block_2282
block_2281:
    sll r4 r4 2
    lw r4 r4 25332
    lw r5 r29 4
    sw r3 r29 20
    sw r2 r29 12
    sw r5 r29 4
    sw r1 r29 0
    mv r3 r5
    mv r2 r4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_2284
block_2283:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2286
block_2285:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2288
block_2287:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2290
block_2289:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2292
block_2291:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 7
    lw r2 r29 12
    lw r3 r29 4
    sw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network.4375
    subi r29 r29 28
    lw r31 r29 24
    j block_2154
block_2292:
    j block_2154
block_2290:
    j block_2154
block_2288:
    j block_2154
block_2286:
    j block_2154
block_2284:
    j block_2154
block_2282:
    j block_2154
block_2154:
    lw r1 r29 0
    addi r1 r1 1
    lw r2 r29 20
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_or_matrix.4387
    subi r29 r29 28
    lw r31 r29 24
    jr r31
block_2151:
    jr r31
block_2004:
    jr r31
trace_or_matrix_fast.4483:
block_2564:
    sll r4 r1 2
    lwab r4 r2 r4
    lw r5 r4 0
    addi r6 r0 -1
    beq r5 r6 block_2566
block_2565:
    addi r6 r0 99
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    beq r5 r6 block_2568
block_2567:
    sll r6 r5 2
    lw r6 r6 25048
    lw r7 r6 40
    lwcZ f0 r7 0
    lwcZ f1 r7 4
    lwcZ f2 r7 8
    lw r8 r3 4
    sll r5 r5 2
    lwab r5 r8 r5
    lw r8 r6 4
    addi r9 r0 1
    beq r8 r9 block_2571
block_2570:
    addi r9 r0 2
    beq r8 r9 block_2574
block_2573:
    lwcZ f3 r5 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2576
block_2575:
    lwcZ f4 r5 4
    fmul f0 f4 f0
    lwcZ f4 r5 8
    fmul f1 f4 f1
    fadd f0 f0 f1
    lwcZ f1 r5 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r7 12
    fmul f2 f0 f0
    fmul f1 f3 f1
    fsub f1 f2 f1
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_2578
block_2577:
    mv r7 r0
    j block_2579
block_2578:
    addi r7 r0 1
    j block_2579
block_2579:
    bne r7 r0 block_2581
    j block_2580
block_2580:
    mv r5 r0
    j block_2572
block_2581:
    lw r6 r6 24
    bne r6 r0 block_2583
    j block_2582
block_2582:
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fsub f0 f0 f1
    lwcZ f1 r5 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_2584
block_2583:
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r5 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_2584
block_2584:
    addi r5 r0 1
    j block_2572
block_2576:
    mv r5 r0
    j block_2572
block_2574:
    lwcZ f0 r5 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2586
block_2585:
    mv r6 r0
    j block_2587
block_2586:
    addi r6 r0 1
    j block_2587
block_2587:
    bne r6 r0 block_2589
    j block_2588
block_2588:
    mv r5 r0
    j block_2572
block_2589:
    lwcZ f0 r5 0
    lwcZ f1 r7 12
    fmul f0 f0 f1
    swcZ f0 r0 25540
    addi r5 r0 1
    j block_2572
block_2571:
    lw r7 r3 0
    lwcZ f3 r5 0
    fsub f3 f3 f0
    lwcZ f4 r5 4
    fmul f3 f3 f4
    lwcZ f4 r7 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2591
block_2590:
    j block_2592
block_2591:
    fneg f4 f4
    j block_2592
block_2592:
    lw r8 r6 16
    lwcZ f5 r8 4
    fclt f4 f5
    bc1t block_2594
block_2593:
    mv r8 r0
    j block_2595
block_2594:
    lwcZ f4 r7 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2597
block_2596:
    j block_2598
block_2597:
    fneg f4 f4
    j block_2598
block_2598:
    lw r8 r6 16
    lwcZ f5 r8 8
    fclt f4 f5
    bc1t block_2600
block_2599:
    mv r8 r0
    j block_2595
block_2600:
    lwcZ f4 r5 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2602
block_2601:
    mv r8 r0
    j block_2603
block_2602:
    addi r8 r0 1
    j block_2603
block_2603:
    bne r8 r0 block_2605
    j block_2604
block_2604:
    addi r8 r0 1
    j block_2595
block_2605:
    mv r8 r0
    j block_2595
block_2595:
    bne r8 r0 block_2607
    j block_2606
block_2606:
    lwcZ f3 r5 8
    fsub f3 f3 f1
    lwcZ f4 r5 12
    fmul f3 f3 f4
    lwcZ f4 r7 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2609
block_2608:
    j block_2610
block_2609:
    fneg f4 f4
    j block_2610
block_2610:
    lw r8 r6 16
    lwcZ f5 r8 0
    fclt f4 f5
    bc1t block_2612
block_2611:
    mv r8 r0
    j block_2613
block_2612:
    lwcZ f4 r7 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2615
block_2614:
    j block_2616
block_2615:
    fneg f4 f4
    j block_2616
block_2616:
    lw r8 r6 16
    lwcZ f5 r8 8
    fclt f4 f5
    bc1t block_2618
block_2617:
    mv r8 r0
    j block_2613
block_2618:
    lwcZ f4 r5 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2620
block_2619:
    mv r8 r0
    j block_2621
block_2620:
    addi r8 r0 1
    j block_2621
block_2621:
    bne r8 r0 block_2623
    j block_2622
block_2622:
    addi r8 r0 1
    j block_2613
block_2623:
    mv r8 r0
    j block_2613
block_2613:
    bne r8 r0 block_2625
    j block_2624
block_2624:
    lwcZ f3 r5 16
    fsub f2 f3 f2
    lwcZ f3 r5 20
    fmul f2 f2 f3
    lwcZ f3 r7 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_2627
block_2626:
    j block_2628
block_2627:
    fneg f0 f0
    j block_2628
block_2628:
    lw r8 r6 16
    lwcZ f3 r8 0
    fclt f0 f3
    bc1t block_2630
block_2629:
    mv r5 r0
    j block_2631
block_2630:
    lwcZ f0 r7 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2633
block_2632:
    j block_2634
block_2633:
    fneg f0 f0
    j block_2634
block_2634:
    lw r6 r6 16
    lwcZ f1 r6 4
    fclt f0 f1
    bc1t block_2636
block_2635:
    mv r5 r0
    j block_2631
block_2636:
    lwcZ f0 r5 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_2638
block_2637:
    mv r5 r0
    j block_2639
block_2638:
    addi r5 r0 1
    j block_2639
block_2639:
    bne r5 r0 block_2641
    j block_2640
block_2640:
    addi r5 r0 1
    j block_2631
block_2641:
    mv r5 r0
    j block_2631
block_2631:
    bne r5 r0 block_2643
    j block_2642
block_2642:
    mv r5 r0
    j block_2572
block_2643:
    swcZ f2 r0 25540
    addi r5 r0 3
    j block_2572
block_2625:
    swcZ f3 r0 25540
    addi r5 r0 2
    j block_2572
block_2607:
    swcZ f3 r0 25540
    addi r5 r0 1
    j block_2572
block_2572:
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    beq r5 r0 block_2645
block_2644:
    lwcZ f0 r0 25540
    lwcZ f1 r0 25548
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    fclt f0 f1
    bc1t block_2647
block_2646:
    j block_2569
block_2647:
    lw r5 r4 4
    addi r6 r0 -1
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    beq r5 r6 block_2649
block_2648:
    sll r5 r5 2
    lw r5 r5 25332
    sw r2 r29 20
    sw r1 r29 16
    sw r4 r29 8
    sw r3 r29 4
    mv r2 r5
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_2651
block_2650:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2653
block_2652:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2655
block_2654:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2657
block_2656:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2659
block_2658:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 28
    addi r3 r0 -1
    beq r2 r3 block_2661
block_2660:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 8
    lw r2 r29 8
    lw r3 r29 4
    sw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network_fast.4471
    subi r29 r29 28
    lw r31 r29 24
    j block_2569
block_2661:
    j block_2569
block_2659:
    j block_2569
block_2657:
    j block_2569
block_2655:
    j block_2569
block_2653:
    j block_2569
block_2651:
    j block_2569
block_2649:
    j block_2569
block_2645:
    j block_2569
block_2568:
    lw r5 r4 4
    addi r6 r0 -1
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    beq r5 r6 block_2663
block_2662:
    sll r5 r5 2
    lw r5 r5 25332
    sw r2 r29 20
    sw r1 r29 16
    sw r4 r29 8
    sw r3 r29 4
    mv r2 r5
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_2665
block_2664:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2667
block_2666:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2669
block_2668:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2671
block_2670:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2673
block_2672:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 28
    addi r3 r0 -1
    beq r2 r3 block_2675
block_2674:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 8
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 8
    lw r2 r29 8
    lw r3 r29 4
    sw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network_fast.4471
    subi r29 r29 28
    lw r31 r29 24
    j block_2569
block_2675:
    j block_2569
block_2673:
    j block_2569
block_2671:
    j block_2569
block_2669:
    j block_2569
block_2667:
    j block_2569
block_2665:
    j block_2569
block_2663:
    j block_2569
block_2569:
    lw r1 r29 16
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 20
    lwab r2 r3 r2
    lw r4 r2 0
    addi r5 r0 -1
    beq r4 r5 block_2677
block_2676:
    addi r5 r0 99
    sw r3 r29 20
    sw r1 r29 0
    beq r4 r5 block_2679
block_2678:
    sll r5 r4 2
    lw r5 r5 25048
    lw r6 r5 40
    lwcZ f0 r6 0
    lwcZ f1 r6 4
    lwcZ f2 r6 8
    lw r7 r29 4
    lw r8 r7 4
    sll r4 r4 2
    lwab r4 r8 r4
    lw r8 r5 4
    addi r9 r0 1
    beq r8 r9 block_2682
block_2681:
    addi r9 r0 2
    beq r8 r9 block_2685
block_2684:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2687
block_2686:
    lwcZ f4 r4 4
    fmul f0 f4 f0
    lwcZ f4 r4 8
    fmul f1 f4 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r6 12
    fmul f2 f0 f0
    fmul f1 f3 f1
    fsub f1 f2 f1
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_2689
block_2688:
    mv r6 r0
    j block_2690
block_2689:
    addi r6 r0 1
    j block_2690
block_2690:
    bne r6 r0 block_2692
    j block_2691
block_2691:
    mv r4 r0
    j block_2683
block_2692:
    lw r5 r5 24
    bne r5 r0 block_2694
    j block_2693
block_2693:
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fsub f0 f0 f1
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_2695
block_2694:
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_2695
block_2695:
    addi r4 r0 1
    j block_2683
block_2687:
    mv r4 r0
    j block_2683
block_2685:
    lwcZ f0 r4 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2697
block_2696:
    mv r5 r0
    j block_2698
block_2697:
    addi r5 r0 1
    j block_2698
block_2698:
    bne r5 r0 block_2700
    j block_2699
block_2699:
    mv r4 r0
    j block_2683
block_2700:
    lwcZ f0 r4 0
    lwcZ f1 r6 12
    fmul f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_2683
block_2682:
    lw r6 r7 0
    lwcZ f3 r4 0
    fsub f3 f3 f0
    lwcZ f4 r4 4
    fmul f3 f3 f4
    lwcZ f4 r6 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2702
block_2701:
    j block_2703
block_2702:
    fneg f4 f4
    j block_2703
block_2703:
    lw r8 r5 16
    lwcZ f5 r8 4
    fclt f4 f5
    bc1t block_2705
block_2704:
    mv r8 r0
    j block_2706
block_2705:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2708
block_2707:
    j block_2709
block_2708:
    fneg f4 f4
    j block_2709
block_2709:
    lw r8 r5 16
    lwcZ f5 r8 8
    fclt f4 f5
    bc1t block_2711
block_2710:
    mv r8 r0
    j block_2706
block_2711:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2713
block_2712:
    mv r8 r0
    j block_2714
block_2713:
    addi r8 r0 1
    j block_2714
block_2714:
    bne r8 r0 block_2716
    j block_2715
block_2715:
    addi r8 r0 1
    j block_2706
block_2716:
    mv r8 r0
    j block_2706
block_2706:
    bne r8 r0 block_2718
    j block_2717
block_2717:
    lwcZ f3 r4 8
    fsub f3 f3 f1
    lwcZ f4 r4 12
    fmul f3 f3 f4
    lwcZ f4 r6 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2720
block_2719:
    j block_2721
block_2720:
    fneg f4 f4
    j block_2721
block_2721:
    lw r8 r5 16
    lwcZ f5 r8 0
    fclt f4 f5
    bc1t block_2723
block_2722:
    mv r8 r0
    j block_2724
block_2723:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2726
block_2725:
    j block_2727
block_2726:
    fneg f4 f4
    j block_2727
block_2727:
    lw r8 r5 16
    lwcZ f5 r8 8
    fclt f4 f5
    bc1t block_2729
block_2728:
    mv r8 r0
    j block_2724
block_2729:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2731
block_2730:
    mv r8 r0
    j block_2732
block_2731:
    addi r8 r0 1
    j block_2732
block_2732:
    bne r8 r0 block_2734
    j block_2733
block_2733:
    addi r8 r0 1
    j block_2724
block_2734:
    mv r8 r0
    j block_2724
block_2724:
    bne r8 r0 block_2736
    j block_2735
block_2735:
    lwcZ f3 r4 16
    fsub f2 f3 f2
    lwcZ f3 r4 20
    fmul f2 f2 f3
    lwcZ f3 r6 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_2738
block_2737:
    j block_2739
block_2738:
    fneg f0 f0
    j block_2739
block_2739:
    lw r8 r5 16
    lwcZ f3 r8 0
    fclt f0 f3
    bc1t block_2741
block_2740:
    mv r4 r0
    j block_2742
block_2741:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2744
block_2743:
    j block_2745
block_2744:
    fneg f0 f0
    j block_2745
block_2745:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_2747
block_2746:
    mv r4 r0
    j block_2742
block_2747:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_2749
block_2748:
    mv r4 r0
    j block_2750
block_2749:
    addi r4 r0 1
    j block_2750
block_2750:
    bne r4 r0 block_2752
    j block_2751
block_2751:
    addi r4 r0 1
    j block_2742
block_2752:
    mv r4 r0
    j block_2742
block_2742:
    bne r4 r0 block_2754
    j block_2753
block_2753:
    mv r4 r0
    j block_2683
block_2754:
    swcZ f2 r0 25540
    addi r4 r0 3
    j block_2683
block_2736:
    swcZ f3 r0 25540
    addi r4 r0 2
    j block_2683
block_2718:
    swcZ f3 r0 25540
    addi r4 r0 1
    j block_2683
block_2683:
    sw r3 r29 20
    sw r7 r29 4
    sw r1 r29 0
    beq r4 r0 block_2756
block_2755:
    lwcZ f0 r0 25540
    lwcZ f1 r0 25548
    sw r3 r29 20
    sw r7 r29 4
    sw r1 r29 0
    fclt f0 f1
    bc1t block_2758
block_2757:
    j block_2680
block_2758:
    lw r4 r2 4
    addi r5 r0 -1
    sw r3 r29 20
    sw r7 r29 4
    sw r1 r29 0
    beq r4 r5 block_2760
block_2759:
    sll r4 r4 2
    lw r4 r4 25332
    sw r3 r29 20
    sw r2 r29 12
    sw r7 r29 4
    sw r1 r29 0
    mv r3 r7
    mv r2 r4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_2762
block_2761:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2764
block_2763:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2766
block_2765:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2768
block_2767:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2770
block_2769:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 7
    lw r2 r29 12
    lw r3 r29 4
    sw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network_fast.4471
    subi r29 r29 28
    lw r31 r29 24
    j block_2680
block_2770:
    j block_2680
block_2768:
    j block_2680
block_2766:
    j block_2680
block_2764:
    j block_2680
block_2762:
    j block_2680
block_2760:
    j block_2680
block_2756:
    j block_2680
block_2679:
    lw r4 r2 4
    addi r5 r0 -1
    sw r3 r29 20
    sw r1 r29 0
    beq r4 r5 block_2772
block_2771:
    sll r4 r4 2
    lw r4 r4 25332
    lw r5 r29 4
    sw r3 r29 20
    sw r2 r29 12
    sw r5 r29 4
    sw r1 r29 0
    mv r3 r5
    mv r2 r4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_2774
block_2773:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2776
block_2775:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2778
block_2777:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2780
block_2779:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2782
block_2781:
    sll r2 r2 2
    lw r2 r2 25332
    lw r3 r29 4
    sw r1 r29 12
    sw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 7
    lw r2 r29 12
    lw r3 r29 4
    sw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network_fast.4471
    subi r29 r29 28
    lw r31 r29 24
    j block_2680
block_2782:
    j block_2680
block_2780:
    j block_2680
block_2778:
    j block_2680
block_2776:
    j block_2680
block_2774:
    j block_2680
block_2772:
    j block_2680
block_2680:
    lw r1 r29 0
    addi r1 r1 1
    lw r2 r29 20
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_or_matrix_fast.4483
    subi r29 r29 28
    lw r31 r29 24
    jr r31
block_2677:
    jr r31
block_2566:
    jr r31
trace_ray.4807:
block_3051:
    addi r4 r0 4
    addi r5 r0 25552
    blt r4 r1 block_3053
block_3052:
    lw r4 r3 8
    #1000000000.0
    flui f2 20078
    fori f2 f2 27432
    swcZ f2 r0 25548
    lw r6 r0 25536
    sw r3 r29 48
    sw r1 r29 40
    sw r4 r29 32
    sw r5 r29 28
    swcZ f0 r29 16
    swcZ f1 r29 12
    sw r2 r29 8
    mv r3 r2
    mv r1 r0
    mv r2 r6
    sw r31 r29 52
    addi r29 r29 56
    jal trace_or_matrix.4387
    subi r29 r29 56
    lw r31 r29 52
    lwcZ f0 r0 25548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_3055
block_3054:
    mv r1 r0
    j block_3056
block_3055:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_3058
block_3057:
    mv r1 r0
    j block_3056
block_3058:
    addi r1 r0 1
    j block_3056
block_3056:
    bne r1 r0 block_3060
    j block_3059
block_3059:
    addi r1 r0 -1
    lw r2 r29 40
    sll r3 r2 2
    lw r4 r29 32
    swab r1 r4 r3
    beq r2 r0 block_3062
block_3061:
    lw r1 r29 8
    lwcZ f0 r1 0
    lwcZ f1 r0 25312
    fmul f0 f0 f1
    lwcZ f1 r1 4
    lwcZ f2 r0 25316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r1 8
    lwcZ f2 r0 25320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3064
block_3063:
    mv r1 r0
    j block_3065
block_3064:
    addi r1 r0 1
    j block_3065
block_3065:
    bne r1 r0 block_3067
    j block_3066
block_3066:
    jr r31
block_3067:
    fmul f1 f0 f0
    fmul f0 f1 f0
    lwcZ f1 r29 16
    fmul f0 f0 f1
    lwcZ f1 r0 25324
    fmul f0 f0 f1
    lwcZ f1 r0 25604
    fadd f1 f1 f0
    swcZ f1 r0 25604
    lwcZ f1 r0 25608
    fadd f1 f1 f0
    swcZ f1 r0 25608
    lwcZ f1 r0 25612
    fadd f0 f1 f0
    swcZ f0 r0 25612
    jr r31
block_3062:
    jr r31
block_3060:
    lw r1 r0 25564
    sll r2 r1 2
    lw r2 r2 25048
    lw r3 r2 8
    lw r4 r2 28
    lwcZ f0 r4 0
    lwcZ f1 r29 16
    fmul f0 f0 f1
    lw r4 r2 4
    addi r5 r0 1
    beq r4 r5 block_3069
block_3068:
    addi r5 r0 2
    beq r4 r5 block_3072
block_3071:
    lwcZ f2 r0 25552
    lw r4 r2 20
    lwcZ f3 r4 0
    fsub f2 f2 f3
    lwcZ f3 r0 25556
    lw r4 r2 20
    lwcZ f4 r4 4
    fsub f3 f3 f4
    lwcZ f4 r0 25560
    lw r4 r2 20
    lwcZ f5 r4 8
    fsub f4 f4 f5
    lw r4 r2 16
    lwcZ f5 r4 0
    fmul f5 f2 f5
    lw r4 r2 16
    lwcZ f6 r4 4
    fmul f6 f3 f6
    lw r4 r2 16
    lwcZ f7 r4 8
    fmul f7 f4 f7
    lw r4 r2 12
    beq r4 r0 block_3074
block_3073:
    lw r4 r2 36
    lwcZ f8 r4 8
    fmul f8 f3 f8
    lw r4 r2 36
    lwcZ f9 r4 4
    fmul f9 f4 f9
    fadd f8 f8 f9
    #0.5
    flui f9 16128
    fmul f8 f8 f9
    fadd f5 f5 f8
    swcZ f5 r0 25568
    lw r4 r2 36
    lwcZ f5 r4 8
    fmul f5 f2 f5
    lw r4 r2 36
    lwcZ f8 r4 0
    fmul f4 f4 f8
    fadd f4 f5 f4
    #0.5
    flui f5 16128
    fmul f4 f4 f5
    fadd f4 f6 f4
    swcZ f4 r0 25572
    lw r4 r2 36
    lwcZ f4 r4 4
    fmul f2 f2 f4
    lw r4 r2 36
    lwcZ f4 r4 0
    fmul f3 f3 f4
    fadd f2 f2 f3
    #0.5
    flui f3 16128
    fmul f2 f2 f3
    fadd f2 f7 f2
    swcZ f2 r0 25576
    j block_3075
block_3074:
    swcZ f5 r0 25568
    swcZ f6 r0 25572
    swcZ f7 r0 25576
    j block_3075
block_3075:
    lw r4 r2 24
    lwcZ f2 r0 25568
    fmul f2 f2 f2
    lwcZ f3 r0 25572
    fmul f3 f3 f3
    fadd f2 f2 f3
    lwcZ f3 r0 25576
    fmul f3 f3 f3
    fadd f2 f2 f3
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    #0.0
    flui f3 0
    fsub f31 f2 f3
    fcz f31
    bc1t block_3077
block_3076:
    bne r4 r0 block_3080
    j block_3079
block_3079:
    #1.0
    flui f3 16256
    finv_init f4 f2
    #2.0
    flui f5 16384
    fmul f2 f2 f4
    fsub f2 f5 f2
    fmul f2 f4 f2
    fmul f2 f3 f2
    j block_3078
block_3080:
    #-1.0
    flui f3 -16512
    finv_init f4 f2
    #2.0
    flui f5 16384
    fmul f2 f2 f4
    fsub f2 f5 f2
    fmul f2 f4 f2
    fmul f2 f3 f2
    j block_3078
block_3077:
    #1.0
    flui f2 16256
    j block_3078
block_3078:
    lwcZ f3 r0 25568
    fmul f3 f3 f2
    swcZ f3 r0 25568
    lwcZ f3 r0 25572
    fmul f3 f3 f2
    swcZ f3 r0 25572
    lwcZ f3 r0 25576
    fmul f2 f3 f2
    swcZ f2 r0 25576
    j block_3070
block_3072:
    lw r4 r2 16
    lwcZ f2 r4 0
    fneg f2 f2
    swcZ f2 r0 25568
    lw r4 r2 16
    lwcZ f2 r4 4
    fneg f2 f2
    swcZ f2 r0 25572
    lw r4 r2 16
    lwcZ f2 r4 8
    fneg f2 f2
    swcZ f2 r0 25576
    j block_3070
block_3069:
    lw r4 r0 25544
    #0.0
    flui f2 0
    swcZ f2 r0 25568
    swcZ f2 r0 25572
    swcZ f2 r0 25576
    subi r5 r4 1
    subi r4 r4 1
    sll r4 r4 2
    lw r6 r29 8
    flwab f2 r6 r4
    #0.0
    flui f3 0
    fsub f31 f2 f3
    fcz f31
    bc1t block_3082
block_3081:
    #0.0
    flui f3 0
    fclt f3 f2
    bc1t block_3085
block_3084:
    mv r4 r0
    j block_3086
block_3085:
    addi r4 r0 1
    j block_3086
block_3086:
    bne r4 r0 block_3088
    j block_3087
block_3087:
    #-1.0
    flui f2 -16512
    j block_3083
block_3088:
    #1.0
    flui f2 16256
    j block_3083
block_3082:
    #0.0
    flui f2 0
    j block_3083
block_3083:
    fneg f2 f2
    sll r4 r5 2
    swcZ f2 r4 25568
    j block_3070
block_3070:
    lwcZ f2 r0 25552
    swcZ f2 r0 25636
    lwcZ f2 r0 25556
    swcZ f2 r0 25640
    lwcZ f2 r0 25560
    swcZ f2 r0 25644
    lw r4 r2 0
    lw r5 r2 32
    lwcZ f2 r5 0
    swcZ f2 r0 25580
    lw r5 r2 32
    lwcZ f2 r5 4
    swcZ f2 r0 25584
    lw r5 r2 32
    lwcZ f2 r5 8
    swcZ f2 r0 25588
    addi r5 r0 1
    beq r4 r5 block_3090
block_3089:
    addi r5 r0 2
    beq r4 r5 block_3093
block_3092:
    addi r5 r0 3
    beq r4 r5 block_3095
block_3094:
    addi r5 r0 4
    beq r4 r5 block_3097
block_3096:
    j block_3091
block_3097:
    lwcZ f2 r0 25552
    lw r4 r2 20
    lwcZ f3 r4 0
    fsub f2 f2 f3
    lw r4 r2 16
    lwcZ f3 r4 0
    sqrt_init f4 f3
    fmul f3 f3 f4
    #1.5
    flui f5 16320
    #0.5
    flui f6 16128
    fmul f4 f6 f4
    fmul f4 f4 f3
    fsub f4 f5 f4
    fmul f3 f3 f4
    fmul f2 f2 f3
    lwcZ f3 r0 25560
    lw r4 r2 20
    lwcZ f4 r4 8
    fsub f3 f3 f4
    lw r4 r2 16
    lwcZ f4 r4 8
    sqrt_init f5 f4
    fmul f4 f4 f5
    #1.5
    flui f6 16320
    #0.5
    flui f7 16128
    fmul f5 f7 f5
    fmul f5 f5 f4
    fsub f5 f6 f5
    fmul f4 f4 f5
    fmul f3 f3 f4
    fmul f4 f2 f2
    fmul f5 f3 f3
    fadd f4 f4 f5
    #0.0
    flui f5 0
    fclt f2 f5
    bc1t block_3099
block_3098:
    fmv f5 f2
    j block_3100
block_3099:
    fneg f5 f2
    j block_3100
block_3100:
    #0.0001
    flui f6 14545
    fori f6 f6 -18665
    fclt f5 f6
    bc1t block_3102
block_3101:
    finv_init f5 f2
    #2.0
    flui f6 16384
    fmul f2 f2 f5
    fsub f2 f6 f2
    fmul f2 f5 f2
    fmul f2 f3 f2
    #0.0
    flui f3 0
    fclt f2 f3
    bc1t block_3105
block_3104:
    j block_3106
block_3105:
    fneg f2 f2
    j block_3106
block_3106:
    #0.0
    flui f3 0
    fclt f3 f2
    bc1t block_3108
block_3107:
    mv r4 r0
    j block_3109
block_3108:
    addi r4 r0 1
    j block_3109
block_3109:
    bne r4 r0 block_3111
    j block_3110
block_3110:
    fneg f2 f2
    j block_3112
block_3111:
    j block_3112
block_3112:
    #0.4375
    flui f3 16096
    fclt f2 f3
    bc1t block_3114
block_3113:
    #2.4375
    flui f3 16412
    fclt f2 f3
    bc1t block_3117
block_3116:
    #1.5707964
    flui f3 16329
    fori f3 f3 4059
    #1.0
    flui f5 16256
    finv_init f6 f2
    #2.0
    flui f7 16384
    fmul f2 f2 f6
    fsub f2 f7 f2
    fmul f2 f6 f2
    fmul f2 f5 f2
    fmul f5 f2 f2
    fmul f6 f5 f2
    fmul f7 f5 f6
    fmul f8 f5 f7
    fmul f9 f5 f8
    fmul f10 f5 f9
    fmul f5 f5 f10
    #0.3333333
    flui f11 16042
    fori f11 f11 -21846
    fmul f6 f11 f6
    fsub f2 f2 f6
    #0.2
    flui f6 15948
    fori f6 f6 -13107
    fmul f6 f6 f7
    fadd f2 f2 f6
    #0.14285715
    flui f6 15890
    fori f6 f6 18725
    fmul f6 f6 f8
    fsub f2 f2 f6
    #0.111111104
    flui f6 15843
    fori f6 f6 -29128
    fmul f6 f6 f9
    fadd f2 f2 f6
    #0.08976446
    flui f6 15799
    fori f6 f6 -10642
    fmul f6 f6 f10
    fsub f2 f2 f6
    #0.060035486
    flui f6 15733
    fori f6 f6 -6203
    fmul f5 f6 f5
    fadd f2 f2 f5
    fsub f2 f3 f2
    j block_3115
block_3117:
    #0.7853982
    flui f3 16201
    fori f3 f3 4059
    #1.0
    flui f5 16256
    fsub f5 f2 f5
    #1.0
    flui f6 16256
    fadd f2 f2 f6
    finv_init f6 f2
    #2.0
    flui f7 16384
    fmul f2 f2 f6
    fsub f2 f7 f2
    fmul f2 f6 f2
    fmul f2 f5 f2
    fmul f5 f2 f2
    fmul f6 f5 f2
    fmul f7 f5 f6
    fmul f8 f5 f7
    fmul f9 f5 f8
    fmul f10 f5 f9
    fmul f5 f5 f10
    #0.3333333
    flui f11 16042
    fori f11 f11 -21846
    fmul f6 f11 f6
    fsub f2 f2 f6
    #0.2
    flui f6 15948
    fori f6 f6 -13107
    fmul f6 f6 f7
    fadd f2 f2 f6
    #0.14285715
    flui f6 15890
    fori f6 f6 18725
    fmul f6 f6 f8
    fsub f2 f2 f6
    #0.111111104
    flui f6 15843
    fori f6 f6 -29128
    fmul f6 f6 f9
    fadd f2 f2 f6
    #0.08976446
    flui f6 15799
    fori f6 f6 -10642
    fmul f6 f6 f10
    fsub f2 f2 f6
    #0.060035486
    flui f6 15733
    fori f6 f6 -6203
    fmul f5 f6 f5
    fadd f2 f2 f5
    fadd f2 f3 f2
    j block_3115
block_3114:
    fmul f3 f2 f2
    fmul f5 f3 f2
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f9 f3 f8
    fmul f3 f3 f9
    #0.3333333
    flui f10 16042
    fori f10 f10 -21846
    fmul f5 f10 f5
    fsub f2 f2 f5
    #0.2
    flui f5 15948
    fori f5 f5 -13107
    fmul f5 f5 f6
    fadd f2 f2 f5
    #0.14285715
    flui f5 15890
    fori f5 f5 18725
    fmul f5 f5 f7
    fsub f2 f2 f5
    #0.111111104
    flui f5 15843
    fori f5 f5 -29128
    fmul f5 f5 f8
    fadd f2 f2 f5
    #0.08976446
    flui f5 15799
    fori f5 f5 -10642
    fmul f5 f5 f9
    fsub f2 f2 f5
    #0.060035486
    flui f5 15733
    fori f5 f5 -6203
    fmul f3 f5 f3
    fadd f2 f2 f3
    j block_3115
block_3115:
    bne r4 r0 block_3119
    j block_3118
block_3118:
    fneg f2 f2
    j block_3120
block_3119:
    j block_3120
block_3120:
    #30.0
    flui f3 16880
    fmul f2 f2 f3
    #0.31830987
    flui f3 16034
    fori f3 f3 -1661
    fmul f2 f2 f3
    j block_3103
block_3102:
    #15.0
    flui f2 16752
    j block_3103
block_3103:
    ftoi r4 f2
    itof f3 r4
    fclt f2 f3
    bc1t block_3122
block_3121:
    j block_3123
block_3122:
    #1.0
    flui f5 16256
    fsub f3 f3 f5
    j block_3123
block_3123:
    fsub f2 f2 f3
    lwcZ f3 r0 25556
    lw r4 r2 20
    lwcZ f5 r4 4
    fsub f3 f3 f5
    lw r4 r2 16
    lwcZ f5 r4 4
    sqrt_init f6 f5
    fmul f5 f5 f6
    #1.5
    flui f7 16320
    #0.5
    flui f8 16128
    fmul f6 f8 f6
    fmul f6 f6 f5
    fsub f6 f7 f6
    fmul f5 f5 f6
    fmul f3 f3 f5
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3125
block_3124:
    fmv f5 f4
    j block_3126
block_3125:
    fneg f5 f4
    j block_3126
block_3126:
    #0.0001
    flui f6 14545
    fori f6 f6 -18665
    fclt f5 f6
    bc1t block_3128
block_3127:
    finv_init f5 f4
    #2.0
    flui f6 16384
    fmul f4 f4 f5
    fsub f4 f6 f4
    fmul f4 f5 f4
    fmul f3 f3 f4
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_3131
block_3130:
    j block_3132
block_3131:
    fneg f3 f3
    j block_3132
block_3132:
    #0.0
    flui f4 0
    fclt f4 f3
    bc1t block_3134
block_3133:
    mv r4 r0
    j block_3135
block_3134:
    addi r4 r0 1
    j block_3135
block_3135:
    bne r4 r0 block_3137
    j block_3136
block_3136:
    fneg f3 f3
    j block_3138
block_3137:
    j block_3138
block_3138:
    #0.4375
    flui f4 16096
    fclt f3 f4
    bc1t block_3140
block_3139:
    #2.4375
    flui f4 16412
    fclt f3 f4
    bc1t block_3143
block_3142:
    #1.5707964
    flui f4 16329
    fori f4 f4 4059
    #1.0
    flui f5 16256
    finv_init f6 f3
    #2.0
    flui f7 16384
    fmul f3 f3 f6
    fsub f3 f7 f3
    fmul f3 f6 f3
    fmul f3 f5 f3
    fmul f5 f3 f3
    fmul f6 f5 f3
    fmul f7 f5 f6
    fmul f8 f5 f7
    fmul f9 f5 f8
    fmul f10 f5 f9
    fmul f5 f5 f10
    #0.3333333
    flui f11 16042
    fori f11 f11 -21846
    fmul f6 f11 f6
    fsub f3 f3 f6
    #0.2
    flui f6 15948
    fori f6 f6 -13107
    fmul f6 f6 f7
    fadd f3 f3 f6
    #0.14285715
    flui f6 15890
    fori f6 f6 18725
    fmul f6 f6 f8
    fsub f3 f3 f6
    #0.111111104
    flui f6 15843
    fori f6 f6 -29128
    fmul f6 f6 f9
    fadd f3 f3 f6
    #0.08976446
    flui f6 15799
    fori f6 f6 -10642
    fmul f6 f6 f10
    fsub f3 f3 f6
    #0.060035486
    flui f6 15733
    fori f6 f6 -6203
    fmul f5 f6 f5
    fadd f3 f3 f5
    fsub f3 f4 f3
    j block_3141
block_3143:
    #0.7853982
    flui f4 16201
    fori f4 f4 4059
    #1.0
    flui f5 16256
    fsub f5 f3 f5
    #1.0
    flui f6 16256
    fadd f3 f3 f6
    finv_init f6 f3
    #2.0
    flui f7 16384
    fmul f3 f3 f6
    fsub f3 f7 f3
    fmul f3 f6 f3
    fmul f3 f5 f3
    fmul f5 f3 f3
    fmul f6 f5 f3
    fmul f7 f5 f6
    fmul f8 f5 f7
    fmul f9 f5 f8
    fmul f10 f5 f9
    fmul f5 f5 f10
    #0.3333333
    flui f11 16042
    fori f11 f11 -21846
    fmul f6 f11 f6
    fsub f3 f3 f6
    #0.2
    flui f6 15948
    fori f6 f6 -13107
    fmul f6 f6 f7
    fadd f3 f3 f6
    #0.14285715
    flui f6 15890
    fori f6 f6 18725
    fmul f6 f6 f8
    fsub f3 f3 f6
    #0.111111104
    flui f6 15843
    fori f6 f6 -29128
    fmul f6 f6 f9
    fadd f3 f3 f6
    #0.08976446
    flui f6 15799
    fori f6 f6 -10642
    fmul f6 f6 f10
    fsub f3 f3 f6
    #0.060035486
    flui f6 15733
    fori f6 f6 -6203
    fmul f5 f6 f5
    fadd f3 f3 f5
    fadd f3 f4 f3
    j block_3141
block_3140:
    fmul f4 f3 f3
    fmul f5 f4 f3
    fmul f6 f4 f5
    fmul f7 f4 f6
    fmul f8 f4 f7
    fmul f9 f4 f8
    fmul f4 f4 f9
    #0.3333333
    flui f10 16042
    fori f10 f10 -21846
    fmul f5 f10 f5
    fsub f3 f3 f5
    #0.2
    flui f5 15948
    fori f5 f5 -13107
    fmul f5 f5 f6
    fadd f3 f3 f5
    #0.14285715
    flui f5 15890
    fori f5 f5 18725
    fmul f5 f5 f7
    fsub f3 f3 f5
    #0.111111104
    flui f5 15843
    fori f5 f5 -29128
    fmul f5 f5 f8
    fadd f3 f3 f5
    #0.08976446
    flui f5 15799
    fori f5 f5 -10642
    fmul f5 f5 f9
    fsub f3 f3 f5
    #0.060035486
    flui f5 15733
    fori f5 f5 -6203
    fmul f4 f5 f4
    fadd f3 f3 f4
    j block_3141
block_3141:
    bne r4 r0 block_3145
    j block_3144
block_3144:
    fneg f3 f3
    j block_3146
block_3145:
    j block_3146
block_3146:
    #30.0
    flui f4 16880
    fmul f3 f3 f4
    #0.31830987
    flui f4 16034
    fori f4 f4 -1661
    fmul f3 f3 f4
    j block_3129
block_3128:
    #15.0
    flui f3 16752
    j block_3129
block_3129:
    ftoi r4 f3
    itof f4 r4
    fclt f3 f4
    bc1t block_3148
block_3147:
    j block_3149
block_3148:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_3149
block_3149:
    fsub f3 f3 f4
    #0.15
    flui f4 15897
    fori f4 f4 -26214
    #0.5
    flui f5 16128
    fsub f2 f5 f2
    fmul f2 f2 f2
    fsub f2 f4 f2
    #0.5
    flui f4 16128
    fsub f3 f4 f3
    fmul f3 f3 f3
    fsub f2 f2 f3
    #0.0
    flui f3 0
    fclt f2 f3
    bc1t block_3151
block_3150:
    mv r4 r0
    j block_3152
block_3151:
    addi r4 r0 1
    j block_3152
block_3152:
    bne r4 r0 block_3154
    j block_3153
block_3153:
    j block_3155
block_3154:
    #0.0
    flui f2 0
    j block_3155
block_3155:
    #255.0
    flui f3 17279
    fmul f2 f3 f2
    #3.3333333
    flui f3 16469
    fori f3 f3 21845
    fmul f2 f2 f3
    swcZ f2 r0 25588
    j block_3091
block_3095:
    lwcZ f2 r0 25552
    lw r4 r2 20
    lwcZ f3 r4 0
    fsub f2 f2 f3
    lwcZ f3 r0 25560
    lw r4 r2 20
    lwcZ f4 r4 8
    fsub f3 f3 f4
    fmul f2 f2 f2
    fmul f3 f3 f3
    fadd f2 f2 f3
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    #0.1
    flui f3 15820
    fori f3 f3 -13107
    fmul f2 f2 f3
    ftoi r4 f2
    itof f3 r4
    fclt f2 f3
    bc1t block_3157
block_3156:
    j block_3158
block_3157:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_3158
block_3158:
    fsub f2 f2 f3
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    fmul f2 f2 f3
    #0.7853982
    flui f3 16201
    fori f3 f3 4059
    #1.5707964
    flui f4 16329
    fori f4 f4 4059
    #3.1415927
    flui f5 16457
    fori f5 f5 4059
    #6.2831855
    flui f6 16585
    fori f6 f6 4059
    #0.15915494
    flui f7 15906
    fori f7 f7 -1661
    fmul f7 f2 f7
    ftoi r4 f7
    itof f7 r4
    fmul f6 f6 f7
    fsub f2 f2 f6
    #0.0
    flui f6 0
    fclt f6 f2
    bc1t block_3160
block_3159:
    fneg f2 f2
    j block_3161
block_3160:
    j block_3161
block_3161:
    fclt f5 f2
    bc1t block_3163
block_3162:
    addi r4 r0 1
    j block_3164
block_3163:
    addi r4 r0 -1
    j block_3164
block_3164:
    fclt f5 f2
    bc1t block_3166
block_3165:
    j block_3167
block_3166:
    fsub f2 f2 f5
    j block_3167
block_3167:
    fclt f4 f2
    bc1t block_3169
block_3168:
    j block_3170
block_3169:
    sub r4 r0 r4
    j block_3170
block_3170:
    fclt f4 f2
    bc1t block_3172
block_3171:
    j block_3173
block_3172:
    fsub f2 f5 f2
    j block_3173
block_3173:
    fclt f2 f3
    bc1t block_3175
block_3174:
    fsub f2 f4 f2
    fmul f3 f2 f2
    fmul f4 f3 f2
    fmul f5 f4 f3
    fmul f3 f5 f3
    #0.16666669
    flui f6 15914
    fori f6 f6 -21844
    fmul f4 f6 f4
    fsub f2 f2 f4
    #0.008332824
    flui f4 15368
    fori f4 f4 -31130
    fmul f4 f4 f5
    fadd f2 f2 f4
    #0.00019587841
    flui f4 14669
    fori f4 f4 25782
    fmul f3 f4 f3
    fsub f2 f2 f3
    j block_3176
block_3175:
    fmul f2 f2 f2
    fmul f3 f2 f2
    fmul f4 f3 f2
    #1.0
    flui f5 16256
    #0.5
    flui f6 16128
    fmul f2 f6 f2
    fsub f2 f5 f2
    #0.04166368
    flui f5 15658
    fori f5 f5 -22647
    fmul f3 f5 f3
    fadd f2 f2 f3
    #0.0013695068
    flui f3 15027
    fori f3 f3 -32506
    fmul f3 f3 f4
    fsub f2 f2 f3
    j block_3176
block_3176:
    addi r5 r0 -1
    beq r4 r5 block_3178
block_3177:
    j block_3179
block_3178:
    fneg f2 f2
    j block_3179
block_3179:
    fmul f2 f2 f2
    #255.0
    flui f3 17279
    fmul f3 f2 f3
    swcZ f3 r0 25584
    #1.0
    flui f3 16256
    fsub f2 f3 f2
    #255.0
    flui f3 17279
    fmul f2 f2 f3
    swcZ f2 r0 25588
    j block_3091
block_3093:
    lwcZ f2 r0 25556
    #0.25
    flui f3 16000
    fmul f2 f2 f3
    #0.7853982
    flui f3 16201
    fori f3 f3 4059
    #1.5707964
    flui f4 16329
    fori f4 f4 4059
    #3.1415927
    flui f5 16457
    fori f5 f5 4059
    #6.2831855
    flui f6 16585
    fori f6 f6 4059
    #0.15915494
    flui f7 15906
    fori f7 f7 -1661
    fmul f7 f2 f7
    ftoi r4 f7
    itof f7 r4
    fmul f7 f6 f7
    fsub f2 f2 f7
    #0.0
    flui f7 0
    fclt f7 f2
    bc1t block_3181
block_3180:
    fadd f2 f2 f6
    j block_3182
block_3181:
    j block_3182
block_3182:
    fclt f5 f2
    bc1t block_3184
block_3183:
    addi r4 r0 1
    j block_3185
block_3184:
    mv r4 r0
    j block_3185
block_3185:
    fclt f5 f2
    bc1t block_3187
block_3186:
    j block_3188
block_3187:
    fsub f2 f2 f5
    j block_3188
block_3188:
    fclt f4 f2
    bc1t block_3190
block_3189:
    j block_3191
block_3190:
    fsub f2 f5 f2
    j block_3191
block_3191:
    fclt f3 f2
    bc1t block_3193
block_3192:
    fmul f3 f2 f2
    fmul f4 f3 f2
    fmul f5 f4 f3
    fmul f3 f5 f3
    #0.16666669
    flui f6 15914
    fori f6 f6 -21844
    fmul f4 f6 f4
    fsub f2 f2 f4
    #0.008332824
    flui f4 15368
    fori f4 f4 -31130
    fmul f4 f4 f5
    fadd f2 f2 f4
    #0.00019587841
    flui f4 14669
    fori f4 f4 25782
    fmul f3 f4 f3
    fsub f2 f2 f3
    j block_3194
block_3193:
    fsub f2 f4 f2
    fmul f2 f2 f2
    fmul f3 f2 f2
    fmul f4 f3 f2
    #1.0
    flui f5 16256
    #0.5
    flui f6 16128
    fmul f2 f6 f2
    fsub f2 f5 f2
    #0.04166368
    flui f5 15658
    fori f5 f5 -22647
    fmul f3 f5 f3
    fadd f2 f2 f3
    #0.0013695068
    flui f3 15027
    fori f3 f3 -32506
    fmul f3 f3 f4
    fsub f2 f2 f3
    j block_3194
block_3194:
    bne r4 r0 block_3196
    j block_3195
block_3195:
    fneg f2 f2
    j block_3197
block_3196:
    j block_3197
block_3197:
    fmul f2 f2 f2
    #255.0
    flui f3 17279
    fmul f3 f3 f2
    swcZ f3 r0 25580
    #255.0
    flui f3 17279
    #1.0
    flui f4 16256
    fsub f2 f4 f2
    fmul f2 f3 f2
    swcZ f2 r0 25584
    j block_3091
block_3090:
    lwcZ f2 r0 25552
    lw r4 r2 20
    lwcZ f3 r4 0
    fsub f2 f2 f3
    #0.05
    flui f3 15692
    fori f3 f3 -13107
    fmul f3 f2 f3
    ftoi r4 f3
    itof f4 r4
    fclt f3 f4
    bc1t block_3199
block_3198:
    fmv f3 f4
    j block_3200
block_3199:
    #1.0
    flui f3 16256
    fsub f3 f4 f3
    j block_3200
block_3200:
    #20.0
    flui f4 16800
    fmul f3 f3 f4
    fsub f2 f2 f3
    #10.0
    flui f3 16672
    fclt f2 f3
    bc1t block_3202
block_3201:
    mv r4 r0
    j block_3203
block_3202:
    addi r4 r0 1
    j block_3203
block_3203:
    lwcZ f2 r0 25560
    lw r5 r2 20
    lwcZ f3 r5 8
    fsub f2 f2 f3
    #0.05
    flui f3 15692
    fori f3 f3 -13107
    fmul f3 f2 f3
    ftoi r5 f3
    itof f4 r5
    fclt f3 f4
    bc1t block_3205
block_3204:
    fmv f3 f4
    j block_3206
block_3205:
    #1.0
    flui f3 16256
    fsub f3 f4 f3
    j block_3206
block_3206:
    #20.0
    flui f4 16800
    fmul f3 f3 f4
    fsub f2 f2 f3
    #10.0
    flui f3 16672
    fclt f2 f3
    bc1t block_3208
block_3207:
    mv r5 r0
    j block_3209
block_3208:
    addi r5 r0 1
    j block_3209
block_3209:
    bne r4 r0 block_3211
    j block_3210
block_3210:
    bne r5 r0 block_3214
    j block_3213
block_3213:
    #255.0
    flui f2 17279
    j block_3212
block_3214:
    #0.0
    flui f2 0
    j block_3212
block_3211:
    bne r5 r0 block_3216
    j block_3215
block_3215:
    #0.0
    flui f2 0
    j block_3212
block_3216:
    #255.0
    flui f2 17279
    j block_3212
block_3212:
    swcZ f2 r0 25584
    j block_3091
block_3091:
    sll r1 r1 2
    lw r4 r0 25544
    add r1 r1 r4
    lw r4 r29 40
    sll r5 r4 2
    lw r6 r29 32
    swab r1 r6 r5
    lw r1 r29 48
    lw r5 r1 4
    sll r7 r4 2
    lwab r5 r5 r7
    lwcZ f2 r0 25552
    swcZ f2 r5 0
    lwcZ f2 r0 25556
    swcZ f2 r5 4
    lwcZ f2 r0 25560
    swcZ f2 r5 8
    lw r5 r1 12
    lw r7 r2 28
    lwcZ f2 r7 0
    #0.5
    flui f3 16128
    fclt f2 f3
    bc1t block_3218
block_3217:
    addi r7 r0 1
    sll r8 r4 2
    swab r7 r5 r8
    lw r5 r1 16
    sll r7 r4 2
    lwab r7 r5 r7
    lwcZ f2 r0 25580
    swcZ f2 r7 0
    lwcZ f2 r0 25584
    swcZ f2 r7 4
    lwcZ f2 r0 25588
    swcZ f2 r7 8
    sll r7 r4 2
    lwab r5 r5 r7
    #0.00390625
    flui f2 15232
    fmul f2 f2 f0
    lwcZ f3 r5 0
    fmul f3 f3 f2
    swcZ f3 r5 0
    lwcZ f3 r5 4
    fmul f3 f3 f2
    swcZ f3 r5 4
    lwcZ f3 r5 8
    fmul f2 f3 f2
    swcZ f2 r5 8
    lw r5 r1 28
    sll r7 r4 2
    lwab r5 r5 r7
    lwcZ f2 r0 25568
    swcZ f2 r5 0
    lwcZ f2 r0 25572
    swcZ f2 r5 4
    lwcZ f2 r0 25576
    swcZ f2 r5 8
    j block_3219
block_3218:
    sll r7 r4 2
    swab r0 r5 r7
    j block_3219
block_3219:
    #-2.0
    flui f2 -16384
    lw r5 r29 8
    lwcZ f3 r5 0
    lwcZ f4 r0 25568
    fmul f3 f3 f4
    lwcZ f4 r5 4
    lwcZ f5 r0 25572
    fmul f4 f4 f5
    fadd f3 f3 f4
    lwcZ f4 r5 8
    lwcZ f5 r0 25576
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f3
    lwcZ f3 r5 0
    lwcZ f4 r0 25568
    fmul f4 f2 f4
    fadd f3 f3 f4
    swcZ f3 r5 0
    lwcZ f3 r5 4
    lwcZ f4 r0 25572
    fmul f4 f2 f4
    fadd f3 f3 f4
    swcZ f3 r5 4
    lwcZ f3 r5 8
    lwcZ f4 r0 25576
    fmul f2 f2 f4
    fadd f2 f3 f2
    swcZ f2 r5 8
    lw r7 r2 28
    lwcZ f2 r7 4
    fmul f2 f1 f2
    lw r7 r0 25536
    lw r8 r7 0
    lw r9 r8 0
    addi r10 r0 -1
    sw r1 r29 48
    sw r2 r29 44
    sw r4 r29 40
    sw r3 r29 36
    sw r6 r29 32
    swcZ f2 r29 24
    swcZ f1 r29 16
    sw r5 r29 8
    swcZ f0 r29 4
    beq r9 r10 block_3221
block_3220:
    addi r10 r0 99
    sw r1 r29 48
    sw r2 r29 44
    sw r4 r29 40
    sw r3 r29 36
    sw r6 r29 32
    swcZ f2 r29 24
    sw r8 r29 20
    swcZ f1 r29 16
    sw r5 r29 8
    swcZ f0 r29 4
    sw r7 r29 0
    beq r9 r10 block_3224
block_3223:
    sll r10 r9 2
    lw r10 r10 25048
    lwcZ f3 r0 25552
    lw r11 r10 20
    lwcZ f4 r11 0
    fsub f3 f3 f4
    lwcZ f4 r0 25556
    lw r11 r10 20
    lwcZ f5 r11 4
    fsub f4 f4 f5
    lwcZ f5 r0 25560
    lw r11 r10 20
    lwcZ f6 r11 8
    fsub f5 f5 f6
    lw r11 r0 25992
    sll r9 r9 2
    lwab r9 r11 r9
    lw r11 r10 4
    addi r12 r0 1
    beq r11 r12 block_3227
block_3226:
    addi r12 r0 2
    beq r11 r12 block_3230
block_3229:
    lwcZ f6 r9 0
    #0.0
    flui f7 0
    fsub f31 f6 f7
    fcz f31
    bc1t block_3232
block_3231:
    lwcZ f7 r9 4
    fmul f7 f7 f3
    lwcZ f8 r9 8
    fmul f8 f8 f4
    fadd f7 f7 f8
    lwcZ f8 r9 12
    fmul f8 f8 f5
    fadd f7 f7 f8
    fmul f8 f3 f3
    lw r11 r10 16
    lwcZ f9 r11 0
    fmul f8 f8 f9
    fmul f9 f4 f4
    lw r11 r10 16
    lwcZ f10 r11 4
    fmul f9 f9 f10
    fadd f8 f8 f9
    fmul f9 f5 f5
    lw r11 r10 16
    lwcZ f10 r11 8
    fmul f9 f9 f10
    fadd f8 f8 f9
    lw r11 r10 12
    beq r11 r0 block_3234
block_3233:
    fmul f9 f4 f5
    lw r11 r10 36
    lwcZ f10 r11 0
    fmul f9 f9 f10
    fadd f8 f8 f9
    fmul f5 f5 f3
    lw r11 r10 36
    lwcZ f9 r11 4
    fmul f5 f5 f9
    fadd f5 f8 f5
    fmul f3 f3 f4
    lw r11 r10 36
    lwcZ f4 r11 8
    fmul f3 f3 f4
    fadd f3 f5 f3
    j block_3235
block_3234:
    fmv f3 f8
    j block_3235
block_3235:
    lw r11 r10 4
    addi r12 r0 3
    beq r11 r12 block_3237
block_3236:
    j block_3238
block_3237:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_3238
block_3238:
    fmul f4 f7 f7
    fmul f3 f6 f3
    fsub f3 f4 f3
    #0.0
    flui f4 0
    fclt f4 f3
    bc1t block_3240
block_3239:
    mv r11 r0
    j block_3241
block_3240:
    addi r11 r0 1
    j block_3241
block_3241:
    bne r11 r0 block_3243
    j block_3242
block_3242:
    mv r9 r0
    j block_3228
block_3243:
    lw r10 r10 24
    bne r10 r0 block_3245
    j block_3244
block_3244:
    sqrt_init f4 f3
    fmul f3 f3 f4
    #1.5
    flui f5 16320
    #0.5
    flui f6 16128
    fmul f4 f6 f4
    fmul f4 f4 f3
    fsub f4 f5 f4
    fmul f3 f3 f4
    fsub f3 f7 f3
    lwcZ f4 r9 16
    fmul f3 f3 f4
    swcZ f3 r0 25540
    j block_3246
block_3245:
    sqrt_init f4 f3
    fmul f3 f3 f4
    #1.5
    flui f5 16320
    #0.5
    flui f6 16128
    fmul f4 f6 f4
    fmul f4 f4 f3
    fsub f4 f5 f4
    fmul f3 f3 f4
    fadd f3 f7 f3
    lwcZ f4 r9 16
    fmul f3 f3 f4
    swcZ f3 r0 25540
    j block_3246
block_3246:
    addi r9 r0 1
    j block_3228
block_3232:
    mv r9 r0
    j block_3228
block_3230:
    lwcZ f6 r9 0
    #0.0
    flui f7 0
    fclt f6 f7
    bc1t block_3248
block_3247:
    mv r10 r0
    j block_3249
block_3248:
    addi r10 r0 1
    j block_3249
block_3249:
    bne r10 r0 block_3251
    j block_3250
block_3250:
    mv r9 r0
    j block_3228
block_3251:
    lwcZ f6 r9 4
    fmul f3 f6 f3
    lwcZ f6 r9 8
    fmul f4 f6 f4
    fadd f3 f3 f4
    lwcZ f4 r9 12
    fmul f4 f4 f5
    fadd f3 f3 f4
    swcZ f3 r0 25540
    addi r9 r0 1
    j block_3228
block_3227:
    lw r11 r0 25988
    lwcZ f6 r9 0
    fsub f6 f6 f3
    lwcZ f7 r9 4
    fmul f6 f6 f7
    lwcZ f7 r11 4
    fmul f7 f6 f7
    fadd f7 f7 f4
    #0.0
    flui f8 0
    fclt f7 f8
    bc1t block_3253
block_3252:
    j block_3254
block_3253:
    fneg f7 f7
    j block_3254
block_3254:
    lw r12 r10 16
    lwcZ f8 r12 4
    fclt f7 f8
    bc1t block_3256
block_3255:
    mv r12 r0
    j block_3257
block_3256:
    lwcZ f7 r11 8
    fmul f7 f6 f7
    fadd f7 f7 f5
    #0.0
    flui f8 0
    fclt f7 f8
    bc1t block_3259
block_3258:
    j block_3260
block_3259:
    fneg f7 f7
    j block_3260
block_3260:
    lw r12 r10 16
    lwcZ f8 r12 8
    fclt f7 f8
    bc1t block_3262
block_3261:
    mv r12 r0
    j block_3257
block_3262:
    lwcZ f7 r9 4
    #0.0
    flui f8 0
    fsub f31 f7 f8
    fcz f31
    bc1t block_3264
block_3263:
    mv r12 r0
    j block_3265
block_3264:
    addi r12 r0 1
    j block_3265
block_3265:
    bne r12 r0 block_3267
    j block_3266
block_3266:
    addi r12 r0 1
    j block_3257
block_3267:
    mv r12 r0
    j block_3257
block_3257:
    bne r12 r0 block_3269
    j block_3268
block_3268:
    lwcZ f6 r9 8
    fsub f6 f6 f4
    lwcZ f7 r9 12
    fmul f6 f6 f7
    lwcZ f7 r11 0
    fmul f7 f6 f7
    fadd f7 f7 f3
    #0.0
    flui f8 0
    fclt f7 f8
    bc1t block_3271
block_3270:
    j block_3272
block_3271:
    fneg f7 f7
    j block_3272
block_3272:
    lw r12 r10 16
    lwcZ f8 r12 0
    fclt f7 f8
    bc1t block_3274
block_3273:
    mv r12 r0
    j block_3275
block_3274:
    lwcZ f7 r11 8
    fmul f7 f6 f7
    fadd f7 f7 f5
    #0.0
    flui f8 0
    fclt f7 f8
    bc1t block_3277
block_3276:
    j block_3278
block_3277:
    fneg f7 f7
    j block_3278
block_3278:
    lw r12 r10 16
    lwcZ f8 r12 8
    fclt f7 f8
    bc1t block_3280
block_3279:
    mv r12 r0
    j block_3275
block_3280:
    lwcZ f7 r9 12
    #0.0
    flui f8 0
    fsub f31 f7 f8
    fcz f31
    bc1t block_3282
block_3281:
    mv r12 r0
    j block_3283
block_3282:
    addi r12 r0 1
    j block_3283
block_3283:
    bne r12 r0 block_3285
    j block_3284
block_3284:
    addi r12 r0 1
    j block_3275
block_3285:
    mv r12 r0
    j block_3275
block_3275:
    bne r12 r0 block_3287
    j block_3286
block_3286:
    lwcZ f6 r9 16
    fsub f5 f6 f5
    lwcZ f6 r9 20
    fmul f5 f5 f6
    lwcZ f6 r11 0
    fmul f6 f5 f6
    fadd f3 f6 f3
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_3289
block_3288:
    j block_3290
block_3289:
    fneg f3 f3
    j block_3290
block_3290:
    lw r12 r10 16
    lwcZ f6 r12 0
    fclt f3 f6
    bc1t block_3292
block_3291:
    mv r9 r0
    j block_3293
block_3292:
    lwcZ f3 r11 4
    fmul f3 f5 f3
    fadd f3 f3 f4
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_3295
block_3294:
    j block_3296
block_3295:
    fneg f3 f3
    j block_3296
block_3296:
    lw r10 r10 16
    lwcZ f4 r10 4
    fclt f3 f4
    bc1t block_3298
block_3297:
    mv r9 r0
    j block_3293
block_3298:
    lwcZ f3 r9 20
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_3300
block_3299:
    mv r9 r0
    j block_3301
block_3300:
    addi r9 r0 1
    j block_3301
block_3301:
    bne r9 r0 block_3303
    j block_3302
block_3302:
    addi r9 r0 1
    j block_3293
block_3303:
    mv r9 r0
    j block_3293
block_3293:
    bne r9 r0 block_3305
    j block_3304
block_3304:
    mv r9 r0
    j block_3228
block_3305:
    swcZ f5 r0 25540
    addi r9 r0 3
    j block_3228
block_3287:
    swcZ f6 r0 25540
    addi r9 r0 2
    j block_3228
block_3269:
    swcZ f6 r0 25540
    addi r9 r0 1
    j block_3228
block_3228:
    sw r1 r29 48
    sw r2 r29 44
    sw r4 r29 40
    sw r3 r29 36
    sw r6 r29 32
    swcZ f2 r29 24
    sw r8 r29 20
    swcZ f1 r29 16
    sw r5 r29 8
    swcZ f0 r29 4
    sw r7 r29 0
    beq r9 r0 block_3307
block_3306:
    lwcZ f3 r0 25540
    #-0.1
    flui f4 -16948
    fori f4 f4 -13107
    sw r1 r29 48
    sw r2 r29 44
    sw r4 r29 40
    sw r3 r29 36
    sw r6 r29 32
    swcZ f2 r29 24
    sw r8 r29 20
    swcZ f1 r29 16
    sw r5 r29 8
    swcZ f0 r29 4
    sw r7 r29 0
    fclt f3 f4
    bc1t block_3309
block_3308:
    mv r1 r0
    j block_3225
block_3309:
    lw r9 r8 4
    addi r10 r0 -1
    sw r1 r29 48
    sw r2 r29 44
    sw r4 r29 40
    sw r3 r29 36
    sw r6 r29 32
    swcZ f2 r29 24
    sw r8 r29 20
    swcZ f1 r29 16
    sw r5 r29 8
    swcZ f0 r29 4
    sw r7 r29 0
    beq r9 r10 block_3311
block_3310:
    sll r9 r9 2
    lw r9 r9 25332
    sw r1 r29 48
    sw r2 r29 44
    sw r4 r29 40
    sw r3 r29 36
    sw r6 r29 32
    swcZ f2 r29 24
    sw r8 r29 20
    swcZ f1 r29 16
    sw r5 r29 8
    swcZ f0 r29 4
    sw r7 r29 0
    mv r2 r9
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3314
    j block_3313
block_3313:
    lw r1 r29 20
    lw r2 r1 8
    addi r3 r0 -1
    sw r1 r29 20
    beq r2 r3 block_3316
block_3315:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 20
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3318
    j block_3317
block_3317:
    addi r1 r0 3
    lw r2 r29 20
    sw r2 r29 20
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    j block_3312
block_3318:
    addi r1 r0 1
    j block_3312
block_3316:
    mv r1 r0
    j block_3312
block_3314:
    addi r1 r0 1
    j block_3312
block_3311:
    mv r1 r0
    j block_3312
block_3312:
    bne r1 r0 block_3320
    j block_3319
block_3319:
    mv r1 r0
    j block_3225
block_3320:
    addi r1 r0 1
    j block_3225
block_3307:
    mv r1 r0
    j block_3225
block_3224:
    addi r1 r0 1
    j block_3225
block_3225:
    bne r1 r0 block_3322
    j block_3321
block_3321:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_3222
block_3322:
    lw r1 r29 20
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_3324
block_3323:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 20
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3327
    j block_3326
block_3326:
    lw r1 r29 20
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3329
block_3328:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 20
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3331
    j block_3330
block_3330:
    addi r1 r0 3
    lw r2 r29 20
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    j block_3325
block_3331:
    addi r1 r0 1
    j block_3325
block_3329:
    mv r1 r0
    j block_3325
block_3327:
    addi r1 r0 1
    j block_3325
block_3324:
    mv r1 r0
    j block_3325
block_3325:
    bne r1 r0 block_3333
    j block_3332
block_3332:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_3222
block_3333:
    addi r1 r0 1
    j block_3222
block_3221:
    mv r1 r0
    j block_3222
block_3222:
    bne r1 r0 block_3335
    j block_3334
block_3334:
    lwcZ f0 r0 25568
    lwcZ f1 r0 25312
    fmul f0 f0 f1
    lwcZ f1 r0 25572
    lwcZ f2 r0 25316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    lwcZ f2 r0 25320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    lwcZ f1 r29 4
    fmul f0 f0 f1
    lw r1 r29 8
    lwcZ f2 r1 0
    lwcZ f3 r0 25312
    fmul f2 f2 f3
    lwcZ f3 r1 4
    lwcZ f4 r0 25316
    fmul f3 f3 f4
    fadd f2 f2 f3
    lwcZ f3 r1 8
    lwcZ f4 r0 25320
    fmul f3 f3 f4
    fadd f2 f2 f3
    fneg f2 f2
    #0.0
    flui f3 0
    fclt f3 f0
    bc1t block_3338
block_3337:
    mv r2 r0
    j block_3339
block_3338:
    addi r2 r0 1
    j block_3339
block_3339:
    bne r2 r0 block_3341
    j block_3340
block_3340:
    j block_3342
block_3341:
    lwcZ f3 r0 25604
    lwcZ f4 r0 25580
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 25604
    lwcZ f3 r0 25608
    lwcZ f4 r0 25584
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 25608
    lwcZ f3 r0 25612
    lwcZ f4 r0 25588
    fmul f0 f0 f4
    fadd f0 f3 f0
    swcZ f0 r0 25612
    j block_3342
block_3342:
    #0.0
    flui f0 0
    fclt f0 f2
    bc1t block_3344
block_3343:
    mv r2 r0
    j block_3345
block_3344:
    addi r2 r0 1
    j block_3345
block_3345:
    bne r2 r0 block_3347
    j block_3346
block_3346:
    j block_3336
block_3347:
    fmul f0 f2 f2
    fmul f0 f0 f0
    lwcZ f2 r29 24
    fmul f0 f0 f2
    lwcZ f3 r0 25604
    fadd f3 f3 f0
    swcZ f3 r0 25604
    lwcZ f3 r0 25608
    fadd f3 f3 f0
    swcZ f3 r0 25608
    lwcZ f3 r0 25612
    fadd f0 f3 f0
    swcZ f0 r0 25612
    j block_3336
block_3335:
    j block_3336
block_3336:
    lwcZ f0 r0 25552
    swcZ f0 r0 25648
    lwcZ f0 r0 25556
    swcZ f0 r0 25652
    lwcZ f0 r0 25560
    swcZ f0 r0 25656
    lw r1 r0 25000
    subi r2 r1 1
    lw r1 r29 28
    sw r31 r29 52
    addi r29 r29 56
    jal setup_startp_constants.4131
    subi r29 r29 56
    lw r31 r29 52
    lw r1 r0 26736
    subi r1 r1 1
    lw r2 r29 8
    lwcZ f0 r29 4
    lwcZ f1 r29 24
    sw r2 r29 8
    sw r31 r29 52
    addi r29 r29 56
    jal trace_reflections.4776
    subi r29 r29 56
    lw r31 r29 52
    #0.1
    flui f0 15820
    fori f0 f0 -13107
    lwcZ f1 r29 16
    fclt f0 f1
    bc1t block_3349
block_3348:
    jr r31
block_3349:
    addi r1 r0 4
    lw r2 r29 40
    blt r2 r1 block_3351
block_3350:
    j block_3352
block_3351:
    addi r1 r2 1
    addi r3 r0 -1
    sll r1 r1 2
    lw r4 r29 32
    swab r3 r4 r1
    j block_3352
block_3352:
    addi r1 r0 2
    lw r3 r29 36
    beq r3 r1 block_3354
block_3353:
    jr r31
block_3354:
    #1.0
    flui f0 16256
    lw r1 r29 44
    lw r1 r1 28
    lwcZ f2 r1 0
    fsub f0 f0 f2
    fmul f0 f1 f0
    addi r1 r2 1
    lwcZ f1 r0 25548
    lwcZ f2 r29 12
    fadd f1 f2 f1
    lw r2 r29 8
    lw r3 r29 48
    sw r31 r29 52
    addi r29 r29 56
    jal trace_ray.4807
    subi r29 r29 56
    lw r31 r29 52
    jr r31
block_3053:
    jr r31
trace_reflections.4776:
block_2911:
    blt r1 r0 block_2913
block_2912:
    sll r3 r1 2
    lw r3 r3 26016
    lw r4 r3 4
    #1000000000.0
    flui f2 20078
    fori f2 f2 27432
    swcZ f2 r0 25548
    lw r5 r0 25536
    sw r3 r29 28
    sw r4 r29 24
    sw r1 r29 20
    swcZ f1 r29 16
    sw r2 r29 8
    swcZ f0 r29 4
    mv r3 r4
    mv r2 r5
    mv r1 r0
    sw r31 r29 32
    addi r29 r29 36
    jal trace_or_matrix_fast.4483
    subi r29 r29 36
    lw r31 r29 32
    lwcZ f0 r0 25548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_2915
block_2914:
    mv r1 r0
    j block_2916
block_2915:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_2918
block_2917:
    mv r1 r0
    j block_2916
block_2918:
    addi r1 r0 1
    j block_2916
block_2916:
    bne r1 r0 block_2920
    j block_2919
block_2919:
    j block_2921
block_2920:
    lw r1 r0 25564
    sll r1 r1 2
    lw r2 r0 25544
    add r1 r1 r2
    lw r2 r29 28
    lw r3 r2 0
    beq r1 r3 block_2923
block_2922:
    j block_2921
block_2923:
    lw r1 r0 25536
    lw r3 r1 0
    lw r4 r3 0
    addi r5 r0 -1
    sw r2 r29 28
    beq r4 r5 block_2925
block_2924:
    addi r5 r0 99
    sw r2 r29 28
    sw r3 r29 12
    sw r1 r29 0
    beq r4 r5 block_2928
block_2927:
    sll r5 r4 2
    lw r5 r5 25048
    lwcZ f0 r0 25552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 25556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 25560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 25992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_2931
block_2930:
    addi r7 r0 2
    beq r6 r7 block_2934
block_2933:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2936
block_2935:
    lwcZ f4 r4 4
    fmul f4 f4 f0
    lwcZ f5 r4 8
    fmul f5 f5 f1
    fadd f4 f4 f5
    lwcZ f5 r4 12
    fmul f5 f5 f2
    fadd f4 f4 f5
    fmul f5 f0 f0
    lw r6 r5 16
    lwcZ f6 r6 0
    fmul f5 f5 f6
    fmul f6 f1 f1
    lw r6 r5 16
    lwcZ f7 r6 4
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f6 f2 f2
    lw r6 r5 16
    lwcZ f7 r6 8
    fmul f6 f6 f7
    fadd f5 f5 f6
    lw r6 r5 12
    beq r6 r0 block_2938
block_2937:
    fmul f6 f1 f2
    lw r6 r5 36
    lwcZ f7 r6 0
    fmul f6 f6 f7
    fadd f5 f5 f6
    fmul f2 f2 f0
    lw r6 r5 36
    lwcZ f6 r6 4
    fmul f2 f2 f6
    fadd f2 f5 f2
    fmul f0 f0 f1
    lw r6 r5 36
    lwcZ f1 r6 8
    fmul f0 f0 f1
    fadd f0 f2 f0
    j block_2939
block_2938:
    fmv f0 f5
    j block_2939
block_2939:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_2941
block_2940:
    j block_2942
block_2941:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_2942
block_2942:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_2944
block_2943:
    mv r6 r0
    j block_2945
block_2944:
    addi r6 r0 1
    j block_2945
block_2945:
    bne r6 r0 block_2947
    j block_2946
block_2946:
    mv r4 r0
    j block_2932
block_2947:
    lw r5 r5 24
    bne r5 r0 block_2949
    j block_2948
block_2948:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fsub f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_2950
block_2949:
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    fadd f0 f4 f0
    lwcZ f1 r4 16
    fmul f0 f0 f1
    swcZ f0 r0 25540
    j block_2950
block_2950:
    addi r4 r0 1
    j block_2932
block_2936:
    mv r4 r0
    j block_2932
block_2934:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2952
block_2951:
    mv r5 r0
    j block_2953
block_2952:
    addi r5 r0 1
    j block_2953
block_2953:
    bne r5 r0 block_2955
    j block_2954
block_2954:
    mv r4 r0
    j block_2932
block_2955:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25540
    addi r4 r0 1
    j block_2932
block_2931:
    lw r6 r0 25988
    lwcZ f3 r4 0
    fsub f3 f3 f0
    lwcZ f4 r4 4
    fmul f3 f3 f4
    lwcZ f4 r6 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2957
block_2956:
    j block_2958
block_2957:
    fneg f4 f4
    j block_2958
block_2958:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_2960
block_2959:
    mv r7 r0
    j block_2961
block_2960:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2963
block_2962:
    j block_2964
block_2963:
    fneg f4 f4
    j block_2964
block_2964:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_2966
block_2965:
    mv r7 r0
    j block_2961
block_2966:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2968
block_2967:
    mv r7 r0
    j block_2969
block_2968:
    addi r7 r0 1
    j block_2969
block_2969:
    bne r7 r0 block_2971
    j block_2970
block_2970:
    addi r7 r0 1
    j block_2961
block_2971:
    mv r7 r0
    j block_2961
block_2961:
    bne r7 r0 block_2973
    j block_2972
block_2972:
    lwcZ f3 r4 8
    fsub f3 f3 f1
    lwcZ f4 r4 12
    fmul f3 f3 f4
    lwcZ f4 r6 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2975
block_2974:
    j block_2976
block_2975:
    fneg f4 f4
    j block_2976
block_2976:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_2978
block_2977:
    mv r7 r0
    j block_2979
block_2978:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2981
block_2980:
    j block_2982
block_2981:
    fneg f4 f4
    j block_2982
block_2982:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_2984
block_2983:
    mv r7 r0
    j block_2979
block_2984:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2986
block_2985:
    mv r7 r0
    j block_2987
block_2986:
    addi r7 r0 1
    j block_2987
block_2987:
    bne r7 r0 block_2989
    j block_2988
block_2988:
    addi r7 r0 1
    j block_2979
block_2989:
    mv r7 r0
    j block_2979
block_2979:
    bne r7 r0 block_2991
    j block_2990
block_2990:
    lwcZ f3 r4 16
    fsub f2 f3 f2
    lwcZ f3 r4 20
    fmul f2 f2 f3
    lwcZ f3 r6 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_2993
block_2992:
    j block_2994
block_2993:
    fneg f0 f0
    j block_2994
block_2994:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_2996
block_2995:
    mv r4 r0
    j block_2997
block_2996:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2999
block_2998:
    j block_3000
block_2999:
    fneg f0 f0
    j block_3000
block_3000:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_3002
block_3001:
    mv r4 r0
    j block_2997
block_3002:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3004
block_3003:
    mv r4 r0
    j block_3005
block_3004:
    addi r4 r0 1
    j block_3005
block_3005:
    bne r4 r0 block_3007
    j block_3006
block_3006:
    addi r4 r0 1
    j block_2997
block_3007:
    mv r4 r0
    j block_2997
block_2997:
    bne r4 r0 block_3009
    j block_3008
block_3008:
    mv r4 r0
    j block_2932
block_3009:
    swcZ f2 r0 25540
    addi r4 r0 3
    j block_2932
block_2991:
    swcZ f3 r0 25540
    addi r4 r0 2
    j block_2932
block_2973:
    swcZ f3 r0 25540
    addi r4 r0 1
    j block_2932
block_2932:
    sw r2 r29 28
    sw r3 r29 12
    sw r1 r29 0
    beq r4 r0 block_3011
block_3010:
    lwcZ f0 r0 25540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    sw r2 r29 28
    sw r3 r29 12
    sw r1 r29 0
    fclt f0 f1
    bc1t block_3013
block_3012:
    mv r1 r0
    j block_2929
block_3013:
    lw r4 r3 4
    addi r5 r0 -1
    sw r2 r29 28
    sw r3 r29 12
    sw r1 r29 0
    beq r4 r5 block_3015
block_3014:
    sll r4 r4 2
    lw r4 r4 25332
    sw r2 r29 28
    sw r3 r29 12
    sw r1 r29 0
    mv r2 r4
    mv r1 r0
    sw r31 r29 32
    addi r29 r29 36
    jal shadow_check_and_group.4251
    subi r29 r29 36
    lw r31 r29 32
    bne r1 r0 block_3018
    j block_3017
block_3017:
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    sw r1 r29 12
    beq r2 r3 block_3020
block_3019:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 12
    mv r1 r0
    sw r31 r29 32
    addi r29 r29 36
    jal shadow_check_and_group.4251
    subi r29 r29 36
    lw r31 r29 32
    bne r1 r0 block_3022
    j block_3021
block_3021:
    addi r1 r0 3
    lw r2 r29 12
    sw r2 r29 12
    sw r31 r29 32
    addi r29 r29 36
    jal shadow_check_one_or_group.4292
    subi r29 r29 36
    lw r31 r29 32
    j block_3016
block_3022:
    addi r1 r0 1
    j block_3016
block_3020:
    mv r1 r0
    j block_3016
block_3018:
    addi r1 r0 1
    j block_3016
block_3015:
    mv r1 r0
    j block_3016
block_3016:
    bne r1 r0 block_3024
    j block_3023
block_3023:
    mv r1 r0
    j block_2929
block_3024:
    addi r1 r0 1
    j block_2929
block_3011:
    mv r1 r0
    j block_2929
block_2928:
    addi r1 r0 1
    j block_2929
block_2929:
    bne r1 r0 block_3026
    j block_3025
block_3025:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 32
    addi r29 r29 36
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 36
    lw r31 r29 32
    j block_2926
block_3026:
    lw r1 r29 12
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_3028
block_3027:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 12
    mv r1 r0
    sw r31 r29 32
    addi r29 r29 36
    jal shadow_check_and_group.4251
    subi r29 r29 36
    lw r31 r29 32
    bne r1 r0 block_3031
    j block_3030
block_3030:
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3033
block_3032:
    sll r2 r2 2
    lw r2 r2 25332
    sw r1 r29 12
    mv r1 r0
    sw r31 r29 32
    addi r29 r29 36
    jal shadow_check_and_group.4251
    subi r29 r29 36
    lw r31 r29 32
    bne r1 r0 block_3035
    j block_3034
block_3034:
    addi r1 r0 3
    lw r2 r29 12
    sw r31 r29 32
    addi r29 r29 36
    jal shadow_check_one_or_group.4292
    subi r29 r29 36
    lw r31 r29 32
    j block_3029
block_3035:
    addi r1 r0 1
    j block_3029
block_3033:
    mv r1 r0
    j block_3029
block_3031:
    addi r1 r0 1
    j block_3029
block_3028:
    mv r1 r0
    j block_3029
block_3029:
    bne r1 r0 block_3037
    j block_3036
block_3036:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 32
    addi r29 r29 36
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 36
    lw r31 r29 32
    j block_2926
block_3037:
    addi r1 r0 1
    j block_2926
block_2925:
    mv r1 r0
    j block_2926
block_2926:
    bne r1 r0 block_3039
    j block_3038
block_3038:
    lw r1 r29 24
    lw r2 r1 0
    lwcZ f0 r0 25568
    lwcZ f1 r2 0
    fmul f0 f0 f1
    lwcZ f1 r0 25572
    lwcZ f2 r2 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 25576
    lwcZ f2 r2 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    lw r2 r29 28
    lwcZ f1 r2 8
    lwcZ f2 r29 4
    fmul f3 f1 f2
    fmul f0 f3 f0
    lw r1 r1 0
    lw r2 r29 8
    lwcZ f3 r2 0
    lwcZ f4 r1 0
    fmul f3 f3 f4
    lwcZ f4 r2 4
    lwcZ f5 r1 4
    fmul f4 f4 f5
    fadd f3 f3 f4
    lwcZ f4 r2 8
    lwcZ f5 r1 8
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f1 f1 f3
    #0.0
    flui f3 0
    fclt f3 f0
    bc1t block_3041
block_3040:
    mv r1 r0
    j block_3042
block_3041:
    addi r1 r0 1
    j block_3042
block_3042:
    bne r1 r0 block_3044
    j block_3043
block_3043:
    j block_3045
block_3044:
    lwcZ f3 r0 25604
    lwcZ f4 r0 25580
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 25604
    lwcZ f3 r0 25608
    lwcZ f4 r0 25584
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 25608
    lwcZ f3 r0 25612
    lwcZ f4 r0 25588
    fmul f0 f0 f4
    fadd f0 f3 f0
    swcZ f0 r0 25612
    j block_3045
block_3045:
    #0.0
    flui f0 0
    fclt f0 f1
    bc1t block_3047
block_3046:
    mv r1 r0
    j block_3048
block_3047:
    addi r1 r0 1
    j block_3048
block_3048:
    bne r1 r0 block_3050
    j block_3049
block_3049:
    j block_2921
block_3050:
    fmul f0 f1 f1
    fmul f0 f0 f0
    lwcZ f1 r29 16
    fmul f0 f0 f1
    lwcZ f3 r0 25604
    fadd f3 f3 f0
    swcZ f3 r0 25604
    lwcZ f3 r0 25608
    fadd f3 f3 f0
    swcZ f3 r0 25608
    lwcZ f3 r0 25612
    fadd f0 f3 f0
    swcZ f0 r0 25612
    j block_2921
block_3039:
    j block_2921
block_2921:
    lw r1 r29 20
    subi r1 r1 1
    lw r2 r29 8
    lwcZ f0 r29 4
    lwcZ f1 r29 16
    sw r31 r29 32
    addi r29 r29 36
    jal trace_reflections.4776
    subi r29 r29 36
    lw r31 r29 32
    jr r31
block_2913:
    jr r31
try_exploit_neighbors.5085:
block_5017:
    sll r7 r1 2
    lwab r7 r4 r7
    addi r8 r0 4
    blt r8 r6 block_5019
block_5018:
    lw r8 r7 8
    sll r9 r6 2
    lwab r8 r8 r9
    blt r8 r0 block_5021
block_5020:
    sll r8 r1 2
    lwab r8 r4 r8
    lw r8 r8 8
    sll r9 r6 2
    lwab r8 r8 r9
    sll r9 r1 2
    lwab r9 r3 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5023
block_5022:
    mv r8 r0
    j block_5024
block_5023:
    sll r9 r1 2
    lwab r9 r5 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5026
block_5025:
    mv r8 r0
    j block_5024
block_5026:
    subi r9 r1 1
    sll r9 r9 2
    lwab r9 r4 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5028
block_5027:
    mv r8 r0
    j block_5024
block_5028:
    addi r9 r1 1
    sll r9 r9 2
    lwab r9 r4 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5030
block_5029:
    mv r8 r0
    j block_5024
block_5030:
    addi r8 r0 1
    j block_5024
block_5024:
    bne r8 r0 block_5032
    j block_5031
block_5031:
    sll r1 r1 2
    lwab r1 r4 r1
    addi r2 r0 4
    blt r2 r6 block_5034
block_5033:
    lw r2 r1 8
    sll r3 r6 2
    lwab r2 r2 r3
    blt r2 r0 block_5036
block_5035:
    lw r2 r1 12
    sll r3 r6 2
    lwab r2 r2 r3
    sw r6 r29 20
    sw r1 r29 12
    bne r2 r0 block_5038
    j block_5037
block_5037:
    j block_5039
block_5038:
    lw r2 r1 20
    lw r3 r1 28
    lw r4 r1 4
    lw r5 r1 16
    sll r7 r6 2
    lwab r2 r2 r7
    lwcZ f0 r2 0
    swcZ f0 r0 25592
    lwcZ f0 r2 4
    swcZ f0 r0 25596
    lwcZ f0 r2 8
    swcZ f0 r0 25600
    lw r2 r1 24
    lw r2 r2 0
    sll r7 r6 2
    lwab r3 r3 r7
    sll r7 r6 2
    lwab r4 r4 r7
    sw r6 r29 20
    sw r5 r29 16
    sw r1 r29 12
    sw r2 r29 8
    sw r4 r29 4
    sw r3 r29 0
    beq r2 r0 block_5041
block_5040:
    lw r7 r0 25716
    sw r6 r29 20
    sw r5 r29 16
    sw r1 r29 12
    sw r2 r29 8
    sw r4 r29 4
    sw r3 r29 0
    mv r2 r3
    mv r1 r7
    mv r3 r4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_diffuse_rays.4959
    subi r29 r29 28
    lw r31 r29 24
    j block_5042
block_5041:
    j block_5042
block_5042:
    addi r1 r0 1
    lw r2 r29 8
    sw r2 r29 8
    beq r2 r1 block_5044
block_5043:
    lw r1 r0 25720
    lw r3 r29 0
    lw r4 r29 4
    sw r2 r29 8
    sw r4 r29 4
    sw r3 r29 0
    mv r2 r3
    mv r3 r4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_diffuse_rays.4959
    subi r29 r29 28
    lw r31 r29 24
    j block_5045
block_5044:
    j block_5045
block_5045:
    addi r1 r0 2
    lw r2 r29 8
    sw r2 r29 8
    beq r2 r1 block_5047
block_5046:
    lw r1 r0 25724
    lw r3 r29 0
    lw r4 r29 4
    sw r2 r29 8
    sw r4 r29 4
    sw r3 r29 0
    mv r2 r3
    mv r3 r4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_diffuse_rays.4959
    subi r29 r29 28
    lw r31 r29 24
    j block_5048
block_5047:
    j block_5048
block_5048:
    addi r1 r0 3
    lw r2 r29 8
    sw r2 r29 8
    beq r2 r1 block_5050
block_5049:
    lw r1 r0 25728
    lw r3 r29 0
    lw r4 r29 4
    sw r2 r29 8
    sw r4 r29 4
    sw r3 r29 0
    mv r2 r3
    mv r3 r4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_diffuse_rays.4959
    subi r29 r29 28
    lw r31 r29 24
    j block_5051
block_5050:
    j block_5051
block_5051:
    addi r1 r0 4
    lw r2 r29 8
    beq r2 r1 block_5053
block_5052:
    lw r1 r0 25732
    lw r2 r29 0
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_diffuse_rays.4959
    subi r29 r29 28
    lw r31 r29 24
    j block_5054
block_5053:
    j block_5054
block_5054:
    lw r1 r29 20
    sll r2 r1 2
    lw r3 r29 16
    lwab r2 r3 r2
    lwcZ f0 r0 25604
    lwcZ f1 r2 0
    lwcZ f2 r0 25592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25604
    lwcZ f0 r0 25608
    lwcZ f1 r2 4
    lwcZ f2 r0 25596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25608
    lwcZ f0 r0 25612
    lwcZ f1 r2 8
    lwcZ f2 r0 25600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25612
    j block_5039
block_5039:
    lw r1 r29 20
    addi r2 r1 1
    lw r1 r29 12
    sw r31 r29 24
    addi r29 r29 28
    jal do_without_neighbors.5035
    subi r29 r29 28
    lw r31 r29 24
    jr r31
block_5036:
    jr r31
block_5034:
    jr r31
block_5032:
    lw r7 r7 12
    sll r8 r6 2
    lwab r7 r7 r8
    bne r7 r0 block_5056
    j block_5055
block_5055:
    j block_5057
block_5056:
    sll r7 r1 2
    lwab r7 r3 r7
    lw r7 r7 20
    subi r8 r1 1
    sll r8 r8 2
    lwab r8 r4 r8
    lw r8 r8 20
    sll r9 r1 2
    lwab r9 r4 r9
    lw r9 r9 20
    addi r10 r1 1
    sll r10 r10 2
    lwab r10 r4 r10
    lw r10 r10 20
    sll r11 r1 2
    lwab r11 r5 r11
    lw r11 r11 20
    sll r12 r6 2
    lwab r7 r7 r12
    lwcZ f0 r7 0
    swcZ f0 r0 25592
    lwcZ f0 r7 4
    swcZ f0 r0 25596
    lwcZ f0 r7 8
    swcZ f0 r0 25600
    sll r7 r6 2
    lwab r7 r8 r7
    lwcZ f0 r0 25592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    sll r7 r6 2
    lwab r7 r9 r7
    lwcZ f0 r0 25592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    sll r7 r6 2
    lwab r7 r10 r7
    lwcZ f0 r0 25592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    sll r7 r6 2
    lwab r7 r11 r7
    lwcZ f0 r0 25592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    sll r7 r1 2
    lwab r7 r4 r7
    lw r7 r7 16
    sll r8 r6 2
    lwab r7 r7 r8
    lwcZ f0 r0 25604
    lwcZ f1 r7 0
    lwcZ f2 r0 25592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25604
    lwcZ f0 r0 25608
    lwcZ f1 r7 4
    lwcZ f2 r0 25596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25608
    lwcZ f0 r0 25612
    lwcZ f1 r7 8
    lwcZ f2 r0 25600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25612
    j block_5057
block_5057:
    addi r6 r6 1
    sll r7 r1 2
    lwab r7 r4 r7
    addi r8 r0 4
    blt r8 r6 block_5059
block_5058:
    lw r8 r7 8
    sll r9 r6 2
    lwab r8 r8 r9
    blt r8 r0 block_5061
block_5060:
    sll r8 r1 2
    lwab r8 r4 r8
    lw r8 r8 8
    sll r9 r6 2
    lwab r8 r8 r9
    sll r9 r1 2
    lwab r9 r3 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5063
block_5062:
    mv r8 r0
    j block_5064
block_5063:
    sll r9 r1 2
    lwab r9 r5 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5066
block_5065:
    mv r8 r0
    j block_5064
block_5066:
    subi r9 r1 1
    sll r9 r9 2
    lwab r9 r4 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5068
block_5067:
    mv r8 r0
    j block_5064
block_5068:
    addi r9 r1 1
    sll r9 r9 2
    lwab r9 r4 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5070
block_5069:
    mv r8 r0
    j block_5064
block_5070:
    addi r8 r0 1
    j block_5064
block_5064:
    bne r8 r0 block_5072
    j block_5071
block_5071:
    sll r1 r1 2
    lwab r1 r4 r1
    mv r2 r6
    sw r31 r29 24
    addi r29 r29 28
    jal do_without_neighbors.5035
    subi r29 r29 28
    lw r31 r29 24
    jr r31
block_5072:
    lw r7 r7 12
    sll r8 r6 2
    lwab r7 r7 r8
    bne r7 r0 block_5074
    j block_5073
block_5073:
    j block_5075
block_5074:
    sll r7 r1 2
    lwab r7 r3 r7
    lw r7 r7 20
    subi r8 r1 1
    sll r8 r8 2
    lwab r8 r4 r8
    lw r8 r8 20
    sll r9 r1 2
    lwab r9 r4 r9
    lw r9 r9 20
    addi r10 r1 1
    sll r10 r10 2
    lwab r10 r4 r10
    lw r10 r10 20
    sll r11 r1 2
    lwab r11 r5 r11
    lw r11 r11 20
    sll r12 r6 2
    lwab r7 r7 r12
    lwcZ f0 r7 0
    swcZ f0 r0 25592
    lwcZ f0 r7 4
    swcZ f0 r0 25596
    lwcZ f0 r7 8
    swcZ f0 r0 25600
    sll r7 r6 2
    lwab r7 r8 r7
    lwcZ f0 r0 25592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    sll r7 r6 2
    lwab r7 r9 r7
    lwcZ f0 r0 25592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    sll r7 r6 2
    lwab r7 r10 r7
    lwcZ f0 r0 25592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    sll r7 r6 2
    lwab r7 r11 r7
    lwcZ f0 r0 25592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 25592
    lwcZ f0 r0 25596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 25596
    lwcZ f0 r0 25600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 25600
    sll r7 r1 2
    lwab r7 r4 r7
    lw r7 r7 16
    sll r8 r6 2
    lwab r7 r7 r8
    lwcZ f0 r0 25604
    lwcZ f1 r7 0
    lwcZ f2 r0 25592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25604
    lwcZ f0 r0 25608
    lwcZ f1 r7 4
    lwcZ f2 r0 25596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25608
    lwcZ f0 r0 25612
    lwcZ f1 r7 8
    lwcZ f2 r0 25600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 25612
    j block_5075
block_5075:
    addi r6 r6 1
    sw r31 r29 24
    addi r29 r29 28
    jal try_exploit_neighbors.5085
    subi r29 r29 28
    lw r31 r29 24
    jr r31
block_5061:
    jr r31
block_5059:
    jr r31
block_5021:
    jr r31
block_5019:
    jr r31
utexture.4603:
block_2783:
    lw r3 r1 0
    lw r4 r1 32
    lwcZ f0 r4 0
    swcZ f0 r0 25580
    lw r4 r1 32
    lwcZ f0 r4 4
    swcZ f0 r0 25584
    lw r4 r1 32
    lwcZ f0 r4 8
    swcZ f0 r0 25588
    addi r4 r0 1
    beq r3 r4 block_2785
block_2784:
    addi r4 r0 2
    beq r3 r4 block_2787
block_2786:
    addi r4 r0 3
    beq r3 r4 block_2789
block_2788:
    addi r4 r0 4
    beq r3 r4 block_2791
block_2790:
    jr r31
block_2791:
    lwcZ f0 r2 0
    lw r3 r1 20
    lwcZ f1 r3 0
    fsub f0 f0 f1
    lw r3 r1 16
    lwcZ f1 r3 0
    sqrt_init f2 f1
    fmul f1 f1 f2
    #1.5
    flui f3 16320
    #0.5
    flui f4 16128
    fmul f2 f4 f2
    fmul f2 f2 f1
    fsub f2 f3 f2
    fmul f1 f1 f2
    fmul f0 f0 f1
    lwcZ f1 r2 8
    lw r3 r1 20
    lwcZ f2 r3 8
    fsub f1 f1 f2
    lw r3 r1 16
    lwcZ f2 r3 8
    sqrt_init f3 f2
    fmul f2 f2 f3
    #1.5
    flui f4 16320
    #0.5
    flui f5 16128
    fmul f3 f5 f3
    fmul f3 f3 f2
    fsub f3 f4 f3
    fmul f2 f2 f3
    fmul f1 f1 f2
    fmul f2 f0 f0
    fmul f3 f1 f1
    fadd f2 f2 f3
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_2793
block_2792:
    fmv f3 f0
    j block_2794
block_2793:
    fneg f3 f0
    j block_2794
block_2794:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_2796
block_2795:
    finv_init f3 f0
    #2.0
    flui f4 16384
    fmul f0 f0 f3
    fsub f0 f4 f0
    fmul f0 f3 f0
    fmul f0 f1 f0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2799
block_2798:
    j block_2800
block_2799:
    fneg f0 f0
    j block_2800
block_2800:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_2802
block_2801:
    mv r3 r0
    j block_2803
block_2802:
    addi r3 r0 1
    j block_2803
block_2803:
    bne r3 r0 block_2805
    j block_2804
block_2804:
    fneg f0 f0
    j block_2806
block_2805:
    j block_2806
block_2806:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_2808
block_2807:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_2811
block_2810:
    #1.5707964
    flui f1 16329
    fori f1 f1 4059
    #1.0
    flui f3 16256
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fsub f0 f1 f0
    j block_2809
block_2811:
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.0
    flui f3 16256
    fsub f3 f0 f3
    #1.0
    flui f4 16256
    fadd f0 f0 f4
    finv_init f4 f0
    #2.0
    flui f5 16384
    fmul f0 f0 f4
    fsub f0 f5 f0
    fmul f0 f4 f0
    fmul f0 f3 f0
    fmul f3 f0 f0
    fmul f4 f3 f0
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f0 f0 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f0 f0 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f0 f0 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f0 f0 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f0 f0 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f0 f0 f3
    fadd f0 f1 f0
    j block_2809
block_2808:
    fmul f1 f0 f0
    fmul f3 f1 f0
    fmul f4 f1 f3
    fmul f5 f1 f4
    fmul f6 f1 f5
    fmul f7 f1 f6
    fmul f1 f1 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f0 f0 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f0 f0 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f0 f0 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f0 f0 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f0 f0 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f1 f3 f1
    fadd f0 f0 f1
    j block_2809
block_2809:
    bne r3 r0 block_2813
    j block_2812
block_2812:
    fneg f0 f0
    j block_2814
block_2813:
    j block_2814
block_2814:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_2797
block_2796:
    #15.0
    flui f0 16752
    j block_2797
block_2797:
    ftoi r3 f0
    itof f1 r3
    fclt f0 f1
    bc1t block_2816
block_2815:
    j block_2817
block_2816:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_2817
block_2817:
    fsub f0 f0 f1
    lwcZ f1 r2 4
    lw r2 r1 20
    lwcZ f3 r2 4
    fsub f1 f1 f3
    lw r1 r1 16
    lwcZ f3 r1 4
    sqrt_init f4 f3
    fmul f3 f3 f4
    #1.5
    flui f5 16320
    #0.5
    flui f6 16128
    fmul f4 f6 f4
    fmul f4 f4 f3
    fsub f4 f5 f4
    fmul f3 f3 f4
    fmul f1 f1 f3
    #0.0
    flui f3 0
    fclt f2 f3
    bc1t block_2819
block_2818:
    fmv f3 f2
    j block_2820
block_2819:
    fneg f3 f2
    j block_2820
block_2820:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_2822
block_2821:
    finv_init f3 f2
    #2.0
    flui f4 16384
    fmul f2 f2 f3
    fsub f2 f4 f2
    fmul f2 f3 f2
    fmul f1 f1 f2
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_2825
block_2824:
    j block_2826
block_2825:
    fneg f1 f1
    j block_2826
block_2826:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_2828
block_2827:
    mv r1 r0
    j block_2829
block_2828:
    addi r1 r0 1
    j block_2829
block_2829:
    bne r1 r0 block_2831
    j block_2830
block_2830:
    fneg f1 f1
    j block_2832
block_2831:
    j block_2832
block_2832:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_2834
block_2833:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_2837
block_2836:
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #1.0
    flui f3 16256
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fsub f1 f2 f1
    j block_2835
block_2837:
    #0.7853982
    flui f2 16201
    fori f2 f2 4059
    #1.0
    flui f3 16256
    fsub f3 f1 f3
    #1.0
    flui f4 16256
    fadd f1 f1 f4
    finv_init f4 f1
    #2.0
    flui f5 16384
    fmul f1 f1 f4
    fsub f1 f5 f1
    fmul f1 f4 f1
    fmul f1 f3 f1
    fmul f3 f1 f1
    fmul f4 f3 f1
    fmul f5 f3 f4
    fmul f6 f3 f5
    fmul f7 f3 f6
    fmul f8 f3 f7
    fmul f3 f3 f8
    #0.3333333
    flui f9 16042
    fori f9 f9 -21846
    fmul f4 f9 f4
    fsub f1 f1 f4
    #0.2
    flui f4 15948
    fori f4 f4 -13107
    fmul f4 f4 f5
    fadd f1 f1 f4
    #0.14285715
    flui f4 15890
    fori f4 f4 18725
    fmul f4 f4 f6
    fsub f1 f1 f4
    #0.111111104
    flui f4 15843
    fori f4 f4 -29128
    fmul f4 f4 f7
    fadd f1 f1 f4
    #0.08976446
    flui f4 15799
    fori f4 f4 -10642
    fmul f4 f4 f8
    fsub f1 f1 f4
    #0.060035486
    flui f4 15733
    fori f4 f4 -6203
    fmul f3 f4 f3
    fadd f1 f1 f3
    fadd f1 f2 f1
    j block_2835
block_2834:
    fmul f2 f1 f1
    fmul f3 f2 f1
    fmul f4 f2 f3
    fmul f5 f2 f4
    fmul f6 f2 f5
    fmul f7 f2 f6
    fmul f2 f2 f7
    #0.3333333
    flui f8 16042
    fori f8 f8 -21846
    fmul f3 f8 f3
    fsub f1 f1 f3
    #0.2
    flui f3 15948
    fori f3 f3 -13107
    fmul f3 f3 f4
    fadd f1 f1 f3
    #0.14285715
    flui f3 15890
    fori f3 f3 18725
    fmul f3 f3 f5
    fsub f1 f1 f3
    #0.111111104
    flui f3 15843
    fori f3 f3 -29128
    fmul f3 f3 f6
    fadd f1 f1 f3
    #0.08976446
    flui f3 15799
    fori f3 f3 -10642
    fmul f3 f3 f7
    fsub f1 f1 f3
    #0.060035486
    flui f3 15733
    fori f3 f3 -6203
    fmul f2 f3 f2
    fadd f1 f1 f2
    j block_2835
block_2835:
    bne r1 r0 block_2839
    j block_2838
block_2838:
    fneg f1 f1
    j block_2840
block_2839:
    j block_2840
block_2840:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_2823
block_2822:
    #15.0
    flui f1 16752
    j block_2823
block_2823:
    ftoi r1 f1
    itof f2 r1
    fclt f1 f2
    bc1t block_2842
block_2841:
    j block_2843
block_2842:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_2843
block_2843:
    fsub f1 f1 f2
    #0.15
    flui f2 15897
    fori f2 f2 -26214
    #0.5
    flui f3 16128
    fsub f0 f3 f0
    fmul f0 f0 f0
    fsub f0 f2 f0
    #0.5
    flui f2 16128
    fsub f1 f2 f1
    fmul f1 f1 f1
    fsub f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2845
block_2844:
    mv r1 r0
    j block_2846
block_2845:
    addi r1 r0 1
    j block_2846
block_2846:
    bne r1 r0 block_2848
    j block_2847
block_2847:
    j block_2849
block_2848:
    #0.0
    flui f0 0
    j block_2849
block_2849:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 25588
    jr r31
block_2789:
    lwcZ f0 r2 0
    lw r3 r1 20
    lwcZ f1 r3 0
    fsub f0 f0 f1
    lwcZ f1 r2 8
    lw r1 r1 20
    lwcZ f2 r1 8
    fsub f1 f1 f2
    fmul f0 f0 f0
    fmul f1 f1 f1
    fadd f0 f0 f1
    sqrt_init f1 f0
    fmul f0 f0 f1
    #1.5
    flui f2 16320
    #0.5
    flui f3 16128
    fmul f1 f3 f1
    fmul f1 f1 f0
    fsub f1 f2 f1
    fmul f0 f0 f1
    #0.1
    flui f1 15820
    fori f1 f1 -13107
    fmul f0 f0 f1
    ftoi r1 f0
    itof f1 r1
    fclt f0 f1
    bc1t block_2851
block_2850:
    j block_2852
block_2851:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_2852
block_2852:
    fsub f0 f0 f1
    #3.1415927
    flui f1 16457
    fori f1 f1 4059
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r1 f5
    itof f5 r1
    fmul f4 f4 f5
    fsub f0 f0 f4
    #0.0
    flui f4 0
    fclt f4 f0
    bc1t block_2854
block_2853:
    fneg f0 f0
    j block_2855
block_2854:
    j block_2855
block_2855:
    fclt f3 f0
    bc1t block_2857
block_2856:
    addi r1 r0 1
    j block_2858
block_2857:
    addi r1 r0 -1
    j block_2858
block_2858:
    fclt f3 f0
    bc1t block_2860
block_2859:
    j block_2861
block_2860:
    fsub f0 f0 f3
    j block_2861
block_2861:
    fclt f2 f0
    bc1t block_2863
block_2862:
    j block_2864
block_2863:
    sub r1 r0 r1
    j block_2864
block_2864:
    fclt f2 f0
    bc1t block_2866
block_2865:
    j block_2867
block_2866:
    fsub f0 f3 f0
    j block_2867
block_2867:
    fclt f0 f1
    bc1t block_2869
block_2868:
    fsub f0 f2 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_2870
block_2869:
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_2870
block_2870:
    addi r2 r0 -1
    beq r1 r2 block_2872
block_2871:
    j block_2873
block_2872:
    fneg f0 f0
    j block_2873
block_2873:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 25584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 25588
    jr r31
block_2787:
    lwcZ f0 r2 4
    #0.25
    flui f1 16000
    fmul f0 f0 f1
    #0.7853982
    flui f1 16201
    fori f1 f1 4059
    #1.5707964
    flui f2 16329
    fori f2 f2 4059
    #3.1415927
    flui f3 16457
    fori f3 f3 4059
    #6.2831855
    flui f4 16585
    fori f4 f4 4059
    #0.15915494
    flui f5 15906
    fori f5 f5 -1661
    fmul f5 f0 f5
    ftoi r1 f5
    itof f5 r1
    fmul f5 f4 f5
    fsub f0 f0 f5
    #0.0
    flui f5 0
    fclt f5 f0
    bc1t block_2875
block_2874:
    fadd f0 f0 f4
    j block_2876
block_2875:
    j block_2876
block_2876:
    fclt f3 f0
    bc1t block_2878
block_2877:
    addi r1 r0 1
    j block_2879
block_2878:
    mv r1 r0
    j block_2879
block_2879:
    fclt f3 f0
    bc1t block_2881
block_2880:
    j block_2882
block_2881:
    fsub f0 f0 f3
    j block_2882
block_2882:
    fclt f2 f0
    bc1t block_2884
block_2883:
    j block_2885
block_2884:
    fsub f0 f3 f0
    j block_2885
block_2885:
    fclt f1 f0
    bc1t block_2887
block_2886:
    fmul f1 f0 f0
    fmul f2 f1 f0
    fmul f3 f2 f1
    fmul f1 f3 f1
    #0.16666669
    flui f4 15914
    fori f4 f4 -21844
    fmul f2 f4 f2
    fsub f0 f0 f2
    #0.008332824
    flui f2 15368
    fori f2 f2 -31130
    fmul f2 f2 f3
    fadd f0 f0 f2
    #0.00019587841
    flui f2 14669
    fori f2 f2 25782
    fmul f1 f2 f1
    fsub f0 f0 f1
    j block_2888
block_2887:
    fsub f0 f2 f0
    fmul f0 f0 f0
    fmul f1 f0 f0
    fmul f2 f1 f0
    #1.0
    flui f3 16256
    #0.5
    flui f4 16128
    fmul f0 f4 f0
    fsub f0 f3 f0
    #0.04166368
    flui f3 15658
    fori f3 f3 -22647
    fmul f1 f3 f1
    fadd f0 f0 f1
    #0.0013695068
    flui f1 15027
    fori f1 f1 -32506
    fmul f1 f1 f2
    fsub f0 f0 f1
    j block_2888
block_2888:
    bne r1 r0 block_2890
    j block_2889
block_2889:
    fneg f0 f0
    j block_2891
block_2890:
    j block_2891
block_2891:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 25580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 25584
    jr r31
block_2785:
    lwcZ f0 r2 0
    lw r3 r1 20
    lwcZ f1 r3 0
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r3 f1
    itof f2 r3
    fclt f1 f2
    bc1t block_2893
block_2892:
    fmv f1 f2
    j block_2894
block_2893:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_2894
block_2894:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_2896
block_2895:
    mv r3 r0
    j block_2897
block_2896:
    addi r3 r0 1
    j block_2897
block_2897:
    lwcZ f0 r2 8
    lw r1 r1 20
    lwcZ f1 r1 8
    fsub f0 f0 f1
    #0.05
    flui f1 15692
    fori f1 f1 -13107
    fmul f1 f0 f1
    ftoi r1 f1
    itof f2 r1
    fclt f1 f2
    bc1t block_2899
block_2898:
    fmv f1 f2
    j block_2900
block_2899:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_2900
block_2900:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_2902
block_2901:
    mv r1 r0
    j block_2903
block_2902:
    addi r1 r0 1
    j block_2903
block_2903:
    bne r3 r0 block_2905
    j block_2904
block_2904:
    bne r1 r0 block_2908
    j block_2907
block_2907:
    #255.0
    flui f0 17279
    j block_2906
block_2908:
    #0.0
    flui f0 0
    j block_2906
block_2905:
    bne r1 r0 block_2910
    j block_2909
block_2909:
    #0.0
    flui f0 0
    j block_2906
block_2910:
    #255.0
    flui f0 17279
    j block_2906
block_2906:
    swcZ f0 r0 25584
    jr r31
