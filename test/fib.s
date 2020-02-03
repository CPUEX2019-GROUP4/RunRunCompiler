    ori r29 r0 5040
    ori r30 r0 30000
    jal main
end_of_program:
    nop
    beq r0 r0 end_of_program
fib.272:
block_8:
    addi Ti8.274.294 r0 2
    blt n.273 Ti8.274.294 block_10
block_9:
    subi Ti3.276.296 n.273 1
    mv r1 Ti3.276.296
    sw r31 r29 0
    addi r29 r29 4
    jal fib.272
    subi r29 r29 4
    lw r31 r29 0
    subi Ti5.279.299 n.273 2
    mv r1 Ti5.279.299
    sw r31 r29 0
    addi r29 r29 4
    jal fib.272
    subi r29 r29 4
    lw r31 r29 0
    add ret Ti6.275.297 Ti7.278.300
    jr r31
block_10:
    mv ret n.273
    jr r31
main:
block_0:
    addi Ti0.282 r0 40
    mv r1 Ti0.282
    sw r31 r29 0
    addi r29 r29 4
    jal fib.272
    subi r29 r29 4
    lw r31 r29 0
    mv r1 Ti1.281
    sw r31 r29 0
    addi r29 r29 4
    jal print_int.115
    subi r29 r29 4
    lw r31 r29 0
    jr r31
print_int.115:
block_4:
    blt n.116 r0 block_6
block_5:
    mv n.117.292 n.116
    j block_7
block_6:
    out r0 45
    sub n.117.292 r0 n.116
block_7:
    mv r1 n.117.292
    sw r31 r29 0
    addi r29 r29 4
    jal print_uint.104
    subi r29 r29 4
    lw r31 r29 0
    jr r31
print_uint.104:
block_1:
    addi Ti88.106.283 r0 10
    blt n.105 Ti88.106.283 block_3
block_2:
    div10 m.109.286 n.105
    mv r1 m.109.286
    sw r31 r29 0
    addi r29 r29 4
    jal print_uint.104
    subi r29 r29 4
    lw r31 r29 0
    sll r28 m.109.286 3
    add r28 r28 m.109.286
    add Ti84.114.289 r28 m.109.286
    sub Ti86.113.290 n.105 Ti84.114.289
    addi Ti87.111.291 Ti86.113.290 48
    out Ti87.111.291 0
    jr r31
block_3:
    addi Ti83.107.285 n.105 48
    out Ti83.107.285 0
    jr r31
