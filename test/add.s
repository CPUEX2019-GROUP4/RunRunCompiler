    ori r29 r0 5040
    ori r30 r0 30000
    jal main
end_of_program:
    nop
    beq r0 r0 end_of_program
main:
block_0:
    jr r31
