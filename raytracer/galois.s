    ori r29 r0 5040
    ori r30 r0 32964
    jal main
end_of_program:
    nop
    beq r0 r0 end_of_program
calc_dirvec.5376:
block_5885:
    addi r4 r0 5
    blt r1 r4 block_5887
block_5886:
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
    lw r1 r1 30716
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
block_5887:
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
    bc1t block_5889
block_5888:
    mv r4 r0
    j block_5890
block_5889:
    addi r4 r0 1
    j block_5890
block_5890:
    bne r4 r0 block_5892
    j block_5891
block_5891:
    fneg f1 f1
    j block_5893
block_5892:
    j block_5893
block_5893:
    #0.4375
    flui f4 16096
    fclt f1 f4
    bc1t block_5895
block_5894:
    #2.4375
    flui f4 16412
    fclt f1 f4
    bc1t block_5898
block_5897:
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
    j block_5896
block_5898:
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
    j block_5896
block_5895:
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
    j block_5896
block_5896:
    bne r4 r0 block_5900
    j block_5899
block_5899:
    fneg f1 f1
    j block_5901
block_5900:
    j block_5901
block_5901:
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
    bc1t block_5903
block_5902:
    fadd f7 f8 f7
    j block_5904
block_5903:
    fmv f7 f8
    j block_5904
block_5904:
    fclt f6 f7
    bc1t block_5906
block_5905:
    addi r4 r0 1
    j block_5907
block_5906:
    mv r4 r0
    j block_5907
block_5907:
    fclt f6 f7
    bc1t block_5909
block_5908:
    j block_5910
block_5909:
    fsub f7 f7 f6
    j block_5910
block_5910:
    fclt f5 f7
    bc1t block_5912
block_5911:
    fmv f6 f7
    j block_5913
block_5912:
    fsub f6 f6 f7
    j block_5913
block_5913:
    fclt f4 f6
    bc1t block_5915
block_5914:
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
    j block_5916
block_5915:
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
    j block_5916
block_5916:
    bne r4 r0 block_5918
    j block_5917
block_5917:
    fneg f4 f4
    j block_5919
block_5918:
    j block_5919
block_5919:
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
    bc1t block_5921
block_5920:
    fneg f1 f1
    j block_5922
block_5921:
    j block_5922
block_5922:
    fclt f7 f1
    bc1t block_5924
block_5923:
    addi r4 r0 1
    j block_5925
block_5924:
    addi r4 r0 -1
    j block_5925
block_5925:
    fclt f7 f1
    bc1t block_5927
block_5926:
    j block_5928
block_5927:
    fsub f1 f1 f7
    j block_5928
block_5928:
    fclt f6 f1
    bc1t block_5930
block_5929:
    j block_5931
block_5930:
    sub r4 r0 r4
    j block_5931
block_5931:
    fclt f6 f1
    bc1t block_5933
block_5932:
    j block_5934
block_5933:
    fsub f1 f7 f1
    j block_5934
block_5934:
    fclt f1 f5
    bc1t block_5936
block_5935:
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
    j block_5937
block_5936:
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
    j block_5937
block_5937:
    addi r5 r0 -1
    beq r4 r5 block_5939
block_5938:
    j block_5940
block_5939:
    fneg f1 f1
    j block_5940
block_5940:
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
    bc1t block_5942
block_5941:
    mv r4 r0
    j block_5943
block_5942:
    addi r4 r0 1
    j block_5943
block_5943:
    bne r4 r0 block_5945
    j block_5944
block_5944:
    fneg f4 f4
    j block_5946
block_5945:
    j block_5946
block_5946:
    #0.4375
    flui f5 16096
    fclt f4 f5
    bc1t block_5948
block_5947:
    #2.4375
    flui f5 16412
    fclt f4 f5
    bc1t block_5951
block_5950:
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
    j block_5949
block_5951:
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
    j block_5949
block_5948:
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
    j block_5949
block_5949:
    bne r4 r0 block_5953
    j block_5952
block_5952:
    fneg f4 f4
    j block_5954
block_5953:
    j block_5954
block_5954:
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
    bc1t block_5956
block_5955:
    fadd f8 f9 f8
    j block_5957
block_5956:
    fmv f8 f9
    j block_5957
block_5957:
    fclt f7 f8
    bc1t block_5959
block_5958:
    addi r4 r0 1
    j block_5960
block_5959:
    mv r4 r0
    j block_5960
block_5960:
    fclt f7 f8
    bc1t block_5962
block_5961:
    j block_5963
block_5962:
    fsub f8 f8 f7
    j block_5963
block_5963:
    fclt f6 f8
    bc1t block_5965
block_5964:
    fmv f7 f8
    j block_5966
block_5965:
    fsub f7 f7 f8
    j block_5966
block_5966:
    fclt f5 f7
    bc1t block_5968
block_5967:
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
    j block_5969
block_5968:
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
    j block_5969
block_5969:
    bne r4 r0 block_5971
    j block_5970
block_5970:
    fneg f5 f5
    j block_5972
block_5971:
    j block_5972
block_5972:
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
    bc1t block_5974
block_5973:
    fneg f4 f4
    j block_5975
block_5974:
    j block_5975
block_5975:
    fclt f8 f4
    bc1t block_5977
block_5976:
    addi r4 r0 1
    j block_5978
block_5977:
    addi r4 r0 -1
    j block_5978
block_5978:
    fclt f8 f4
    bc1t block_5980
block_5979:
    j block_5981
block_5980:
    fsub f4 f4 f8
    j block_5981
block_5981:
    fclt f7 f4
    bc1t block_5983
block_5982:
    j block_5984
block_5983:
    sub r4 r0 r4
    j block_5984
block_5984:
    fclt f7 f4
    bc1t block_5986
block_5985:
    j block_5987
block_5986:
    fsub f4 f8 f4
    j block_5987
block_5987:
    fclt f4 f6
    bc1t block_5989
block_5988:
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
    j block_5990
block_5989:
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
    j block_5990
block_5990:
    addi r5 r0 -1
    beq r4 r5 block_5992
block_5991:
    j block_5993
block_5992:
    fneg f4 f4
    j block_5993
block_5993:
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
block_6005:
    blt r1 r0 block_6007
block_6006:
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
    blt r4 r0 block_6009
block_6008:
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
    blt r3 r4 block_6012
block_6011:
    subi r3 r3 5
    j block_6013
block_6012:
    j block_6013
block_6013:
    lw r4 r29 20
    lwcZ f0 r29 28
    mv r2 r3
    mv r3 r4
    sw r31 r29 32
    addi r29 r29 36
    jal calc_dirvecs.5436
    subi r29 r29 36
    lw r31 r29 32
    j block_6010
block_6009:
    j block_6010
block_6010:
    lw r1 r29 24
    subi r1 r1 1
    lw r2 r29 16
    addi r2 r2 2
    addi r3 r0 5
    blt r2 r3 block_6015
block_6014:
    subi r2 r2 5
    j block_6016
block_6015:
    j block_6016
block_6016:
    lw r3 r29 20
    addi r3 r3 4
    blt r1 r0 block_6018
block_6017:
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
    blt r2 r3 block_6020
block_6019:
    subi r2 r2 5
    j block_6021
block_6020:
    j block_6021
block_6021:
    lw r3 r29 12
    addi r3 r3 4
    sw r31 r29 32
    addi r29 r29 36
    jal calc_dirvec_rows.5466
    subi r29 r29 36
    lw r31 r29 32
    jr r31
block_6018:
    jr r31
block_6007:
    jr r31
calc_dirvecs.5436:
block_5994:
    blt r1 r0 block_5996
block_5995:
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
    blt r2 r3 block_5998
block_5997:
    subi r2 r2 5
    j block_5999
block_5998:
    j block_5999
block_5999:
    blt r1 r0 block_6001
block_6000:
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
    blt r2 r3 block_6003
block_6002:
    subi r2 r2 5
    j block_6004
block_6003:
    j block_6004
block_6004:
    lw r3 r29 16
    lwcZ f0 r29 20
    sw r31 r29 24
    addi r29 r29 28
    jal calc_dirvecs.5436
    subi r29 r29 28
    lw r31 r29 24
    jr r31
block_6001:
    jr r31
block_5996:
    jr r31
check_all_inside.4238:
block_858:
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_860
block_859:
    sll r3 r3 2
    lw r3 r3 30048
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
    beq r4 r5 block_862
block_861:
    addi r5 r0 2
    beq r4 r5 block_865
block_864:
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
    beq r4 r0 block_867
block_866:
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
    j block_868
block_867:
    fmv f3 f6
    j block_868
block_868:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_870
block_869:
    j block_871
block_870:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_871
block_871:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_873
block_872:
    mv r4 r0
    j block_874
block_873:
    addi r4 r0 1
    j block_874
block_874:
    bne r3 r0 block_876
    j block_875
block_875:
    mv r3 r4
    j block_877
block_876:
    bne r4 r0 block_879
    j block_878
block_878:
    addi r3 r0 1
    j block_877
block_879:
    mv r3 r0
    j block_877
block_877:
    bne r3 r0 block_881
    j block_880
block_880:
    addi r3 r0 1
    j block_863
block_881:
    mv r3 r0
    j block_863
block_865:
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
    bc1t block_883
block_882:
    mv r4 r0
    j block_884
block_883:
    addi r4 r0 1
    j block_884
block_884:
    bne r3 r0 block_886
    j block_885
block_885:
    mv r3 r4
    j block_887
block_886:
    bne r4 r0 block_889
    j block_888
block_888:
    addi r3 r0 1
    j block_887
block_889:
    mv r3 r0
    j block_887
block_887:
    bne r3 r0 block_891
    j block_890
block_890:
    addi r3 r0 1
    j block_863
block_891:
    mv r3 r0
    j block_863
block_862:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_893
block_892:
    j block_894
block_893:
    fneg f3 f3
    j block_894
block_894:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_896
block_895:
    mv r4 r0
    j block_897
block_896:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_899
block_898:
    fmv f3 f4
    j block_900
block_899:
    fneg f3 f4
    j block_900
block_900:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_902
block_901:
    mv r4 r0
    j block_897
block_902:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_904
block_903:
    fmv f3 f5
    j block_905
block_904:
    fneg f3 f5
    j block_905
block_905:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_907
block_906:
    mv r4 r0
    j block_897
block_907:
    addi r4 r0 1
    j block_897
block_897:
    bne r4 r0 block_909
    j block_908
block_908:
    lw r3 r3 24
    bne r3 r0 block_911
    j block_910
block_910:
    addi r3 r0 1
    j block_863
block_911:
    mv r3 r0
    j block_863
block_909:
    lw r3 r3 24
    j block_863
block_863:
    bne r3 r0 block_913
    j block_912
block_912:
    addi r1 r1 1
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_915
block_914:
    sll r3 r3 2
    lw r3 r3 30048
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
    beq r4 r5 block_917
block_916:
    addi r5 r0 2
    beq r4 r5 block_920
block_919:
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
    beq r4 r0 block_922
block_921:
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
    j block_923
block_922:
    fmv f3 f6
    j block_923
block_923:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_925
block_924:
    j block_926
block_925:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_926
block_926:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_928
block_927:
    mv r4 r0
    j block_929
block_928:
    addi r4 r0 1
    j block_929
block_929:
    bne r3 r0 block_931
    j block_930
block_930:
    mv r3 r4
    j block_932
block_931:
    bne r4 r0 block_934
    j block_933
block_933:
    addi r3 r0 1
    j block_932
block_934:
    mv r3 r0
    j block_932
block_932:
    bne r3 r0 block_936
    j block_935
block_935:
    addi r3 r0 1
    j block_918
block_936:
    mv r3 r0
    j block_918
block_920:
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
    bc1t block_938
block_937:
    mv r4 r0
    j block_939
block_938:
    addi r4 r0 1
    j block_939
block_939:
    bne r3 r0 block_941
    j block_940
block_940:
    mv r3 r4
    j block_942
block_941:
    bne r4 r0 block_944
    j block_943
block_943:
    addi r3 r0 1
    j block_942
block_944:
    mv r3 r0
    j block_942
block_942:
    bne r3 r0 block_946
    j block_945
block_945:
    addi r3 r0 1
    j block_918
block_946:
    mv r3 r0
    j block_918
block_917:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_948
block_947:
    j block_949
block_948:
    fneg f3 f3
    j block_949
block_949:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_951
block_950:
    mv r4 r0
    j block_952
block_951:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_954
block_953:
    fmv f3 f4
    j block_955
block_954:
    fneg f3 f4
    j block_955
block_955:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_957
block_956:
    mv r4 r0
    j block_952
block_957:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_959
block_958:
    fmv f3 f5
    j block_960
block_959:
    fneg f3 f5
    j block_960
block_960:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_962
block_961:
    mv r4 r0
    j block_952
block_962:
    addi r4 r0 1
    j block_952
block_952:
    bne r4 r0 block_964
    j block_963
block_963:
    lw r3 r3 24
    bne r3 r0 block_966
    j block_965
block_965:
    addi r3 r0 1
    j block_918
block_966:
    mv r3 r0
    j block_918
block_964:
    lw r3 r3 24
    j block_918
block_918:
    bne r3 r0 block_968
    j block_967
block_967:
    addi r1 r1 1
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_970
block_969:
    sll r3 r3 2
    lw r3 r3 30048
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
    beq r4 r5 block_972
block_971:
    addi r5 r0 2
    beq r4 r5 block_975
block_974:
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
    beq r4 r0 block_977
block_976:
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
    j block_978
block_977:
    fmv f3 f6
    j block_978
block_978:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_980
block_979:
    j block_981
block_980:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_981
block_981:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_983
block_982:
    mv r4 r0
    j block_984
block_983:
    addi r4 r0 1
    j block_984
block_984:
    bne r3 r0 block_986
    j block_985
block_985:
    mv r3 r4
    j block_987
block_986:
    bne r4 r0 block_989
    j block_988
block_988:
    addi r3 r0 1
    j block_987
block_989:
    mv r3 r0
    j block_987
block_987:
    bne r3 r0 block_991
    j block_990
block_990:
    addi r3 r0 1
    j block_973
block_991:
    mv r3 r0
    j block_973
block_975:
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
    bc1t block_993
block_992:
    mv r4 r0
    j block_994
block_993:
    addi r4 r0 1
    j block_994
block_994:
    bne r3 r0 block_996
    j block_995
block_995:
    mv r3 r4
    j block_997
block_996:
    bne r4 r0 block_999
    j block_998
block_998:
    addi r3 r0 1
    j block_997
block_999:
    mv r3 r0
    j block_997
block_997:
    bne r3 r0 block_1001
    j block_1000
block_1000:
    addi r3 r0 1
    j block_973
block_1001:
    mv r3 r0
    j block_973
block_972:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_1003
block_1002:
    j block_1004
block_1003:
    fneg f3 f3
    j block_1004
block_1004:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_1006
block_1005:
    mv r4 r0
    j block_1007
block_1006:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_1009
block_1008:
    fmv f3 f4
    j block_1010
block_1009:
    fneg f3 f4
    j block_1010
block_1010:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_1012
block_1011:
    mv r4 r0
    j block_1007
block_1012:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_1014
block_1013:
    fmv f3 f5
    j block_1015
block_1014:
    fneg f3 f5
    j block_1015
block_1015:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_1017
block_1016:
    mv r4 r0
    j block_1007
block_1017:
    addi r4 r0 1
    j block_1007
block_1007:
    bne r4 r0 block_1019
    j block_1018
block_1018:
    lw r3 r3 24
    bne r3 r0 block_1021
    j block_1020
block_1020:
    addi r3 r0 1
    j block_973
block_1021:
    mv r3 r0
    j block_973
block_1019:
    lw r3 r3 24
    j block_973
block_973:
    bne r3 r0 block_1023
    j block_1022
block_1022:
    addi r1 r1 1
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_1025
block_1024:
    sll r3 r3 2
    lw r3 r3 30048
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
    beq r4 r5 block_1027
block_1026:
    addi r5 r0 2
    beq r4 r5 block_1030
block_1029:
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
    beq r4 r0 block_1032
block_1031:
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
    j block_1033
block_1032:
    fmv f3 f6
    j block_1033
block_1033:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_1035
block_1034:
    j block_1036
block_1035:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_1036
block_1036:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1038
block_1037:
    mv r4 r0
    j block_1039
block_1038:
    addi r4 r0 1
    j block_1039
block_1039:
    bne r3 r0 block_1041
    j block_1040
block_1040:
    mv r3 r4
    j block_1042
block_1041:
    bne r4 r0 block_1044
    j block_1043
block_1043:
    addi r3 r0 1
    j block_1042
block_1044:
    mv r3 r0
    j block_1042
block_1042:
    bne r3 r0 block_1046
    j block_1045
block_1045:
    addi r3 r0 1
    j block_1028
block_1046:
    mv r3 r0
    j block_1028
block_1030:
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
    bc1t block_1048
block_1047:
    mv r4 r0
    j block_1049
block_1048:
    addi r4 r0 1
    j block_1049
block_1049:
    bne r3 r0 block_1051
    j block_1050
block_1050:
    mv r3 r4
    j block_1052
block_1051:
    bne r4 r0 block_1054
    j block_1053
block_1053:
    addi r3 r0 1
    j block_1052
block_1054:
    mv r3 r0
    j block_1052
block_1052:
    bne r3 r0 block_1056
    j block_1055
block_1055:
    addi r3 r0 1
    j block_1028
block_1056:
    mv r3 r0
    j block_1028
block_1027:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_1058
block_1057:
    j block_1059
block_1058:
    fneg f3 f3
    j block_1059
block_1059:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_1061
block_1060:
    mv r4 r0
    j block_1062
block_1061:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_1064
block_1063:
    fmv f3 f4
    j block_1065
block_1064:
    fneg f3 f4
    j block_1065
block_1065:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_1067
block_1066:
    mv r4 r0
    j block_1062
block_1067:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_1069
block_1068:
    fmv f3 f5
    j block_1070
block_1069:
    fneg f3 f5
    j block_1070
block_1070:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_1072
block_1071:
    mv r4 r0
    j block_1062
block_1072:
    addi r4 r0 1
    j block_1062
block_1062:
    bne r4 r0 block_1074
    j block_1073
block_1073:
    lw r3 r3 24
    bne r3 r0 block_1076
    j block_1075
block_1075:
    addi r3 r0 1
    j block_1028
block_1076:
    mv r3 r0
    j block_1028
block_1074:
    lw r3 r3 24
    j block_1028
block_1028:
    bne r3 r0 block_1078
    j block_1077
block_1077:
    addi r1 r1 1
    sw r31 r29 0
    addi r29 r29 4
    jal check_all_inside.4238
    subi r29 r29 4
    lw r31 r29 0
    jr r31
block_1078:
    mv r1 r0
    jr r31
block_1025:
    addi r1 r0 1
    jr r31
block_1023:
    mv r1 r0
    jr r31
block_970:
    addi r1 r0 1
    jr r31
block_968:
    mv r1 r0
    jr r31
block_915:
    addi r1 r0 1
    jr r31
block_913:
    mv r1 r0
    jr r31
block_860:
    addi r1 r0 1
    jr r31
create_dirvec_elements.5492:
block_6022:
    blt r2 r0 block_6024
block_6023:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 30000
    beq r0 r4 arrayexit.90913
    sll r28 r4  2
arrayloop.90912:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90912
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.90913:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sll r4 r2 2
    swab r3 r1 r4
    subi r2 r2 1
    blt r2 r0 block_6026
block_6025:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 30000
    beq r0 r4 arrayexit.90915
    sll r28 r4  2
arrayloop.90914:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90914
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.90915:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sll r4 r2 2
    swab r3 r1 r4
    subi r2 r2 1
    blt r2 r0 block_6028
block_6027:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 30000
    beq r0 r4 arrayexit.90917
    sll r28 r4  2
arrayloop.90916:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90916
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.90917:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sll r4 r2 2
    swab r3 r1 r4
    subi r2 r2 1
    blt r2 r0 block_6030
block_6029:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 30000
    beq r0 r4 arrayexit.90919
    sll r28 r4  2
arrayloop.90918:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90918
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.90919:
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
block_6030:
    jr r31
block_6028:
    jr r31
block_6026:
    jr r31
block_6024:
    jr r31
create_dirvecs.5501:
block_6031:
    blt r1 r0 block_6033
block_6032:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r2 r30
    addi r30 r30 12
    lw r3 r0 30000
    beq r0 r3 arrayexit.90921
    sll r28 r3  2
arrayloop.90920:
    subi r28 r28 4
    swab r2 r30 r28
    bne r0 r28 arrayloop.90920
    sll r28 r3  2
    mv r3 r30
    add r30 r30 r28
arrayexit.90921:
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
    sw r2 r3 30716
    sll r2 r1 2
    lw r2 r2 30716
    addi r3 r0 118
    sw r1 r29 12
    blt r3 r0 block_6035
block_6034:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 30000
    beq r0 r4 arrayexit.90923
    sll r28 r4  2
arrayloop.90922:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90922
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.90923:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sw r3 r2 472
    addi r3 r0 117
    blt r3 r0 block_6038
block_6037:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 30000
    beq r0 r4 arrayexit.90925
    sll r28 r4  2
arrayloop.90924:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90924
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.90925:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sw r3 r2 468
    addi r3 r0 116
    blt r3 r0 block_6040
block_6039:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 30000
    beq r0 r4 arrayexit.90927
    sll r28 r4  2
arrayloop.90926:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90926
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.90927:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sw r3 r2 464
    addi r3 r0 115
    mv r1 r2
    mv r2 r3
    sw r31 r29 16
    addi r29 r29 20
    jal create_dirvec_elements.5492
    subi r29 r29 20
    lw r31 r29 16
    j block_6036
block_6040:
    j block_6036
block_6038:
    j block_6036
block_6035:
    j block_6036
block_6036:
    lw r1 r29 12
    subi r1 r1 1
    blt r1 r0 block_6042
block_6041:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r2 r30
    addi r30 r30 12
    lw r3 r0 30000
    beq r0 r3 arrayexit.90929
    sll r28 r3  2
arrayloop.90928:
    subi r28 r28 4
    swab r2 r30 r28
    bne r0 r28 arrayloop.90928
    sll r28 r3  2
    mv r3 r30
    add r30 r30 r28
arrayexit.90929:
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
    sw r2 r3 30716
    sll r2 r1 2
    lw r2 r2 30716
    addi r3 r0 118
    sw r1 r29 8
    blt r3 r0 block_6044
block_6043:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 30000
    beq r0 r4 arrayexit.90931
    sll r28 r4  2
arrayloop.90930:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90930
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.90931:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sw r3 r2 472
    addi r3 r0 117
    blt r3 r0 block_6047
block_6046:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 30000
    beq r0 r4 arrayexit.90933
    sll r28 r4  2
arrayloop.90932:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90932
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.90933:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sw r3 r2 468
    addi r3 r0 116
    mv r1 r2
    mv r2 r3
    sw r31 r29 16
    addi r29 r29 20
    jal create_dirvec_elements.5492
    subi r29 r29 20
    lw r31 r29 16
    j block_6045
block_6047:
    j block_6045
block_6044:
    j block_6045
block_6045:
    lw r1 r29 8
    subi r1 r1 1
    blt r1 r0 block_6049
block_6048:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r2 r30
    addi r30 r30 12
    lw r3 r0 30000
    beq r0 r3 arrayexit.90935
    sll r28 r3  2
arrayloop.90934:
    subi r28 r28 4
    swab r2 r30 r28
    bne r0 r28 arrayloop.90934
    sll r28 r3  2
    mv r3 r30
    add r30 r30 r28
arrayexit.90935:
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
    sw r2 r3 30716
    sll r2 r1 2
    lw r2 r2 30716
    addi r3 r0 118
    sw r1 r29 0
    blt r3 r0 block_6051
block_6050:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r3 r30
    addi r30 r30 12
    lw r4 r0 30000
    beq r0 r4 arrayexit.90937
    sll r28 r4  2
arrayloop.90936:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90936
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.90937:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r3 r5 0
    mv r3 r5
    sw r3 r2 472
    addi r3 r0 117
    mv r1 r2
    mv r2 r3
    sw r31 r29 16
    addi r29 r29 20
    jal create_dirvec_elements.5492
    subi r29 r29 20
    lw r31 r29 16
    j block_6052
block_6051:
    j block_6052
block_6052:
    lw r1 r29 0
    subi r1 r1 1
    blt r1 r0 block_6054
block_6053:
    #0.0
    flui f0 0
    swcZ f0 r30 0
    swcZ f0 r30 4
    swcZ f0 r30 8
    mv r2 r30
    addi r30 r30 12
    lw r3 r0 30000
    beq r0 r3 arrayexit.90939
    sll r28 r3  2
arrayloop.90938:
    subi r28 r28 4
    swab r2 r30 r28
    bne r0 r28 arrayloop.90938
    sll r28 r3  2
    mv r3 r30
    add r30 r30 r28
arrayexit.90939:
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
    sw r2 r3 30716
    sll r2 r1 2
    lw r2 r2 30716
    addi r3 r0 118
    sw r1 r29 4
    mv r1 r2
    mv r2 r3
    sw r31 r29 16
    addi r29 r29 20
    jal create_dirvec_elements.5492
    subi r29 r29 20
    lw r31 r29 16
    lw r1 r29 4
    subi r1 r1 1
    sw r31 r29 16
    addi r29 r29 20
    jal create_dirvecs.5501
    subi r29 r29 20
    lw r31 r29 16
    jr r31
block_6054:
    jr r31
block_6049:
    jr r31
block_6042:
    jr r31
block_6033:
    jr r31
do_without_neighbors.5035:
block_5576:
    addi r3 r0 4
    blt r3 r2 block_5578
block_5577:
    lw r3 r1 8
    sll r4 r2 2
    lwab r3 r3 r4
    blt r3 r0 block_5580
block_5579:
    lw r3 r1 12
    sll r4 r2 2
    lwab r3 r3 r4
    sw r1 r29 60
    sw r2 r29 56
    bne r3 r0 block_5582
    j block_5581
block_5581:
    j block_5583
block_5582:
    lw r3 r1 20
    lw r4 r1 28
    lw r5 r1 4
    lw r6 r1 16
    sll r7 r2 2
    lwab r3 r3 r7
    lwcZ f0 r3 0
    swcZ f0 r0 30592
    lwcZ f0 r3 4
    swcZ f0 r0 30596
    lwcZ f0 r3 8
    swcZ f0 r0 30600
    lw r3 r1 24
    lw r3 r3 0
    sll r7 r2 2
    lwab r4 r4 r7
    sll r7 r2 2
    lwab r5 r5 r7
    sw r6 r29 52
    sw r3 r29 40
    sw r5 r29 8
    sw r4 r29 0
    beq r3 r0 block_5585
block_5584:
    lw r7 r0 30716
    lwcZ f0 r5 0
    swcZ f0 r0 30648
    lwcZ f0 r5 4
    swcZ f0 r0 30652
    lwcZ f0 r5 8
    swcZ f0 r0 30656
    lw r8 r0 30000
    subi r8 r8 1
    sw r7 r29 16
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
    sw r31 r29 64
    addi r29 r29 68
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 68
    lw r31 r29 64
    j block_5586
block_5585:
    j block_5586
block_5586:
    addi r1 r0 1
    lw r2 r29 40
    beq r2 r1 block_5588
block_5587:
    lw r1 r0 30720
    lw r3 r29 8
    lwcZ f0 r3 0
    swcZ f0 r0 30648
    lwcZ f0 r3 4
    swcZ f0 r0 30652
    lwcZ f0 r3 8
    swcZ f0 r0 30656
    lw r4 r0 30000
    subi r4 r4 1
    sw r1 r29 20
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
    sw r31 r29 64
    addi r29 r29 68
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 68
    lw r31 r29 64
    j block_5589
block_5588:
    j block_5589
block_5589:
    addi r1 r0 2
    lw r2 r29 40
    beq r2 r1 block_5591
block_5590:
    lw r1 r0 30724
    lw r3 r29 8
    lwcZ f0 r3 0
    swcZ f0 r0 30648
    lwcZ f0 r3 4
    swcZ f0 r0 30652
    lwcZ f0 r3 8
    swcZ f0 r0 30656
    lw r4 r0 30000
    subi r4 r4 1
    sw r1 r29 24
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
    sw r31 r29 64
    addi r29 r29 68
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 68
    lw r31 r29 64
    j block_5592
block_5591:
    j block_5592
block_5592:
    addi r1 r0 3
    lw r2 r29 40
    beq r2 r1 block_5594
block_5593:
    lw r1 r0 30728
    lw r3 r29 8
    lwcZ f0 r3 0
    swcZ f0 r0 30648
    lwcZ f0 r3 4
    swcZ f0 r0 30652
    lwcZ f0 r3 8
    swcZ f0 r0 30656
    lw r4 r0 30000
    subi r4 r4 1
    sw r1 r29 28
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
    sw r31 r29 64
    addi r29 r29 68
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 68
    lw r31 r29 64
    j block_5595
block_5594:
    j block_5595
block_5595:
    addi r1 r0 4
    lw r2 r29 40
    beq r2 r1 block_5597
block_5596:
    lw r1 r0 30732
    lw r2 r29 8
    lwcZ f0 r2 0
    swcZ f0 r0 30648
    lwcZ f0 r2 4
    swcZ f0 r0 30652
    lwcZ f0 r2 8
    swcZ f0 r0 30656
    lw r3 r0 30000
    subi r3 r3 1
    sw r1 r29 32
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
    j block_5598
block_5597:
    j block_5598
block_5598:
    lw r1 r29 56
    sll r2 r1 2
    lw r3 r29 52
    lwab r2 r3 r2
    lwcZ f0 r0 30604
    lwcZ f1 r2 0
    lwcZ f2 r0 30592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30604
    lwcZ f0 r0 30608
    lwcZ f1 r2 4
    lwcZ f2 r0 30596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30608
    lwcZ f0 r0 30612
    lwcZ f1 r2 8
    lwcZ f2 r0 30600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30612
    j block_5583
block_5583:
    lw r1 r29 56
    addi r1 r1 1
    addi r2 r0 4
    blt r2 r1 block_5600
block_5599:
    lw r2 r29 60
    lw r3 r2 8
    sll r4 r1 2
    lwab r3 r3 r4
    blt r3 r0 block_5602
block_5601:
    lw r3 r2 12
    sll r4 r1 2
    lwab r3 r3 r4
    bne r3 r0 block_5604
    j block_5603
block_5603:
    j block_5605
block_5604:
    lw r3 r2 20
    lw r4 r2 28
    lw r5 r2 4
    lw r6 r2 16
    sll r7 r1 2
    lwab r3 r3 r7
    lwcZ f0 r3 0
    swcZ f0 r0 30592
    lwcZ f0 r3 4
    swcZ f0 r0 30596
    lwcZ f0 r3 8
    swcZ f0 r0 30600
    lw r3 r2 24
    lw r3 r3 0
    sll r7 r1 2
    lwab r4 r4 r7
    sll r7 r1 2
    lwab r5 r5 r7
    sw r6 r29 48
    sw r3 r29 44
    sw r1 r29 36
    sw r5 r29 12
    sw r4 r29 4
    beq r3 r0 block_5607
block_5606:
    lw r7 r0 30716
    mv r3 r5
    mv r2 r4
    mv r1 r7
    sw r31 r29 64
    addi r29 r29 68
    jal trace_diffuse_rays.4959
    subi r29 r29 68
    lw r31 r29 64
    j block_5608
block_5607:
    j block_5608
block_5608:
    addi r1 r0 1
    lw r2 r29 44
    beq r2 r1 block_5610
block_5609:
    lw r1 r0 30720
    lw r3 r29 4
    lw r4 r29 12
    mv r2 r3
    mv r3 r4
    sw r31 r29 64
    addi r29 r29 68
    jal trace_diffuse_rays.4959
    subi r29 r29 68
    lw r31 r29 64
    j block_5611
block_5610:
    j block_5611
block_5611:
    addi r1 r0 2
    lw r2 r29 44
    beq r2 r1 block_5613
block_5612:
    lw r1 r0 30724
    lw r3 r29 4
    lw r4 r29 12
    mv r2 r3
    mv r3 r4
    sw r31 r29 64
    addi r29 r29 68
    jal trace_diffuse_rays.4959
    subi r29 r29 68
    lw r31 r29 64
    j block_5614
block_5613:
    j block_5614
block_5614:
    addi r1 r0 3
    lw r2 r29 44
    beq r2 r1 block_5616
block_5615:
    lw r1 r0 30728
    lw r3 r29 4
    lw r4 r29 12
    mv r2 r3
    mv r3 r4
    sw r31 r29 64
    addi r29 r29 68
    jal trace_diffuse_rays.4959
    subi r29 r29 68
    lw r31 r29 64
    j block_5617
block_5616:
    j block_5617
block_5617:
    addi r1 r0 4
    lw r2 r29 44
    beq r2 r1 block_5619
block_5618:
    lw r1 r0 30732
    lw r2 r29 4
    lw r3 r29 12
    sw r31 r29 64
    addi r29 r29 68
    jal trace_diffuse_rays.4959
    subi r29 r29 68
    lw r31 r29 64
    j block_5620
block_5619:
    j block_5620
block_5620:
    lw r1 r29 36
    sll r2 r1 2
    lw r3 r29 48
    lwab r2 r3 r2
    lwcZ f0 r0 30604
    lwcZ f1 r2 0
    lwcZ f2 r0 30592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30604
    lwcZ f0 r0 30608
    lwcZ f1 r2 4
    lwcZ f2 r0 30596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30608
    lwcZ f0 r0 30612
    lwcZ f1 r2 8
    lwcZ f2 r0 30600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30612
    j block_5605
block_5605:
    addi r2 r1 1
    lw r1 r29 60
    sw r31 r29 64
    addi r29 r29 68
    jal do_without_neighbors.5035
    subi r29 r29 68
    lw r31 r29 64
    jr r31
block_5602:
    jr r31
block_5600:
    jr r31
block_5580:
    jr r31
block_5578:
    jr r31
init_dirvec_constants.5514:
block_6055:
    blt r2 r0 block_6057
block_6056:
    sll r3 r2 2
    lwab r3 r1 r3
    lw r4 r0 30000
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
    blt r1 r0 block_6059
block_6058:
    sll r2 r1 2
    lw r3 r29 16
    lwab r2 r3 r2
    lw r4 r0 30000
    subi r4 r4 1
    sw r1 r29 8
    blt r4 r0 block_6061
block_6060:
    sll r5 r4 2
    lw r5 r5 30048
    lw r6 r2 4
    lw r7 r2 0
    lw r8 r5 4
    addi r9 r0 1
    beq r8 r9 block_6064
block_6063:
    addi r9 r0 2
    beq r8 r9 block_6067
block_6066:
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
    beq r9 r0 block_6069
block_6068:
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
    j block_6070
block_6069:
    fmv f0 f3
    j block_6070
block_6070:
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
    beq r9 r0 block_6072
block_6071:
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
    j block_6073
block_6072:
    swcZ f1 r8 4
    swcZ f2 r8 8
    swcZ f3 r8 12
    j block_6073
block_6073:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6075
block_6074:
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
    j block_6076
block_6075:
    j block_6076
block_6076:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6065
block_6067:
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
    bc1t block_6078
block_6077:
    mv r7 r0
    j block_6079
block_6078:
    addi r7 r0 1
    j block_6079
block_6079:
    bne r7 r0 block_6081
    j block_6080
block_6080:
    #0.0
    flui f0 0
    swcZ f0 r8 0
    j block_6082
block_6081:
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
    j block_6082
block_6082:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6065
block_6064:
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
    bc1t block_6084
block_6083:
    lw r9 r5 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6087
block_6086:
    mv r10 r0
    j block_6088
block_6087:
    addi r10 r0 1
    j block_6088
block_6088:
    bne r9 r0 block_6090
    j block_6089
block_6089:
    mv r9 r10
    j block_6091
block_6090:
    bne r10 r0 block_6093
    j block_6092
block_6092:
    addi r9 r0 1
    j block_6091
block_6093:
    mv r9 r0
    j block_6091
block_6091:
    lw r10 r5 16
    lwcZ f0 r10 0
    bne r9 r0 block_6095
    j block_6094
block_6094:
    fneg f0 f0
    j block_6096
block_6095:
    j block_6096
block_6096:
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
    j block_6085
block_6084:
    #0.0
    flui f0 0
    swcZ f0 r8 4
    j block_6085
block_6085:
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6098
block_6097:
    lw r9 r5 24
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6101
block_6100:
    mv r10 r0
    j block_6102
block_6101:
    addi r10 r0 1
    j block_6102
block_6102:
    bne r9 r0 block_6104
    j block_6103
block_6103:
    mv r9 r10
    j block_6105
block_6104:
    bne r10 r0 block_6107
    j block_6106
block_6106:
    addi r9 r0 1
    j block_6105
block_6107:
    mv r9 r0
    j block_6105
block_6105:
    lw r10 r5 16
    lwcZ f0 r10 4
    bne r9 r0 block_6109
    j block_6108
block_6108:
    fneg f0 f0
    j block_6110
block_6109:
    j block_6110
block_6110:
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
    j block_6099
block_6098:
    #0.0
    flui f0 0
    swcZ f0 r8 12
    j block_6099
block_6099:
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6112
block_6111:
    lw r9 r5 24
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6115
block_6114:
    mv r10 r0
    j block_6116
block_6115:
    addi r10 r0 1
    j block_6116
block_6116:
    bne r9 r0 block_6118
    j block_6117
block_6117:
    mv r9 r10
    j block_6119
block_6118:
    bne r10 r0 block_6121
    j block_6120
block_6120:
    addi r9 r0 1
    j block_6119
block_6121:
    mv r9 r0
    j block_6119
block_6119:
    lw r5 r5 16
    lwcZ f0 r5 8
    bne r9 r0 block_6123
    j block_6122
block_6122:
    fneg f0 f0
    j block_6124
block_6123:
    j block_6124
block_6124:
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
    j block_6113
block_6112:
    #0.0
    flui f0 0
    swcZ f0 r8 20
    j block_6113
block_6113:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6065
block_6065:
    subi r4 r4 1
    mv r1 r2
    mv r2 r4
    sw r31 r29 20
    addi r29 r29 24
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 24
    lw r31 r29 20
    j block_6062
block_6061:
    j block_6062
block_6062:
    lw r1 r29 8
    subi r1 r1 1
    blt r1 r0 block_6126
block_6125:
    sll r2 r1 2
    lw r3 r29 16
    lwab r2 r3 r2
    lw r4 r0 30000
    subi r4 r4 1
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
    blt r1 r0 block_6128
block_6127:
    sll r2 r1 2
    lw r3 r29 16
    lwab r2 r3 r2
    lw r4 r0 30000
    subi r4 r4 1
    sw r1 r29 4
    blt r4 r0 block_6130
block_6129:
    sll r5 r4 2
    lw r5 r5 30048
    lw r6 r2 4
    lw r7 r2 0
    lw r8 r5 4
    addi r9 r0 1
    beq r8 r9 block_6133
block_6132:
    addi r9 r0 2
    beq r8 r9 block_6136
block_6135:
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
    beq r9 r0 block_6138
block_6137:
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
    j block_6139
block_6138:
    fmv f0 f3
    j block_6139
block_6139:
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
    beq r9 r0 block_6141
block_6140:
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
    j block_6142
block_6141:
    swcZ f1 r8 4
    swcZ f2 r8 8
    swcZ f3 r8 12
    j block_6142
block_6142:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6144
block_6143:
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
    j block_6145
block_6144:
    j block_6145
block_6145:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6134
block_6136:
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
    bc1t block_6147
block_6146:
    mv r7 r0
    j block_6148
block_6147:
    addi r7 r0 1
    j block_6148
block_6148:
    bne r7 r0 block_6150
    j block_6149
block_6149:
    #0.0
    flui f0 0
    swcZ f0 r8 0
    j block_6151
block_6150:
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
    j block_6151
block_6151:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6134
block_6133:
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
    bc1t block_6153
block_6152:
    lw r9 r5 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6156
block_6155:
    mv r10 r0
    j block_6157
block_6156:
    addi r10 r0 1
    j block_6157
block_6157:
    bne r9 r0 block_6159
    j block_6158
block_6158:
    mv r9 r10
    j block_6160
block_6159:
    bne r10 r0 block_6162
    j block_6161
block_6161:
    addi r9 r0 1
    j block_6160
block_6162:
    mv r9 r0
    j block_6160
block_6160:
    lw r10 r5 16
    lwcZ f0 r10 0
    bne r9 r0 block_6164
    j block_6163
block_6163:
    fneg f0 f0
    j block_6165
block_6164:
    j block_6165
block_6165:
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
    j block_6154
block_6153:
    #0.0
    flui f0 0
    swcZ f0 r8 4
    j block_6154
block_6154:
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6167
block_6166:
    lw r9 r5 24
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6170
block_6169:
    mv r10 r0
    j block_6171
block_6170:
    addi r10 r0 1
    j block_6171
block_6171:
    bne r9 r0 block_6173
    j block_6172
block_6172:
    mv r9 r10
    j block_6174
block_6173:
    bne r10 r0 block_6176
    j block_6175
block_6175:
    addi r9 r0 1
    j block_6174
block_6176:
    mv r9 r0
    j block_6174
block_6174:
    lw r10 r5 16
    lwcZ f0 r10 4
    bne r9 r0 block_6178
    j block_6177
block_6177:
    fneg f0 f0
    j block_6179
block_6178:
    j block_6179
block_6179:
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
    j block_6168
block_6167:
    #0.0
    flui f0 0
    swcZ f0 r8 12
    j block_6168
block_6168:
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6181
block_6180:
    lw r9 r5 24
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6184
block_6183:
    mv r10 r0
    j block_6185
block_6184:
    addi r10 r0 1
    j block_6185
block_6185:
    bne r9 r0 block_6187
    j block_6186
block_6186:
    mv r9 r10
    j block_6188
block_6187:
    bne r10 r0 block_6190
    j block_6189
block_6189:
    addi r9 r0 1
    j block_6188
block_6190:
    mv r9 r0
    j block_6188
block_6188:
    lw r5 r5 16
    lwcZ f0 r5 8
    bne r9 r0 block_6192
    j block_6191
block_6191:
    fneg f0 f0
    j block_6193
block_6192:
    j block_6193
block_6193:
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
    j block_6182
block_6181:
    #0.0
    flui f0 0
    swcZ f0 r8 20
    j block_6182
block_6182:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6134
block_6134:
    subi r4 r4 1
    mv r1 r2
    mv r2 r4
    sw r31 r29 20
    addi r29 r29 24
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 24
    lw r31 r29 20
    j block_6131
block_6130:
    j block_6131
block_6131:
    lw r1 r29 4
    subi r2 r1 1
    lw r1 r29 16
    sw r31 r29 20
    addi r29 r29 24
    jal init_dirvec_constants.5514
    subi r29 r29 24
    lw r31 r29 20
    jr r31
block_6128:
    jr r31
block_6126:
    jr r31
block_6059:
    jr r31
block_6057:
    jr r31
init_line_elements.5340:
block_5876:
    blt r2 r0 block_5878
block_5877:
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
    blt r2 r0 block_5880
block_5879:
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
    blt r2 r0 block_5882
block_5881:
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
    blt r2 r0 block_5884
block_5883:
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
block_5884:
    jr r31
block_5882:
    jr r31
block_5880:
    jr r31
block_5878:
    jr r31
init_vecset_constants.5522:
block_6194:
    blt r1 r0 block_6196
block_6195:
    sll r2 r1 2
    lw r2 r2 30716
    addi r3 r0 119
    sw r1 r29 24
    blt r3 r0 block_6198
block_6197:
    lw r3 r2 476
    lw r4 r0 30000
    subi r4 r4 1
    sw r2 r29 8
    blt r4 r0 block_6201
block_6200:
    sll r5 r4 2
    lw r5 r5 30048
    lw r6 r3 4
    lw r7 r3 0
    lw r8 r5 4
    addi r9 r0 1
    beq r8 r9 block_6204
block_6203:
    addi r9 r0 2
    beq r8 r9 block_6207
block_6206:
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
    beq r9 r0 block_6209
block_6208:
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
    j block_6210
block_6209:
    fmv f0 f3
    j block_6210
block_6210:
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
    beq r9 r0 block_6212
block_6211:
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
    j block_6213
block_6212:
    swcZ f1 r8 4
    swcZ f2 r8 8
    swcZ f3 r8 12
    j block_6213
block_6213:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6215
block_6214:
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
    j block_6216
block_6215:
    j block_6216
block_6216:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6205
block_6207:
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
    bc1t block_6218
block_6217:
    mv r7 r0
    j block_6219
block_6218:
    addi r7 r0 1
    j block_6219
block_6219:
    bne r7 r0 block_6221
    j block_6220
block_6220:
    #0.0
    flui f0 0
    swcZ f0 r8 0
    j block_6222
block_6221:
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
    j block_6222
block_6222:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6205
block_6204:
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
    bc1t block_6224
block_6223:
    lw r9 r5 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6227
block_6226:
    mv r10 r0
    j block_6228
block_6227:
    addi r10 r0 1
    j block_6228
block_6228:
    bne r9 r0 block_6230
    j block_6229
block_6229:
    mv r9 r10
    j block_6231
block_6230:
    bne r10 r0 block_6233
    j block_6232
block_6232:
    addi r9 r0 1
    j block_6231
block_6233:
    mv r9 r0
    j block_6231
block_6231:
    lw r10 r5 16
    lwcZ f0 r10 0
    bne r9 r0 block_6235
    j block_6234
block_6234:
    fneg f0 f0
    j block_6236
block_6235:
    j block_6236
block_6236:
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
    j block_6225
block_6224:
    #0.0
    flui f0 0
    swcZ f0 r8 4
    j block_6225
block_6225:
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6238
block_6237:
    lw r9 r5 24
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6241
block_6240:
    mv r10 r0
    j block_6242
block_6241:
    addi r10 r0 1
    j block_6242
block_6242:
    bne r9 r0 block_6244
    j block_6243
block_6243:
    mv r9 r10
    j block_6245
block_6244:
    bne r10 r0 block_6247
    j block_6246
block_6246:
    addi r9 r0 1
    j block_6245
block_6247:
    mv r9 r0
    j block_6245
block_6245:
    lw r10 r5 16
    lwcZ f0 r10 4
    bne r9 r0 block_6249
    j block_6248
block_6248:
    fneg f0 f0
    j block_6250
block_6249:
    j block_6250
block_6250:
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
    j block_6239
block_6238:
    #0.0
    flui f0 0
    swcZ f0 r8 12
    j block_6239
block_6239:
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6252
block_6251:
    lw r9 r5 24
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6255
block_6254:
    mv r10 r0
    j block_6256
block_6255:
    addi r10 r0 1
    j block_6256
block_6256:
    bne r9 r0 block_6258
    j block_6257
block_6257:
    mv r9 r10
    j block_6259
block_6258:
    bne r10 r0 block_6261
    j block_6260
block_6260:
    addi r9 r0 1
    j block_6259
block_6261:
    mv r9 r0
    j block_6259
block_6259:
    lw r5 r5 16
    lwcZ f0 r5 8
    bne r9 r0 block_6263
    j block_6262
block_6262:
    fneg f0 f0
    j block_6264
block_6263:
    j block_6264
block_6264:
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
    j block_6253
block_6252:
    #0.0
    flui f0 0
    swcZ f0 r8 20
    j block_6253
block_6253:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6205
block_6205:
    subi r4 r4 1
    mv r2 r4
    mv r1 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    j block_6202
block_6201:
    j block_6202
block_6202:
    addi r1 r0 118
    blt r1 r0 block_6266
block_6265:
    lw r1 r29 8
    lw r2 r1 472
    lw r3 r0 30000
    subi r3 r3 1
    mv r1 r2
    mv r2 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    addi r1 r0 117
    blt r1 r0 block_6268
block_6267:
    lw r1 r29 8
    lw r2 r1 468
    lw r3 r0 30000
    subi r3 r3 1
    blt r3 r0 block_6270
block_6269:
    sll r4 r3 2
    lw r4 r4 30048
    lw r5 r2 4
    lw r6 r2 0
    lw r7 r4 4
    addi r8 r0 1
    beq r7 r8 block_6273
block_6272:
    addi r8 r0 2
    beq r7 r8 block_6276
block_6275:
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
    beq r8 r0 block_6278
block_6277:
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
    j block_6279
block_6278:
    fmv f0 f3
    j block_6279
block_6279:
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
    beq r8 r0 block_6281
block_6280:
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
    j block_6282
block_6281:
    swcZ f1 r7 4
    swcZ f2 r7 8
    swcZ f3 r7 12
    j block_6282
block_6282:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6284
block_6283:
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
    j block_6285
block_6284:
    j block_6285
block_6285:
    sll r4 r3 2
    swab r7 r5 r4
    j block_6274
block_6276:
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
    bc1t block_6287
block_6286:
    mv r6 r0
    j block_6288
block_6287:
    addi r6 r0 1
    j block_6288
block_6288:
    bne r6 r0 block_6290
    j block_6289
block_6289:
    #0.0
    flui f0 0
    swcZ f0 r7 0
    j block_6291
block_6290:
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
    j block_6291
block_6291:
    sll r4 r3 2
    swab r7 r5 r4
    j block_6274
block_6273:
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
    bc1t block_6293
block_6292:
    lw r8 r4 24
    lwcZ f0 r6 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6296
block_6295:
    mv r9 r0
    j block_6297
block_6296:
    addi r9 r0 1
    j block_6297
block_6297:
    bne r8 r0 block_6299
    j block_6298
block_6298:
    mv r8 r9
    j block_6300
block_6299:
    bne r9 r0 block_6302
    j block_6301
block_6301:
    addi r8 r0 1
    j block_6300
block_6302:
    mv r8 r0
    j block_6300
block_6300:
    lw r9 r4 16
    lwcZ f0 r9 0
    bne r8 r0 block_6304
    j block_6303
block_6303:
    fneg f0 f0
    j block_6305
block_6304:
    j block_6305
block_6305:
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
    j block_6294
block_6293:
    #0.0
    flui f0 0
    swcZ f0 r7 4
    j block_6294
block_6294:
    lwcZ f0 r6 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6307
block_6306:
    lw r8 r4 24
    lwcZ f0 r6 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6310
block_6309:
    mv r9 r0
    j block_6311
block_6310:
    addi r9 r0 1
    j block_6311
block_6311:
    bne r8 r0 block_6313
    j block_6312
block_6312:
    mv r8 r9
    j block_6314
block_6313:
    bne r9 r0 block_6316
    j block_6315
block_6315:
    addi r8 r0 1
    j block_6314
block_6316:
    mv r8 r0
    j block_6314
block_6314:
    lw r9 r4 16
    lwcZ f0 r9 4
    bne r8 r0 block_6318
    j block_6317
block_6317:
    fneg f0 f0
    j block_6319
block_6318:
    j block_6319
block_6319:
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
    j block_6308
block_6307:
    #0.0
    flui f0 0
    swcZ f0 r7 12
    j block_6308
block_6308:
    lwcZ f0 r6 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6321
block_6320:
    lw r8 r4 24
    lwcZ f0 r6 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6324
block_6323:
    mv r9 r0
    j block_6325
block_6324:
    addi r9 r0 1
    j block_6325
block_6325:
    bne r8 r0 block_6327
    j block_6326
block_6326:
    mv r8 r9
    j block_6328
block_6327:
    bne r9 r0 block_6330
    j block_6329
block_6329:
    addi r8 r0 1
    j block_6328
block_6330:
    mv r8 r0
    j block_6328
block_6328:
    lw r4 r4 16
    lwcZ f0 r4 8
    bne r8 r0 block_6332
    j block_6331
block_6331:
    fneg f0 f0
    j block_6333
block_6332:
    j block_6333
block_6333:
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
    j block_6322
block_6321:
    #0.0
    flui f0 0
    swcZ f0 r7 20
    j block_6322
block_6322:
    sll r4 r3 2
    swab r7 r5 r4
    j block_6274
block_6274:
    subi r3 r3 1
    mv r1 r2
    mv r2 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    j block_6271
block_6270:
    j block_6271
block_6271:
    addi r2 r0 116
    lw r1 r29 8
    sw r31 r29 28
    addi r29 r29 32
    jal init_dirvec_constants.5514
    subi r29 r29 32
    lw r31 r29 28
    j block_6199
block_6268:
    j block_6199
block_6266:
    j block_6199
block_6198:
    j block_6199
block_6199:
    lw r1 r29 24
    subi r1 r1 1
    blt r1 r0 block_6335
block_6334:
    sll r2 r1 2
    lw r2 r2 30716
    addi r3 r0 119
    sw r1 r29 20
    blt r3 r0 block_6337
block_6336:
    lw r3 r2 476
    lw r4 r0 30000
    subi r4 r4 1
    sw r2 r29 0
    mv r2 r4
    mv r1 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    addi r1 r0 118
    blt r1 r0 block_6340
block_6339:
    lw r1 r29 0
    lw r2 r1 472
    lw r3 r0 30000
    subi r3 r3 1
    blt r3 r0 block_6342
block_6341:
    sll r4 r3 2
    lw r4 r4 30048
    lw r5 r2 4
    lw r6 r2 0
    lw r7 r4 4
    addi r8 r0 1
    beq r7 r8 block_6345
block_6344:
    addi r8 r0 2
    beq r7 r8 block_6348
block_6347:
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
    beq r8 r0 block_6350
block_6349:
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
    j block_6351
block_6350:
    fmv f0 f3
    j block_6351
block_6351:
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
    beq r8 r0 block_6353
block_6352:
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
    j block_6354
block_6353:
    swcZ f1 r7 4
    swcZ f2 r7 8
    swcZ f3 r7 12
    j block_6354
block_6354:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6356
block_6355:
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
    j block_6357
block_6356:
    j block_6357
block_6357:
    sll r4 r3 2
    swab r7 r5 r4
    j block_6346
block_6348:
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
    bc1t block_6359
block_6358:
    mv r6 r0
    j block_6360
block_6359:
    addi r6 r0 1
    j block_6360
block_6360:
    bne r6 r0 block_6362
    j block_6361
block_6361:
    #0.0
    flui f0 0
    swcZ f0 r7 0
    j block_6363
block_6362:
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
    j block_6363
block_6363:
    sll r4 r3 2
    swab r7 r5 r4
    j block_6346
block_6345:
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
    bc1t block_6365
block_6364:
    lw r8 r4 24
    lwcZ f0 r6 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6368
block_6367:
    mv r9 r0
    j block_6369
block_6368:
    addi r9 r0 1
    j block_6369
block_6369:
    bne r8 r0 block_6371
    j block_6370
block_6370:
    mv r8 r9
    j block_6372
block_6371:
    bne r9 r0 block_6374
    j block_6373
block_6373:
    addi r8 r0 1
    j block_6372
block_6374:
    mv r8 r0
    j block_6372
block_6372:
    lw r9 r4 16
    lwcZ f0 r9 0
    bne r8 r0 block_6376
    j block_6375
block_6375:
    fneg f0 f0
    j block_6377
block_6376:
    j block_6377
block_6377:
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
    j block_6366
block_6365:
    #0.0
    flui f0 0
    swcZ f0 r7 4
    j block_6366
block_6366:
    lwcZ f0 r6 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6379
block_6378:
    lw r8 r4 24
    lwcZ f0 r6 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6382
block_6381:
    mv r9 r0
    j block_6383
block_6382:
    addi r9 r0 1
    j block_6383
block_6383:
    bne r8 r0 block_6385
    j block_6384
block_6384:
    mv r8 r9
    j block_6386
block_6385:
    bne r9 r0 block_6388
    j block_6387
block_6387:
    addi r8 r0 1
    j block_6386
block_6388:
    mv r8 r0
    j block_6386
block_6386:
    lw r9 r4 16
    lwcZ f0 r9 4
    bne r8 r0 block_6390
    j block_6389
block_6389:
    fneg f0 f0
    j block_6391
block_6390:
    j block_6391
block_6391:
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
    j block_6380
block_6379:
    #0.0
    flui f0 0
    swcZ f0 r7 12
    j block_6380
block_6380:
    lwcZ f0 r6 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6393
block_6392:
    lw r8 r4 24
    lwcZ f0 r6 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6396
block_6395:
    mv r9 r0
    j block_6397
block_6396:
    addi r9 r0 1
    j block_6397
block_6397:
    bne r8 r0 block_6399
    j block_6398
block_6398:
    mv r8 r9
    j block_6400
block_6399:
    bne r9 r0 block_6402
    j block_6401
block_6401:
    addi r8 r0 1
    j block_6400
block_6402:
    mv r8 r0
    j block_6400
block_6400:
    lw r4 r4 16
    lwcZ f0 r4 8
    bne r8 r0 block_6404
    j block_6403
block_6403:
    fneg f0 f0
    j block_6405
block_6404:
    j block_6405
block_6405:
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
    j block_6394
block_6393:
    #0.0
    flui f0 0
    swcZ f0 r7 20
    j block_6394
block_6394:
    sll r4 r3 2
    swab r7 r5 r4
    j block_6346
block_6346:
    subi r3 r3 1
    mv r1 r2
    mv r2 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    j block_6343
block_6342:
    j block_6343
block_6343:
    addi r2 r0 117
    lw r1 r29 0
    sw r31 r29 28
    addi r29 r29 32
    jal init_dirvec_constants.5514
    subi r29 r29 32
    lw r31 r29 28
    j block_6338
block_6340:
    j block_6338
block_6337:
    j block_6338
block_6338:
    lw r1 r29 20
    subi r1 r1 1
    blt r1 r0 block_6407
block_6406:
    sll r2 r1 2
    lw r2 r2 30716
    addi r3 r0 119
    sw r1 r29 12
    blt r3 r0 block_6409
block_6408:
    lw r3 r2 476
    lw r4 r0 30000
    subi r4 r4 1
    sw r2 r29 4
    blt r4 r0 block_6412
block_6411:
    sll r5 r4 2
    lw r5 r5 30048
    lw r6 r3 4
    lw r7 r3 0
    lw r8 r5 4
    addi r9 r0 1
    beq r8 r9 block_6415
block_6414:
    addi r9 r0 2
    beq r8 r9 block_6418
block_6417:
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
    beq r9 r0 block_6420
block_6419:
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
    j block_6421
block_6420:
    fmv f0 f3
    j block_6421
block_6421:
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
    beq r9 r0 block_6423
block_6422:
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
    j block_6424
block_6423:
    swcZ f1 r8 4
    swcZ f2 r8 8
    swcZ f3 r8 12
    j block_6424
block_6424:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6426
block_6425:
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
    j block_6427
block_6426:
    j block_6427
block_6427:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6416
block_6418:
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
    bc1t block_6429
block_6428:
    mv r7 r0
    j block_6430
block_6429:
    addi r7 r0 1
    j block_6430
block_6430:
    bne r7 r0 block_6432
    j block_6431
block_6431:
    #0.0
    flui f0 0
    swcZ f0 r8 0
    j block_6433
block_6432:
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
    j block_6433
block_6433:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6416
block_6415:
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
    bc1t block_6435
block_6434:
    lw r9 r5 24
    lwcZ f0 r7 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6438
block_6437:
    mv r10 r0
    j block_6439
block_6438:
    addi r10 r0 1
    j block_6439
block_6439:
    bne r9 r0 block_6441
    j block_6440
block_6440:
    mv r9 r10
    j block_6442
block_6441:
    bne r10 r0 block_6444
    j block_6443
block_6443:
    addi r9 r0 1
    j block_6442
block_6444:
    mv r9 r0
    j block_6442
block_6442:
    lw r10 r5 16
    lwcZ f0 r10 0
    bne r9 r0 block_6446
    j block_6445
block_6445:
    fneg f0 f0
    j block_6447
block_6446:
    j block_6447
block_6447:
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
    j block_6436
block_6435:
    #0.0
    flui f0 0
    swcZ f0 r8 4
    j block_6436
block_6436:
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6449
block_6448:
    lw r9 r5 24
    lwcZ f0 r7 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6452
block_6451:
    mv r10 r0
    j block_6453
block_6452:
    addi r10 r0 1
    j block_6453
block_6453:
    bne r9 r0 block_6455
    j block_6454
block_6454:
    mv r9 r10
    j block_6456
block_6455:
    bne r10 r0 block_6458
    j block_6457
block_6457:
    addi r9 r0 1
    j block_6456
block_6458:
    mv r9 r0
    j block_6456
block_6456:
    lw r10 r5 16
    lwcZ f0 r10 4
    bne r9 r0 block_6460
    j block_6459
block_6459:
    fneg f0 f0
    j block_6461
block_6460:
    j block_6461
block_6461:
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
    j block_6450
block_6449:
    #0.0
    flui f0 0
    swcZ f0 r8 12
    j block_6450
block_6450:
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_6463
block_6462:
    lw r9 r5 24
    lwcZ f0 r7 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_6466
block_6465:
    mv r10 r0
    j block_6467
block_6466:
    addi r10 r0 1
    j block_6467
block_6467:
    bne r9 r0 block_6469
    j block_6468
block_6468:
    mv r9 r10
    j block_6470
block_6469:
    bne r10 r0 block_6472
    j block_6471
block_6471:
    addi r9 r0 1
    j block_6470
block_6472:
    mv r9 r0
    j block_6470
block_6470:
    lw r5 r5 16
    lwcZ f0 r5 8
    bne r9 r0 block_6474
    j block_6473
block_6473:
    fneg f0 f0
    j block_6475
block_6474:
    j block_6475
block_6475:
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
    j block_6464
block_6463:
    #0.0
    flui f0 0
    swcZ f0 r8 20
    j block_6464
block_6464:
    sll r5 r4 2
    swab r8 r6 r5
    j block_6416
block_6416:
    subi r4 r4 1
    mv r2 r4
    mv r1 r3
    sw r31 r29 28
    addi r29 r29 32
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 32
    lw r31 r29 28
    j block_6413
block_6412:
    j block_6413
block_6413:
    addi r2 r0 118
    lw r1 r29 4
    sw r31 r29 28
    addi r29 r29 32
    jal init_dirvec_constants.5514
    subi r29 r29 32
    lw r31 r29 28
    j block_6410
block_6409:
    j block_6410
block_6410:
    lw r1 r29 12
    subi r1 r1 1
    blt r1 r0 block_6477
block_6476:
    sll r2 r1 2
    lw r2 r2 30716
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
block_6477:
    jr r31
block_6407:
    jr r31
block_6335:
    jr r31
block_6196:
    jr r31
iter_setup_dirvec_constants.4109:
block_715:
    blt r2 r0 block_717
block_716:
    sll r3 r2 2
    lw r3 r3 30048
    lw r4 r1 4
    lw r5 r1 0
    lw r6 r3 4
    addi r7 r0 1
    beq r6 r7 block_719
block_718:
    addi r7 r0 2
    beq r6 r7 block_722
block_721:
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
    beq r7 r0 block_724
block_723:
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
    j block_725
block_724:
    fmv f0 f3
    j block_725
block_725:
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
    beq r7 r0 block_727
block_726:
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
    j block_728
block_727:
    swcZ f1 r6 4
    swcZ f2 r6 8
    swcZ f3 r6 12
    j block_728
block_728:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_730
block_729:
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
    j block_731
block_730:
    j block_731
block_731:
    sll r3 r2 2
    swab r6 r4 r3
    j block_720
block_722:
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
    bc1t block_733
block_732:
    mv r5 r0
    j block_734
block_733:
    addi r5 r0 1
    j block_734
block_734:
    bne r5 r0 block_736
    j block_735
block_735:
    #0.0
    flui f0 0
    swcZ f0 r6 0
    j block_737
block_736:
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
    j block_737
block_737:
    sll r3 r2 2
    swab r6 r4 r3
    j block_720
block_719:
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
    bc1t block_739
block_738:
    lw r7 r3 24
    lwcZ f0 r5 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_742
block_741:
    mv r8 r0
    j block_743
block_742:
    addi r8 r0 1
    j block_743
block_743:
    bne r7 r0 block_745
    j block_744
block_744:
    mv r7 r8
    j block_746
block_745:
    bne r8 r0 block_748
    j block_747
block_747:
    addi r7 r0 1
    j block_746
block_748:
    mv r7 r0
    j block_746
block_746:
    lw r8 r3 16
    lwcZ f0 r8 0
    bne r7 r0 block_750
    j block_749
block_749:
    fneg f0 f0
    j block_751
block_750:
    j block_751
block_751:
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
    j block_740
block_739:
    #0.0
    flui f0 0
    swcZ f0 r6 4
    j block_740
block_740:
    lwcZ f0 r5 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_753
block_752:
    lw r7 r3 24
    lwcZ f0 r5 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_756
block_755:
    mv r8 r0
    j block_757
block_756:
    addi r8 r0 1
    j block_757
block_757:
    bne r7 r0 block_759
    j block_758
block_758:
    mv r7 r8
    j block_760
block_759:
    bne r8 r0 block_762
    j block_761
block_761:
    addi r7 r0 1
    j block_760
block_762:
    mv r7 r0
    j block_760
block_760:
    lw r8 r3 16
    lwcZ f0 r8 4
    bne r7 r0 block_764
    j block_763
block_763:
    fneg f0 f0
    j block_765
block_764:
    j block_765
block_765:
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
    j block_754
block_753:
    #0.0
    flui f0 0
    swcZ f0 r6 12
    j block_754
block_754:
    lwcZ f0 r5 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_767
block_766:
    lw r7 r3 24
    lwcZ f0 r5 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_770
block_769:
    mv r8 r0
    j block_771
block_770:
    addi r8 r0 1
    j block_771
block_771:
    bne r7 r0 block_773
    j block_772
block_772:
    mv r7 r8
    j block_774
block_773:
    bne r8 r0 block_776
    j block_775
block_775:
    addi r7 r0 1
    j block_774
block_776:
    mv r7 r0
    j block_774
block_774:
    lw r3 r3 16
    lwcZ f0 r3 8
    bne r7 r0 block_778
    j block_777
block_777:
    fneg f0 f0
    j block_779
block_778:
    j block_779
block_779:
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
    j block_768
block_767:
    #0.0
    flui f0 0
    swcZ f0 r6 20
    j block_768
block_768:
    sll r3 r2 2
    swab r6 r4 r3
    j block_720
block_720:
    subi r2 r2 1
    blt r2 r0 block_781
block_780:
    sll r3 r2 2
    lw r3 r3 30048
    lw r4 r1 4
    lw r5 r1 0
    lw r6 r3 4
    addi r7 r0 1
    beq r6 r7 block_783
block_782:
    addi r7 r0 2
    beq r6 r7 block_786
block_785:
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
    beq r7 r0 block_788
block_787:
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
    j block_789
block_788:
    fmv f0 f3
    j block_789
block_789:
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
    beq r7 r0 block_791
block_790:
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
    j block_792
block_791:
    swcZ f1 r6 4
    swcZ f2 r6 8
    swcZ f3 r6 12
    j block_792
block_792:
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_794
block_793:
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
    j block_795
block_794:
    j block_795
block_795:
    sll r3 r2 2
    swab r6 r4 r3
    j block_784
block_786:
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
    bc1t block_797
block_796:
    mv r5 r0
    j block_798
block_797:
    addi r5 r0 1
    j block_798
block_798:
    bne r5 r0 block_800
    j block_799
block_799:
    #0.0
    flui f0 0
    swcZ f0 r6 0
    j block_801
block_800:
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
    j block_801
block_801:
    sll r3 r2 2
    swab r6 r4 r3
    j block_784
block_783:
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
    bc1t block_803
block_802:
    lw r7 r3 24
    lwcZ f0 r5 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_806
block_805:
    mv r8 r0
    j block_807
block_806:
    addi r8 r0 1
    j block_807
block_807:
    bne r7 r0 block_809
    j block_808
block_808:
    mv r7 r8
    j block_810
block_809:
    bne r8 r0 block_812
    j block_811
block_811:
    addi r7 r0 1
    j block_810
block_812:
    mv r7 r0
    j block_810
block_810:
    lw r8 r3 16
    lwcZ f0 r8 0
    bne r7 r0 block_814
    j block_813
block_813:
    fneg f0 f0
    j block_815
block_814:
    j block_815
block_815:
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
    j block_804
block_803:
    #0.0
    flui f0 0
    swcZ f0 r6 4
    j block_804
block_804:
    lwcZ f0 r5 4
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_817
block_816:
    lw r7 r3 24
    lwcZ f0 r5 4
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_820
block_819:
    mv r8 r0
    j block_821
block_820:
    addi r8 r0 1
    j block_821
block_821:
    bne r7 r0 block_823
    j block_822
block_822:
    mv r7 r8
    j block_824
block_823:
    bne r8 r0 block_826
    j block_825
block_825:
    addi r7 r0 1
    j block_824
block_826:
    mv r7 r0
    j block_824
block_824:
    lw r8 r3 16
    lwcZ f0 r8 4
    bne r7 r0 block_828
    j block_827
block_827:
    fneg f0 f0
    j block_829
block_828:
    j block_829
block_829:
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
    j block_818
block_817:
    #0.0
    flui f0 0
    swcZ f0 r6 12
    j block_818
block_818:
    lwcZ f0 r5 8
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_831
block_830:
    lw r7 r3 24
    lwcZ f0 r5 8
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_834
block_833:
    mv r8 r0
    j block_835
block_834:
    addi r8 r0 1
    j block_835
block_835:
    bne r7 r0 block_837
    j block_836
block_836:
    mv r7 r8
    j block_838
block_837:
    bne r8 r0 block_840
    j block_839
block_839:
    addi r7 r0 1
    j block_838
block_840:
    mv r7 r0
    j block_838
block_838:
    lw r3 r3 16
    lwcZ f0 r3 8
    bne r7 r0 block_842
    j block_841
block_841:
    fneg f0 f0
    j block_843
block_842:
    j block_843
block_843:
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
    j block_832
block_831:
    #0.0
    flui f0 0
    swcZ f0 r6 20
    j block_832
block_832:
    sll r3 r2 2
    swab r6 r4 r3
    j block_784
block_784:
    subi r2 r2 1
    sw r31 r29 0
    addi r29 r29 4
    jal iter_setup_dirvec_constants.4109
    subi r29 r29 4
    lw r31 r29 0
    jr r31
block_781:
    jr r31
block_717:
    jr r31
iter_trace_diffuse_rays.4938:
block_4102:
    addi r5 r0 30552
    blt r4 r0 block_4104
block_4103:
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
    bc1t block_4106
block_4105:
    mv r6 r0
    j block_4107
block_4106:
    addi r6 r0 1
    j block_4107
block_4107:
    sw r3 r29 100
    sw r2 r29 80
    sw r4 r29 72
    sw r1 r29 52
    bne r6 r0 block_4109
    j block_4108
block_4108:
    sll r6 r4 2
    lwab r6 r1 r6
    #0.006666667
    flui f1 15322
    fori f1 f1 29710
    fmul f0 f0 f1
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 30548
    lw r7 r0 30536
    lw r8 r7 0
    lw r9 r8 0
    addi r10 r0 -1
    sw r5 r29 76
    sw r6 r29 48
    swcZ f0 r29 28
    beq r9 r10 block_4112
block_4111:
    addi r10 r0 99
    sw r7 r29 12
    beq r9 r10 block_4115
block_4114:
    sll r10 r9 2
    lw r10 r10 30048
    lw r11 r10 40
    lwcZ f1 r11 0
    lwcZ f2 r11 4
    lwcZ f3 r11 8
    lw r12 r6 4
    sll r9 r9 2
    lwab r9 r12 r9
    lw r12 r10 4
    addi r13 r0 1
    beq r12 r13 block_4118
block_4117:
    addi r13 r0 2
    beq r12 r13 block_4121
block_4120:
    lwcZ f4 r9 0
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4123
block_4122:
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
    bc1t block_4125
block_4124:
    mv r11 r0
    j block_4126
block_4125:
    addi r11 r0 1
    j block_4126
block_4126:
    bne r11 r0 block_4128
    j block_4127
block_4127:
    mv r9 r0
    j block_4119
block_4128:
    lw r10 r10 24
    bne r10 r0 block_4130
    j block_4129
block_4129:
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
    swcZ f1 r0 30540
    j block_4131
block_4130:
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
    swcZ f1 r0 30540
    j block_4131
block_4131:
    addi r9 r0 1
    j block_4119
block_4123:
    mv r9 r0
    j block_4119
block_4121:
    lwcZ f1 r9 0
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_4133
block_4132:
    mv r10 r0
    j block_4134
block_4133:
    addi r10 r0 1
    j block_4134
block_4134:
    bne r10 r0 block_4136
    j block_4135
block_4135:
    mv r9 r0
    j block_4119
block_4136:
    lwcZ f1 r9 0
    lwcZ f2 r11 12
    fmul f1 f1 f2
    swcZ f1 r0 30540
    addi r9 r0 1
    j block_4119
block_4118:
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
    bc1t block_4138
block_4137:
    j block_4139
block_4138:
    fneg f5 f5
    j block_4139
block_4139:
    lw r12 r10 16
    lwcZ f6 r12 4
    fclt f5 f6
    bc1t block_4141
block_4140:
    mv r12 r0
    j block_4142
block_4141:
    lwcZ f5 r11 8
    fmul f5 f4 f5
    fadd f5 f5 f3
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_4144
block_4143:
    j block_4145
block_4144:
    fneg f5 f5
    j block_4145
block_4145:
    lw r12 r10 16
    lwcZ f6 r12 8
    fclt f5 f6
    bc1t block_4147
block_4146:
    mv r12 r0
    j block_4142
block_4147:
    lwcZ f5 r9 4
    #0.0
    flui f6 0
    fsub f31 f5 f6
    fcz f31
    bc1t block_4149
block_4148:
    mv r12 r0
    j block_4150
block_4149:
    addi r12 r0 1
    j block_4150
block_4150:
    bne r12 r0 block_4152
    j block_4151
block_4151:
    addi r12 r0 1
    j block_4142
block_4152:
    mv r12 r0
    j block_4142
block_4142:
    bne r12 r0 block_4154
    j block_4153
block_4153:
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
    bc1t block_4156
block_4155:
    j block_4157
block_4156:
    fneg f5 f5
    j block_4157
block_4157:
    lw r12 r10 16
    lwcZ f6 r12 0
    fclt f5 f6
    bc1t block_4159
block_4158:
    mv r12 r0
    j block_4160
block_4159:
    lwcZ f5 r11 8
    fmul f5 f4 f5
    fadd f5 f5 f3
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_4162
block_4161:
    j block_4163
block_4162:
    fneg f5 f5
    j block_4163
block_4163:
    lw r12 r10 16
    lwcZ f6 r12 8
    fclt f5 f6
    bc1t block_4165
block_4164:
    mv r12 r0
    j block_4160
block_4165:
    lwcZ f5 r9 12
    #0.0
    flui f6 0
    fsub f31 f5 f6
    fcz f31
    bc1t block_4167
block_4166:
    mv r12 r0
    j block_4168
block_4167:
    addi r12 r0 1
    j block_4168
block_4168:
    bne r12 r0 block_4170
    j block_4169
block_4169:
    addi r12 r0 1
    j block_4160
block_4170:
    mv r12 r0
    j block_4160
block_4160:
    bne r12 r0 block_4172
    j block_4171
block_4171:
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
    bc1t block_4174
block_4173:
    j block_4175
block_4174:
    fneg f1 f1
    j block_4175
block_4175:
    lw r12 r10 16
    lwcZ f4 r12 0
    fclt f1 f4
    bc1t block_4177
block_4176:
    mv r9 r0
    j block_4178
block_4177:
    lwcZ f1 r11 4
    fmul f1 f3 f1
    fadd f1 f1 f2
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_4180
block_4179:
    j block_4181
block_4180:
    fneg f1 f1
    j block_4181
block_4181:
    lw r10 r10 16
    lwcZ f2 r10 4
    fclt f1 f2
    bc1t block_4183
block_4182:
    mv r9 r0
    j block_4178
block_4183:
    lwcZ f1 r9 20
    #0.0
    flui f2 0
    fsub f31 f1 f2
    fcz f31
    bc1t block_4185
block_4184:
    mv r9 r0
    j block_4186
block_4185:
    addi r9 r0 1
    j block_4186
block_4186:
    bne r9 r0 block_4188
    j block_4187
block_4187:
    addi r9 r0 1
    j block_4178
block_4188:
    mv r9 r0
    j block_4178
block_4178:
    bne r9 r0 block_4190
    j block_4189
block_4189:
    mv r9 r0
    j block_4119
block_4190:
    swcZ f3 r0 30540
    addi r9 r0 3
    j block_4119
block_4172:
    swcZ f4 r0 30540
    addi r9 r0 2
    j block_4119
block_4154:
    swcZ f4 r0 30540
    addi r9 r0 1
    j block_4119
block_4119:
    beq r9 r0 block_4192
block_4191:
    lwcZ f1 r0 30540
    lwcZ f2 r0 30548
    fclt f1 f2
    bc1t block_4194
block_4193:
    j block_4116
block_4194:
    lw r9 r8 4
    addi r10 r0 -1
    beq r9 r10 block_4196
block_4195:
    sll r9 r9 2
    lw r9 r9 30332
    sw r8 r29 68
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
    beq r2 r3 block_4198
block_4197:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 68
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_4200
block_4199:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 68
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_4202
block_4201:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    addi r1 r0 5
    lw r2 r29 68
    lw r3 r29 48
    sw r31 r29 104
    addi r29 r29 108
    jal solve_one_or_network_fast.4471
    subi r29 r29 108
    lw r31 r29 104
    j block_4116
block_4202:
    j block_4116
block_4200:
    j block_4116
block_4198:
    j block_4116
block_4196:
    j block_4116
block_4192:
    j block_4116
block_4115:
    lw r9 r8 4
    addi r10 r0 -1
    beq r9 r10 block_4204
block_4203:
    sll r9 r9 2
    lw r9 r9 30332
    sw r8 r29 68
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
    beq r2 r3 block_4206
block_4205:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 68
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_4208
block_4207:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 68
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_4210
block_4209:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 48
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    addi r1 r0 5
    lw r2 r29 68
    lw r3 r29 48
    sw r31 r29 104
    addi r29 r29 108
    jal solve_one_or_network_fast.4471
    subi r29 r29 108
    lw r31 r29 104
    j block_4116
block_4210:
    j block_4116
block_4208:
    j block_4116
block_4206:
    j block_4116
block_4204:
    j block_4116
block_4116:
    addi r1 r0 1
    lw r2 r29 12
    lw r3 r29 48
    sw r31 r29 104
    addi r29 r29 108
    jal trace_or_matrix_fast.4483
    subi r29 r29 108
    lw r31 r29 104
    j block_4113
block_4112:
    j block_4113
block_4113:
    lwcZ f0 r0 30548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_4212
block_4211:
    mv r1 r0
    j block_4213
block_4212:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_4215
block_4214:
    mv r1 r0
    j block_4213
block_4215:
    addi r1 r0 1
    j block_4213
block_4213:
    bne r1 r0 block_4217
    j block_4216
block_4216:
    j block_4110
block_4217:
    lw r1 r0 30564
    sll r1 r1 2
    lw r1 r1 30048
    lw r2 r29 48
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_4219
block_4218:
    addi r2 r0 2
    beq r3 r2 block_4222
block_4221:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
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
    beq r2 r0 block_4224
block_4223:
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
    swcZ f3 r0 30568
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
    swcZ f2 r0 30572
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
    swcZ f0 r0 30576
    j block_4225
block_4224:
    swcZ f3 r0 30568
    swcZ f4 r0 30572
    swcZ f5 r0 30576
    j block_4225
block_4225:
    lw r2 r1 24
    lwcZ f0 r0 30568
    fmul f0 f0 f0
    lwcZ f1 r0 30572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 30576
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
    bc1t block_4227
block_4226:
    bne r2 r0 block_4230
    j block_4229
block_4229:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4228
block_4230:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4228
block_4227:
    #1.0
    flui f0 16256
    j block_4228
block_4228:
    lwcZ f1 r0 30568
    fmul f1 f1 f0
    swcZ f1 r0 30568
    lwcZ f1 r0 30572
    fmul f1 f1 f0
    swcZ f1 r0 30572
    lwcZ f1 r0 30576
    fmul f0 f1 f0
    swcZ f0 r0 30576
    j block_4220
block_4222:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 30568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 30572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 30576
    j block_4220
block_4219:
    lw r3 r0 30544
    #0.0
    flui f0 0
    swcZ f0 r0 30568
    swcZ f0 r0 30572
    swcZ f0 r0 30576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4232
block_4231:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4235
block_4234:
    mv r2 r0
    j block_4236
block_4235:
    addi r2 r0 1
    j block_4236
block_4236:
    bne r2 r0 block_4238
    j block_4237
block_4237:
    #-1.0
    flui f0 -16512
    j block_4233
block_4238:
    #1.0
    flui f0 16256
    j block_4233
block_4232:
    #0.0
    flui f0 0
    j block_4233
block_4233:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 30568
    j block_4220
block_4220:
    lw r2 r29 76
    sw r1 r29 88
    sw r31 r29 104
    addi r29 r29 108
    jal utexture.4603
    subi r29 r29 108
    lw r31 r29 104
    lw r2 r0 30536
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4240
    j block_4239
block_4239:
    lwcZ f0 r0 30568
    lwcZ f1 r0 30312
    fmul f0 f0 f1
    lwcZ f1 r0 30572
    lwcZ f2 r0 30316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 30576
    lwcZ f2 r0 30320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4242
block_4241:
    mv r1 r0
    j block_4243
block_4242:
    addi r1 r0 1
    j block_4243
block_4243:
    bne r1 r0 block_4245
    j block_4244
block_4244:
    #0.0
    flui f0 0
    j block_4246
block_4245:
    j block_4246
block_4246:
    lwcZ f1 r29 28
    fmul f0 f1 f0
    lw r1 r29 88
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 30592
    lwcZ f2 r0 30580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30592
    lwcZ f1 r0 30596
    lwcZ f2 r0 30584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30596
    lwcZ f1 r0 30600
    lwcZ f2 r0 30588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 30600
    j block_4110
block_4240:
    j block_4110
block_4109:
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
    swcZ f1 r0 30548
    lw r7 r0 30536
    lw r8 r7 0
    lw r9 r8 0
    addi r10 r0 -1
    sw r5 r29 76
    sw r6 r29 40
    swcZ f0 r29 20
    beq r9 r10 block_4248
block_4247:
    addi r10 r0 99
    sw r7 r29 8
    beq r9 r10 block_4251
block_4250:
    sll r10 r9 2
    lw r10 r10 30048
    lw r11 r10 40
    lwcZ f1 r11 0
    lwcZ f2 r11 4
    lwcZ f3 r11 8
    lw r12 r6 4
    sll r9 r9 2
    lwab r9 r12 r9
    lw r12 r10 4
    addi r13 r0 1
    beq r12 r13 block_4254
block_4253:
    addi r13 r0 2
    beq r12 r13 block_4257
block_4256:
    lwcZ f4 r9 0
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4259
block_4258:
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
    bc1t block_4261
block_4260:
    mv r11 r0
    j block_4262
block_4261:
    addi r11 r0 1
    j block_4262
block_4262:
    bne r11 r0 block_4264
    j block_4263
block_4263:
    mv r9 r0
    j block_4255
block_4264:
    lw r10 r10 24
    bne r10 r0 block_4266
    j block_4265
block_4265:
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
    swcZ f1 r0 30540
    j block_4267
block_4266:
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
    swcZ f1 r0 30540
    j block_4267
block_4267:
    addi r9 r0 1
    j block_4255
block_4259:
    mv r9 r0
    j block_4255
block_4257:
    lwcZ f1 r9 0
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_4269
block_4268:
    mv r10 r0
    j block_4270
block_4269:
    addi r10 r0 1
    j block_4270
block_4270:
    bne r10 r0 block_4272
    j block_4271
block_4271:
    mv r9 r0
    j block_4255
block_4272:
    lwcZ f1 r9 0
    lwcZ f2 r11 12
    fmul f1 f1 f2
    swcZ f1 r0 30540
    addi r9 r0 1
    j block_4255
block_4254:
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
    bc1t block_4274
block_4273:
    j block_4275
block_4274:
    fneg f5 f5
    j block_4275
block_4275:
    lw r12 r10 16
    lwcZ f6 r12 4
    fclt f5 f6
    bc1t block_4277
block_4276:
    mv r12 r0
    j block_4278
block_4277:
    lwcZ f5 r11 8
    fmul f5 f4 f5
    fadd f5 f5 f3
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_4280
block_4279:
    j block_4281
block_4280:
    fneg f5 f5
    j block_4281
block_4281:
    lw r12 r10 16
    lwcZ f6 r12 8
    fclt f5 f6
    bc1t block_4283
block_4282:
    mv r12 r0
    j block_4278
block_4283:
    lwcZ f5 r9 4
    #0.0
    flui f6 0
    fsub f31 f5 f6
    fcz f31
    bc1t block_4285
block_4284:
    mv r12 r0
    j block_4286
block_4285:
    addi r12 r0 1
    j block_4286
block_4286:
    bne r12 r0 block_4288
    j block_4287
block_4287:
    addi r12 r0 1
    j block_4278
block_4288:
    mv r12 r0
    j block_4278
block_4278:
    bne r12 r0 block_4290
    j block_4289
block_4289:
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
    bc1t block_4292
block_4291:
    j block_4293
block_4292:
    fneg f5 f5
    j block_4293
block_4293:
    lw r12 r10 16
    lwcZ f6 r12 0
    fclt f5 f6
    bc1t block_4295
block_4294:
    mv r12 r0
    j block_4296
block_4295:
    lwcZ f5 r11 8
    fmul f5 f4 f5
    fadd f5 f5 f3
    #0.0
    flui f6 0
    fclt f5 f6
    bc1t block_4298
block_4297:
    j block_4299
block_4298:
    fneg f5 f5
    j block_4299
block_4299:
    lw r12 r10 16
    lwcZ f6 r12 8
    fclt f5 f6
    bc1t block_4301
block_4300:
    mv r12 r0
    j block_4296
block_4301:
    lwcZ f5 r9 12
    #0.0
    flui f6 0
    fsub f31 f5 f6
    fcz f31
    bc1t block_4303
block_4302:
    mv r12 r0
    j block_4304
block_4303:
    addi r12 r0 1
    j block_4304
block_4304:
    bne r12 r0 block_4306
    j block_4305
block_4305:
    addi r12 r0 1
    j block_4296
block_4306:
    mv r12 r0
    j block_4296
block_4296:
    bne r12 r0 block_4308
    j block_4307
block_4307:
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
    bc1t block_4310
block_4309:
    j block_4311
block_4310:
    fneg f1 f1
    j block_4311
block_4311:
    lw r12 r10 16
    lwcZ f4 r12 0
    fclt f1 f4
    bc1t block_4313
block_4312:
    mv r9 r0
    j block_4314
block_4313:
    lwcZ f1 r11 4
    fmul f1 f3 f1
    fadd f1 f1 f2
    #0.0
    flui f2 0
    fclt f1 f2
    bc1t block_4316
block_4315:
    j block_4317
block_4316:
    fneg f1 f1
    j block_4317
block_4317:
    lw r10 r10 16
    lwcZ f2 r10 4
    fclt f1 f2
    bc1t block_4319
block_4318:
    mv r9 r0
    j block_4314
block_4319:
    lwcZ f1 r9 20
    #0.0
    flui f2 0
    fsub f31 f1 f2
    fcz f31
    bc1t block_4321
block_4320:
    mv r9 r0
    j block_4322
block_4321:
    addi r9 r0 1
    j block_4322
block_4322:
    bne r9 r0 block_4324
    j block_4323
block_4323:
    addi r9 r0 1
    j block_4314
block_4324:
    mv r9 r0
    j block_4314
block_4314:
    bne r9 r0 block_4326
    j block_4325
block_4325:
    mv r9 r0
    j block_4255
block_4326:
    swcZ f3 r0 30540
    addi r9 r0 3
    j block_4255
block_4308:
    swcZ f4 r0 30540
    addi r9 r0 2
    j block_4255
block_4290:
    swcZ f4 r0 30540
    addi r9 r0 1
    j block_4255
block_4255:
    beq r9 r0 block_4328
block_4327:
    lwcZ f1 r0 30540
    lwcZ f2 r0 30548
    fclt f1 f2
    bc1t block_4330
block_4329:
    j block_4252
block_4330:
    lw r9 r8 4
    addi r10 r0 -1
    beq r9 r10 block_4332
block_4331:
    sll r9 r9 2
    lw r9 r9 30332
    sw r8 r29 64
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
    beq r2 r3 block_4334
block_4333:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 64
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_4336
block_4335:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 64
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_4338
block_4337:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    addi r1 r0 5
    lw r2 r29 64
    lw r3 r29 40
    sw r31 r29 104
    addi r29 r29 108
    jal solve_one_or_network_fast.4471
    subi r29 r29 108
    lw r31 r29 104
    j block_4252
block_4338:
    j block_4252
block_4336:
    j block_4252
block_4334:
    j block_4252
block_4332:
    j block_4252
block_4328:
    j block_4252
block_4251:
    lw r9 r8 4
    addi r10 r0 -1
    beq r9 r10 block_4340
block_4339:
    sll r9 r9 2
    lw r9 r9 30332
    sw r8 r29 64
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
    beq r2 r3 block_4342
block_4341:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 64
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_4344
block_4343:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    lw r1 r29 64
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_4346
block_4345:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 40
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal solve_each_element_fast.4421
    subi r29 r29 108
    lw r31 r29 104
    addi r1 r0 5
    lw r2 r29 64
    lw r3 r29 40
    sw r31 r29 104
    addi r29 r29 108
    jal solve_one_or_network_fast.4471
    subi r29 r29 108
    lw r31 r29 104
    j block_4252
block_4346:
    j block_4252
block_4344:
    j block_4252
block_4342:
    j block_4252
block_4340:
    j block_4252
block_4252:
    addi r1 r0 1
    lw r2 r29 8
    lw r3 r29 40
    sw r31 r29 104
    addi r29 r29 108
    jal trace_or_matrix_fast.4483
    subi r29 r29 108
    lw r31 r29 104
    j block_4249
block_4248:
    j block_4249
block_4249:
    lwcZ f0 r0 30548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_4348
block_4347:
    mv r1 r0
    j block_4349
block_4348:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_4351
block_4350:
    mv r1 r0
    j block_4349
block_4351:
    addi r1 r0 1
    j block_4349
block_4349:
    bne r1 r0 block_4353
    j block_4352
block_4352:
    j block_4110
block_4353:
    lw r1 r0 30564
    sll r1 r1 2
    lw r1 r1 30048
    lw r2 r29 40
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_4355
block_4354:
    addi r2 r0 2
    beq r3 r2 block_4358
block_4357:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
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
    beq r2 r0 block_4360
block_4359:
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
    swcZ f3 r0 30568
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
    swcZ f2 r0 30572
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
    swcZ f0 r0 30576
    j block_4361
block_4360:
    swcZ f3 r0 30568
    swcZ f4 r0 30572
    swcZ f5 r0 30576
    j block_4361
block_4361:
    lw r2 r1 24
    lwcZ f0 r0 30568
    fmul f0 f0 f0
    lwcZ f1 r0 30572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 30576
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
    bc1t block_4363
block_4362:
    bne r2 r0 block_4366
    j block_4365
block_4365:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4364
block_4366:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4364
block_4363:
    #1.0
    flui f0 16256
    j block_4364
block_4364:
    lwcZ f1 r0 30568
    fmul f1 f1 f0
    swcZ f1 r0 30568
    lwcZ f1 r0 30572
    fmul f1 f1 f0
    swcZ f1 r0 30572
    lwcZ f1 r0 30576
    fmul f0 f1 f0
    swcZ f0 r0 30576
    j block_4356
block_4358:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 30568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 30572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 30576
    j block_4356
block_4355:
    lw r3 r0 30544
    #0.0
    flui f0 0
    swcZ f0 r0 30568
    swcZ f0 r0 30572
    swcZ f0 r0 30576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4368
block_4367:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4371
block_4370:
    mv r2 r0
    j block_4372
block_4371:
    addi r2 r0 1
    j block_4372
block_4372:
    bne r2 r0 block_4374
    j block_4373
block_4373:
    #-1.0
    flui f0 -16512
    j block_4369
block_4374:
    #1.0
    flui f0 16256
    j block_4369
block_4368:
    #0.0
    flui f0 0
    j block_4369
block_4369:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 30568
    j block_4356
block_4356:
    lw r2 r29 76
    sw r1 r29 84
    sw r31 r29 104
    addi r29 r29 108
    jal utexture.4603
    subi r29 r29 108
    lw r31 r29 104
    lw r2 r0 30536
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4376
    j block_4375
block_4375:
    lwcZ f0 r0 30568
    lwcZ f1 r0 30312
    fmul f0 f0 f1
    lwcZ f1 r0 30572
    lwcZ f2 r0 30316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 30576
    lwcZ f2 r0 30320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4378
block_4377:
    mv r1 r0
    j block_4379
block_4378:
    addi r1 r0 1
    j block_4379
block_4379:
    bne r1 r0 block_4381
    j block_4380
block_4380:
    #0.0
    flui f0 0
    j block_4382
block_4381:
    j block_4382
block_4382:
    lwcZ f1 r29 20
    fmul f0 f1 f0
    lw r1 r29 84
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 30592
    lwcZ f2 r0 30580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30592
    lwcZ f1 r0 30596
    lwcZ f2 r0 30584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30596
    lwcZ f1 r0 30600
    lwcZ f2 r0 30588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 30600
    j block_4110
block_4376:
    j block_4110
block_4110:
    lw r1 r29 72
    subi r1 r1 2
    blt r1 r0 block_4384
block_4383:
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
    bc1t block_4386
block_4385:
    mv r2 r0
    j block_4387
block_4386:
    addi r2 r0 1
    j block_4387
block_4387:
    sw r1 r29 32
    bne r2 r0 block_4389
    j block_4388
block_4388:
    sll r2 r1 2
    lwab r2 r3 r2
    #0.006666667
    flui f1 15322
    fori f1 f1 29710
    fmul f0 f0 f1
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 30548
    lw r5 r0 30536
    sw r2 r29 44
    swcZ f0 r29 24
    mv r3 r2
    mv r1 r0
    mv r2 r5
    sw r31 r29 104
    addi r29 r29 108
    jal trace_or_matrix_fast.4483
    subi r29 r29 108
    lw r31 r29 104
    lwcZ f0 r0 30548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_4392
block_4391:
    mv r1 r0
    j block_4393
block_4392:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_4395
block_4394:
    mv r1 r0
    j block_4393
block_4395:
    addi r1 r0 1
    j block_4393
block_4393:
    bne r1 r0 block_4397
    j block_4396
block_4396:
    j block_4390
block_4397:
    lw r1 r0 30564
    sll r1 r1 2
    lw r1 r1 30048
    lw r2 r29 44
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_4399
block_4398:
    addi r2 r0 2
    beq r3 r2 block_4402
block_4401:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
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
    beq r2 r0 block_4404
block_4403:
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
    swcZ f3 r0 30568
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
    swcZ f2 r0 30572
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
    swcZ f0 r0 30576
    j block_4405
block_4404:
    swcZ f3 r0 30568
    swcZ f4 r0 30572
    swcZ f5 r0 30576
    j block_4405
block_4405:
    lw r2 r1 24
    lwcZ f0 r0 30568
    fmul f0 f0 f0
    lwcZ f1 r0 30572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 30576
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
    bc1t block_4407
block_4406:
    bne r2 r0 block_4410
    j block_4409
block_4409:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4408
block_4410:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4408
block_4407:
    #1.0
    flui f0 16256
    j block_4408
block_4408:
    lwcZ f1 r0 30568
    fmul f1 f1 f0
    swcZ f1 r0 30568
    lwcZ f1 r0 30572
    fmul f1 f1 f0
    swcZ f1 r0 30572
    lwcZ f1 r0 30576
    fmul f0 f1 f0
    swcZ f0 r0 30576
    j block_4400
block_4402:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 30568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 30572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 30576
    j block_4400
block_4399:
    lw r3 r0 30544
    #0.0
    flui f0 0
    swcZ f0 r0 30568
    swcZ f0 r0 30572
    swcZ f0 r0 30576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4412
block_4411:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4415
block_4414:
    mv r2 r0
    j block_4416
block_4415:
    addi r2 r0 1
    j block_4416
block_4416:
    bne r2 r0 block_4418
    j block_4417
block_4417:
    #-1.0
    flui f0 -16512
    j block_4413
block_4418:
    #1.0
    flui f0 16256
    j block_4413
block_4412:
    #0.0
    flui f0 0
    j block_4413
block_4413:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 30568
    j block_4400
block_4400:
    lw r2 r1 0
    lw r3 r1 32
    lwcZ f0 r3 0
    swcZ f0 r0 30580
    lw r3 r1 32
    lwcZ f0 r3 4
    swcZ f0 r0 30584
    lw r3 r1 32
    lwcZ f0 r3 8
    swcZ f0 r0 30588
    addi r3 r0 1
    beq r2 r3 block_4420
block_4419:
    addi r3 r0 2
    beq r2 r3 block_4423
block_4422:
    addi r3 r0 3
    beq r2 r3 block_4425
block_4424:
    addi r3 r0 4
    beq r2 r3 block_4427
block_4426:
    j block_4421
block_4427:
    lwcZ f0 r0 30552
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
    lwcZ f1 r0 30560
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
    bc1t block_4429
block_4428:
    fmv f3 f0
    j block_4430
block_4429:
    fneg f3 f0
    j block_4430
block_4430:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_4432
block_4431:
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
    bc1t block_4435
block_4434:
    j block_4436
block_4435:
    fneg f0 f0
    j block_4436
block_4436:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4438
block_4437:
    mv r2 r0
    j block_4439
block_4438:
    addi r2 r0 1
    j block_4439
block_4439:
    bne r2 r0 block_4441
    j block_4440
block_4440:
    fneg f0 f0
    j block_4442
block_4441:
    j block_4442
block_4442:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_4444
block_4443:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_4447
block_4446:
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
    j block_4445
block_4447:
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
    j block_4445
block_4444:
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
    j block_4445
block_4445:
    bne r2 r0 block_4449
    j block_4448
block_4448:
    fneg f0 f0
    j block_4450
block_4449:
    j block_4450
block_4450:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_4433
block_4432:
    #15.0
    flui f0 16752
    j block_4433
block_4433:
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_4452
block_4451:
    j block_4453
block_4452:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_4453
block_4453:
    fsub f0 f0 f1
    lwcZ f1 r0 30556
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
    bc1t block_4455
block_4454:
    fmv f3 f2
    j block_4456
block_4455:
    fneg f3 f2
    j block_4456
block_4456:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_4458
block_4457:
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
    bc1t block_4461
block_4460:
    j block_4462
block_4461:
    fneg f1 f1
    j block_4462
block_4462:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_4464
block_4463:
    mv r2 r0
    j block_4465
block_4464:
    addi r2 r0 1
    j block_4465
block_4465:
    bne r2 r0 block_4467
    j block_4466
block_4466:
    fneg f1 f1
    j block_4468
block_4467:
    j block_4468
block_4468:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_4470
block_4469:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_4473
block_4472:
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
    j block_4471
block_4473:
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
    j block_4471
block_4470:
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
    j block_4471
block_4471:
    bne r2 r0 block_4475
    j block_4474
block_4474:
    fneg f1 f1
    j block_4476
block_4475:
    j block_4476
block_4476:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_4459
block_4458:
    #15.0
    flui f1 16752
    j block_4459
block_4459:
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_4478
block_4477:
    j block_4479
block_4478:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_4479
block_4479:
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
    bc1t block_4481
block_4480:
    mv r2 r0
    j block_4482
block_4481:
    addi r2 r0 1
    j block_4482
block_4482:
    bne r2 r0 block_4484
    j block_4483
block_4483:
    j block_4485
block_4484:
    #0.0
    flui f0 0
    j block_4485
block_4485:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 30588
    j block_4421
block_4425:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30560
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
    bc1t block_4487
block_4486:
    j block_4488
block_4487:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_4488
block_4488:
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
    bc1t block_4490
block_4489:
    fneg f0 f0
    j block_4491
block_4490:
    j block_4491
block_4491:
    fclt f3 f0
    bc1t block_4493
block_4492:
    addi r2 r0 1
    j block_4494
block_4493:
    addi r2 r0 -1
    j block_4494
block_4494:
    fclt f3 f0
    bc1t block_4496
block_4495:
    j block_4497
block_4496:
    fsub f0 f0 f3
    j block_4497
block_4497:
    fclt f2 f0
    bc1t block_4499
block_4498:
    j block_4500
block_4499:
    sub r2 r0 r2
    j block_4500
block_4500:
    fclt f2 f0
    bc1t block_4502
block_4501:
    j block_4503
block_4502:
    fsub f0 f3 f0
    j block_4503
block_4503:
    fclt f0 f1
    bc1t block_4505
block_4504:
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
    j block_4506
block_4505:
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
    j block_4506
block_4506:
    addi r3 r0 -1
    beq r2 r3 block_4508
block_4507:
    j block_4509
block_4508:
    fneg f0 f0
    j block_4509
block_4509:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 30584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 30588
    j block_4421
block_4423:
    lwcZ f0 r0 30556
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
    bc1t block_4511
block_4510:
    fadd f0 f0 f4
    j block_4512
block_4511:
    j block_4512
block_4512:
    fclt f3 f0
    bc1t block_4514
block_4513:
    addi r2 r0 1
    j block_4515
block_4514:
    mv r2 r0
    j block_4515
block_4515:
    fclt f3 f0
    bc1t block_4517
block_4516:
    j block_4518
block_4517:
    fsub f0 f0 f3
    j block_4518
block_4518:
    fclt f2 f0
    bc1t block_4520
block_4519:
    j block_4521
block_4520:
    fsub f0 f3 f0
    j block_4521
block_4521:
    fclt f1 f0
    bc1t block_4523
block_4522:
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
    j block_4524
block_4523:
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
    j block_4524
block_4524:
    bne r2 r0 block_4526
    j block_4525
block_4525:
    fneg f0 f0
    j block_4527
block_4526:
    j block_4527
block_4527:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 30580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 30584
    j block_4421
block_4420:
    lwcZ f0 r0 30552
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
    bc1t block_4529
block_4528:
    fmv f1 f2
    j block_4530
block_4529:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4530
block_4530:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4532
block_4531:
    mv r2 r0
    j block_4533
block_4532:
    addi r2 r0 1
    j block_4533
block_4533:
    lwcZ f0 r0 30560
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
    bc1t block_4535
block_4534:
    fmv f1 f2
    j block_4536
block_4535:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4536
block_4536:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4538
block_4537:
    mv r3 r0
    j block_4539
block_4538:
    addi r3 r0 1
    j block_4539
block_4539:
    bne r2 r0 block_4541
    j block_4540
block_4540:
    bne r3 r0 block_4544
    j block_4543
block_4543:
    #255.0
    flui f0 17279
    j block_4542
block_4544:
    #0.0
    flui f0 0
    j block_4542
block_4541:
    bne r3 r0 block_4546
    j block_4545
block_4545:
    #0.0
    flui f0 0
    j block_4542
block_4546:
    #255.0
    flui f0 17279
    j block_4542
block_4542:
    swcZ f0 r0 30584
    j block_4421
block_4421:
    lw r2 r0 30536
    lw r3 r2 0
    lw r4 r3 0
    addi r5 r0 -1
    sw r1 r29 96
    beq r4 r5 block_4548
block_4547:
    addi r5 r0 99
    sw r3 r29 60
    sw r2 r29 4
    beq r4 r5 block_4551
block_4550:
    sll r5 r4 2
    lw r5 r5 30048
    lwcZ f0 r0 30552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 30992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_4554
block_4553:
    addi r7 r0 2
    beq r6 r7 block_4557
block_4556:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_4559
block_4558:
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
    beq r6 r0 block_4561
block_4560:
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
    j block_4562
block_4561:
    fmv f0 f5
    j block_4562
block_4562:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_4564
block_4563:
    j block_4565
block_4564:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_4565
block_4565:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4567
block_4566:
    mv r6 r0
    j block_4568
block_4567:
    addi r6 r0 1
    j block_4568
block_4568:
    bne r6 r0 block_4570
    j block_4569
block_4569:
    mv r4 r0
    j block_4555
block_4570:
    lw r5 r5 24
    bne r5 r0 block_4572
    j block_4571
block_4571:
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
    swcZ f0 r0 30540
    j block_4573
block_4572:
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
    swcZ f0 r0 30540
    j block_4573
block_4573:
    addi r4 r0 1
    j block_4555
block_4559:
    mv r4 r0
    j block_4555
block_4557:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_4575
block_4574:
    mv r5 r0
    j block_4576
block_4575:
    addi r5 r0 1
    j block_4576
block_4576:
    bne r5 r0 block_4578
    j block_4577
block_4577:
    mv r4 r0
    j block_4555
block_4578:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_4555
block_4554:
    lw r6 r0 30988
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
    bc1t block_4580
block_4579:
    j block_4581
block_4580:
    fneg f4 f4
    j block_4581
block_4581:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_4583
block_4582:
    mv r7 r0
    j block_4584
block_4583:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4586
block_4585:
    j block_4587
block_4586:
    fneg f4 f4
    j block_4587
block_4587:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4589
block_4588:
    mv r7 r0
    j block_4584
block_4589:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4591
block_4590:
    mv r7 r0
    j block_4592
block_4591:
    addi r7 r0 1
    j block_4592
block_4592:
    bne r7 r0 block_4594
    j block_4593
block_4593:
    addi r7 r0 1
    j block_4584
block_4594:
    mv r7 r0
    j block_4584
block_4584:
    bne r7 r0 block_4596
    j block_4595
block_4595:
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
    bc1t block_4598
block_4597:
    j block_4599
block_4598:
    fneg f4 f4
    j block_4599
block_4599:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_4601
block_4600:
    mv r7 r0
    j block_4602
block_4601:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4604
block_4603:
    j block_4605
block_4604:
    fneg f4 f4
    j block_4605
block_4605:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4607
block_4606:
    mv r7 r0
    j block_4602
block_4607:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4609
block_4608:
    mv r7 r0
    j block_4610
block_4609:
    addi r7 r0 1
    j block_4610
block_4610:
    bne r7 r0 block_4612
    j block_4611
block_4611:
    addi r7 r0 1
    j block_4602
block_4612:
    mv r7 r0
    j block_4602
block_4602:
    bne r7 r0 block_4614
    j block_4613
block_4613:
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
    bc1t block_4616
block_4615:
    j block_4617
block_4616:
    fneg f0 f0
    j block_4617
block_4617:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_4619
block_4618:
    mv r4 r0
    j block_4620
block_4619:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4622
block_4621:
    j block_4623
block_4622:
    fneg f0 f0
    j block_4623
block_4623:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_4625
block_4624:
    mv r4 r0
    j block_4620
block_4625:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4627
block_4626:
    mv r4 r0
    j block_4628
block_4627:
    addi r4 r0 1
    j block_4628
block_4628:
    bne r4 r0 block_4630
    j block_4629
block_4629:
    addi r4 r0 1
    j block_4620
block_4630:
    mv r4 r0
    j block_4620
block_4620:
    bne r4 r0 block_4632
    j block_4631
block_4631:
    mv r4 r0
    j block_4555
block_4632:
    swcZ f2 r0 30540
    addi r4 r0 3
    j block_4555
block_4614:
    swcZ f3 r0 30540
    addi r4 r0 2
    j block_4555
block_4596:
    swcZ f3 r0 30540
    addi r4 r0 1
    j block_4555
block_4555:
    beq r4 r0 block_4634
block_4633:
    lwcZ f0 r0 30540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f0 f1
    bc1t block_4636
block_4635:
    mv r1 r0
    j block_4552
block_4636:
    lw r4 r3 4
    addi r5 r0 -1
    beq r4 r5 block_4638
block_4637:
    sll r4 r4 2
    lw r4 r4 30332
    mv r2 r4
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4641
    j block_4640
block_4640:
    lw r1 r29 60
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_4643
block_4642:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4645
    j block_4644
block_4644:
    lw r1 r29 60
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_4647
block_4646:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4649
    j block_4648
block_4648:
    lw r1 r29 60
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_4651
block_4650:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4653
    j block_4652
block_4652:
    addi r1 r0 5
    lw r2 r29 60
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_group.4292
    subi r29 r29 108
    lw r31 r29 104
    j block_4639
block_4653:
    addi r1 r0 1
    j block_4639
block_4651:
    mv r1 r0
    j block_4639
block_4649:
    addi r1 r0 1
    j block_4639
block_4647:
    mv r1 r0
    j block_4639
block_4645:
    addi r1 r0 1
    j block_4639
block_4643:
    mv r1 r0
    j block_4639
block_4641:
    addi r1 r0 1
    j block_4639
block_4638:
    mv r1 r0
    j block_4639
block_4639:
    bne r1 r0 block_4655
    j block_4654
block_4654:
    mv r1 r0
    j block_4552
block_4655:
    addi r1 r0 1
    j block_4552
block_4634:
    mv r1 r0
    j block_4552
block_4551:
    addi r1 r0 1
    j block_4552
block_4552:
    bne r1 r0 block_4657
    j block_4656
block_4656:
    addi r1 r0 1
    lw r2 r29 4
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    j block_4549
block_4657:
    lw r1 r29 60
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_4659
block_4658:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4662
    j block_4661
block_4661:
    lw r1 r29 60
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_4664
block_4663:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4666
    j block_4665
block_4665:
    lw r1 r29 60
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_4668
block_4667:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4670
    j block_4669
block_4669:
    lw r1 r29 60
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_4672
block_4671:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4674
    j block_4673
block_4673:
    addi r1 r0 5
    lw r2 r29 60
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_group.4292
    subi r29 r29 108
    lw r31 r29 104
    j block_4660
block_4674:
    addi r1 r0 1
    j block_4660
block_4672:
    mv r1 r0
    j block_4660
block_4670:
    addi r1 r0 1
    j block_4660
block_4668:
    mv r1 r0
    j block_4660
block_4666:
    addi r1 r0 1
    j block_4660
block_4664:
    mv r1 r0
    j block_4660
block_4662:
    addi r1 r0 1
    j block_4660
block_4659:
    mv r1 r0
    j block_4660
block_4660:
    bne r1 r0 block_4676
    j block_4675
block_4675:
    addi r1 r0 1
    lw r2 r29 4
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    j block_4549
block_4676:
    addi r1 r0 1
    j block_4549
block_4548:
    mv r1 r0
    j block_4549
block_4549:
    bne r1 r0 block_4678
    j block_4677
block_4677:
    lwcZ f0 r0 30568
    lwcZ f1 r0 30312
    fmul f0 f0 f1
    lwcZ f1 r0 30572
    lwcZ f2 r0 30316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 30576
    lwcZ f2 r0 30320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4680
block_4679:
    mv r1 r0
    j block_4681
block_4680:
    addi r1 r0 1
    j block_4681
block_4681:
    bne r1 r0 block_4683
    j block_4682
block_4682:
    #0.0
    flui f0 0
    j block_4684
block_4683:
    j block_4684
block_4684:
    lwcZ f1 r29 24
    fmul f0 f1 f0
    lw r1 r29 96
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 30592
    lwcZ f2 r0 30580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30592
    lwcZ f1 r0 30596
    lwcZ f2 r0 30584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30596
    lwcZ f1 r0 30600
    lwcZ f2 r0 30588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 30600
    j block_4390
block_4678:
    j block_4390
block_4389:
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
    swcZ f1 r0 30548
    lw r5 r0 30536
    sw r2 r29 36
    swcZ f0 r29 16
    mv r3 r2
    mv r1 r0
    mv r2 r5
    sw r31 r29 104
    addi r29 r29 108
    jal trace_or_matrix_fast.4483
    subi r29 r29 108
    lw r31 r29 104
    lwcZ f0 r0 30548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_4686
block_4685:
    mv r1 r0
    j block_4687
block_4686:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_4689
block_4688:
    mv r1 r0
    j block_4687
block_4689:
    addi r1 r0 1
    j block_4687
block_4687:
    bne r1 r0 block_4691
    j block_4690
block_4690:
    j block_4390
block_4691:
    lw r1 r0 30564
    sll r1 r1 2
    lw r1 r1 30048
    lw r2 r29 36
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_4693
block_4692:
    addi r2 r0 2
    beq r3 r2 block_4696
block_4695:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
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
    beq r2 r0 block_4698
block_4697:
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
    swcZ f3 r0 30568
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
    swcZ f2 r0 30572
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
    swcZ f0 r0 30576
    j block_4699
block_4698:
    swcZ f3 r0 30568
    swcZ f4 r0 30572
    swcZ f5 r0 30576
    j block_4699
block_4699:
    lw r2 r1 24
    lwcZ f0 r0 30568
    fmul f0 f0 f0
    lwcZ f1 r0 30572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 30576
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
    bc1t block_4701
block_4700:
    bne r2 r0 block_4704
    j block_4703
block_4703:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4702
block_4704:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_4702
block_4701:
    #1.0
    flui f0 16256
    j block_4702
block_4702:
    lwcZ f1 r0 30568
    fmul f1 f1 f0
    swcZ f1 r0 30568
    lwcZ f1 r0 30572
    fmul f1 f1 f0
    swcZ f1 r0 30572
    lwcZ f1 r0 30576
    fmul f0 f1 f0
    swcZ f0 r0 30576
    j block_4694
block_4696:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 30568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 30572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 30576
    j block_4694
block_4693:
    lw r3 r0 30544
    #0.0
    flui f0 0
    swcZ f0 r0 30568
    swcZ f0 r0 30572
    swcZ f0 r0 30576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4706
block_4705:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4709
block_4708:
    mv r2 r0
    j block_4710
block_4709:
    addi r2 r0 1
    j block_4710
block_4710:
    bne r2 r0 block_4712
    j block_4711
block_4711:
    #-1.0
    flui f0 -16512
    j block_4707
block_4712:
    #1.0
    flui f0 16256
    j block_4707
block_4706:
    #0.0
    flui f0 0
    j block_4707
block_4707:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 30568
    j block_4694
block_4694:
    lw r2 r1 0
    lw r3 r1 32
    lwcZ f0 r3 0
    swcZ f0 r0 30580
    lw r3 r1 32
    lwcZ f0 r3 4
    swcZ f0 r0 30584
    lw r3 r1 32
    lwcZ f0 r3 8
    swcZ f0 r0 30588
    addi r3 r0 1
    beq r2 r3 block_4714
block_4713:
    addi r3 r0 2
    beq r2 r3 block_4717
block_4716:
    addi r3 r0 3
    beq r2 r3 block_4719
block_4718:
    addi r3 r0 4
    beq r2 r3 block_4721
block_4720:
    j block_4715
block_4721:
    lwcZ f0 r0 30552
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
    lwcZ f1 r0 30560
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
    bc1t block_4723
block_4722:
    fmv f3 f0
    j block_4724
block_4723:
    fneg f3 f0
    j block_4724
block_4724:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_4726
block_4725:
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
    bc1t block_4729
block_4728:
    j block_4730
block_4729:
    fneg f0 f0
    j block_4730
block_4730:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4732
block_4731:
    mv r2 r0
    j block_4733
block_4732:
    addi r2 r0 1
    j block_4733
block_4733:
    bne r2 r0 block_4735
    j block_4734
block_4734:
    fneg f0 f0
    j block_4736
block_4735:
    j block_4736
block_4736:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_4738
block_4737:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_4741
block_4740:
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
    j block_4739
block_4741:
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
    j block_4739
block_4738:
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
    j block_4739
block_4739:
    bne r2 r0 block_4743
    j block_4742
block_4742:
    fneg f0 f0
    j block_4744
block_4743:
    j block_4744
block_4744:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_4727
block_4726:
    #15.0
    flui f0 16752
    j block_4727
block_4727:
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_4746
block_4745:
    j block_4747
block_4746:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_4747
block_4747:
    fsub f0 f0 f1
    lwcZ f1 r0 30556
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
    bc1t block_4749
block_4748:
    fmv f3 f2
    j block_4750
block_4749:
    fneg f3 f2
    j block_4750
block_4750:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_4752
block_4751:
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
    bc1t block_4755
block_4754:
    j block_4756
block_4755:
    fneg f1 f1
    j block_4756
block_4756:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_4758
block_4757:
    mv r2 r0
    j block_4759
block_4758:
    addi r2 r0 1
    j block_4759
block_4759:
    bne r2 r0 block_4761
    j block_4760
block_4760:
    fneg f1 f1
    j block_4762
block_4761:
    j block_4762
block_4762:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_4764
block_4763:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_4767
block_4766:
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
    j block_4765
block_4767:
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
    j block_4765
block_4764:
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
    j block_4765
block_4765:
    bne r2 r0 block_4769
    j block_4768
block_4768:
    fneg f1 f1
    j block_4770
block_4769:
    j block_4770
block_4770:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_4753
block_4752:
    #15.0
    flui f1 16752
    j block_4753
block_4753:
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_4772
block_4771:
    j block_4773
block_4772:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_4773
block_4773:
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
    bc1t block_4775
block_4774:
    mv r2 r0
    j block_4776
block_4775:
    addi r2 r0 1
    j block_4776
block_4776:
    bne r2 r0 block_4778
    j block_4777
block_4777:
    j block_4779
block_4778:
    #0.0
    flui f0 0
    j block_4779
block_4779:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 30588
    j block_4715
block_4719:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30560
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
    bc1t block_4781
block_4780:
    j block_4782
block_4781:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_4782
block_4782:
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
    bc1t block_4784
block_4783:
    fneg f0 f0
    j block_4785
block_4784:
    j block_4785
block_4785:
    fclt f3 f0
    bc1t block_4787
block_4786:
    addi r2 r0 1
    j block_4788
block_4787:
    addi r2 r0 -1
    j block_4788
block_4788:
    fclt f3 f0
    bc1t block_4790
block_4789:
    j block_4791
block_4790:
    fsub f0 f0 f3
    j block_4791
block_4791:
    fclt f2 f0
    bc1t block_4793
block_4792:
    j block_4794
block_4793:
    sub r2 r0 r2
    j block_4794
block_4794:
    fclt f2 f0
    bc1t block_4796
block_4795:
    j block_4797
block_4796:
    fsub f0 f3 f0
    j block_4797
block_4797:
    fclt f0 f1
    bc1t block_4799
block_4798:
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
    j block_4800
block_4799:
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
    j block_4800
block_4800:
    addi r3 r0 -1
    beq r2 r3 block_4802
block_4801:
    j block_4803
block_4802:
    fneg f0 f0
    j block_4803
block_4803:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 30584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 30588
    j block_4715
block_4717:
    lwcZ f0 r0 30556
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
    bc1t block_4805
block_4804:
    fadd f0 f0 f4
    j block_4806
block_4805:
    j block_4806
block_4806:
    fclt f3 f0
    bc1t block_4808
block_4807:
    addi r2 r0 1
    j block_4809
block_4808:
    mv r2 r0
    j block_4809
block_4809:
    fclt f3 f0
    bc1t block_4811
block_4810:
    j block_4812
block_4811:
    fsub f0 f0 f3
    j block_4812
block_4812:
    fclt f2 f0
    bc1t block_4814
block_4813:
    j block_4815
block_4814:
    fsub f0 f3 f0
    j block_4815
block_4815:
    fclt f1 f0
    bc1t block_4817
block_4816:
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
    j block_4818
block_4817:
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
    j block_4818
block_4818:
    bne r2 r0 block_4820
    j block_4819
block_4819:
    fneg f0 f0
    j block_4821
block_4820:
    j block_4821
block_4821:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 30580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 30584
    j block_4715
block_4714:
    lwcZ f0 r0 30552
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
    bc1t block_4823
block_4822:
    fmv f1 f2
    j block_4824
block_4823:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4824
block_4824:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4826
block_4825:
    mv r2 r0
    j block_4827
block_4826:
    addi r2 r0 1
    j block_4827
block_4827:
    lwcZ f0 r0 30560
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
    bc1t block_4829
block_4828:
    fmv f1 f2
    j block_4830
block_4829:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_4830
block_4830:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_4832
block_4831:
    mv r3 r0
    j block_4833
block_4832:
    addi r3 r0 1
    j block_4833
block_4833:
    bne r2 r0 block_4835
    j block_4834
block_4834:
    bne r3 r0 block_4838
    j block_4837
block_4837:
    #255.0
    flui f0 17279
    j block_4836
block_4838:
    #0.0
    flui f0 0
    j block_4836
block_4835:
    bne r3 r0 block_4840
    j block_4839
block_4839:
    #0.0
    flui f0 0
    j block_4836
block_4840:
    #255.0
    flui f0 17279
    j block_4836
block_4836:
    swcZ f0 r0 30584
    j block_4715
block_4715:
    lw r2 r0 30536
    lw r3 r2 0
    lw r4 r3 0
    addi r5 r0 -1
    sw r1 r29 92
    beq r4 r5 block_4842
block_4841:
    addi r5 r0 99
    sw r3 r29 56
    sw r2 r29 0
    beq r4 r5 block_4845
block_4844:
    sll r5 r4 2
    lw r5 r5 30048
    lwcZ f0 r0 30552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 30992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_4848
block_4847:
    addi r7 r0 2
    beq r6 r7 block_4851
block_4850:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_4853
block_4852:
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
    beq r6 r0 block_4855
block_4854:
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
    j block_4856
block_4855:
    fmv f0 f5
    j block_4856
block_4856:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_4858
block_4857:
    j block_4859
block_4858:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_4859
block_4859:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4861
block_4860:
    mv r6 r0
    j block_4862
block_4861:
    addi r6 r0 1
    j block_4862
block_4862:
    bne r6 r0 block_4864
    j block_4863
block_4863:
    mv r4 r0
    j block_4849
block_4864:
    lw r5 r5 24
    bne r5 r0 block_4866
    j block_4865
block_4865:
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
    swcZ f0 r0 30540
    j block_4867
block_4866:
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
    swcZ f0 r0 30540
    j block_4867
block_4867:
    addi r4 r0 1
    j block_4849
block_4853:
    mv r4 r0
    j block_4849
block_4851:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_4869
block_4868:
    mv r5 r0
    j block_4870
block_4869:
    addi r5 r0 1
    j block_4870
block_4870:
    bne r5 r0 block_4872
    j block_4871
block_4871:
    mv r4 r0
    j block_4849
block_4872:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_4849
block_4848:
    lw r6 r0 30988
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
    bc1t block_4874
block_4873:
    j block_4875
block_4874:
    fneg f4 f4
    j block_4875
block_4875:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_4877
block_4876:
    mv r7 r0
    j block_4878
block_4877:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4880
block_4879:
    j block_4881
block_4880:
    fneg f4 f4
    j block_4881
block_4881:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4883
block_4882:
    mv r7 r0
    j block_4878
block_4883:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4885
block_4884:
    mv r7 r0
    j block_4886
block_4885:
    addi r7 r0 1
    j block_4886
block_4886:
    bne r7 r0 block_4888
    j block_4887
block_4887:
    addi r7 r0 1
    j block_4878
block_4888:
    mv r7 r0
    j block_4878
block_4878:
    bne r7 r0 block_4890
    j block_4889
block_4889:
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
    bc1t block_4892
block_4891:
    j block_4893
block_4892:
    fneg f4 f4
    j block_4893
block_4893:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_4895
block_4894:
    mv r7 r0
    j block_4896
block_4895:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4898
block_4897:
    j block_4899
block_4898:
    fneg f4 f4
    j block_4899
block_4899:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4901
block_4900:
    mv r7 r0
    j block_4896
block_4901:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4903
block_4902:
    mv r7 r0
    j block_4904
block_4903:
    addi r7 r0 1
    j block_4904
block_4904:
    bne r7 r0 block_4906
    j block_4905
block_4905:
    addi r7 r0 1
    j block_4896
block_4906:
    mv r7 r0
    j block_4896
block_4896:
    bne r7 r0 block_4908
    j block_4907
block_4907:
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
    bc1t block_4910
block_4909:
    j block_4911
block_4910:
    fneg f0 f0
    j block_4911
block_4911:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_4913
block_4912:
    mv r4 r0
    j block_4914
block_4913:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4916
block_4915:
    j block_4917
block_4916:
    fneg f0 f0
    j block_4917
block_4917:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_4919
block_4918:
    mv r4 r0
    j block_4914
block_4919:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4921
block_4920:
    mv r4 r0
    j block_4922
block_4921:
    addi r4 r0 1
    j block_4922
block_4922:
    bne r4 r0 block_4924
    j block_4923
block_4923:
    addi r4 r0 1
    j block_4914
block_4924:
    mv r4 r0
    j block_4914
block_4914:
    bne r4 r0 block_4926
    j block_4925
block_4925:
    mv r4 r0
    j block_4849
block_4926:
    swcZ f2 r0 30540
    addi r4 r0 3
    j block_4849
block_4908:
    swcZ f3 r0 30540
    addi r4 r0 2
    j block_4849
block_4890:
    swcZ f3 r0 30540
    addi r4 r0 1
    j block_4849
block_4849:
    beq r4 r0 block_4928
block_4927:
    lwcZ f0 r0 30540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f0 f1
    bc1t block_4930
block_4929:
    mv r1 r0
    j block_4846
block_4930:
    lw r4 r3 4
    addi r5 r0 -1
    beq r4 r5 block_4932
block_4931:
    sll r4 r4 2
    lw r4 r4 30332
    mv r2 r4
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4935
    j block_4934
block_4934:
    lw r1 r29 56
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_4937
block_4936:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4939
    j block_4938
block_4938:
    lw r1 r29 56
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_4941
block_4940:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4943
    j block_4942
block_4942:
    lw r1 r29 56
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_4945
block_4944:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4947
    j block_4946
block_4946:
    addi r1 r0 5
    lw r2 r29 56
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_group.4292
    subi r29 r29 108
    lw r31 r29 104
    j block_4933
block_4947:
    addi r1 r0 1
    j block_4933
block_4945:
    mv r1 r0
    j block_4933
block_4943:
    addi r1 r0 1
    j block_4933
block_4941:
    mv r1 r0
    j block_4933
block_4939:
    addi r1 r0 1
    j block_4933
block_4937:
    mv r1 r0
    j block_4933
block_4935:
    addi r1 r0 1
    j block_4933
block_4932:
    mv r1 r0
    j block_4933
block_4933:
    bne r1 r0 block_4949
    j block_4948
block_4948:
    mv r1 r0
    j block_4846
block_4949:
    addi r1 r0 1
    j block_4846
block_4928:
    mv r1 r0
    j block_4846
block_4845:
    addi r1 r0 1
    j block_4846
block_4846:
    bne r1 r0 block_4951
    j block_4950
block_4950:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    j block_4843
block_4951:
    lw r1 r29 56
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_4953
block_4952:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4956
    j block_4955
block_4955:
    lw r1 r29 56
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_4958
block_4957:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4960
    j block_4959
block_4959:
    lw r1 r29 56
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_4962
block_4961:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4964
    j block_4963
block_4963:
    lw r1 r29 56
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_4966
block_4965:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_and_group.4251
    subi r29 r29 108
    lw r31 r29 104
    bne r1 r0 block_4968
    j block_4967
block_4967:
    addi r1 r0 5
    lw r2 r29 56
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_group.4292
    subi r29 r29 108
    lw r31 r29 104
    j block_4954
block_4968:
    addi r1 r0 1
    j block_4954
block_4966:
    mv r1 r0
    j block_4954
block_4964:
    addi r1 r0 1
    j block_4954
block_4962:
    mv r1 r0
    j block_4954
block_4960:
    addi r1 r0 1
    j block_4954
block_4958:
    mv r1 r0
    j block_4954
block_4956:
    addi r1 r0 1
    j block_4954
block_4953:
    mv r1 r0
    j block_4954
block_4954:
    bne r1 r0 block_4970
    j block_4969
block_4969:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 104
    addi r29 r29 108
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 108
    lw r31 r29 104
    j block_4843
block_4970:
    addi r1 r0 1
    j block_4843
block_4842:
    mv r1 r0
    j block_4843
block_4843:
    bne r1 r0 block_4972
    j block_4971
block_4971:
    lwcZ f0 r0 30568
    lwcZ f1 r0 30312
    fmul f0 f0 f1
    lwcZ f1 r0 30572
    lwcZ f2 r0 30316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 30576
    lwcZ f2 r0 30320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4974
block_4973:
    mv r1 r0
    j block_4975
block_4974:
    addi r1 r0 1
    j block_4975
block_4975:
    bne r1 r0 block_4977
    j block_4976
block_4976:
    #0.0
    flui f0 0
    j block_4978
block_4977:
    j block_4978
block_4978:
    lwcZ f1 r29 16
    fmul f0 f1 f0
    lw r1 r29 92
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 30592
    lwcZ f2 r0 30580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30592
    lwcZ f1 r0 30596
    lwcZ f2 r0 30584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30596
    lwcZ f1 r0 30600
    lwcZ f2 r0 30588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 30600
    j block_4390
block_4972:
    j block_4390
block_4390:
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
block_4384:
    jr r31
block_4104:
    jr r31
main:
block_0:
    sw r0 r0 30000
    #0.0
    flui f0 0
    addi r1 r0 30004
    sw r1 r0 30044
    sw r1 r0 30040
    sw r1 r0 30036
    sw r1 r0 30032
    sw r0 r0 30028
    sw r1 r0 30024
    sw r1 r0 30020
    sw r0 r0 30016
    sw r0 r0 30012
    sw r0 r0 30008
    sw r0 r0 30004
    addi r1 r0 30004
    sw r1 r0 30284
    sw r1 r0 30280
    sw r1 r0 30276
    sw r1 r0 30272
    sw r1 r0 30268
    sw r1 r0 30264
    sw r1 r0 30260
    sw r1 r0 30256
    sw r1 r0 30252
    sw r1 r0 30248
    sw r1 r0 30244
    sw r1 r0 30240
    sw r1 r0 30236
    sw r1 r0 30232
    sw r1 r0 30228
    sw r1 r0 30224
    sw r1 r0 30220
    sw r1 r0 30216
    sw r1 r0 30212
    sw r1 r0 30208
    sw r1 r0 30204
    sw r1 r0 30200
    sw r1 r0 30196
    sw r1 r0 30192
    sw r1 r0 30188
    sw r1 r0 30184
    sw r1 r0 30180
    sw r1 r0 30176
    sw r1 r0 30172
    sw r1 r0 30168
    sw r1 r0 30164
    sw r1 r0 30160
    sw r1 r0 30156
    sw r1 r0 30152
    sw r1 r0 30148
    sw r1 r0 30144
    sw r1 r0 30140
    sw r1 r0 30136
    sw r1 r0 30132
    sw r1 r0 30128
    sw r1 r0 30124
    sw r1 r0 30120
    sw r1 r0 30116
    sw r1 r0 30112
    sw r1 r0 30108
    sw r1 r0 30104
    sw r1 r0 30100
    sw r1 r0 30096
    sw r1 r0 30092
    sw r1 r0 30088
    sw r1 r0 30084
    sw r1 r0 30080
    sw r1 r0 30076
    sw r1 r0 30072
    sw r1 r0 30068
    sw r1 r0 30064
    sw r1 r0 30060
    sw r1 r0 30056
    sw r1 r0 30052
    sw r1 r0 30048
    #0.0
    flui f0 0
    swcZ f0 r0 30296
    swcZ f0 r0 30292
    swcZ f0 r0 30288
    #0.0
    flui f0 0
    swcZ f0 r0 30308
    swcZ f0 r0 30304
    swcZ f0 r0 30300
    #0.0
    flui f0 0
    swcZ f0 r0 30320
    swcZ f0 r0 30316
    swcZ f0 r0 30312
    #255.0
    flui f0 17279
    swcZ f0 r0 30324
    addi r1 r0 -1
    sw r1 r0 30328
    addi r1 r0 30328
    sw r1 r0 30528
    sw r1 r0 30524
    sw r1 r0 30520
    sw r1 r0 30516
    sw r1 r0 30512
    sw r1 r0 30508
    sw r1 r0 30504
    sw r1 r0 30500
    sw r1 r0 30496
    sw r1 r0 30492
    sw r1 r0 30488
    sw r1 r0 30484
    sw r1 r0 30480
    sw r1 r0 30476
    sw r1 r0 30472
    sw r1 r0 30468
    sw r1 r0 30464
    sw r1 r0 30460
    sw r1 r0 30456
    sw r1 r0 30452
    sw r1 r0 30448
    sw r1 r0 30444
    sw r1 r0 30440
    sw r1 r0 30436
    sw r1 r0 30432
    sw r1 r0 30428
    sw r1 r0 30424
    sw r1 r0 30420
    sw r1 r0 30416
    sw r1 r0 30412
    sw r1 r0 30408
    sw r1 r0 30404
    sw r1 r0 30400
    sw r1 r0 30396
    sw r1 r0 30392
    sw r1 r0 30388
    sw r1 r0 30384
    sw r1 r0 30380
    sw r1 r0 30376
    sw r1 r0 30372
    sw r1 r0 30368
    sw r1 r0 30364
    sw r1 r0 30360
    sw r1 r0 30356
    sw r1 r0 30352
    sw r1 r0 30348
    sw r1 r0 30344
    sw r1 r0 30340
    sw r1 r0 30336
    sw r1 r0 30332
    lw r1 r0 30332
    sw r1 r0 30532
    addi r1 r0 30532
    sw r1 r0 30536
    #0.0
    flui f0 0
    swcZ f0 r0 30540
    sw r0 r0 30544
    #1000000000.0
    flui f0 20078
    fori f0 f0 27432
    swcZ f0 r0 30548
    #0.0
    flui f0 0
    swcZ f0 r0 30560
    swcZ f0 r0 30556
    swcZ f0 r0 30552
    sw r0 r0 30564
    #0.0
    flui f0 0
    swcZ f0 r0 30576
    swcZ f0 r0 30572
    swcZ f0 r0 30568
    #0.0
    flui f0 0
    swcZ f0 r0 30588
    swcZ f0 r0 30584
    swcZ f0 r0 30580
    #0.0
    flui f0 0
    swcZ f0 r0 30600
    swcZ f0 r0 30596
    swcZ f0 r0 30592
    #0.0
    flui f0 0
    swcZ f0 r0 30612
    swcZ f0 r0 30608
    swcZ f0 r0 30604
    sw r0 r0 30620
    sw r0 r0 30616
    sw r0 r0 30628
    sw r0 r0 30624
    #0.0
    flui f0 0
    swcZ f0 r0 30632
    #0.0
    flui f0 0
    swcZ f0 r0 30644
    swcZ f0 r0 30640
    swcZ f0 r0 30636
    #0.0
    flui f0 0
    swcZ f0 r0 30656
    swcZ f0 r0 30652
    swcZ f0 r0 30648
    #0.0
    flui f0 0
    swcZ f0 r0 30668
    swcZ f0 r0 30664
    swcZ f0 r0 30660
    #0.0
    flui f0 0
    swcZ f0 r0 30680
    swcZ f0 r0 30676
    swcZ f0 r0 30672
    #0.0
    flui f0 0
    swcZ f0 r0 30692
    swcZ f0 r0 30688
    swcZ f0 r0 30684
    #0.0
    flui f0 0
    swcZ f0 r0 30704
    swcZ f0 r0 30700
    swcZ f0 r0 30696
    #0.0
    flui f0 0
    addi r1 r0 30708
    addi r2 r0 30708
    sw r2 r0 30712
    sw r1 r0 30708
    addi r1 r0 30716
    sw r1 r0 30732
    sw r1 r0 30728
    sw r1 r0 30724
    sw r1 r0 30720
    sw r1 r0 30716
    #0.0
    flui f0 0
    addi r1 r0 30736
    #0.0
    flui f0 0
    swcZ f0 r0 30744
    swcZ f0 r0 30740
    swcZ f0 r0 30736
    addi r2 r0 30736
    sw r1 r0 30984
    sw r1 r0 30980
    sw r1 r0 30976
    sw r1 r0 30972
    sw r1 r0 30968
    sw r1 r0 30964
    sw r1 r0 30960
    sw r1 r0 30956
    sw r1 r0 30952
    sw r1 r0 30948
    sw r1 r0 30944
    sw r1 r0 30940
    sw r1 r0 30936
    sw r1 r0 30932
    sw r1 r0 30928
    sw r1 r0 30924
    sw r1 r0 30920
    sw r1 r0 30916
    sw r1 r0 30912
    sw r1 r0 30908
    sw r1 r0 30904
    sw r1 r0 30900
    sw r1 r0 30896
    sw r1 r0 30892
    sw r1 r0 30888
    sw r1 r0 30884
    sw r1 r0 30880
    sw r1 r0 30876
    sw r1 r0 30872
    sw r1 r0 30868
    sw r1 r0 30864
    sw r1 r0 30860
    sw r1 r0 30856
    sw r1 r0 30852
    sw r1 r0 30848
    sw r1 r0 30844
    sw r1 r0 30840
    sw r1 r0 30836
    sw r1 r0 30832
    sw r1 r0 30828
    sw r1 r0 30824
    sw r1 r0 30820
    sw r1 r0 30816
    sw r1 r0 30812
    sw r1 r0 30808
    sw r1 r0 30804
    sw r1 r0 30800
    sw r1 r0 30796
    sw r1 r0 30792
    sw r1 r0 30788
    sw r1 r0 30784
    sw r1 r0 30780
    sw r1 r0 30776
    sw r1 r0 30772
    sw r1 r0 30768
    sw r1 r0 30764
    sw r1 r0 30760
    sw r1 r0 30756
    sw r1 r0 30752
    sw r1 r0 30748
    addi r1 r0 30748
    sw r1 r0 30992
    sw r2 r0 30988
    addi r1 r0 30988
    #0.0
    flui f0 0
    addi r2 r0 30996
    addi r3 r0 30996
    sw r3 r0 31000
    sw r2 r0 30996
    addi r2 r0 30996
    #0.0
    flui f0 0
    swcZ f0 r0 31012
    sw r2 r0 31008
    sw r0 r0 31004
    addi r2 r0 31004
    sw r2 r0 31732
    sw r2 r0 31728
    sw r2 r0 31724
    sw r2 r0 31720
    sw r2 r0 31716
    sw r2 r0 31712
    sw r2 r0 31708
    sw r2 r0 31704
    sw r2 r0 31700
    sw r2 r0 31696
    sw r2 r0 31692
    sw r2 r0 31688
    sw r2 r0 31684
    sw r2 r0 31680
    sw r2 r0 31676
    sw r2 r0 31672
    sw r2 r0 31668
    sw r2 r0 31664
    sw r2 r0 31660
    sw r2 r0 31656
    sw r2 r0 31652
    sw r2 r0 31648
    sw r2 r0 31644
    sw r2 r0 31640
    sw r2 r0 31636
    sw r2 r0 31632
    sw r2 r0 31628
    sw r2 r0 31624
    sw r2 r0 31620
    sw r2 r0 31616
    sw r2 r0 31612
    sw r2 r0 31608
    sw r2 r0 31604
    sw r2 r0 31600
    sw r2 r0 31596
    sw r2 r0 31592
    sw r2 r0 31588
    sw r2 r0 31584
    sw r2 r0 31580
    sw r2 r0 31576
    sw r2 r0 31572
    sw r2 r0 31568
    sw r2 r0 31564
    sw r2 r0 31560
    sw r2 r0 31556
    sw r2 r0 31552
    sw r2 r0 31548
    sw r2 r0 31544
    sw r2 r0 31540
    sw r2 r0 31536
    sw r2 r0 31532
    sw r2 r0 31528
    sw r2 r0 31524
    sw r2 r0 31520
    sw r2 r0 31516
    sw r2 r0 31512
    sw r2 r0 31508
    sw r2 r0 31504
    sw r2 r0 31500
    sw r2 r0 31496
    sw r2 r0 31492
    sw r2 r0 31488
    sw r2 r0 31484
    sw r2 r0 31480
    sw r2 r0 31476
    sw r2 r0 31472
    sw r2 r0 31468
    sw r2 r0 31464
    sw r2 r0 31460
    sw r2 r0 31456
    sw r2 r0 31452
    sw r2 r0 31448
    sw r2 r0 31444
    sw r2 r0 31440
    sw r2 r0 31436
    sw r2 r0 31432
    sw r2 r0 31428
    sw r2 r0 31424
    sw r2 r0 31420
    sw r2 r0 31416
    sw r2 r0 31412
    sw r2 r0 31408
    sw r2 r0 31404
    sw r2 r0 31400
    sw r2 r0 31396
    sw r2 r0 31392
    sw r2 r0 31388
    sw r2 r0 31384
    sw r2 r0 31380
    sw r2 r0 31376
    sw r2 r0 31372
    sw r2 r0 31368
    sw r2 r0 31364
    sw r2 r0 31360
    sw r2 r0 31356
    sw r2 r0 31352
    sw r2 r0 31348
    sw r2 r0 31344
    sw r2 r0 31340
    sw r2 r0 31336
    sw r2 r0 31332
    sw r2 r0 31328
    sw r2 r0 31324
    sw r2 r0 31320
    sw r2 r0 31316
    sw r2 r0 31312
    sw r2 r0 31308
    sw r2 r0 31304
    sw r2 r0 31300
    sw r2 r0 31296
    sw r2 r0 31292
    sw r2 r0 31288
    sw r2 r0 31284
    sw r2 r0 31280
    sw r2 r0 31276
    sw r2 r0 31272
    sw r2 r0 31268
    sw r2 r0 31264
    sw r2 r0 31260
    sw r2 r0 31256
    sw r2 r0 31252
    sw r2 r0 31248
    sw r2 r0 31244
    sw r2 r0 31240
    sw r2 r0 31236
    sw r2 r0 31232
    sw r2 r0 31228
    sw r2 r0 31224
    sw r2 r0 31220
    sw r2 r0 31216
    sw r2 r0 31212
    sw r2 r0 31208
    sw r2 r0 31204
    sw r2 r0 31200
    sw r2 r0 31196
    sw r2 r0 31192
    sw r2 r0 31188
    sw r2 r0 31184
    sw r2 r0 31180
    sw r2 r0 31176
    sw r2 r0 31172
    sw r2 r0 31168
    sw r2 r0 31164
    sw r2 r0 31160
    sw r2 r0 31156
    sw r2 r0 31152
    sw r2 r0 31148
    sw r2 r0 31144
    sw r2 r0 31140
    sw r2 r0 31136
    sw r2 r0 31132
    sw r2 r0 31128
    sw r2 r0 31124
    sw r2 r0 31120
    sw r2 r0 31116
    sw r2 r0 31112
    sw r2 r0 31108
    sw r2 r0 31104
    sw r2 r0 31100
    sw r2 r0 31096
    sw r2 r0 31092
    sw r2 r0 31088
    sw r2 r0 31084
    sw r2 r0 31080
    sw r2 r0 31076
    sw r2 r0 31072
    sw r2 r0 31068
    sw r2 r0 31064
    sw r2 r0 31060
    sw r2 r0 31056
    sw r2 r0 31052
    sw r2 r0 31048
    sw r2 r0 31044
    sw r2 r0 31040
    sw r2 r0 31036
    sw r2 r0 31032
    sw r2 r0 31028
    sw r2 r0 31024
    sw r2 r0 31020
    sw r2 r0 31016
    sw r0 r0 31736
    addi r2 r0 128
    addi r3 r0 128
    sw r2 r0 30616
    sw r3 r0 30620
    addi r3 r0 64
    sw r3 r0 30624
    addi r3 r0 64
    sw r3 r0 30628
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
    swcZ f0 r0 30632
    lw r2 r0 30616
    #0.0
    flui f0 0
    swcZ f0 r0 31748
    swcZ f0 r0 31744
    swcZ f0 r0 31740
    addi r3 r0 31740
    #0.0
    flui f0 0
    swcZ f0 r0 31760
    swcZ f0 r0 31756
    swcZ f0 r0 31752
    addi r4 r0 31752
    sw r4 r0 31780
    sw r4 r0 31776
    sw r4 r0 31772
    sw r4 r0 31768
    sw r4 r0 31764
    addi r4 r0 31764
    #0.0
    flui f0 0
    swcZ f0 r0 31792
    swcZ f0 r0 31788
    swcZ f0 r0 31784
    addi r5 r0 31784
    sw r5 r0 31768
    #0.0
    flui f0 0
    swcZ f0 r0 31804
    swcZ f0 r0 31800
    swcZ f0 r0 31796
    addi r5 r0 31796
    sw r5 r0 31772
    #0.0
    flui f0 0
    swcZ f0 r0 31816
    swcZ f0 r0 31812
    swcZ f0 r0 31808
    addi r5 r0 31808
    sw r5 r0 31776
    #0.0
    flui f0 0
    swcZ f0 r0 31828
    swcZ f0 r0 31824
    swcZ f0 r0 31820
    addi r5 r0 31820
    sw r5 r0 31780
    sw r0 r0 31848
    sw r0 r0 31844
    sw r0 r0 31840
    sw r0 r0 31836
    sw r0 r0 31832
    addi r5 r0 31832
    sw r0 r0 31868
    sw r0 r0 31864
    sw r0 r0 31860
    sw r0 r0 31856
    sw r0 r0 31852
    addi r6 r0 31852
    #0.0
    flui f0 0
    swcZ f0 r0 31880
    swcZ f0 r0 31876
    swcZ f0 r0 31872
    addi r7 r0 31872
    sw r7 r0 31900
    sw r7 r0 31896
    sw r7 r0 31892
    sw r7 r0 31888
    sw r7 r0 31884
    addi r7 r0 31884
    #0.0
    flui f0 0
    swcZ f0 r0 31912
    swcZ f0 r0 31908
    swcZ f0 r0 31904
    addi r8 r0 31904
    sw r8 r0 31888
    #0.0
    flui f0 0
    swcZ f0 r0 31924
    swcZ f0 r0 31920
    swcZ f0 r0 31916
    addi r8 r0 31916
    sw r8 r0 31892
    #0.0
    flui f0 0
    swcZ f0 r0 31936
    swcZ f0 r0 31932
    swcZ f0 r0 31928
    addi r8 r0 31928
    sw r8 r0 31896
    #0.0
    flui f0 0
    swcZ f0 r0 31948
    swcZ f0 r0 31944
    swcZ f0 r0 31940
    addi r8 r0 31940
    sw r8 r0 31900
    #0.0
    flui f0 0
    swcZ f0 r0 31960
    swcZ f0 r0 31956
    swcZ f0 r0 31952
    addi r8 r0 31952
    sw r8 r0 31980
    sw r8 r0 31976
    sw r8 r0 31972
    sw r8 r0 31968
    sw r8 r0 31964
    addi r8 r0 31964
    #0.0
    flui f0 0
    swcZ f0 r0 31992
    swcZ f0 r0 31988
    swcZ f0 r0 31984
    addi r9 r0 31984
    sw r9 r0 31968
    #0.0
    flui f0 0
    swcZ f0 r0 32004
    swcZ f0 r0 32000
    swcZ f0 r0 31996
    addi r9 r0 31996
    sw r9 r0 31972
    #0.0
    flui f0 0
    swcZ f0 r0 32016
    swcZ f0 r0 32012
    swcZ f0 r0 32008
    addi r9 r0 32008
    sw r9 r0 31976
    #0.0
    flui f0 0
    swcZ f0 r0 32028
    swcZ f0 r0 32024
    swcZ f0 r0 32020
    addi r9 r0 32020
    sw r9 r0 31980
    sw r0 r0 32032
    addi r9 r0 32032
    #0.0
    flui f0 0
    swcZ f0 r0 32044
    swcZ f0 r0 32040
    swcZ f0 r0 32036
    addi r10 r0 32036
    sw r10 r0 32064
    sw r10 r0 32060
    sw r10 r0 32056
    sw r10 r0 32052
    sw r10 r0 32048
    addi r10 r0 32048
    #0.0
    flui f0 0
    swcZ f0 r0 32076
    swcZ f0 r0 32072
    swcZ f0 r0 32068
    addi r11 r0 32068
    sw r11 r0 32052
    #0.0
    flui f0 0
    swcZ f0 r0 32088
    swcZ f0 r0 32084
    swcZ f0 r0 32080
    addi r11 r0 32080
    sw r11 r0 32056
    #0.0
    flui f0 0
    swcZ f0 r0 32100
    swcZ f0 r0 32096
    swcZ f0 r0 32092
    addi r11 r0 32092
    sw r11 r0 32060
    #0.0
    flui f0 0
    swcZ f0 r0 32112
    swcZ f0 r0 32108
    swcZ f0 r0 32104
    addi r11 r0 32104
    sw r11 r0 32064
    sw r10 r0 32144
    sw r9 r0 32140
    sw r8 r0 32136
    sw r7 r0 32132
    sw r6 r0 32128
    sw r5 r0 32124
    sw r4 r0 32120
    sw r3 r0 32116
    addi r3 r0 32116
    beq r0 r2 arrayexit.90941
    sll r28 r2  2
arrayloop.90940:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90940
    sll r28 r2  2
    mv r2 r30
    add r30 r30 r28
arrayexit.90941:
    lw r3 r0 30616
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
    lw r2 r0 30616
    #0.0
    flui f0 0
    swcZ f0 r0 32156
    swcZ f0 r0 32152
    swcZ f0 r0 32148
    addi r3 r0 32148
    #0.0
    flui f0 0
    swcZ f0 r0 32168
    swcZ f0 r0 32164
    swcZ f0 r0 32160
    addi r4 r0 32160
    sw r4 r0 32188
    sw r4 r0 32184
    sw r4 r0 32180
    sw r4 r0 32176
    sw r4 r0 32172
    addi r4 r0 32172
    #0.0
    flui f0 0
    swcZ f0 r0 32200
    swcZ f0 r0 32196
    swcZ f0 r0 32192
    addi r5 r0 32192
    sw r5 r0 32176
    #0.0
    flui f0 0
    swcZ f0 r0 32212
    swcZ f0 r0 32208
    swcZ f0 r0 32204
    addi r5 r0 32204
    sw r5 r0 32180
    #0.0
    flui f0 0
    swcZ f0 r0 32224
    swcZ f0 r0 32220
    swcZ f0 r0 32216
    addi r5 r0 32216
    sw r5 r0 32184
    #0.0
    flui f0 0
    swcZ f0 r0 32236
    swcZ f0 r0 32232
    swcZ f0 r0 32228
    addi r5 r0 32228
    sw r5 r0 32188
    sw r0 r0 32256
    sw r0 r0 32252
    sw r0 r0 32248
    sw r0 r0 32244
    sw r0 r0 32240
    addi r5 r0 32240
    sw r0 r0 32276
    sw r0 r0 32272
    sw r0 r0 32268
    sw r0 r0 32264
    sw r0 r0 32260
    addi r6 r0 32260
    #0.0
    flui f0 0
    swcZ f0 r0 32288
    swcZ f0 r0 32284
    swcZ f0 r0 32280
    addi r7 r0 32280
    sw r7 r0 32308
    sw r7 r0 32304
    sw r7 r0 32300
    sw r7 r0 32296
    sw r7 r0 32292
    addi r7 r0 32292
    #0.0
    flui f0 0
    swcZ f0 r0 32320
    swcZ f0 r0 32316
    swcZ f0 r0 32312
    addi r8 r0 32312
    sw r8 r0 32296
    #0.0
    flui f0 0
    swcZ f0 r0 32332
    swcZ f0 r0 32328
    swcZ f0 r0 32324
    addi r8 r0 32324
    sw r8 r0 32300
    #0.0
    flui f0 0
    swcZ f0 r0 32344
    swcZ f0 r0 32340
    swcZ f0 r0 32336
    addi r8 r0 32336
    sw r8 r0 32304
    #0.0
    flui f0 0
    swcZ f0 r0 32356
    swcZ f0 r0 32352
    swcZ f0 r0 32348
    addi r8 r0 32348
    sw r8 r0 32308
    #0.0
    flui f0 0
    swcZ f0 r0 32368
    swcZ f0 r0 32364
    swcZ f0 r0 32360
    addi r8 r0 32360
    sw r8 r0 32388
    sw r8 r0 32384
    sw r8 r0 32380
    sw r8 r0 32376
    sw r8 r0 32372
    addi r8 r0 32372
    #0.0
    flui f0 0
    swcZ f0 r0 32400
    swcZ f0 r0 32396
    swcZ f0 r0 32392
    addi r9 r0 32392
    sw r9 r0 32376
    #0.0
    flui f0 0
    swcZ f0 r0 32412
    swcZ f0 r0 32408
    swcZ f0 r0 32404
    addi r9 r0 32404
    sw r9 r0 32380
    #0.0
    flui f0 0
    swcZ f0 r0 32424
    swcZ f0 r0 32420
    swcZ f0 r0 32416
    addi r9 r0 32416
    sw r9 r0 32384
    #0.0
    flui f0 0
    swcZ f0 r0 32436
    swcZ f0 r0 32432
    swcZ f0 r0 32428
    addi r9 r0 32428
    sw r9 r0 32388
    sw r0 r0 32440
    addi r9 r0 32440
    #0.0
    flui f0 0
    swcZ f0 r0 32452
    swcZ f0 r0 32448
    swcZ f0 r0 32444
    addi r10 r0 32444
    sw r10 r0 32472
    sw r10 r0 32468
    sw r10 r0 32464
    sw r10 r0 32460
    sw r10 r0 32456
    addi r10 r0 32456
    #0.0
    flui f0 0
    swcZ f0 r0 32484
    swcZ f0 r0 32480
    swcZ f0 r0 32476
    addi r11 r0 32476
    sw r11 r0 32460
    #0.0
    flui f0 0
    swcZ f0 r0 32496
    swcZ f0 r0 32492
    swcZ f0 r0 32488
    addi r11 r0 32488
    sw r11 r0 32464
    #0.0
    flui f0 0
    swcZ f0 r0 32508
    swcZ f0 r0 32504
    swcZ f0 r0 32500
    addi r11 r0 32500
    sw r11 r0 32468
    #0.0
    flui f0 0
    swcZ f0 r0 32520
    swcZ f0 r0 32516
    swcZ f0 r0 32512
    addi r11 r0 32512
    sw r11 r0 32472
    sw r10 r0 32552
    sw r9 r0 32548
    sw r8 r0 32544
    sw r7 r0 32540
    sw r6 r0 32536
    sw r5 r0 32532
    sw r4 r0 32528
    sw r3 r0 32524
    addi r3 r0 32524
    beq r0 r2 arrayexit.90943
    sll r28 r2  2
arrayloop.90942:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90942
    sll r28 r2  2
    mv r2 r30
    add r30 r30 r28
arrayexit.90943:
    lw r3 r0 30616
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
    lw r2 r0 30616
    #0.0
    flui f0 0
    swcZ f0 r0 32564
    swcZ f0 r0 32560
    swcZ f0 r0 32556
    addi r3 r0 32556
    #0.0
    flui f0 0
    swcZ f0 r0 32576
    swcZ f0 r0 32572
    swcZ f0 r0 32568
    addi r4 r0 32568
    sw r4 r0 32596
    sw r4 r0 32592
    sw r4 r0 32588
    sw r4 r0 32584
    sw r4 r0 32580
    addi r4 r0 32580
    #0.0
    flui f0 0
    swcZ f0 r0 32608
    swcZ f0 r0 32604
    swcZ f0 r0 32600
    addi r5 r0 32600
    sw r5 r0 32584
    #0.0
    flui f0 0
    swcZ f0 r0 32620
    swcZ f0 r0 32616
    swcZ f0 r0 32612
    addi r5 r0 32612
    sw r5 r0 32588
    #0.0
    flui f0 0
    swcZ f0 r0 32632
    swcZ f0 r0 32628
    swcZ f0 r0 32624
    addi r5 r0 32624
    sw r5 r0 32592
    #0.0
    flui f0 0
    swcZ f0 r0 32644
    swcZ f0 r0 32640
    swcZ f0 r0 32636
    addi r5 r0 32636
    sw r5 r0 32596
    sw r0 r0 32664
    sw r0 r0 32660
    sw r0 r0 32656
    sw r0 r0 32652
    sw r0 r0 32648
    addi r5 r0 32648
    sw r0 r0 32684
    sw r0 r0 32680
    sw r0 r0 32676
    sw r0 r0 32672
    sw r0 r0 32668
    addi r6 r0 32668
    #0.0
    flui f0 0
    swcZ f0 r0 32696
    swcZ f0 r0 32692
    swcZ f0 r0 32688
    addi r7 r0 32688
    sw r7 r0 32716
    sw r7 r0 32712
    sw r7 r0 32708
    sw r7 r0 32704
    sw r7 r0 32700
    addi r7 r0 32700
    #0.0
    flui f0 0
    swcZ f0 r0 32728
    swcZ f0 r0 32724
    swcZ f0 r0 32720
    addi r8 r0 32720
    sw r8 r0 32704
    #0.0
    flui f0 0
    swcZ f0 r0 32740
    swcZ f0 r0 32736
    swcZ f0 r0 32732
    addi r8 r0 32732
    sw r8 r0 32708
    #0.0
    flui f0 0
    swcZ f0 r0 32752
    swcZ f0 r0 32748
    swcZ f0 r0 32744
    addi r8 r0 32744
    sw r8 r0 32712
    #0.0
    flui f0 0
    swcZ f0 r0 32764
    swcZ f0 r0 32760
    swcZ f0 r0 32756
    addi r8 r0 32756
    sw r8 r0 32716
    #0.0
    flui f0 0
    #32768
    lui r8 0
    ori r8 r8 32768
    swcZ f0 r8 8
    swcZ f0 r8 4
    swcZ f0 r8 0
    #32768
    lui r8 0
    ori r8 r8 32768
    #32780
    lui r9 0
    ori r9 r9 32780
    sw r8 r9 16
    sw r8 r9 12
    sw r8 r9 8
    sw r8 r9 4
    sw r8 r9 0
    #32780
    lui r8 0
    ori r8 r8 32780
    #0.0
    flui f0 0
    #32800
    lui r9 0
    ori r9 r9 32800
    swcZ f0 r9 8
    swcZ f0 r9 4
    swcZ f0 r9 0
    #32800
    lui r9 0
    ori r9 r9 32800
    sw r9 r8 4
    #0.0
    flui f0 0
    #32812
    lui r9 0
    ori r9 r9 32812
    swcZ f0 r9 8
    swcZ f0 r9 4
    swcZ f0 r9 0
    #32812
    lui r9 0
    ori r9 r9 32812
    sw r9 r8 8
    #0.0
    flui f0 0
    #32824
    lui r9 0
    ori r9 r9 32824
    swcZ f0 r9 8
    swcZ f0 r9 4
    swcZ f0 r9 0
    #32824
    lui r9 0
    ori r9 r9 32824
    sw r9 r8 12
    #0.0
    flui f0 0
    #32836
    lui r9 0
    ori r9 r9 32836
    swcZ f0 r9 8
    swcZ f0 r9 4
    swcZ f0 r9 0
    #32836
    lui r9 0
    ori r9 r9 32836
    sw r9 r8 16
    #32848
    lui r9 0
    ori r9 r9 32848
    sw r0 r9 0
    #32848
    lui r9 0
    ori r9 r9 32848
    #0.0
    flui f0 0
    #32852
    lui r10 0
    ori r10 r10 32852
    swcZ f0 r10 8
    swcZ f0 r10 4
    swcZ f0 r10 0
    #32852
    lui r10 0
    ori r10 r10 32852
    #32864
    lui r11 0
    ori r11 r11 32864
    sw r10 r11 16
    sw r10 r11 12
    sw r10 r11 8
    sw r10 r11 4
    sw r10 r11 0
    #32864
    lui r10 0
    ori r10 r10 32864
    #0.0
    flui f0 0
    #32884
    lui r11 0
    ori r11 r11 32884
    swcZ f0 r11 8
    swcZ f0 r11 4
    swcZ f0 r11 0
    #32884
    lui r11 0
    ori r11 r11 32884
    sw r11 r10 4
    #0.0
    flui f0 0
    #32896
    lui r11 0
    ori r11 r11 32896
    swcZ f0 r11 8
    swcZ f0 r11 4
    swcZ f0 r11 0
    #32896
    lui r11 0
    ori r11 r11 32896
    sw r11 r10 8
    #0.0
    flui f0 0
    #32908
    lui r11 0
    ori r11 r11 32908
    swcZ f0 r11 8
    swcZ f0 r11 4
    swcZ f0 r11 0
    #32908
    lui r11 0
    ori r11 r11 32908
    sw r11 r10 12
    #0.0
    flui f0 0
    #32920
    lui r11 0
    ori r11 r11 32920
    swcZ f0 r11 8
    swcZ f0 r11 4
    swcZ f0 r11 0
    #32920
    lui r11 0
    ori r11 r11 32920
    sw r11 r10 16
    #32932
    lui r11 0
    ori r11 r11 32932
    sw r10 r11 28
    sw r9 r11 24
    sw r8 r11 20
    sw r7 r11 16
    sw r6 r11 12
    sw r5 r11 8
    sw r4 r11 4
    sw r3 r11 0
    #32932
    lui r3 0
    ori r3 r3 32932
    beq r0 r2 arrayexit.90945
    sll r28 r2  2
arrayloop.90944:
    subi r28 r28 4
    swab r3 r30 r28
    bne r0 r28 arrayloop.90944
    sll r28 r2  2
    mv r2 r30
    add r30 r30 r28
arrayexit.90945:
    lw r3 r0 30616
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
    swcZ f0 r0 30288
    inflt f0
    swcZ f0 r0 30292
    inflt f0
    swcZ f0 r0 30296
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
    swcZ f4 r0 30684
    #-200.0
    flui f4 -15544
    fmul f4 f0 f4
    swcZ f4 r0 30688
    fmul f4 f1 f3
    #200.0
    flui f5 17224
    fmul f4 f4 f5
    swcZ f4 r0 30692
    swcZ f3 r0 30660
    #0.0
    flui f4 0
    swcZ f4 r0 30664
    fneg f4 f2
    swcZ f4 r0 30668
    fneg f4 f0
    fmul f2 f4 f2
    swcZ f2 r0 30672
    fneg f1 f1
    swcZ f1 r0 30676
    fneg f0 f0
    fmul f0 f0 f3
    swcZ f0 r0 30680
    lwcZ f0 r0 30288
    lwcZ f1 r0 30684
    fsub f0 f0 f1
    swcZ f0 r0 30300
    lwcZ f0 r0 30292
    lwcZ f1 r0 30688
    fsub f0 f0 f1
    swcZ f0 r0 30304
    lwcZ f0 r0 30296
    lwcZ f1 r0 30692
    fsub f0 f0 f1
    swcZ f0 r0 30308
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
    swcZ f1 r0 30316
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
    swcZ f2 r0 30312
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
    swcZ f0 r0 30320
    inflt f0
    swcZ f0 r0 30324
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
    sw r1 r0 30332
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
    sw r1 r0 30536
    out r0 80
    out r0 54
    out r0 10
    lw r1 r0 30616
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
    lw r1 r0 30620
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
    lw r2 r0 30000
    beq r0 r2 arrayexit.90947
    sll r28 r2  2
arrayloop.90946:
    subi r28 r28 4
    swab r1 r30 r28
    bne r0 r28 arrayloop.90946
    sll r28 r2  2
    mv r2 r30
    add r30 r30 r28
arrayexit.90947:
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
    sw r1 r0 30732
    lw r1 r0 30732
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
    lw r1 r0 30732
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
    lw r1 r0 30988
    lwcZ f0 r0 30312
    swcZ f0 r1 0
    lwcZ f0 r0 30316
    swcZ f0 r1 4
    lwcZ f0 r0 30320
    swcZ f0 r1 8
    lw r1 r0 30000
    subi r1 r1 1
    blt r1 r0 block_194
block_193:
    sll r2 r1 2
    lw r2 r2 30048
    lw r3 r0 30992
    lw r4 r0 30988
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
    lw r1 r0 30000
    subi r1 r1 1
    blt r1 r0 block_259
block_258:
    sll r2 r1 2
    lw r2 r2 30048
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
    lw r3 r0 31736
    #1.0
    flui f0 16256
    lw r4 r2 28
    lwcZ f1 r4 0
    fsub f0 f0 f1
    lw r4 r2 16
    lwcZ f1 r0 30312
    lwcZ f2 r4 0
    fmul f1 f1 f2
    lwcZ f2 r0 30316
    lwcZ f3 r4 4
    fmul f2 f2 f3
    fadd f1 f1 f2
    lwcZ f2 r0 30320
    lwcZ f3 r4 8
    fmul f2 f2 f3
    fadd f1 f1 f2
    #2.0
    flui f2 16384
    lw r4 r2 16
    lwcZ f3 r4 0
    fmul f2 f2 f3
    fmul f2 f2 f1
    lwcZ f3 r0 30312
    fsub f2 f2 f3
    #2.0
    flui f3 16384
    lw r4 r2 16
    lwcZ f4 r4 4
    fmul f3 f3 f4
    fmul f3 f3 f1
    lwcZ f4 r0 30316
    fsub f3 f3 f4
    #2.0
    flui f4 16384
    lw r2 r2 16
    lwcZ f5 r2 8
    fmul f4 f4 f5
    fmul f1 f4 f1
    lwcZ f4 r0 30320
    fsub f1 f1 f4
    #0.0
    flui f4 0
    swcZ f4 r30 0
    swcZ f4 r30 4
    swcZ f4 r30 8
    mv r2 r30
    addi r30 r30 12
    lw r4 r0 30000
    beq r0 r4 arrayexit.90949
    sll r28 r4  2
arrayloop.90948:
    subi r28 r28 4
    swab r2 r30 r28
    bne r0 r28 arrayloop.90948
    sll r28 r4  2
    mv r4 r30
    add r30 r30 r28
arrayexit.90949:
    mv r5 r30
    addi r30 r30 8
    sw r4 r5 4
    sw r2 r5 0
    mv r2 r5
    lw r4 r2 0
    swcZ f2 r4 0
    swcZ f3 r4 4
    swcZ f1 r4 8
    lw r4 r0 30000
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
    sw r1 r3 31016
    addi r1 r2 1
    sw r1 r0 31736
    j block_260
block_266:
    sll r1 r1 2
    lw r3 r0 31736
    #1.0
    flui f0 16256
    lw r2 r2 28
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30312
    fneg f1 f1
    lwcZ f2 r0 30316
    fneg f2 f2
    lwcZ f3 r0 30320
    fneg f3 f3
    addi r2 r1 1
    lwcZ f4 r0 30312
    #0.0
    flui f5 0
    swcZ f5 r30 0
    swcZ f5 r30 4
    swcZ f5 r30 8
    mv r4 r30
    addi r30 r30 12
    lw r5 r0 30000
    beq r0 r5 arrayexit.90951
    sll r28 r5  2
arrayloop.90950:
    subi r28 r28 4
    swab r4 r30 r28
    bne r0 r28 arrayloop.90950
    sll r28 r5  2
    mv r5 r30
    add r30 r30 r28
arrayexit.90951:
    mv r6 r30
    addi r30 r30 8
    sw r5 r6 4
    sw r4 r6 0
    mv r4 r6
    lw r5 r4 0
    swcZ f4 r5 0
    swcZ f2 r5 4
    swcZ f3 r5 8
    lw r5 r0 30000
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
    sw r1 r3 31016
    addi r1 r2 1
    lw r3 r29 84
    addi r4 r3 2
    lwcZ f1 r0 30316
    #0.0
    flui f2 0
    swcZ f2 r30 0
    swcZ f2 r30 4
    swcZ f2 r30 8
    mv r5 r30
    addi r30 r30 12
    lw r6 r0 30000
    beq r0 r6 arrayexit.90953
    sll r28 r6  2
arrayloop.90952:
    subi r28 r28 4
    swab r5 r30 r28
    bne r0 r28 arrayloop.90952
    sll r28 r6  2
    mv r6 r30
    add r30 r30 r28
arrayexit.90953:
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
    lw r6 r0 30000
    subi r6 r6 1
    sw r5 r29 36
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
    sw r1 r2 31016
    lw r1 r29 72
    addi r2 r1 2
    lw r3 r29 84
    addi r3 r3 3
    lwcZ f1 r0 30320
    #0.0
    flui f2 0
    swcZ f2 r30 0
    swcZ f2 r30 4
    swcZ f2 r30 8
    mv r4 r30
    addi r30 r30 12
    lw r5 r0 30000
    beq r0 r5 arrayexit.90955
    sll r28 r5  2
arrayloop.90954:
    subi r28 r28 4
    swab r4 r30 r28
    bne r0 r28 arrayloop.90954
    sll r28 r5  2
    mv r5 r30
    add r30 r30 r28
arrayexit.90955:
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
    lw r5 r0 30000
    subi r5 r5 1
    sw r4 r29 40
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
    sw r1 r2 31016
    lw r1 r29 72
    addi r1 r1 3
    sw r1 r0 31736
    j block_260
block_259:
    j block_260
block_260:
    lwcZ f0 r0 30632
    lw r1 r0 30628
    sub r1 r0 r1
    itof f1 r1
    fmul f0 f0 f1
    lwcZ f1 r0 30672
    fmul f1 f0 f1
    lwcZ f2 r0 30684
    fadd f1 f1 f2
    lwcZ f2 r0 30676
    fmul f2 f0 f2
    lwcZ f3 r0 30688
    fadd f2 f2 f3
    lwcZ f3 r0 30680
    fmul f0 f0 f3
    lwcZ f3 r0 30692
    fadd f0 f0 f3
    lw r1 r0 30616
    subi r2 r1 1
    lw r1 r29 28
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
block_5680:
    addi r3 r0 4
    blt r3 r2 block_5682
block_5681:
    lw r3 r1 8
    sll r4 r2 2
    lwab r3 r3 r4
    blt r3 r0 block_5684
block_5683:
    lw r3 r1 12
    sll r4 r2 2
    lwab r3 r3 r4
    sw r2 r29 28
    bne r3 r0 block_5686
    j block_5685
block_5685:
    j block_5687
block_5686:
    lw r3 r1 24
    lw r3 r3 0
    #0.0
    flui f0 0
    swcZ f0 r0 30592
    swcZ f0 r0 30596
    swcZ f0 r0 30600
    lw r4 r1 28
    lw r5 r1 4
    sll r3 r3 2
    lw r3 r3 30716
    sll r6 r2 2
    lwab r4 r4 r6
    sll r6 r2 2
    lwab r5 r5 r6
    lwcZ f0 r5 0
    swcZ f0 r0 30648
    lwcZ f0 r5 4
    swcZ f0 r0 30652
    lwcZ f0 r5 8
    swcZ f0 r0 30656
    lw r6 r0 30000
    subi r6 r6 1
    sw r1 r29 32
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
    lwcZ f0 r0 30592
    swcZ f0 r2 0
    lwcZ f0 r0 30596
    swcZ f0 r2 4
    lwcZ f0 r0 30600
    swcZ f0 r2 8
    j block_5687
block_5687:
    lw r2 r29 28
    addi r2 r2 1
    addi r3 r0 4
    blt r3 r2 block_5689
block_5688:
    lw r3 r1 8
    sll r4 r2 2
    lwab r3 r3 r4
    blt r3 r0 block_5691
block_5690:
    lw r3 r1 12
    sll r4 r2 2
    lwab r3 r3 r4
    sw r2 r29 24
    bne r3 r0 block_5693
    j block_5692
block_5692:
    j block_5694
block_5693:
    lw r3 r1 24
    lw r3 r3 0
    #0.0
    flui f0 0
    swcZ f0 r0 30592
    swcZ f0 r0 30596
    swcZ f0 r0 30600
    lw r4 r1 28
    lw r5 r1 4
    sll r3 r3 2
    lw r3 r3 30716
    sll r6 r2 2
    lwab r4 r4 r6
    sll r6 r2 2
    lwab r5 r5 r6
    lwcZ f0 r5 0
    swcZ f0 r0 30648
    lwcZ f0 r5 4
    swcZ f0 r0 30652
    lwcZ f0 r5 8
    swcZ f0 r0 30656
    lw r6 r0 30000
    subi r6 r6 1
    sw r1 r29 32
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
    blt r1 r0 block_5696
block_5695:
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
    bc1t block_5699
block_5698:
    mv r2 r0
    j block_5700
block_5699:
    addi r2 r0 1
    j block_5700
block_5700:
    bne r2 r0 block_5702
    j block_5701
block_5701:
    lw r2 r1 472
    #0.006666667
    flui f1 15322
    fori f1 f1 29710
    fmul f0 f0 f1
    mv r1 r2
    sw r31 r29 36
    addi r29 r29 40
    jal trace_diffuse_ray.4917
    subi r29 r29 40
    lw r31 r29 36
    j block_5703
block_5702:
    lw r2 r1 476
    #-0.006666667
    flui f1 -17446
    fori f1 f1 29710
    fmul f0 f0 f1
    mv r1 r2
    sw r31 r29 36
    addi r29 r29 40
    jal trace_diffuse_ray.4917
    subi r29 r29 40
    lw r31 r29 36
    j block_5703
block_5703:
    addi r4 r0 116
    lw r1 r29 0
    lw r2 r29 8
    lw r3 r29 16
    sw r31 r29 36
    addi r29 r29 40
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 40
    lw r31 r29 36
    j block_5697
block_5696:
    j block_5697
block_5697:
    lw r1 r29 32
    lw r2 r1 20
    lw r3 r29 24
    sll r4 r3 2
    lwab r2 r2 r4
    lwcZ f0 r0 30592
    swcZ f0 r2 0
    lwcZ f0 r0 30596
    swcZ f0 r2 4
    lwcZ f0 r0 30600
    swcZ f0 r2 8
    j block_5694
block_5694:
    lw r2 r29 24
    addi r2 r2 1
    sw r31 r29 36
    addi r29 r29 40
    jal pretrace_diffuse_rays.5142
    subi r29 r29 40
    lw r31 r29 36
    jr r31
block_5691:
    jr r31
block_5689:
    jr r31
block_5684:
    jr r31
block_5682:
    jr r31
pretrace_pixels.5163:
block_5704:
    addi r4 r0 30696
    blt r2 r0 block_5706
block_5705:
    lwcZ f3 r0 30632
    lw r5 r0 30624
    sub r5 r2 r5
    itof f4 r5
    fmul f3 f3 f4
    lwcZ f4 r0 30660
    fmul f4 f3 f4
    fadd f4 f4 f0
    swcZ f4 r0 30696
    lwcZ f4 r0 30664
    fmul f4 f3 f4
    fadd f4 f4 f1
    swcZ f4 r0 30700
    lwcZ f4 r0 30668
    fmul f3 f3 f4
    fadd f3 f3 f2
    swcZ f3 r0 30704
    lwcZ f3 r0 30696
    fmul f3 f3 f3
    lwcZ f4 r0 30700
    fmul f4 f4 f4
    fadd f3 f3 f4
    lwcZ f4 r0 30704
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
    bc1t block_5708
block_5707:
    #1.0
    flui f4 16256
    finv_init f5 f3
    #2.0
    flui f6 16384
    fmul f3 f3 f5
    fsub f3 f6 f3
    fmul f3 f5 f3
    fmul f3 f4 f3
    j block_5709
block_5708:
    #1.0
    flui f3 16256
    j block_5709
block_5709:
    lwcZ f4 r0 30696
    fmul f4 f4 f3
    swcZ f4 r0 30696
    lwcZ f4 r0 30700
    fmul f4 f4 f3
    swcZ f4 r0 30700
    lwcZ f4 r0 30704
    fmul f3 f4 f3
    swcZ f3 r0 30704
    #0.0
    flui f3 0
    swcZ f3 r0 30604
    swcZ f3 r0 30608
    swcZ f3 r0 30612
    lwcZ f3 r0 30300
    swcZ f3 r0 30636
    lwcZ f3 r0 30304
    swcZ f3 r0 30640
    lwcZ f3 r0 30308
    swcZ f3 r0 30644
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
    lwcZ f0 r0 30604
    swcZ f0 r2 0
    lwcZ f0 r0 30608
    swcZ f0 r2 4
    lwcZ f0 r0 30612
    swcZ f0 r2 8
    sll r2 r1 2
    lwab r2 r3 r2
    lw r2 r2 24
    lw r4 r29 16
    sw r4 r2 0
    sll r2 r1 2
    lwab r2 r3 r2
    addi r5 r0 4
    blt r5 r0 block_5711
block_5710:
    lw r5 r2 8
    lw r5 r5 0
    blt r5 r0 block_5714
block_5713:
    lw r5 r2 12
    lw r5 r5 0
    sw r2 r29 12
    bne r5 r0 block_5716
    j block_5715
block_5715:
    j block_5717
block_5716:
    lw r5 r2 24
    lw r5 r5 0
    #0.0
    flui f0 0
    swcZ f0 r0 30592
    swcZ f0 r0 30596
    swcZ f0 r0 30600
    lw r6 r2 28
    lw r7 r2 4
    sll r5 r5 2
    lw r5 r5 30716
    lw r6 r6 0
    lw r7 r7 0
    lwcZ f0 r7 0
    swcZ f0 r0 30648
    lwcZ f0 r7 4
    swcZ f0 r0 30652
    lwcZ f0 r7 8
    swcZ f0 r0 30656
    lw r8 r0 30000
    subi r8 r8 1
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
    blt r1 r0 block_5719
block_5718:
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
    bc1t block_5722
block_5721:
    mv r2 r0
    j block_5723
block_5722:
    addi r2 r0 1
    j block_5723
block_5723:
    bne r2 r0 block_5725
    j block_5724
block_5724:
    lw r2 r1 472
    #0.006666667
    flui f1 15322
    fori f1 f1 29710
    fmul f0 f0 f1
    mv r1 r2
    sw r31 r29 40
    addi r29 r29 44
    jal trace_diffuse_ray.4917
    subi r29 r29 44
    lw r31 r29 40
    j block_5726
block_5725:
    lw r2 r1 476
    #-0.006666667
    flui f1 -17446
    fori f1 f1 29710
    fmul f0 f0 f1
    mv r1 r2
    sw r31 r29 40
    addi r29 r29 44
    jal trace_diffuse_ray.4917
    subi r29 r29 44
    lw r31 r29 40
    j block_5726
block_5726:
    addi r4 r0 116
    lw r1 r29 0
    lw r2 r29 4
    lw r3 r29 8
    sw r31 r29 40
    addi r29 r29 44
    jal iter_trace_diffuse_rays.4938
    subi r29 r29 44
    lw r31 r29 40
    j block_5720
block_5719:
    j block_5720
block_5720:
    lw r1 r29 12
    lw r2 r1 20
    lw r2 r2 0
    lwcZ f0 r0 30592
    swcZ f0 r2 0
    lwcZ f0 r0 30596
    swcZ f0 r2 4
    lwcZ f0 r0 30600
    swcZ f0 r2 8
    j block_5717
block_5717:
    addi r2 r0 1
    lw r1 r29 12
    sw r31 r29 40
    addi r29 r29 44
    jal pretrace_diffuse_rays.5142
    subi r29 r29 44
    lw r31 r29 40
    j block_5712
block_5714:
    j block_5712
block_5711:
    j block_5712
block_5712:
    lw r1 r29 36
    subi r2 r1 1
    lw r1 r29 16
    addi r1 r1 1
    addi r3 r0 5
    blt r1 r3 block_5728
block_5727:
    subi r3 r1 5
    j block_5729
block_5728:
    mv r3 r1
    j block_5729
block_5729:
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
block_5706:
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
    sw r3 r29 12
    sw r2 r29 4
    blt r3 r4 block_276
block_275:
    div10 r4 r3
    addi r5 r0 10
    sw r4 r29 0
    blt r4 r5 block_279
block_278:
    div10 r5 r4
    sw r5 r29 8
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
block_688:
    inint r2
    addi r3 r0 -1
    sw r1 r29 36
    beq r2 r3 block_690
block_689:
    inint r3
    addi r4 r0 -1
    sw r2 r29 32
    beq r3 r4 block_693
block_692:
    inint r4
    addi r5 r0 -1
    sw r3 r29 12
    beq r4 r5 block_696
block_695:
    addi r5 r0 3
    sw r4 r29 20
    mv r1 r5
    sw r31 r29 40
    addi r29 r29 44
    jal read_net_item.3434
    subi r29 r29 44
    lw r31 r29 40
    lw r2 r29 20
    sw r2 r1 8
    j block_697
block_696:
    addi r4 r0 -1
    sw r4 r30 0
    sw r4 r30 4
    sw r4 r30 8
    mv r1 r30
    addi r30 r30 12
    j block_697
block_697:
    lw r2 r29 12
    sw r2 r1 4
    j block_694
block_693:
    addi r3 r0 -1
    sw r3 r30 0
    sw r3 r30 4
    mv r1 r30
    addi r30 r30 8
    j block_694
block_694:
    lw r2 r29 32
    sw r2 r1 0
    j block_691
block_690:
    addi r2 r0 -1
    sw r2 r30 0
    mv r1 r30
    addi r30 r30 4
    j block_691
block_691:
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_699
block_698:
    lw r2 r29 36
    sll r3 r2 2
    sw r1 r3 30332
    addi r1 r2 1
    inint r2
    addi r3 r0 -1
    sw r1 r29 4
    beq r2 r3 block_701
block_700:
    inint r3
    addi r4 r0 -1
    sw r2 r29 16
    beq r3 r4 block_704
block_703:
    addi r4 r0 2
    sw r3 r29 24
    mv r1 r4
    sw r31 r29 40
    addi r29 r29 44
    jal read_net_item.3434
    subi r29 r29 44
    lw r31 r29 40
    lw r2 r29 24
    sw r2 r1 4
    j block_705
block_704:
    addi r3 r0 -1
    sw r3 r30 0
    sw r3 r30 4
    mv r1 r30
    addi r30 r30 8
    j block_705
block_705:
    lw r2 r29 16
    sw r2 r1 0
    j block_702
block_701:
    addi r2 r0 -1
    sw r2 r30 0
    mv r1 r30
    addi r30 r30 4
    j block_702
block_702:
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_707
block_706:
    lw r2 r29 4
    sll r3 r2 2
    sw r1 r3 30332
    addi r1 r2 1
    inint r2
    addi r3 r0 -1
    sw r1 r29 8
    beq r2 r3 block_709
block_708:
    addi r3 r0 1
    sw r2 r29 28
    mv r1 r3
    sw r31 r29 40
    addi r29 r29 44
    jal read_net_item.3434
    subi r29 r29 44
    lw r31 r29 40
    lw r2 r29 28
    sw r2 r1 0
    j block_710
block_709:
    addi r2 r0 -1
    sw r2 r30 0
    mv r1 r30
    addi r30 r30 4
    j block_710
block_710:
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_712
block_711:
    lw r2 r29 8
    sll r3 r2 2
    sw r1 r3 30332
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
    beq r2 r3 block_714
block_713:
    lw r2 r29 0
    sll r3 r2 2
    sw r1 r3 30332
    addi r1 r2 1
    sw r31 r29 40
    addi r29 r29 44
    jal read_and_network.3461
    subi r29 r29 44
    lw r31 r29 40
    jr r31
block_714:
    jr r31
block_712:
    jr r31
block_707:
    jr r31
block_699:
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
    sw r4 r29 24
    sw r3 r29 4
    beq r6 r7 block_653
block_652:
    addi r7 r5 1
    inint r8
    addi r9 r0 -1
    sw r6 r29 12
    sw r5 r29 8
    beq r8 r9 block_656
block_655:
    addi r9 r7 1
    sw r8 r29 20
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
    beq r0 r7 arrayexit.90957
    sll r28 r7  2
arrayloop.90956:
    subi r28 r28 4
    swab r8 r30 r28
    bne r0 r28 arrayloop.90956
    sll r28 r7  2
    mv r1 r30
    add r30 r30 r28
arrayexit.90957:
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
    beq r0 r5 arrayexit.90959
    sll r28 r5  2
arrayloop.90958:
    subi r28 r28 4
    swab r6 r30 r28
    bne r0 r28 arrayloop.90958
    sll r28 r5  2
    mv r1 r30
    add r30 r30 r28
arrayexit.90959:
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
    beq r0 r3 arrayexit.90961
    sll r28 r3  2
arrayloop.90960:
    subi r28 r28 4
    swab r4 r30 r28
    bne r0 r28 arrayloop.90960
    sll r28 r3  2
    mv r1 r30
    add r30 r30 r28
arrayexit.90961:
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
    beq r0 r1 arrayexit.90963
    sll r28 r1  2
arrayloop.90962:
    subi r28 r28 4
    swab r2 r30 r28
    bne r0 r28 arrayloop.90962
    sll r28 r1  2
    mv r1 r30
    add r30 r30 r28
arrayexit.90963:
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
    sw r2 r4 30048
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
    sw r1 r0 30000
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
    sw r2 r4 30048
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
    sw r1 r0 30000
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
    sw r1 r29 36
    beq r2 r3 block_660
block_659:
    inint r3
    addi r4 r0 -1
    sw r2 r29 32
    beq r3 r4 block_663
block_662:
    inint r4
    addi r5 r0 -1
    sw r3 r29 12
    beq r4 r5 block_666
block_665:
    addi r5 r0 3
    sw r4 r29 20
    mv r1 r5
    sw r31 r29 56
    addi r29 r29 60
    jal read_net_item.3434
    subi r29 r29 60
    lw r31 r29 56
    lw r2 r29 20
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
    lw r2 r29 12
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
    lw r2 r29 32
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
    lw r2 r29 36
    addi r3 r2 1
    inint r4
    addi r5 r0 -1
    sw r1 r29 44
    sw r3 r29 4
    beq r4 r5 block_671
block_670:
    inint r5
    addi r6 r0 -1
    sw r4 r29 16
    beq r5 r6 block_674
block_673:
    addi r6 r0 2
    sw r5 r29 24
    mv r1 r6
    sw r31 r29 56
    addi r29 r29 60
    jal read_net_item.3434
    subi r29 r29 60
    lw r31 r29 56
    lw r2 r29 24
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
    lw r2 r29 16
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
    lw r2 r29 4
    addi r3 r2 1
    inint r4
    addi r5 r0 -1
    sw r1 r29 52
    sw r3 r29 8
    beq r4 r5 block_680
block_679:
    addi r5 r0 1
    sw r4 r29 28
    mv r1 r5
    sw r31 r29 56
    addi r29 r29 60
    jal read_net_item.3434
    subi r29 r29 60
    lw r31 r29 56
    lw r2 r29 28
    sw r2 r1 0
    j block_681
block_680:
    addi r4 r0 -1
    sw r4 r30 0
    mv r1 r30
    addi r30 r30 4
    j block_681
block_681:
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_683
block_682:
    lw r2 r29 8
    addi r3 r2 1
    sw r1 r29 40
    sw r3 r29 0
    mv r1 r0
    sw r31 r29 56
    addi r29 r29 60
    jal read_net_item.3434
    subi r29 r29 60
    lw r31 r29 56
    lw r2 r1 0
    addi r3 r0 -1
    beq r2 r3 block_686
block_685:
    lw r2 r29 0
    addi r3 r2 1
    sw r1 r29 48
    mv r1 r3
    sw r31 r29 56
    addi r29 r29 60
    jal read_or_network.3447
    subi r29 r29 60
    lw r31 r29 56
    lw r2 r29 0
    sll r2 r2 2
    lw r3 r29 48
    swab r3 r1 r2
    j block_687
block_686:
    lw r2 r29 0
    addi r2 r2 1
    beq r0 r2 arrayexit.90965
    sll r28 r2  2
arrayloop.90964:
    subi r28 r28 4
    swab r1 r30 r28
    bne r0 r28 arrayloop.90964
    sll r28 r2  2
    mv r1 r30
    add r30 r30 r28
arrayexit.90965:
    j block_687
block_687:
    lw r2 r29 8
    sll r2 r2 2
    lw r3 r29 40
    swab r3 r1 r2
    j block_684
block_683:
    lw r2 r29 8
    addi r2 r2 1
    beq r0 r2 arrayexit.90967
    sll r28 r2  2
arrayloop.90966:
    subi r28 r28 4
    swab r1 r30 r28
    bne r0 r28 arrayloop.90966
    sll r28 r2  2
    mv r1 r30
    add r30 r30 r28
arrayexit.90967:
    j block_684
block_684:
    lw r2 r29 4
    sll r2 r2 2
    lw r3 r29 52
    swab r3 r1 r2
    j block_678
block_677:
    lw r2 r29 4
    addi r2 r2 1
    beq r0 r2 arrayexit.90969
    sll r28 r2  2
arrayloop.90968:
    subi r28 r28 4
    swab r1 r30 r28
    bne r0 r28 arrayloop.90968
    sll r28 r2  2
    mv r1 r30
    add r30 r30 r28
arrayexit.90969:
    j block_678
block_678:
    lw r2 r29 36
    sll r2 r2 2
    lw r3 r29 44
    swab r3 r1 r2
    jr r31
block_669:
    lw r2 r29 36
    addi r2 r2 1
    beq r0 r2 arrayexit.90971
    sll r28 r2  2
arrayloop.90970:
    subi r28 r28 4
    swab r1 r30 r28
    bne r0 r28 arrayloop.90970
    sll r28 r2  2
    mv r1 r30
    add r30 r30 r28
arrayexit.90971:
    jr r31
scan_line.5270:
block_5829:
    lw r6 r0 30620
    blt r1 r6 block_5831
block_5830:
    jr r31
block_5831:
    lw r6 r0 30620
    subi r6 r6 1
    sw r1 r29 24
    sw r2 r29 20
    sw r4 r29 16
    sw r5 r29 12
    sw r3 r29 8
    blt r1 r6 block_5833
block_5832:
    j block_5834
block_5833:
    addi r6 r1 1
    lwcZ f0 r0 30632
    lw r7 r0 30628
    sub r6 r6 r7
    itof f1 r6
    fmul f0 f0 f1
    lwcZ f1 r0 30672
    fmul f1 f0 f1
    lwcZ f2 r0 30684
    fadd f1 f1 f2
    lwcZ f2 r0 30676
    fmul f2 f0 f2
    lwcZ f3 r0 30688
    fadd f2 f2 f3
    lwcZ f3 r0 30680
    fmul f0 f0 f3
    lwcZ f3 r0 30692
    fadd f0 f0 f3
    lw r6 r0 30616
    subi r6 r6 1
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
    j block_5834
block_5834:
    lw r1 r0 30616
    blt r0 r1 block_5836
block_5835:
    j block_5837
block_5836:
    lw r4 r29 8
    lw r1 r4 0
    lw r1 r1 0
    lwcZ f0 r1 0
    swcZ f0 r0 30604
    lwcZ f0 r1 4
    swcZ f0 r0 30608
    lwcZ f0 r1 8
    swcZ f0 r0 30612
    lw r2 r29 24
    addi r1 r2 1
    lw r3 r0 30620
    blt r1 r3 block_5839
block_5838:
    mv r1 r0
    j block_5840
block_5839:
    blt r0 r2 block_5842
block_5841:
    mv r1 r0
    j block_5840
block_5842:
    addi r1 r0 1
    lw r3 r0 30616
    blt r1 r3 block_5844
block_5843:
    mv r1 r0
    j block_5840
block_5844:
    blt r0 r0 block_5846
block_5845:
    mv r1 r0
    j block_5840
block_5846:
    addi r1 r0 1
    j block_5840
block_5840:
    bne r1 r0 block_5848
    j block_5847
block_5847:
    lw r1 r4 0
    mv r2 r0
    sw r31 r29 28
    addi r29 r29 32
    jal do_without_neighbors.5035
    subi r29 r29 32
    lw r31 r29 28
    j block_5849
block_5848:
    lw r3 r29 20
    lw r5 r29 16
    mv r6 r0
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal try_exploit_neighbors.5085
    subi r29 r29 32
    lw r31 r29 28
    j block_5849
block_5849:
    lwcZ f0 r0 30604
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5851
block_5850:
    blt r1 r0 block_5854
block_5853:
    j block_5852
block_5854:
    mv r1 r0
    j block_5852
block_5851:
    addi r1 r0 255
    j block_5852
block_5852:
    out r1 0
    lwcZ f0 r0 30608
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5856
block_5855:
    blt r1 r0 block_5859
block_5858:
    j block_5857
block_5859:
    mv r1 r0
    j block_5857
block_5856:
    addi r1 r0 255
    j block_5857
block_5857:
    out r1 0
    lwcZ f0 r0 30612
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5861
block_5860:
    blt r1 r0 block_5864
block_5863:
    j block_5862
block_5864:
    mv r1 r0
    j block_5862
block_5861:
    addi r1 r0 255
    j block_5862
block_5862:
    out r1 0
    addi r1 r0 1
    lw r2 r29 24
    lw r3 r29 20
    lw r4 r29 8
    lw r5 r29 16
    sw r31 r29 28
    addi r29 r29 32
    jal scan_pixel.5250
    subi r29 r29 32
    lw r31 r29 28
    j block_5837
block_5837:
    lw r1 r29 24
    addi r2 r1 1
    lw r1 r29 12
    addi r1 r1 2
    addi r3 r0 5
    blt r1 r3 block_5866
block_5865:
    subi r3 r1 5
    j block_5867
block_5866:
    mv r3 r1
    j block_5867
block_5867:
    lw r1 r0 30620
    blt r2 r1 block_5869
block_5868:
    jr r31
block_5869:
    lw r1 r0 30620
    subi r1 r1 1
    sw r3 r29 4
    sw r2 r29 0
    blt r2 r1 block_5871
block_5870:
    j block_5872
block_5871:
    addi r1 r2 1
    lwcZ f0 r0 30632
    lw r4 r0 30628
    sub r1 r1 r4
    itof f1 r1
    fmul f0 f0 f1
    lwcZ f1 r0 30672
    fmul f1 f0 f1
    lwcZ f2 r0 30684
    fadd f1 f1 f2
    lwcZ f2 r0 30676
    fmul f2 f0 f2
    lwcZ f3 r0 30688
    fadd f2 f2 f3
    lwcZ f3 r0 30680
    fmul f0 f0 f3
    lwcZ f3 r0 30692
    fadd f0 f0 f3
    lw r1 r0 30616
    subi r1 r1 1
    lw r4 r29 20
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
    j block_5872
block_5872:
    lw r2 r29 0
    lw r3 r29 8
    lw r4 r29 16
    lw r5 r29 20
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
    blt r2 r3 block_5874
block_5873:
    subi r5 r2 5
    j block_5875
block_5874:
    mv r5 r2
    j block_5875
block_5875:
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
block_5730:
    lw r6 r0 30616
    blt r1 r6 block_5732
block_5731:
    jr r31
block_5732:
    sll r6 r1 2
    lwab r6 r4 r6
    lw r6 r6 0
    lwcZ f0 r6 0
    swcZ f0 r0 30604
    lwcZ f0 r6 4
    swcZ f0 r0 30608
    lwcZ f0 r6 8
    swcZ f0 r0 30612
    addi r6 r2 1
    lw r7 r0 30620
    blt r6 r7 block_5734
block_5733:
    mv r6 r0
    j block_5735
block_5734:
    blt r0 r2 block_5737
block_5736:
    mv r6 r0
    j block_5735
block_5737:
    addi r6 r1 1
    lw r7 r0 30616
    blt r6 r7 block_5739
block_5738:
    mv r6 r0
    j block_5735
block_5739:
    blt r0 r1 block_5741
block_5740:
    mv r6 r0
    j block_5735
block_5741:
    addi r6 r0 1
    j block_5735
block_5735:
    sw r2 r29 40
    sw r1 r29 36
    sw r3 r29 32
    sw r5 r29 28
    sw r4 r29 20
    bne r6 r0 block_5743
    j block_5742
block_5742:
    sll r6 r1 2
    lwab r6 r4 r6
    addi r7 r0 4
    blt r7 r0 block_5746
block_5745:
    lw r7 r6 8
    lw r7 r7 0
    blt r7 r0 block_5748
block_5747:
    lw r7 r6 12
    lw r7 r7 0
    sw r6 r29 16
    bne r7 r0 block_5750
    j block_5749
block_5749:
    j block_5751
block_5750:
    lw r7 r6 20
    lw r8 r6 28
    lw r9 r6 4
    lw r10 r6 16
    lw r7 r7 0
    lwcZ f0 r7 0
    swcZ f0 r0 30592
    lwcZ f0 r7 4
    swcZ f0 r0 30596
    lwcZ f0 r7 8
    swcZ f0 r0 30600
    lw r7 r6 24
    lw r7 r7 0
    lw r8 r8 0
    lw r9 r9 0
    sw r10 r29 24
    sw r7 r29 12
    sw r9 r29 4
    sw r8 r29 0
    beq r7 r0 block_5753
block_5752:
    lw r11 r0 30716
    mv r3 r9
    mv r2 r8
    mv r1 r11
    sw r31 r29 44
    addi r29 r29 48
    jal trace_diffuse_rays.4959
    subi r29 r29 48
    lw r31 r29 44
    j block_5754
block_5753:
    j block_5754
block_5754:
    addi r1 r0 1
    lw r2 r29 12
    beq r2 r1 block_5756
block_5755:
    lw r1 r0 30720
    lw r3 r29 0
    lw r4 r29 4
    mv r2 r3
    mv r3 r4
    sw r31 r29 44
    addi r29 r29 48
    jal trace_diffuse_rays.4959
    subi r29 r29 48
    lw r31 r29 44
    j block_5757
block_5756:
    j block_5757
block_5757:
    addi r1 r0 2
    lw r2 r29 12
    beq r2 r1 block_5759
block_5758:
    lw r1 r0 30724
    lw r3 r29 0
    lw r4 r29 4
    mv r2 r3
    mv r3 r4
    sw r31 r29 44
    addi r29 r29 48
    jal trace_diffuse_rays.4959
    subi r29 r29 48
    lw r31 r29 44
    j block_5760
block_5759:
    j block_5760
block_5760:
    addi r1 r0 3
    lw r2 r29 12
    beq r2 r1 block_5762
block_5761:
    lw r1 r0 30728
    lw r3 r29 0
    lw r4 r29 4
    mv r2 r3
    mv r3 r4
    sw r31 r29 44
    addi r29 r29 48
    jal trace_diffuse_rays.4959
    subi r29 r29 48
    lw r31 r29 44
    j block_5763
block_5762:
    j block_5763
block_5763:
    addi r1 r0 4
    lw r2 r29 12
    beq r2 r1 block_5765
block_5764:
    lw r1 r0 30732
    lw r2 r29 0
    lw r3 r29 4
    sw r31 r29 44
    addi r29 r29 48
    jal trace_diffuse_rays.4959
    subi r29 r29 48
    lw r31 r29 44
    j block_5766
block_5765:
    j block_5766
block_5766:
    lw r1 r29 24
    lw r1 r1 0
    lwcZ f0 r0 30604
    lwcZ f1 r1 0
    lwcZ f2 r0 30592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30604
    lwcZ f0 r0 30608
    lwcZ f1 r1 4
    lwcZ f2 r0 30596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30608
    lwcZ f0 r0 30612
    lwcZ f1 r1 8
    lwcZ f2 r0 30600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30612
    j block_5751
block_5751:
    addi r2 r0 1
    lw r1 r29 16
    sw r31 r29 44
    addi r29 r29 48
    jal do_without_neighbors.5035
    subi r29 r29 48
    lw r31 r29 44
    j block_5744
block_5748:
    j block_5744
block_5746:
    j block_5744
block_5743:
    sll r6 r1 2
    lwab r6 r4 r6
    addi r7 r0 4
    blt r7 r0 block_5768
block_5767:
    lw r7 r6 8
    lw r7 r7 0
    blt r7 r0 block_5770
block_5769:
    sll r7 r1 2
    lwab r7 r4 r7
    lw r7 r7 8
    lw r7 r7 0
    sll r8 r1 2
    lwab r8 r3 r8
    lw r8 r8 8
    lw r8 r8 0
    beq r8 r7 block_5772
block_5771:
    mv r7 r0
    j block_5773
block_5772:
    sll r8 r1 2
    lwab r8 r5 r8
    lw r8 r8 8
    lw r8 r8 0
    beq r8 r7 block_5775
block_5774:
    mv r7 r0
    j block_5773
block_5775:
    subi r8 r1 1
    sll r8 r8 2
    lwab r8 r4 r8
    lw r8 r8 8
    lw r8 r8 0
    beq r8 r7 block_5777
block_5776:
    mv r7 r0
    j block_5773
block_5777:
    addi r8 r1 1
    sll r8 r8 2
    lwab r8 r4 r8
    lw r8 r8 8
    lw r8 r8 0
    beq r8 r7 block_5779
block_5778:
    mv r7 r0
    j block_5773
block_5779:
    addi r7 r0 1
    j block_5773
block_5773:
    bne r7 r0 block_5781
    j block_5780
block_5780:
    sll r6 r1 2
    lwab r6 r4 r6
    mv r2 r0
    mv r1 r6
    sw r31 r29 44
    addi r29 r29 48
    jal do_without_neighbors.5035
    subi r29 r29 48
    lw r31 r29 44
    j block_5744
block_5781:
    lw r6 r6 12
    lw r6 r6 0
    bne r6 r0 block_5783
    j block_5782
block_5782:
    j block_5784
block_5783:
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
    swcZ f0 r0 30592
    lwcZ f0 r6 4
    swcZ f0 r0 30596
    lwcZ f0 r6 8
    swcZ f0 r0 30600
    lw r6 r7 0
    lwcZ f0 r0 30592
    lwcZ f1 r6 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r6 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r6 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    lw r6 r8 0
    lwcZ f0 r0 30592
    lwcZ f1 r6 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r6 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r6 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    lw r6 r9 0
    lwcZ f0 r0 30592
    lwcZ f1 r6 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r6 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r6 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    lw r6 r10 0
    lwcZ f0 r0 30592
    lwcZ f1 r6 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r6 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r6 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    sll r6 r1 2
    lwab r6 r4 r6
    lw r6 r6 16
    lw r6 r6 0
    lwcZ f0 r0 30604
    lwcZ f1 r6 0
    lwcZ f2 r0 30592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30604
    lwcZ f0 r0 30608
    lwcZ f1 r6 4
    lwcZ f2 r0 30596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30608
    lwcZ f0 r0 30612
    lwcZ f1 r6 8
    lwcZ f2 r0 30600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30612
    j block_5784
block_5784:
    addi r6 r0 1
    sw r31 r29 44
    addi r29 r29 48
    jal try_exploit_neighbors.5085
    subi r29 r29 48
    lw r31 r29 44
    j block_5744
block_5770:
    j block_5744
block_5768:
    j block_5744
block_5744:
    lwcZ f0 r0 30604
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5786
block_5785:
    blt r1 r0 block_5789
block_5788:
    j block_5787
block_5789:
    mv r1 r0
    j block_5787
block_5786:
    addi r1 r0 255
    j block_5787
block_5787:
    out r1 0
    lwcZ f0 r0 30608
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5791
block_5790:
    blt r1 r0 block_5794
block_5793:
    j block_5792
block_5794:
    mv r1 r0
    j block_5792
block_5791:
    addi r1 r0 255
    j block_5792
block_5792:
    out r1 0
    lwcZ f0 r0 30612
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5796
block_5795:
    blt r1 r0 block_5799
block_5798:
    j block_5797
block_5799:
    mv r1 r0
    j block_5797
block_5796:
    addi r1 r0 255
    j block_5797
block_5797:
    out r1 0
    lw r1 r29 36
    addi r1 r1 1
    lw r2 r0 30616
    blt r1 r2 block_5801
block_5800:
    jr r31
block_5801:
    sll r2 r1 2
    lw r4 r29 20
    lwab r2 r4 r2
    lw r2 r2 0
    lwcZ f0 r2 0
    swcZ f0 r0 30604
    lwcZ f0 r2 4
    swcZ f0 r0 30608
    lwcZ f0 r2 8
    swcZ f0 r0 30612
    lw r2 r29 40
    addi r3 r2 1
    lw r5 r0 30620
    blt r3 r5 block_5803
block_5802:
    mv r3 r0
    j block_5804
block_5803:
    blt r0 r2 block_5806
block_5805:
    mv r3 r0
    j block_5804
block_5806:
    addi r3 r1 1
    lw r5 r0 30616
    blt r3 r5 block_5808
block_5807:
    mv r3 r0
    j block_5804
block_5808:
    blt r0 r1 block_5810
block_5809:
    mv r3 r0
    j block_5804
block_5810:
    addi r3 r0 1
    j block_5804
block_5804:
    sw r1 r29 8
    bne r3 r0 block_5812
    j block_5811
block_5811:
    sll r3 r1 2
    lwab r3 r4 r3
    mv r2 r0
    mv r1 r3
    sw r31 r29 44
    addi r29 r29 48
    jal do_without_neighbors.5035
    subi r29 r29 48
    lw r31 r29 44
    j block_5813
block_5812:
    lw r3 r29 32
    lw r5 r29 28
    mv r6 r0
    sw r31 r29 44
    addi r29 r29 48
    jal try_exploit_neighbors.5085
    subi r29 r29 48
    lw r31 r29 44
    j block_5813
block_5813:
    lwcZ f0 r0 30604
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5815
block_5814:
    blt r1 r0 block_5818
block_5817:
    j block_5816
block_5818:
    mv r1 r0
    j block_5816
block_5815:
    addi r1 r0 255
    j block_5816
block_5816:
    out r1 0
    lwcZ f0 r0 30608
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5820
block_5819:
    blt r1 r0 block_5823
block_5822:
    j block_5821
block_5823:
    mv r1 r0
    j block_5821
block_5820:
    addi r1 r0 255
    j block_5821
block_5821:
    out r1 0
    lwcZ f0 r0 30612
    ftoi r1 f0
    addi r2 r0 255
    blt r2 r1 block_5825
block_5824:
    blt r1 r0 block_5828
block_5827:
    j block_5826
block_5828:
    mv r1 r0
    j block_5826
block_5825:
    addi r1 r0 255
    j block_5826
block_5826:
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
block_844:
    blt r2 r0 block_846
block_845:
    sll r3 r2 2
    lw r3 r3 30048
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
    beq r5 r6 block_848
block_847:
    addi r6 r0 2
    blt r6 r5 block_851
block_850:
    j block_849
block_851:
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
    beq r6 r0 block_853
block_852:
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
    j block_854
block_853:
    fmv f0 f3
    j block_854
block_854:
    addi r3 r0 3
    beq r5 r3 block_856
block_855:
    j block_857
block_856:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_857
block_857:
    swcZ f0 r4 12
    j block_849
block_848:
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
    j block_849
block_849:
    subi r2 r2 1
    sw r31 r29 0
    addi r29 r29 4
    jal setup_startp_constants.4131
    subi r29 r29 4
    lw r31 r29 0
    jr r31
block_846:
    jr r31
shadow_check_and_group.4251:
block_1079:
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_1081
block_1080:
    sll r3 r1 2
    lwab r3 r2 r3
    sll r4 r3 2
    lw r4 r4 30048
    lwcZ f0 r0 30552
    lw r5 r4 20
    lwcZ f1 r5 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r5 r4 20
    lwcZ f2 r5 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
    lw r5 r4 20
    lwcZ f3 r5 8
    fsub f2 f2 f3
    lw r5 r0 30992
    sll r6 r3 2
    lwab r5 r5 r6
    lw r6 r4 4
    addi r7 r0 1
    beq r6 r7 block_1083
block_1082:
    addi r7 r0 2
    beq r6 r7 block_1086
block_1085:
    lwcZ f3 r5 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1088
block_1087:
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
    beq r6 r0 block_1090
block_1089:
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
    j block_1091
block_1090:
    fmv f0 f5
    j block_1091
block_1091:
    lw r6 r4 4
    addi r7 r0 3
    beq r6 r7 block_1093
block_1092:
    j block_1094
block_1093:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_1094
block_1094:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_1096
block_1095:
    mv r6 r0
    j block_1097
block_1096:
    addi r6 r0 1
    j block_1097
block_1097:
    bne r6 r0 block_1099
    j block_1098
block_1098:
    mv r4 r0
    j block_1084
block_1099:
    lw r4 r4 24
    bne r4 r0 block_1101
    j block_1100
block_1100:
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
    swcZ f0 r0 30540
    j block_1102
block_1101:
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
    swcZ f0 r0 30540
    j block_1102
block_1102:
    addi r4 r0 1
    j block_1084
block_1088:
    mv r4 r0
    j block_1084
block_1086:
    lwcZ f3 r5 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1104
block_1103:
    mv r4 r0
    j block_1105
block_1104:
    addi r4 r0 1
    j block_1105
block_1105:
    bne r4 r0 block_1107
    j block_1106
block_1106:
    mv r4 r0
    j block_1084
block_1107:
    lwcZ f3 r5 4
    fmul f0 f3 f0
    lwcZ f3 r5 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r5 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_1084
block_1083:
    lw r6 r0 30988
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
    bc1t block_1109
block_1108:
    j block_1110
block_1109:
    fneg f4 f4
    j block_1110
block_1110:
    lw r7 r4 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1112
block_1111:
    mv r7 r0
    j block_1113
block_1112:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1115
block_1114:
    j block_1116
block_1115:
    fneg f4 f4
    j block_1116
block_1116:
    lw r7 r4 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1118
block_1117:
    mv r7 r0
    j block_1113
block_1118:
    lwcZ f4 r5 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1120
block_1119:
    mv r7 r0
    j block_1121
block_1120:
    addi r7 r0 1
    j block_1121
block_1121:
    bne r7 r0 block_1123
    j block_1122
block_1122:
    addi r7 r0 1
    j block_1113
block_1123:
    mv r7 r0
    j block_1113
block_1113:
    bne r7 r0 block_1125
    j block_1124
block_1124:
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
    bc1t block_1127
block_1126:
    j block_1128
block_1127:
    fneg f4 f4
    j block_1128
block_1128:
    lw r7 r4 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_1130
block_1129:
    mv r7 r0
    j block_1131
block_1130:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1133
block_1132:
    j block_1134
block_1133:
    fneg f4 f4
    j block_1134
block_1134:
    lw r7 r4 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1136
block_1135:
    mv r7 r0
    j block_1131
block_1136:
    lwcZ f4 r5 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1138
block_1137:
    mv r7 r0
    j block_1139
block_1138:
    addi r7 r0 1
    j block_1139
block_1139:
    bne r7 r0 block_1141
    j block_1140
block_1140:
    addi r7 r0 1
    j block_1131
block_1141:
    mv r7 r0
    j block_1131
block_1131:
    bne r7 r0 block_1143
    j block_1142
block_1142:
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
    bc1t block_1145
block_1144:
    j block_1146
block_1145:
    fneg f0 f0
    j block_1146
block_1146:
    lw r7 r4 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_1148
block_1147:
    mv r4 r0
    j block_1149
block_1148:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_1151
block_1150:
    j block_1152
block_1151:
    fneg f0 f0
    j block_1152
block_1152:
    lw r4 r4 16
    lwcZ f1 r4 4
    fclt f0 f1
    bc1t block_1154
block_1153:
    mv r4 r0
    j block_1149
block_1154:
    lwcZ f0 r5 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_1156
block_1155:
    mv r4 r0
    j block_1157
block_1156:
    addi r4 r0 1
    j block_1157
block_1157:
    bne r4 r0 block_1159
    j block_1158
block_1158:
    addi r4 r0 1
    j block_1149
block_1159:
    mv r4 r0
    j block_1149
block_1149:
    bne r4 r0 block_1161
    j block_1160
block_1160:
    mv r4 r0
    j block_1084
block_1161:
    swcZ f2 r0 30540
    addi r4 r0 3
    j block_1084
block_1143:
    swcZ f3 r0 30540
    addi r4 r0 2
    j block_1084
block_1125:
    swcZ f3 r0 30540
    addi r4 r0 1
    j block_1084
block_1084:
    lwcZ f0 r0 30540
    beq r4 r0 block_1163
block_1162:
    #-0.2
    flui f1 -16820
    fori f1 f1 -13107
    fclt f0 f1
    bc1t block_1166
block_1165:
    mv r4 r0
    j block_1164
block_1166:
    addi r4 r0 1
    j block_1164
block_1163:
    mv r4 r0
    j block_1164
block_1164:
    bne r4 r0 block_1168
    j block_1167
block_1167:
    sll r3 r3 2
    lw r3 r3 30048
    lw r3 r3 24
    bne r3 r0 block_1170
    j block_1169
block_1169:
    mv r1 r0
    jr r31
block_1170:
    addi r1 r1 1
    sw r31 r29 8
    addi r29 r29 12
    jal shadow_check_and_group.4251
    subi r29 r29 12
    lw r31 r29 8
    jr r31
block_1168:
    #0.01
    flui f1 15395
    fori f1 f1 -10486
    fadd f0 f0 f1
    lwcZ f1 r0 30312
    fmul f1 f1 f0
    lwcZ f2 r0 30552
    fadd f1 f1 f2
    lwcZ f2 r0 30316
    fmul f2 f2 f0
    lwcZ f3 r0 30556
    fadd f2 f2 f3
    lwcZ f3 r0 30320
    fmul f0 f3 f0
    lwcZ f3 r0 30560
    fadd f0 f0 f3
    lw r3 r2 0
    addi r4 r0 -1
    sw r1 r29 4
    sw r2 r29 0
    beq r3 r4 block_1172
block_1171:
    sll r3 r3 2
    lw r3 r3 30048
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
    beq r4 r5 block_1175
block_1174:
    addi r5 r0 2
    beq r4 r5 block_1178
block_1177:
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
    beq r4 r0 block_1180
block_1179:
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
    j block_1181
block_1180:
    fmv f3 f6
    j block_1181
block_1181:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_1183
block_1182:
    j block_1184
block_1183:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_1184
block_1184:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1186
block_1185:
    mv r4 r0
    j block_1187
block_1186:
    addi r4 r0 1
    j block_1187
block_1187:
    bne r3 r0 block_1189
    j block_1188
block_1188:
    mv r3 r4
    j block_1190
block_1189:
    bne r4 r0 block_1192
    j block_1191
block_1191:
    addi r3 r0 1
    j block_1190
block_1192:
    mv r3 r0
    j block_1190
block_1190:
    bne r3 r0 block_1194
    j block_1193
block_1193:
    addi r3 r0 1
    j block_1176
block_1194:
    mv r3 r0
    j block_1176
block_1178:
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
    bc1t block_1196
block_1195:
    mv r4 r0
    j block_1197
block_1196:
    addi r4 r0 1
    j block_1197
block_1197:
    bne r3 r0 block_1199
    j block_1198
block_1198:
    mv r3 r4
    j block_1200
block_1199:
    bne r4 r0 block_1202
    j block_1201
block_1201:
    addi r3 r0 1
    j block_1200
block_1202:
    mv r3 r0
    j block_1200
block_1200:
    bne r3 r0 block_1204
    j block_1203
block_1203:
    addi r3 r0 1
    j block_1176
block_1204:
    mv r3 r0
    j block_1176
block_1175:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_1206
block_1205:
    j block_1207
block_1206:
    fneg f3 f3
    j block_1207
block_1207:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_1209
block_1208:
    mv r4 r0
    j block_1210
block_1209:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_1212
block_1211:
    fmv f3 f4
    j block_1213
block_1212:
    fneg f3 f4
    j block_1213
block_1213:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_1215
block_1214:
    mv r4 r0
    j block_1210
block_1215:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_1217
block_1216:
    fmv f3 f5
    j block_1218
block_1217:
    fneg f3 f5
    j block_1218
block_1218:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_1220
block_1219:
    mv r4 r0
    j block_1210
block_1220:
    addi r4 r0 1
    j block_1210
block_1210:
    bne r4 r0 block_1222
    j block_1221
block_1221:
    lw r3 r3 24
    bne r3 r0 block_1224
    j block_1223
block_1223:
    addi r3 r0 1
    j block_1176
block_1224:
    mv r3 r0
    j block_1176
block_1222:
    lw r3 r3 24
    j block_1176
block_1176:
    bne r3 r0 block_1226
    j block_1225
block_1225:
    lw r3 r2 4
    addi r4 r0 -1
    beq r3 r4 block_1228
block_1227:
    sll r3 r3 2
    lw r3 r3 30048
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
    beq r4 r5 block_1230
block_1229:
    addi r5 r0 2
    beq r4 r5 block_1233
block_1232:
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
    beq r4 r0 block_1235
block_1234:
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
    j block_1236
block_1235:
    fmv f3 f6
    j block_1236
block_1236:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_1238
block_1237:
    j block_1239
block_1238:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_1239
block_1239:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1241
block_1240:
    mv r4 r0
    j block_1242
block_1241:
    addi r4 r0 1
    j block_1242
block_1242:
    bne r3 r0 block_1244
    j block_1243
block_1243:
    mv r3 r4
    j block_1245
block_1244:
    bne r4 r0 block_1247
    j block_1246
block_1246:
    addi r3 r0 1
    j block_1245
block_1247:
    mv r3 r0
    j block_1245
block_1245:
    bne r3 r0 block_1249
    j block_1248
block_1248:
    addi r3 r0 1
    j block_1231
block_1249:
    mv r3 r0
    j block_1231
block_1233:
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
    bc1t block_1251
block_1250:
    mv r4 r0
    j block_1252
block_1251:
    addi r4 r0 1
    j block_1252
block_1252:
    bne r3 r0 block_1254
    j block_1253
block_1253:
    mv r3 r4
    j block_1255
block_1254:
    bne r4 r0 block_1257
    j block_1256
block_1256:
    addi r3 r0 1
    j block_1255
block_1257:
    mv r3 r0
    j block_1255
block_1255:
    bne r3 r0 block_1259
    j block_1258
block_1258:
    addi r3 r0 1
    j block_1231
block_1259:
    mv r3 r0
    j block_1231
block_1230:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_1261
block_1260:
    j block_1262
block_1261:
    fneg f3 f3
    j block_1262
block_1262:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_1264
block_1263:
    mv r4 r0
    j block_1265
block_1264:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_1267
block_1266:
    fmv f3 f4
    j block_1268
block_1267:
    fneg f3 f4
    j block_1268
block_1268:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_1270
block_1269:
    mv r4 r0
    j block_1265
block_1270:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_1272
block_1271:
    fmv f3 f5
    j block_1273
block_1272:
    fneg f3 f5
    j block_1273
block_1273:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_1275
block_1274:
    mv r4 r0
    j block_1265
block_1275:
    addi r4 r0 1
    j block_1265
block_1265:
    bne r4 r0 block_1277
    j block_1276
block_1276:
    lw r3 r3 24
    bne r3 r0 block_1279
    j block_1278
block_1278:
    addi r3 r0 1
    j block_1231
block_1279:
    mv r3 r0
    j block_1231
block_1277:
    lw r3 r3 24
    j block_1231
block_1231:
    bne r3 r0 block_1281
    j block_1280
block_1280:
    lw r3 r2 8
    addi r4 r0 -1
    beq r3 r4 block_1283
block_1282:
    sll r3 r3 2
    lw r3 r3 30048
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
    beq r4 r5 block_1285
block_1284:
    addi r5 r0 2
    beq r4 r5 block_1288
block_1287:
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
    beq r4 r0 block_1290
block_1289:
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
    j block_1291
block_1290:
    fmv f3 f6
    j block_1291
block_1291:
    lw r4 r3 4
    addi r5 r0 3
    beq r4 r5 block_1293
block_1292:
    j block_1294
block_1293:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_1294
block_1294:
    lw r3 r3 24
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1296
block_1295:
    mv r4 r0
    j block_1297
block_1296:
    addi r4 r0 1
    j block_1297
block_1297:
    bne r3 r0 block_1299
    j block_1298
block_1298:
    mv r3 r4
    j block_1300
block_1299:
    bne r4 r0 block_1302
    j block_1301
block_1301:
    addi r3 r0 1
    j block_1300
block_1302:
    mv r3 r0
    j block_1300
block_1300:
    bne r3 r0 block_1304
    j block_1303
block_1303:
    addi r3 r0 1
    j block_1286
block_1304:
    mv r3 r0
    j block_1286
block_1288:
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
    bc1t block_1306
block_1305:
    mv r4 r0
    j block_1307
block_1306:
    addi r4 r0 1
    j block_1307
block_1307:
    bne r3 r0 block_1309
    j block_1308
block_1308:
    mv r3 r4
    j block_1310
block_1309:
    bne r4 r0 block_1312
    j block_1311
block_1311:
    addi r3 r0 1
    j block_1310
block_1312:
    mv r3 r0
    j block_1310
block_1310:
    bne r3 r0 block_1314
    j block_1313
block_1313:
    addi r3 r0 1
    j block_1286
block_1314:
    mv r3 r0
    j block_1286
block_1285:
    #0.0
    flui f6 0
    fclt f3 f6
    bc1t block_1316
block_1315:
    j block_1317
block_1316:
    fneg f3 f3
    j block_1317
block_1317:
    lw r4 r3 16
    lwcZ f6 r4 0
    fclt f3 f6
    bc1t block_1319
block_1318:
    mv r4 r0
    j block_1320
block_1319:
    #0.0
    flui f3 0
    fclt f4 f3
    bc1t block_1322
block_1321:
    fmv f3 f4
    j block_1323
block_1322:
    fneg f3 f4
    j block_1323
block_1323:
    lw r4 r3 16
    lwcZ f4 r4 4
    fclt f3 f4
    bc1t block_1325
block_1324:
    mv r4 r0
    j block_1320
block_1325:
    #0.0
    flui f3 0
    fclt f5 f3
    bc1t block_1327
block_1326:
    fmv f3 f5
    j block_1328
block_1327:
    fneg f3 f5
    j block_1328
block_1328:
    lw r4 r3 16
    lwcZ f4 r4 8
    fclt f3 f4
    bc1t block_1330
block_1329:
    mv r4 r0
    j block_1320
block_1330:
    addi r4 r0 1
    j block_1320
block_1320:
    bne r4 r0 block_1332
    j block_1331
block_1331:
    lw r3 r3 24
    bne r3 r0 block_1334
    j block_1333
block_1333:
    addi r3 r0 1
    j block_1286
block_1334:
    mv r3 r0
    j block_1286
block_1332:
    lw r3 r3 24
    j block_1286
block_1286:
    bne r3 r0 block_1336
    j block_1335
block_1335:
    addi r3 r0 3
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
    j block_1173
block_1336:
    mv r1 r0
    j block_1173
block_1283:
    addi r1 r0 1
    j block_1173
block_1281:
    mv r1 r0
    j block_1173
block_1228:
    addi r1 r0 1
    j block_1173
block_1226:
    mv r1 r0
    j block_1173
block_1172:
    addi r1 r0 1
    j block_1173
block_1173:
    bne r1 r0 block_1338
    j block_1337
block_1337:
    lw r1 r29 4
    addi r1 r1 1
    lw r2 r29 0
    sw r31 r29 8
    addi r29 r29 12
    jal shadow_check_and_group.4251
    subi r29 r29 12
    lw r31 r29 8
    jr r31
block_1338:
    addi r1 r0 1
    jr r31
block_1081:
    mv r1 r0
    jr r31
shadow_check_one_or_group.4292:
block_1339:
    sll r3 r1 2
    lwab r3 r2 r3
    addi r4 r0 -1
    beq r3 r4 block_1341
block_1340:
    sll r3 r3 2
    lw r3 r3 30332
    sw r2 r29 32
    sw r1 r29 28
    mv r2 r3
    mv r1 r0
    sw r31 r29 36
    addi r29 r29 40
    jal shadow_check_and_group.4251
    subi r29 r29 40
    lw r31 r29 36
    bne r1 r0 block_1343
    j block_1342
block_1342:
    lw r1 r29 28
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 32
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1345
block_1344:
    sll r2 r2 2
    lw r2 r2 30332
    sw r1 r29 12
    mv r1 r0
    sw r31 r29 36
    addi r29 r29 40
    jal shadow_check_and_group.4251
    subi r29 r29 40
    lw r31 r29 36
    bne r1 r0 block_1347
    j block_1346
block_1346:
    lw r1 r29 12
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 32
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1349
block_1348:
    sll r2 r2 2
    lw r2 r2 30332
    sw r1 r29 24
    mv r1 r0
    sw r31 r29 36
    addi r29 r29 40
    jal shadow_check_and_group.4251
    subi r29 r29 40
    lw r31 r29 36
    bne r1 r0 block_1351
    j block_1350
block_1350:
    lw r1 r29 24
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 32
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1353
block_1352:
    sll r2 r2 2
    lw r2 r2 30332
    sw r1 r29 4
    mv r1 r0
    sw r31 r29 36
    addi r29 r29 40
    jal shadow_check_and_group.4251
    subi r29 r29 40
    lw r31 r29 36
    bne r1 r0 block_1355
    j block_1354
block_1354:
    lw r1 r29 4
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 32
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1357
block_1356:
    sll r2 r2 2
    lw r2 r2 30332
    sw r1 r29 16
    mv r1 r0
    sw r31 r29 36
    addi r29 r29 40
    jal shadow_check_and_group.4251
    subi r29 r29 40
    lw r31 r29 36
    bne r1 r0 block_1359
    j block_1358
block_1358:
    lw r1 r29 16
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 32
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1361
block_1360:
    sll r2 r2 2
    lw r2 r2 30332
    sw r1 r29 8
    mv r1 r0
    sw r31 r29 36
    addi r29 r29 40
    jal shadow_check_and_group.4251
    subi r29 r29 40
    lw r31 r29 36
    bne r1 r0 block_1363
    j block_1362
block_1362:
    lw r1 r29 8
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 32
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1365
block_1364:
    sll r2 r2 2
    lw r2 r2 30332
    sw r1 r29 20
    mv r1 r0
    sw r31 r29 36
    addi r29 r29 40
    jal shadow_check_and_group.4251
    subi r29 r29 40
    lw r31 r29 36
    bne r1 r0 block_1367
    j block_1366
block_1366:
    lw r1 r29 20
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 32
    lwab r2 r3 r2
    addi r4 r0 -1
    beq r2 r4 block_1369
block_1368:
    sll r2 r2 2
    lw r2 r2 30332
    sw r1 r29 0
    mv r1 r0
    sw r31 r29 36
    addi r29 r29 40
    jal shadow_check_and_group.4251
    subi r29 r29 40
    lw r31 r29 36
    bne r1 r0 block_1371
    j block_1370
block_1370:
    lw r1 r29 0
    addi r1 r1 1
    lw r2 r29 32
    sw r31 r29 36
    addi r29 r29 40
    jal shadow_check_one_or_group.4292
    subi r29 r29 40
    lw r31 r29 36
    jr r31
block_1371:
    addi r1 r0 1
    jr r31
block_1369:
    mv r1 r0
    jr r31
block_1367:
    addi r1 r0 1
    jr r31
block_1365:
    mv r1 r0
    jr r31
block_1363:
    addi r1 r0 1
    jr r31
block_1361:
    mv r1 r0
    jr r31
block_1359:
    addi r1 r0 1
    jr r31
block_1357:
    mv r1 r0
    jr r31
block_1355:
    addi r1 r0 1
    jr r31
block_1353:
    mv r1 r0
    jr r31
block_1351:
    addi r1 r0 1
    jr r31
block_1349:
    mv r1 r0
    jr r31
block_1347:
    addi r1 r0 1
    jr r31
block_1345:
    mv r1 r0
    jr r31
block_1343:
    addi r1 r0 1
    jr r31
block_1341:
    mv r1 r0
    jr r31
shadow_check_one_or_matrix.4303:
block_1372:
    sll r3 r1 2
    lwab r3 r2 r3
    lw r4 r3 0
    addi r5 r0 -1
    beq r4 r5 block_1374
block_1373:
    addi r5 r0 99
    sw r2 r29 24
    sw r1 r29 20
    sw r3 r29 8
    beq r4 r5 block_1376
block_1375:
    sll r5 r4 2
    lw r5 r5 30048
    lwcZ f0 r0 30552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 30992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_1379
block_1378:
    addi r7 r0 2
    beq r6 r7 block_1382
block_1381:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1384
block_1383:
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
    beq r6 r0 block_1386
block_1385:
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
    j block_1387
block_1386:
    fmv f0 f5
    j block_1387
block_1387:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_1389
block_1388:
    j block_1390
block_1389:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_1390
block_1390:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_1392
block_1391:
    mv r6 r0
    j block_1393
block_1392:
    addi r6 r0 1
    j block_1393
block_1393:
    bne r6 r0 block_1395
    j block_1394
block_1394:
    mv r4 r0
    j block_1380
block_1395:
    lw r5 r5 24
    bne r5 r0 block_1397
    j block_1396
block_1396:
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
    swcZ f0 r0 30540
    j block_1398
block_1397:
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
    swcZ f0 r0 30540
    j block_1398
block_1398:
    addi r4 r0 1
    j block_1380
block_1384:
    mv r4 r0
    j block_1380
block_1382:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1400
block_1399:
    mv r5 r0
    j block_1401
block_1400:
    addi r5 r0 1
    j block_1401
block_1401:
    bne r5 r0 block_1403
    j block_1402
block_1402:
    mv r4 r0
    j block_1380
block_1403:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_1380
block_1379:
    lw r6 r0 30988
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
    bc1t block_1405
block_1404:
    j block_1406
block_1405:
    fneg f4 f4
    j block_1406
block_1406:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1408
block_1407:
    mv r7 r0
    j block_1409
block_1408:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1411
block_1410:
    j block_1412
block_1411:
    fneg f4 f4
    j block_1412
block_1412:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1414
block_1413:
    mv r7 r0
    j block_1409
block_1414:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1416
block_1415:
    mv r7 r0
    j block_1417
block_1416:
    addi r7 r0 1
    j block_1417
block_1417:
    bne r7 r0 block_1419
    j block_1418
block_1418:
    addi r7 r0 1
    j block_1409
block_1419:
    mv r7 r0
    j block_1409
block_1409:
    bne r7 r0 block_1421
    j block_1420
block_1420:
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
    bc1t block_1423
block_1422:
    j block_1424
block_1423:
    fneg f4 f4
    j block_1424
block_1424:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_1426
block_1425:
    mv r7 r0
    j block_1427
block_1426:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1429
block_1428:
    j block_1430
block_1429:
    fneg f4 f4
    j block_1430
block_1430:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1432
block_1431:
    mv r7 r0
    j block_1427
block_1432:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1434
block_1433:
    mv r7 r0
    j block_1435
block_1434:
    addi r7 r0 1
    j block_1435
block_1435:
    bne r7 r0 block_1437
    j block_1436
block_1436:
    addi r7 r0 1
    j block_1427
block_1437:
    mv r7 r0
    j block_1427
block_1427:
    bne r7 r0 block_1439
    j block_1438
block_1438:
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
    bc1t block_1441
block_1440:
    j block_1442
block_1441:
    fneg f0 f0
    j block_1442
block_1442:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_1444
block_1443:
    mv r4 r0
    j block_1445
block_1444:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_1447
block_1446:
    j block_1448
block_1447:
    fneg f0 f0
    j block_1448
block_1448:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_1450
block_1449:
    mv r4 r0
    j block_1445
block_1450:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_1452
block_1451:
    mv r4 r0
    j block_1453
block_1452:
    addi r4 r0 1
    j block_1453
block_1453:
    bne r4 r0 block_1455
    j block_1454
block_1454:
    addi r4 r0 1
    j block_1445
block_1455:
    mv r4 r0
    j block_1445
block_1445:
    bne r4 r0 block_1457
    j block_1456
block_1456:
    mv r4 r0
    j block_1380
block_1457:
    swcZ f2 r0 30540
    addi r4 r0 3
    j block_1380
block_1439:
    swcZ f3 r0 30540
    addi r4 r0 2
    j block_1380
block_1421:
    swcZ f3 r0 30540
    addi r4 r0 1
    j block_1380
block_1380:
    beq r4 r0 block_1459
block_1458:
    lwcZ f0 r0 30540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f0 f1
    bc1t block_1461
block_1460:
    mv r1 r0
    j block_1377
block_1461:
    lw r4 r3 4
    addi r5 r0 -1
    beq r4 r5 block_1463
block_1462:
    sll r4 r4 2
    lw r4 r4 30332
    mv r2 r4
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1466
    j block_1465
block_1465:
    lw r1 r29 8
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_1468
block_1467:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1470
    j block_1469
block_1469:
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_1472
block_1471:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1474
    j block_1473
block_1473:
    lw r1 r29 8
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_1476
block_1475:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1478
    j block_1477
block_1477:
    lw r1 r29 8
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_1480
block_1479:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1482
    j block_1481
block_1481:
    lw r1 r29 8
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_1484
block_1483:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1486
    j block_1485
block_1485:
    lw r1 r29 8
    lw r2 r1 28
    addi r3 r0 -1
    beq r2 r3 block_1488
block_1487:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1490
    j block_1489
block_1489:
    addi r1 r0 8
    lw r2 r29 8
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1464
block_1490:
    addi r1 r0 1
    j block_1464
block_1488:
    mv r1 r0
    j block_1464
block_1486:
    addi r1 r0 1
    j block_1464
block_1484:
    mv r1 r0
    j block_1464
block_1482:
    addi r1 r0 1
    j block_1464
block_1480:
    mv r1 r0
    j block_1464
block_1478:
    addi r1 r0 1
    j block_1464
block_1476:
    mv r1 r0
    j block_1464
block_1474:
    addi r1 r0 1
    j block_1464
block_1472:
    mv r1 r0
    j block_1464
block_1470:
    addi r1 r0 1
    j block_1464
block_1468:
    mv r1 r0
    j block_1464
block_1466:
    addi r1 r0 1
    j block_1464
block_1463:
    mv r1 r0
    j block_1464
block_1464:
    bne r1 r0 block_1492
    j block_1491
block_1491:
    mv r1 r0
    j block_1377
block_1492:
    addi r1 r0 1
    j block_1377
block_1459:
    mv r1 r0
    j block_1377
block_1376:
    addi r1 r0 1
    j block_1377
block_1377:
    bne r1 r0 block_1494
    j block_1493
block_1493:
    lw r1 r29 20
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 24
    lwab r2 r3 r2
    lw r4 r2 0
    addi r5 r0 -1
    beq r4 r5 block_1496
block_1495:
    addi r5 r0 99
    sw r2 r29 16
    sw r1 r29 4
    beq r4 r5 block_1498
block_1497:
    sll r5 r4 2
    lw r5 r5 30048
    lwcZ f0 r0 30552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 30992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_1501
block_1500:
    addi r7 r0 2
    beq r6 r7 block_1504
block_1503:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1506
block_1505:
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
    beq r6 r0 block_1508
block_1507:
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
    j block_1509
block_1508:
    fmv f0 f5
    j block_1509
block_1509:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_1511
block_1510:
    j block_1512
block_1511:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_1512
block_1512:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_1514
block_1513:
    mv r6 r0
    j block_1515
block_1514:
    addi r6 r0 1
    j block_1515
block_1515:
    bne r6 r0 block_1517
    j block_1516
block_1516:
    mv r4 r0
    j block_1502
block_1517:
    lw r5 r5 24
    bne r5 r0 block_1519
    j block_1518
block_1518:
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
    swcZ f0 r0 30540
    j block_1520
block_1519:
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
    swcZ f0 r0 30540
    j block_1520
block_1520:
    addi r4 r0 1
    j block_1502
block_1506:
    mv r4 r0
    j block_1502
block_1504:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1522
block_1521:
    mv r5 r0
    j block_1523
block_1522:
    addi r5 r0 1
    j block_1523
block_1523:
    bne r5 r0 block_1525
    j block_1524
block_1524:
    mv r4 r0
    j block_1502
block_1525:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_1502
block_1501:
    lw r6 r0 30988
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
    bc1t block_1527
block_1526:
    j block_1528
block_1527:
    fneg f4 f4
    j block_1528
block_1528:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1530
block_1529:
    mv r7 r0
    j block_1531
block_1530:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1533
block_1532:
    j block_1534
block_1533:
    fneg f4 f4
    j block_1534
block_1534:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1536
block_1535:
    mv r7 r0
    j block_1531
block_1536:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1538
block_1537:
    mv r7 r0
    j block_1539
block_1538:
    addi r7 r0 1
    j block_1539
block_1539:
    bne r7 r0 block_1541
    j block_1540
block_1540:
    addi r7 r0 1
    j block_1531
block_1541:
    mv r7 r0
    j block_1531
block_1531:
    bne r7 r0 block_1543
    j block_1542
block_1542:
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
    bc1t block_1545
block_1544:
    j block_1546
block_1545:
    fneg f4 f4
    j block_1546
block_1546:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_1548
block_1547:
    mv r7 r0
    j block_1549
block_1548:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1551
block_1550:
    j block_1552
block_1551:
    fneg f4 f4
    j block_1552
block_1552:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1554
block_1553:
    mv r7 r0
    j block_1549
block_1554:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1556
block_1555:
    mv r7 r0
    j block_1557
block_1556:
    addi r7 r0 1
    j block_1557
block_1557:
    bne r7 r0 block_1559
    j block_1558
block_1558:
    addi r7 r0 1
    j block_1549
block_1559:
    mv r7 r0
    j block_1549
block_1549:
    bne r7 r0 block_1561
    j block_1560
block_1560:
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
    bc1t block_1563
block_1562:
    j block_1564
block_1563:
    fneg f0 f0
    j block_1564
block_1564:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_1566
block_1565:
    mv r4 r0
    j block_1567
block_1566:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_1569
block_1568:
    j block_1570
block_1569:
    fneg f0 f0
    j block_1570
block_1570:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_1572
block_1571:
    mv r4 r0
    j block_1567
block_1572:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_1574
block_1573:
    mv r4 r0
    j block_1575
block_1574:
    addi r4 r0 1
    j block_1575
block_1575:
    bne r4 r0 block_1577
    j block_1576
block_1576:
    addi r4 r0 1
    j block_1567
block_1577:
    mv r4 r0
    j block_1567
block_1567:
    bne r4 r0 block_1579
    j block_1578
block_1578:
    mv r4 r0
    j block_1502
block_1579:
    swcZ f2 r0 30540
    addi r4 r0 3
    j block_1502
block_1561:
    swcZ f3 r0 30540
    addi r4 r0 2
    j block_1502
block_1543:
    swcZ f3 r0 30540
    addi r4 r0 1
    j block_1502
block_1502:
    beq r4 r0 block_1581
block_1580:
    lwcZ f0 r0 30540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f0 f1
    bc1t block_1583
block_1582:
    mv r1 r0
    j block_1499
block_1583:
    lw r4 r2 4
    addi r5 r0 -1
    beq r4 r5 block_1585
block_1584:
    sll r4 r4 2
    lw r4 r4 30332
    mv r2 r4
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1588
    j block_1587
block_1587:
    lw r1 r29 16
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_1590
block_1589:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1592
    j block_1591
block_1591:
    lw r1 r29 16
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_1594
block_1593:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1596
    j block_1595
block_1595:
    lw r1 r29 16
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_1598
block_1597:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1600
    j block_1599
block_1599:
    lw r1 r29 16
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_1602
block_1601:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1604
    j block_1603
block_1603:
    lw r1 r29 16
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_1606
block_1605:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1608
    j block_1607
block_1607:
    addi r1 r0 7
    lw r2 r29 16
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1586
block_1608:
    addi r1 r0 1
    j block_1586
block_1606:
    mv r1 r0
    j block_1586
block_1604:
    addi r1 r0 1
    j block_1586
block_1602:
    mv r1 r0
    j block_1586
block_1600:
    addi r1 r0 1
    j block_1586
block_1598:
    mv r1 r0
    j block_1586
block_1596:
    addi r1 r0 1
    j block_1586
block_1594:
    mv r1 r0
    j block_1586
block_1592:
    addi r1 r0 1
    j block_1586
block_1590:
    mv r1 r0
    j block_1586
block_1588:
    addi r1 r0 1
    j block_1586
block_1585:
    mv r1 r0
    j block_1586
block_1586:
    bne r1 r0 block_1610
    j block_1609
block_1609:
    mv r1 r0
    j block_1499
block_1610:
    addi r1 r0 1
    j block_1499
block_1581:
    mv r1 r0
    j block_1499
block_1498:
    addi r1 r0 1
    j block_1499
block_1499:
    bne r1 r0 block_1612
    j block_1611
block_1611:
    lw r1 r29 4
    addi r1 r1 1
    lw r2 r29 24
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 32
    lw r31 r29 28
    jr r31
block_1612:
    lw r1 r29 16
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_1614
block_1613:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1617
    j block_1616
block_1616:
    lw r1 r29 16
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_1619
block_1618:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1621
    j block_1620
block_1620:
    lw r1 r29 16
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_1623
block_1622:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1625
    j block_1624
block_1624:
    lw r1 r29 16
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_1627
block_1626:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1629
    j block_1628
block_1628:
    lw r1 r29 16
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_1631
block_1630:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1633
    j block_1632
block_1632:
    lw r1 r29 16
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_1635
block_1634:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1637
    j block_1636
block_1636:
    addi r1 r0 7
    lw r2 r29 16
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1615
block_1637:
    addi r1 r0 1
    j block_1615
block_1635:
    mv r1 r0
    j block_1615
block_1633:
    addi r1 r0 1
    j block_1615
block_1631:
    mv r1 r0
    j block_1615
block_1629:
    addi r1 r0 1
    j block_1615
block_1627:
    mv r1 r0
    j block_1615
block_1625:
    addi r1 r0 1
    j block_1615
block_1623:
    mv r1 r0
    j block_1615
block_1621:
    addi r1 r0 1
    j block_1615
block_1619:
    mv r1 r0
    j block_1615
block_1617:
    addi r1 r0 1
    j block_1615
block_1614:
    mv r1 r0
    j block_1615
block_1615:
    bne r1 r0 block_1639
    j block_1638
block_1638:
    lw r1 r29 4
    addi r1 r1 1
    lw r2 r29 24
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 32
    lw r31 r29 28
    jr r31
block_1639:
    addi r1 r0 1
    jr r31
block_1496:
    mv r1 r0
    jr r31
block_1494:
    lw r1 r29 8
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_1641
block_1640:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1644
    j block_1643
block_1643:
    lw r1 r29 8
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_1646
block_1645:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1648
    j block_1647
block_1647:
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_1650
block_1649:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1652
    j block_1651
block_1651:
    lw r1 r29 8
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_1654
block_1653:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1656
    j block_1655
block_1655:
    lw r1 r29 8
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_1658
block_1657:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1660
    j block_1659
block_1659:
    lw r1 r29 8
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_1662
block_1661:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1664
    j block_1663
block_1663:
    lw r1 r29 8
    lw r2 r1 28
    addi r3 r0 -1
    beq r2 r3 block_1666
block_1665:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1668
    j block_1667
block_1667:
    addi r1 r0 8
    lw r2 r29 8
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1642
block_1668:
    addi r1 r0 1
    j block_1642
block_1666:
    mv r1 r0
    j block_1642
block_1664:
    addi r1 r0 1
    j block_1642
block_1662:
    mv r1 r0
    j block_1642
block_1660:
    addi r1 r0 1
    j block_1642
block_1658:
    mv r1 r0
    j block_1642
block_1656:
    addi r1 r0 1
    j block_1642
block_1654:
    mv r1 r0
    j block_1642
block_1652:
    addi r1 r0 1
    j block_1642
block_1650:
    mv r1 r0
    j block_1642
block_1648:
    addi r1 r0 1
    j block_1642
block_1646:
    mv r1 r0
    j block_1642
block_1644:
    addi r1 r0 1
    j block_1642
block_1641:
    mv r1 r0
    j block_1642
block_1642:
    bne r1 r0 block_1670
    j block_1669
block_1669:
    lw r1 r29 20
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 24
    lwab r2 r3 r2
    lw r4 r2 0
    addi r5 r0 -1
    beq r4 r5 block_1672
block_1671:
    addi r5 r0 99
    sw r2 r29 12
    sw r1 r29 0
    beq r4 r5 block_1674
block_1673:
    sll r5 r4 2
    lw r5 r5 30048
    lwcZ f0 r0 30552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 30992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_1677
block_1676:
    addi r7 r0 2
    beq r6 r7 block_1680
block_1679:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1682
block_1681:
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
    beq r6 r0 block_1684
block_1683:
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
    j block_1685
block_1684:
    fmv f0 f5
    j block_1685
block_1685:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_1687
block_1686:
    j block_1688
block_1687:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_1688
block_1688:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_1690
block_1689:
    mv r6 r0
    j block_1691
block_1690:
    addi r6 r0 1
    j block_1691
block_1691:
    bne r6 r0 block_1693
    j block_1692
block_1692:
    mv r4 r0
    j block_1678
block_1693:
    lw r5 r5 24
    bne r5 r0 block_1695
    j block_1694
block_1694:
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
    swcZ f0 r0 30540
    j block_1696
block_1695:
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
    swcZ f0 r0 30540
    j block_1696
block_1696:
    addi r4 r0 1
    j block_1678
block_1682:
    mv r4 r0
    j block_1678
block_1680:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1698
block_1697:
    mv r5 r0
    j block_1699
block_1698:
    addi r5 r0 1
    j block_1699
block_1699:
    bne r5 r0 block_1701
    j block_1700
block_1700:
    mv r4 r0
    j block_1678
block_1701:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_1678
block_1677:
    lw r6 r0 30988
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
    bc1t block_1703
block_1702:
    j block_1704
block_1703:
    fneg f4 f4
    j block_1704
block_1704:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1706
block_1705:
    mv r7 r0
    j block_1707
block_1706:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1709
block_1708:
    j block_1710
block_1709:
    fneg f4 f4
    j block_1710
block_1710:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1712
block_1711:
    mv r7 r0
    j block_1707
block_1712:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1714
block_1713:
    mv r7 r0
    j block_1715
block_1714:
    addi r7 r0 1
    j block_1715
block_1715:
    bne r7 r0 block_1717
    j block_1716
block_1716:
    addi r7 r0 1
    j block_1707
block_1717:
    mv r7 r0
    j block_1707
block_1707:
    bne r7 r0 block_1719
    j block_1718
block_1718:
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
    bc1t block_1721
block_1720:
    j block_1722
block_1721:
    fneg f4 f4
    j block_1722
block_1722:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_1724
block_1723:
    mv r7 r0
    j block_1725
block_1724:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1727
block_1726:
    j block_1728
block_1727:
    fneg f4 f4
    j block_1728
block_1728:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1730
block_1729:
    mv r7 r0
    j block_1725
block_1730:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_1732
block_1731:
    mv r7 r0
    j block_1733
block_1732:
    addi r7 r0 1
    j block_1733
block_1733:
    bne r7 r0 block_1735
    j block_1734
block_1734:
    addi r7 r0 1
    j block_1725
block_1735:
    mv r7 r0
    j block_1725
block_1725:
    bne r7 r0 block_1737
    j block_1736
block_1736:
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
    bc1t block_1739
block_1738:
    j block_1740
block_1739:
    fneg f0 f0
    j block_1740
block_1740:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_1742
block_1741:
    mv r4 r0
    j block_1743
block_1742:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_1745
block_1744:
    j block_1746
block_1745:
    fneg f0 f0
    j block_1746
block_1746:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_1748
block_1747:
    mv r4 r0
    j block_1743
block_1748:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_1750
block_1749:
    mv r4 r0
    j block_1751
block_1750:
    addi r4 r0 1
    j block_1751
block_1751:
    bne r4 r0 block_1753
    j block_1752
block_1752:
    addi r4 r0 1
    j block_1743
block_1753:
    mv r4 r0
    j block_1743
block_1743:
    bne r4 r0 block_1755
    j block_1754
block_1754:
    mv r4 r0
    j block_1678
block_1755:
    swcZ f2 r0 30540
    addi r4 r0 3
    j block_1678
block_1737:
    swcZ f3 r0 30540
    addi r4 r0 2
    j block_1678
block_1719:
    swcZ f3 r0 30540
    addi r4 r0 1
    j block_1678
block_1678:
    beq r4 r0 block_1757
block_1756:
    lwcZ f0 r0 30540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f0 f1
    bc1t block_1759
block_1758:
    mv r1 r0
    j block_1675
block_1759:
    lw r4 r2 4
    addi r5 r0 -1
    beq r4 r5 block_1761
block_1760:
    sll r4 r4 2
    lw r4 r4 30332
    mv r2 r4
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1764
    j block_1763
block_1763:
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_1766
block_1765:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1768
    j block_1767
block_1767:
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_1770
block_1769:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1772
    j block_1771
block_1771:
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_1774
block_1773:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1776
    j block_1775
block_1775:
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_1778
block_1777:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1780
    j block_1779
block_1779:
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_1782
block_1781:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1784
    j block_1783
block_1783:
    addi r1 r0 7
    lw r2 r29 12
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1762
block_1784:
    addi r1 r0 1
    j block_1762
block_1782:
    mv r1 r0
    j block_1762
block_1780:
    addi r1 r0 1
    j block_1762
block_1778:
    mv r1 r0
    j block_1762
block_1776:
    addi r1 r0 1
    j block_1762
block_1774:
    mv r1 r0
    j block_1762
block_1772:
    addi r1 r0 1
    j block_1762
block_1770:
    mv r1 r0
    j block_1762
block_1768:
    addi r1 r0 1
    j block_1762
block_1766:
    mv r1 r0
    j block_1762
block_1764:
    addi r1 r0 1
    j block_1762
block_1761:
    mv r1 r0
    j block_1762
block_1762:
    bne r1 r0 block_1786
    j block_1785
block_1785:
    mv r1 r0
    j block_1675
block_1786:
    addi r1 r0 1
    j block_1675
block_1757:
    mv r1 r0
    j block_1675
block_1674:
    addi r1 r0 1
    j block_1675
block_1675:
    bne r1 r0 block_1788
    j block_1787
block_1787:
    lw r1 r29 0
    addi r1 r1 1
    lw r2 r29 24
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 32
    lw r31 r29 28
    jr r31
block_1788:
    lw r1 r29 12
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_1790
block_1789:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1793
    j block_1792
block_1792:
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_1795
block_1794:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1797
    j block_1796
block_1796:
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_1799
block_1798:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1801
    j block_1800
block_1800:
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_1803
block_1802:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1805
    j block_1804
block_1804:
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_1807
block_1806:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1809
    j block_1808
block_1808:
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_1811
block_1810:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_and_group.4251
    subi r29 r29 32
    lw r31 r29 28
    bne r1 r0 block_1813
    j block_1812
block_1812:
    addi r1 r0 7
    lw r2 r29 12
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_group.4292
    subi r29 r29 32
    lw r31 r29 28
    j block_1791
block_1813:
    addi r1 r0 1
    j block_1791
block_1811:
    mv r1 r0
    j block_1791
block_1809:
    addi r1 r0 1
    j block_1791
block_1807:
    mv r1 r0
    j block_1791
block_1805:
    addi r1 r0 1
    j block_1791
block_1803:
    mv r1 r0
    j block_1791
block_1801:
    addi r1 r0 1
    j block_1791
block_1799:
    mv r1 r0
    j block_1791
block_1797:
    addi r1 r0 1
    j block_1791
block_1795:
    mv r1 r0
    j block_1791
block_1793:
    addi r1 r0 1
    j block_1791
block_1790:
    mv r1 r0
    j block_1791
block_1791:
    bne r1 r0 block_1815
    j block_1814
block_1814:
    lw r1 r29 0
    addi r1 r1 1
    lw r2 r29 24
    sw r31 r29 28
    addi r29 r29 32
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 32
    lw r31 r29 28
    jr r31
block_1815:
    addi r1 r0 1
    jr r31
block_1672:
    mv r1 r0
    jr r31
block_1670:
    addi r1 r0 1
    jr r31
block_1374:
    mv r1 r0
    jr r31
solve_each_element.4326:
block_1816:
    sll r4 r1 2
    lwab r4 r2 r4
    addi r5 r0 -1
    beq r4 r5 block_1818
block_1817:
    sll r5 r4 2
    lw r5 r5 30048
    lwcZ f0 r0 30636
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 30640
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 30644
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_1820
block_1819:
    addi r7 r0 2
    beq r6 r7 block_1823
block_1822:
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
    beq r6 r0 block_1825
block_1824:
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
    j block_1826
block_1825:
    fmv f3 f6
    j block_1826
block_1826:
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1828
block_1827:
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
    beq r6 r0 block_1830
block_1829:
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
    j block_1831
block_1830:
    fmv f4 f7
    j block_1831
block_1831:
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
    beq r6 r0 block_1833
block_1832:
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
    j block_1834
block_1833:
    fmv f0 f5
    j block_1834
block_1834:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_1836
block_1835:
    j block_1837
block_1836:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_1837
block_1837:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_1839
block_1838:
    mv r6 r0
    j block_1840
block_1839:
    addi r6 r0 1
    j block_1840
block_1840:
    bne r6 r0 block_1842
    j block_1841
block_1841:
    mv r5 r0
    j block_1821
block_1842:
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
    bne r5 r0 block_1844
    j block_1843
block_1843:
    fneg f0 f0
    j block_1845
block_1844:
    j block_1845
block_1845:
    fsub f0 f0 f4
    finv_init f1 f3
    #2.0
    flui f2 16384
    fmul f3 f3 f1
    fsub f2 f2 f3
    fmul f1 f1 f2
    fmul f0 f0 f1
    swcZ f0 r0 30540
    addi r5 r0 1
    j block_1821
block_1828:
    mv r5 r0
    j block_1821
block_1823:
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
    bc1t block_1847
block_1846:
    mv r6 r0
    j block_1848
block_1847:
    addi r6 r0 1
    j block_1848
block_1848:
    bne r6 r0 block_1850
    j block_1849
block_1849:
    mv r5 r0
    j block_1821
block_1850:
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
    swcZ f0 r0 30540
    addi r5 r0 1
    j block_1821
block_1820:
    lwcZ f3 r3 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1852
block_1851:
    lw r6 r5 16
    lw r7 r5 24
    lwcZ f3 r3 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1855
block_1854:
    mv r8 r0
    j block_1856
block_1855:
    addi r8 r0 1
    j block_1856
block_1856:
    bne r7 r0 block_1858
    j block_1857
block_1857:
    mv r7 r8
    j block_1859
block_1858:
    bne r8 r0 block_1861
    j block_1860
block_1860:
    addi r7 r0 1
    j block_1859
block_1861:
    mv r7 r0
    j block_1859
block_1859:
    lwcZ f3 r6 0
    bne r7 r0 block_1863
    j block_1862
block_1862:
    fneg f3 f3
    j block_1864
block_1863:
    j block_1864
block_1864:
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
    bc1t block_1866
block_1865:
    j block_1867
block_1866:
    fneg f4 f4
    j block_1867
block_1867:
    lwcZ f5 r6 4
    fclt f4 f5
    bc1t block_1869
block_1868:
    mv r6 r0
    j block_1853
block_1869:
    lwcZ f4 r3 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1871
block_1870:
    j block_1872
block_1871:
    fneg f4 f4
    j block_1872
block_1872:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_1874
block_1873:
    mv r6 r0
    j block_1853
block_1874:
    swcZ f3 r0 30540
    addi r6 r0 1
    j block_1853
block_1852:
    mv r6 r0
    j block_1853
block_1853:
    bne r6 r0 block_1876
    j block_1875
block_1875:
    lwcZ f3 r3 4
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1878
block_1877:
    lw r6 r5 16
    lw r7 r5 24
    lwcZ f3 r3 4
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1881
block_1880:
    mv r8 r0
    j block_1882
block_1881:
    addi r8 r0 1
    j block_1882
block_1882:
    bne r7 r0 block_1884
    j block_1883
block_1883:
    mv r7 r8
    j block_1885
block_1884:
    bne r8 r0 block_1887
    j block_1886
block_1886:
    addi r7 r0 1
    j block_1885
block_1887:
    mv r7 r0
    j block_1885
block_1885:
    lwcZ f3 r6 4
    bne r7 r0 block_1889
    j block_1888
block_1888:
    fneg f3 f3
    j block_1890
block_1889:
    j block_1890
block_1890:
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
    bc1t block_1892
block_1891:
    j block_1893
block_1892:
    fneg f4 f4
    j block_1893
block_1893:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_1895
block_1894:
    mv r6 r0
    j block_1879
block_1895:
    lwcZ f4 r3 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1897
block_1896:
    j block_1898
block_1897:
    fneg f4 f4
    j block_1898
block_1898:
    lwcZ f5 r6 0
    fclt f4 f5
    bc1t block_1900
block_1899:
    mv r6 r0
    j block_1879
block_1900:
    swcZ f3 r0 30540
    addi r6 r0 1
    j block_1879
block_1878:
    mv r6 r0
    j block_1879
block_1879:
    bne r6 r0 block_1902
    j block_1901
block_1901:
    lwcZ f3 r3 8
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_1904
block_1903:
    lw r6 r5 16
    lw r5 r5 24
    lwcZ f3 r3 8
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_1907
block_1906:
    mv r7 r0
    j block_1908
block_1907:
    addi r7 r0 1
    j block_1908
block_1908:
    bne r5 r0 block_1910
    j block_1909
block_1909:
    mv r5 r7
    j block_1911
block_1910:
    bne r7 r0 block_1913
    j block_1912
block_1912:
    addi r5 r0 1
    j block_1911
block_1913:
    mv r5 r0
    j block_1911
block_1911:
    lwcZ f3 r6 8
    bne r5 r0 block_1915
    j block_1914
block_1914:
    fneg f3 f3
    j block_1916
block_1915:
    j block_1916
block_1916:
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
    bc1t block_1918
block_1917:
    j block_1919
block_1918:
    fneg f0 f0
    j block_1919
block_1919:
    lwcZ f3 r6 0
    fclt f0 f3
    bc1t block_1921
block_1920:
    mv r5 r0
    j block_1905
block_1921:
    lwcZ f0 r3 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_1923
block_1922:
    j block_1924
block_1923:
    fneg f0 f0
    j block_1924
block_1924:
    lwcZ f1 r6 4
    fclt f0 f1
    bc1t block_1926
block_1925:
    mv r5 r0
    j block_1905
block_1926:
    swcZ f2 r0 30540
    addi r5 r0 1
    j block_1905
block_1904:
    mv r5 r0
    j block_1905
block_1905:
    bne r5 r0 block_1928
    j block_1927
block_1927:
    mv r5 r0
    j block_1821
block_1928:
    addi r5 r0 3
    j block_1821
block_1902:
    addi r5 r0 2
    j block_1821
block_1876:
    addi r5 r0 1
    j block_1821
block_1821:
    beq r5 r0 block_1930
block_1929:
    lwcZ f0 r0 30540
    #0.0
    flui f1 0
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    fclt f1 f0
    bc1t block_1932
block_1931:
    j block_1933
block_1932:
    lwcZ f1 r0 30548
    fclt f0 f1
    bc1t block_1935
block_1934:
    j block_1933
block_1935:
    #0.01
    flui f1 15395
    fori f1 f1 -10486
    fadd f0 f0 f1
    lwcZ f1 r3 0
    fmul f1 f1 f0
    lwcZ f2 r0 30636
    fadd f1 f1 f2
    lwcZ f2 r3 4
    fmul f2 f2 f0
    lwcZ f3 r0 30640
    fadd f2 f2 f3
    lwcZ f3 r3 8
    fmul f3 f3 f0
    lwcZ f4 r0 30644
    fadd f3 f3 f4
    lw r6 r2 0
    addi r7 r0 -1
    sw r5 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r4 r29 12
    beq r6 r7 block_1937
block_1936:
    sll r6 r6 2
    lw r6 r6 30048
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
    beq r7 r8 block_1940
block_1939:
    addi r8 r0 2
    beq r7 r8 block_1943
block_1942:
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
    beq r7 r0 block_1945
block_1944:
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
    j block_1946
block_1945:
    fmv f4 f7
    j block_1946
block_1946:
    lw r7 r6 4
    addi r8 r0 3
    beq r7 r8 block_1948
block_1947:
    j block_1949
block_1948:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_1949
block_1949:
    lw r6 r6 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_1951
block_1950:
    mv r7 r0
    j block_1952
block_1951:
    addi r7 r0 1
    j block_1952
block_1952:
    bne r6 r0 block_1954
    j block_1953
block_1953:
    mv r6 r7
    j block_1955
block_1954:
    bne r7 r0 block_1957
    j block_1956
block_1956:
    addi r6 r0 1
    j block_1955
block_1957:
    mv r6 r0
    j block_1955
block_1955:
    bne r6 r0 block_1959
    j block_1958
block_1958:
    addi r6 r0 1
    j block_1941
block_1959:
    mv r6 r0
    j block_1941
block_1943:
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
    bc1t block_1961
block_1960:
    mv r7 r0
    j block_1962
block_1961:
    addi r7 r0 1
    j block_1962
block_1962:
    bne r6 r0 block_1964
    j block_1963
block_1963:
    mv r6 r7
    j block_1965
block_1964:
    bne r7 r0 block_1967
    j block_1966
block_1966:
    addi r6 r0 1
    j block_1965
block_1967:
    mv r6 r0
    j block_1965
block_1965:
    bne r6 r0 block_1969
    j block_1968
block_1968:
    addi r6 r0 1
    j block_1941
block_1969:
    mv r6 r0
    j block_1941
block_1940:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_1971
block_1970:
    j block_1972
block_1971:
    fneg f4 f4
    j block_1972
block_1972:
    lw r7 r6 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_1974
block_1973:
    mv r7 r0
    j block_1975
block_1974:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_1977
block_1976:
    fmv f4 f5
    j block_1978
block_1977:
    fneg f4 f5
    j block_1978
block_1978:
    lw r7 r6 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_1980
block_1979:
    mv r7 r0
    j block_1975
block_1980:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_1982
block_1981:
    fmv f4 f6
    j block_1983
block_1982:
    fneg f4 f6
    j block_1983
block_1983:
    lw r7 r6 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_1985
block_1984:
    mv r7 r0
    j block_1975
block_1985:
    addi r7 r0 1
    j block_1975
block_1975:
    bne r7 r0 block_1987
    j block_1986
block_1986:
    lw r6 r6 24
    bne r6 r0 block_1989
    j block_1988
block_1988:
    addi r6 r0 1
    j block_1941
block_1989:
    mv r6 r0
    j block_1941
block_1987:
    lw r6 r6 24
    j block_1941
block_1941:
    bne r6 r0 block_1991
    j block_1990
block_1990:
    lw r6 r2 4
    addi r7 r0 -1
    beq r6 r7 block_1993
block_1992:
    sll r6 r6 2
    lw r6 r6 30048
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
    beq r7 r8 block_1995
block_1994:
    addi r8 r0 2
    beq r7 r8 block_1998
block_1997:
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
    beq r7 r0 block_2000
block_1999:
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
    j block_2001
block_2000:
    fmv f4 f7
    j block_2001
block_2001:
    lw r7 r6 4
    addi r8 r0 3
    beq r7 r8 block_2003
block_2002:
    j block_2004
block_2003:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_2004
block_2004:
    lw r6 r6 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2006
block_2005:
    mv r7 r0
    j block_2007
block_2006:
    addi r7 r0 1
    j block_2007
block_2007:
    bne r6 r0 block_2009
    j block_2008
block_2008:
    mv r6 r7
    j block_2010
block_2009:
    bne r7 r0 block_2012
    j block_2011
block_2011:
    addi r6 r0 1
    j block_2010
block_2012:
    mv r6 r0
    j block_2010
block_2010:
    bne r6 r0 block_2014
    j block_2013
block_2013:
    addi r6 r0 1
    j block_1996
block_2014:
    mv r6 r0
    j block_1996
block_1998:
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
    bc1t block_2016
block_2015:
    mv r7 r0
    j block_2017
block_2016:
    addi r7 r0 1
    j block_2017
block_2017:
    bne r6 r0 block_2019
    j block_2018
block_2018:
    mv r6 r7
    j block_2020
block_2019:
    bne r7 r0 block_2022
    j block_2021
block_2021:
    addi r6 r0 1
    j block_2020
block_2022:
    mv r6 r0
    j block_2020
block_2020:
    bne r6 r0 block_2024
    j block_2023
block_2023:
    addi r6 r0 1
    j block_1996
block_2024:
    mv r6 r0
    j block_1996
block_1995:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_2026
block_2025:
    j block_2027
block_2026:
    fneg f4 f4
    j block_2027
block_2027:
    lw r7 r6 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_2029
block_2028:
    mv r7 r0
    j block_2030
block_2029:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_2032
block_2031:
    fmv f4 f5
    j block_2033
block_2032:
    fneg f4 f5
    j block_2033
block_2033:
    lw r7 r6 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_2035
block_2034:
    mv r7 r0
    j block_2030
block_2035:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_2037
block_2036:
    fmv f4 f6
    j block_2038
block_2037:
    fneg f4 f6
    j block_2038
block_2038:
    lw r7 r6 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_2040
block_2039:
    mv r7 r0
    j block_2030
block_2040:
    addi r7 r0 1
    j block_2030
block_2030:
    bne r7 r0 block_2042
    j block_2041
block_2041:
    lw r6 r6 24
    bne r6 r0 block_2044
    j block_2043
block_2043:
    addi r6 r0 1
    j block_1996
block_2044:
    mv r6 r0
    j block_1996
block_2042:
    lw r6 r6 24
    j block_1996
block_1996:
    bne r6 r0 block_2046
    j block_2045
block_2045:
    lw r6 r2 8
    addi r7 r0 -1
    beq r6 r7 block_2048
block_2047:
    sll r6 r6 2
    lw r6 r6 30048
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
    beq r7 r8 block_2050
block_2049:
    addi r8 r0 2
    beq r7 r8 block_2053
block_2052:
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
    beq r7 r0 block_2055
block_2054:
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
    j block_2056
block_2055:
    fmv f4 f7
    j block_2056
block_2056:
    lw r7 r6 4
    addi r8 r0 3
    beq r7 r8 block_2058
block_2057:
    j block_2059
block_2058:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_2059
block_2059:
    lw r6 r6 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2061
block_2060:
    mv r7 r0
    j block_2062
block_2061:
    addi r7 r0 1
    j block_2062
block_2062:
    bne r6 r0 block_2064
    j block_2063
block_2063:
    mv r6 r7
    j block_2065
block_2064:
    bne r7 r0 block_2067
    j block_2066
block_2066:
    addi r6 r0 1
    j block_2065
block_2067:
    mv r6 r0
    j block_2065
block_2065:
    bne r6 r0 block_2069
    j block_2068
block_2068:
    addi r6 r0 1
    j block_2051
block_2069:
    mv r6 r0
    j block_2051
block_2053:
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
    bc1t block_2071
block_2070:
    mv r7 r0
    j block_2072
block_2071:
    addi r7 r0 1
    j block_2072
block_2072:
    bne r6 r0 block_2074
    j block_2073
block_2073:
    mv r6 r7
    j block_2075
block_2074:
    bne r7 r0 block_2077
    j block_2076
block_2076:
    addi r6 r0 1
    j block_2075
block_2077:
    mv r6 r0
    j block_2075
block_2075:
    bne r6 r0 block_2079
    j block_2078
block_2078:
    addi r6 r0 1
    j block_2051
block_2079:
    mv r6 r0
    j block_2051
block_2050:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_2081
block_2080:
    j block_2082
block_2081:
    fneg f4 f4
    j block_2082
block_2082:
    lw r7 r6 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_2084
block_2083:
    mv r7 r0
    j block_2085
block_2084:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_2087
block_2086:
    fmv f4 f5
    j block_2088
block_2087:
    fneg f4 f5
    j block_2088
block_2088:
    lw r7 r6 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_2090
block_2089:
    mv r7 r0
    j block_2085
block_2090:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_2092
block_2091:
    fmv f4 f6
    j block_2093
block_2092:
    fneg f4 f6
    j block_2093
block_2093:
    lw r7 r6 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_2095
block_2094:
    mv r7 r0
    j block_2085
block_2095:
    addi r7 r0 1
    j block_2085
block_2085:
    bne r7 r0 block_2097
    j block_2096
block_2096:
    lw r6 r6 24
    bne r6 r0 block_2099
    j block_2098
block_2098:
    addi r6 r0 1
    j block_2051
block_2099:
    mv r6 r0
    j block_2051
block_2097:
    lw r6 r6 24
    j block_2051
block_2051:
    bne r6 r0 block_2101
    j block_2100
block_2100:
    addi r6 r0 3
    mv r1 r6
    fmv f0 f1
    fmv f1 f2
    fmv f2 f3
    sw r31 r29 36
    addi r29 r29 40
    jal check_all_inside.4238
    subi r29 r29 40
    lw r31 r29 36
    j block_1938
block_2101:
    mv r1 r0
    j block_1938
block_2048:
    addi r1 r0 1
    j block_1938
block_2046:
    mv r1 r0
    j block_1938
block_1993:
    addi r1 r0 1
    j block_1938
block_1991:
    mv r1 r0
    j block_1938
block_1937:
    addi r1 r0 1
    j block_1938
block_1938:
    bne r1 r0 block_2103
    j block_2102
block_2102:
    j block_1933
block_2103:
    lwcZ f0 r29 28
    swcZ f0 r0 30548
    lwcZ f0 r29 16
    swcZ f0 r0 30552
    lwcZ f0 r29 20
    swcZ f0 r0 30556
    lwcZ f0 r29 24
    swcZ f0 r0 30560
    lw r1 r29 12
    sw r1 r0 30564
    lw r1 r29 32
    sw r1 r0 30544
    j block_1933
block_1933:
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
block_1930:
    sll r4 r4 2
    lw r4 r4 30048
    lw r4 r4 24
    bne r4 r0 block_2105
    j block_2104
block_2104:
    jr r31
block_2105:
    addi r1 r1 1
    sw r31 r29 36
    addi r29 r29 40
    jal solve_each_element.4326
    subi r29 r29 40
    lw r31 r29 36
    jr r31
block_1818:
    jr r31
solve_each_element_fast.4421:
block_2414:
    lw r4 r3 0
    sll r5 r1 2
    lwab r5 r2 r5
    addi r6 r0 -1
    beq r5 r6 block_2416
block_2415:
    sll r6 r5 2
    lw r6 r6 30048
    lw r7 r6 40
    lwcZ f0 r7 0
    lwcZ f1 r7 4
    lwcZ f2 r7 8
    lw r8 r3 4
    sll r9 r5 2
    lwab r8 r8 r9
    lw r9 r6 4
    addi r10 r0 1
    beq r9 r10 block_2418
block_2417:
    addi r10 r0 2
    beq r9 r10 block_2421
block_2420:
    lwcZ f3 r8 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2423
block_2422:
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
    bc1t block_2425
block_2424:
    mv r7 r0
    j block_2426
block_2425:
    addi r7 r0 1
    j block_2426
block_2426:
    bne r7 r0 block_2428
    j block_2427
block_2427:
    mv r6 r0
    j block_2419
block_2428:
    lw r6 r6 24
    bne r6 r0 block_2430
    j block_2429
block_2429:
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
    swcZ f0 r0 30540
    j block_2431
block_2430:
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
    swcZ f0 r0 30540
    j block_2431
block_2431:
    addi r6 r0 1
    j block_2419
block_2423:
    mv r6 r0
    j block_2419
block_2421:
    lwcZ f0 r8 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2433
block_2432:
    mv r6 r0
    j block_2434
block_2433:
    addi r6 r0 1
    j block_2434
block_2434:
    bne r6 r0 block_2436
    j block_2435
block_2435:
    mv r6 r0
    j block_2419
block_2436:
    lwcZ f0 r8 0
    lwcZ f1 r7 12
    fmul f0 f0 f1
    swcZ f0 r0 30540
    addi r6 r0 1
    j block_2419
block_2418:
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
    bc1t block_2438
block_2437:
    j block_2439
block_2438:
    fneg f4 f4
    j block_2439
block_2439:
    lw r9 r6 16
    lwcZ f5 r9 4
    fclt f4 f5
    bc1t block_2441
block_2440:
    mv r9 r0
    j block_2442
block_2441:
    lwcZ f4 r7 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2444
block_2443:
    j block_2445
block_2444:
    fneg f4 f4
    j block_2445
block_2445:
    lw r9 r6 16
    lwcZ f5 r9 8
    fclt f4 f5
    bc1t block_2447
block_2446:
    mv r9 r0
    j block_2442
block_2447:
    lwcZ f4 r8 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2449
block_2448:
    mv r9 r0
    j block_2450
block_2449:
    addi r9 r0 1
    j block_2450
block_2450:
    bne r9 r0 block_2452
    j block_2451
block_2451:
    addi r9 r0 1
    j block_2442
block_2452:
    mv r9 r0
    j block_2442
block_2442:
    bne r9 r0 block_2454
    j block_2453
block_2453:
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
    bc1t block_2456
block_2455:
    j block_2457
block_2456:
    fneg f4 f4
    j block_2457
block_2457:
    lw r9 r6 16
    lwcZ f5 r9 0
    fclt f4 f5
    bc1t block_2459
block_2458:
    mv r9 r0
    j block_2460
block_2459:
    lwcZ f4 r7 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2462
block_2461:
    j block_2463
block_2462:
    fneg f4 f4
    j block_2463
block_2463:
    lw r9 r6 16
    lwcZ f5 r9 8
    fclt f4 f5
    bc1t block_2465
block_2464:
    mv r9 r0
    j block_2460
block_2465:
    lwcZ f4 r8 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2467
block_2466:
    mv r9 r0
    j block_2468
block_2467:
    addi r9 r0 1
    j block_2468
block_2468:
    bne r9 r0 block_2470
    j block_2469
block_2469:
    addi r9 r0 1
    j block_2460
block_2470:
    mv r9 r0
    j block_2460
block_2460:
    bne r9 r0 block_2472
    j block_2471
block_2471:
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
    bc1t block_2474
block_2473:
    j block_2475
block_2474:
    fneg f0 f0
    j block_2475
block_2475:
    lw r9 r6 16
    lwcZ f3 r9 0
    fclt f0 f3
    bc1t block_2477
block_2476:
    mv r6 r0
    j block_2478
block_2477:
    lwcZ f0 r7 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2480
block_2479:
    j block_2481
block_2480:
    fneg f0 f0
    j block_2481
block_2481:
    lw r6 r6 16
    lwcZ f1 r6 4
    fclt f0 f1
    bc1t block_2483
block_2482:
    mv r6 r0
    j block_2478
block_2483:
    lwcZ f0 r8 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_2485
block_2484:
    mv r6 r0
    j block_2486
block_2485:
    addi r6 r0 1
    j block_2486
block_2486:
    bne r6 r0 block_2488
    j block_2487
block_2487:
    addi r6 r0 1
    j block_2478
block_2488:
    mv r6 r0
    j block_2478
block_2478:
    bne r6 r0 block_2490
    j block_2489
block_2489:
    mv r6 r0
    j block_2419
block_2490:
    swcZ f2 r0 30540
    addi r6 r0 3
    j block_2419
block_2472:
    swcZ f3 r0 30540
    addi r6 r0 2
    j block_2419
block_2454:
    swcZ f3 r0 30540
    addi r6 r0 1
    j block_2419
block_2419:
    beq r6 r0 block_2492
block_2491:
    lwcZ f0 r0 30540
    #0.0
    flui f1 0
    sw r1 r29 8
    sw r3 r29 4
    sw r2 r29 0
    fclt f1 f0
    bc1t block_2494
block_2493:
    j block_2495
block_2494:
    lwcZ f1 r0 30548
    fclt f0 f1
    bc1t block_2497
block_2496:
    j block_2495
block_2497:
    #0.01
    flui f1 15395
    fori f1 f1 -10486
    fadd f0 f0 f1
    lwcZ f1 r4 0
    fmul f1 f1 f0
    lwcZ f2 r0 30648
    fadd f1 f1 f2
    lwcZ f2 r4 4
    fmul f2 f2 f0
    lwcZ f3 r0 30652
    fadd f2 f2 f3
    lwcZ f3 r4 8
    fmul f3 f3 f0
    lwcZ f4 r0 30656
    fadd f3 f3 f4
    lw r4 r2 0
    addi r7 r0 -1
    sw r6 r29 32
    swcZ f0 r29 28
    swcZ f3 r29 24
    swcZ f2 r29 20
    swcZ f1 r29 16
    sw r5 r29 12
    beq r4 r7 block_2499
block_2498:
    sll r4 r4 2
    lw r4 r4 30048
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
    beq r7 r8 block_2502
block_2501:
    addi r8 r0 2
    beq r7 r8 block_2505
block_2504:
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
    beq r7 r0 block_2507
block_2506:
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
    j block_2508
block_2507:
    fmv f4 f7
    j block_2508
block_2508:
    lw r7 r4 4
    addi r8 r0 3
    beq r7 r8 block_2510
block_2509:
    j block_2511
block_2510:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_2511
block_2511:
    lw r4 r4 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2513
block_2512:
    mv r7 r0
    j block_2514
block_2513:
    addi r7 r0 1
    j block_2514
block_2514:
    bne r4 r0 block_2516
    j block_2515
block_2515:
    mv r4 r7
    j block_2517
block_2516:
    bne r7 r0 block_2519
    j block_2518
block_2518:
    addi r4 r0 1
    j block_2517
block_2519:
    mv r4 r0
    j block_2517
block_2517:
    bne r4 r0 block_2521
    j block_2520
block_2520:
    addi r4 r0 1
    j block_2503
block_2521:
    mv r4 r0
    j block_2503
block_2505:
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
    bc1t block_2523
block_2522:
    mv r7 r0
    j block_2524
block_2523:
    addi r7 r0 1
    j block_2524
block_2524:
    bne r4 r0 block_2526
    j block_2525
block_2525:
    mv r4 r7
    j block_2527
block_2526:
    bne r7 r0 block_2529
    j block_2528
block_2528:
    addi r4 r0 1
    j block_2527
block_2529:
    mv r4 r0
    j block_2527
block_2527:
    bne r4 r0 block_2531
    j block_2530
block_2530:
    addi r4 r0 1
    j block_2503
block_2531:
    mv r4 r0
    j block_2503
block_2502:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_2533
block_2532:
    j block_2534
block_2533:
    fneg f4 f4
    j block_2534
block_2534:
    lw r7 r4 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_2536
block_2535:
    mv r7 r0
    j block_2537
block_2536:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_2539
block_2538:
    fmv f4 f5
    j block_2540
block_2539:
    fneg f4 f5
    j block_2540
block_2540:
    lw r7 r4 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_2542
block_2541:
    mv r7 r0
    j block_2537
block_2542:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_2544
block_2543:
    fmv f4 f6
    j block_2545
block_2544:
    fneg f4 f6
    j block_2545
block_2545:
    lw r7 r4 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_2547
block_2546:
    mv r7 r0
    j block_2537
block_2547:
    addi r7 r0 1
    j block_2537
block_2537:
    bne r7 r0 block_2549
    j block_2548
block_2548:
    lw r4 r4 24
    bne r4 r0 block_2551
    j block_2550
block_2550:
    addi r4 r0 1
    j block_2503
block_2551:
    mv r4 r0
    j block_2503
block_2549:
    lw r4 r4 24
    j block_2503
block_2503:
    bne r4 r0 block_2553
    j block_2552
block_2552:
    lw r4 r2 4
    addi r7 r0 -1
    beq r4 r7 block_2555
block_2554:
    sll r4 r4 2
    lw r4 r4 30048
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
    beq r7 r8 block_2557
block_2556:
    addi r8 r0 2
    beq r7 r8 block_2560
block_2559:
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
    beq r7 r0 block_2562
block_2561:
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
    j block_2563
block_2562:
    fmv f4 f7
    j block_2563
block_2563:
    lw r7 r4 4
    addi r8 r0 3
    beq r7 r8 block_2565
block_2564:
    j block_2566
block_2565:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_2566
block_2566:
    lw r4 r4 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2568
block_2567:
    mv r7 r0
    j block_2569
block_2568:
    addi r7 r0 1
    j block_2569
block_2569:
    bne r4 r0 block_2571
    j block_2570
block_2570:
    mv r4 r7
    j block_2572
block_2571:
    bne r7 r0 block_2574
    j block_2573
block_2573:
    addi r4 r0 1
    j block_2572
block_2574:
    mv r4 r0
    j block_2572
block_2572:
    bne r4 r0 block_2576
    j block_2575
block_2575:
    addi r4 r0 1
    j block_2558
block_2576:
    mv r4 r0
    j block_2558
block_2560:
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
    bc1t block_2578
block_2577:
    mv r7 r0
    j block_2579
block_2578:
    addi r7 r0 1
    j block_2579
block_2579:
    bne r4 r0 block_2581
    j block_2580
block_2580:
    mv r4 r7
    j block_2582
block_2581:
    bne r7 r0 block_2584
    j block_2583
block_2583:
    addi r4 r0 1
    j block_2582
block_2584:
    mv r4 r0
    j block_2582
block_2582:
    bne r4 r0 block_2586
    j block_2585
block_2585:
    addi r4 r0 1
    j block_2558
block_2586:
    mv r4 r0
    j block_2558
block_2557:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_2588
block_2587:
    j block_2589
block_2588:
    fneg f4 f4
    j block_2589
block_2589:
    lw r7 r4 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_2591
block_2590:
    mv r7 r0
    j block_2592
block_2591:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_2594
block_2593:
    fmv f4 f5
    j block_2595
block_2594:
    fneg f4 f5
    j block_2595
block_2595:
    lw r7 r4 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_2597
block_2596:
    mv r7 r0
    j block_2592
block_2597:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_2599
block_2598:
    fmv f4 f6
    j block_2600
block_2599:
    fneg f4 f6
    j block_2600
block_2600:
    lw r7 r4 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_2602
block_2601:
    mv r7 r0
    j block_2592
block_2602:
    addi r7 r0 1
    j block_2592
block_2592:
    bne r7 r0 block_2604
    j block_2603
block_2603:
    lw r4 r4 24
    bne r4 r0 block_2606
    j block_2605
block_2605:
    addi r4 r0 1
    j block_2558
block_2606:
    mv r4 r0
    j block_2558
block_2604:
    lw r4 r4 24
    j block_2558
block_2558:
    bne r4 r0 block_2608
    j block_2607
block_2607:
    lw r4 r2 8
    addi r7 r0 -1
    beq r4 r7 block_2610
block_2609:
    sll r4 r4 2
    lw r4 r4 30048
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
    beq r7 r8 block_2612
block_2611:
    addi r8 r0 2
    beq r7 r8 block_2615
block_2614:
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
    beq r7 r0 block_2617
block_2616:
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
    j block_2618
block_2617:
    fmv f4 f7
    j block_2618
block_2618:
    lw r7 r4 4
    addi r8 r0 3
    beq r7 r8 block_2620
block_2619:
    j block_2621
block_2620:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_2621
block_2621:
    lw r4 r4 24
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2623
block_2622:
    mv r7 r0
    j block_2624
block_2623:
    addi r7 r0 1
    j block_2624
block_2624:
    bne r4 r0 block_2626
    j block_2625
block_2625:
    mv r4 r7
    j block_2627
block_2626:
    bne r7 r0 block_2629
    j block_2628
block_2628:
    addi r4 r0 1
    j block_2627
block_2629:
    mv r4 r0
    j block_2627
block_2627:
    bne r4 r0 block_2631
    j block_2630
block_2630:
    addi r4 r0 1
    j block_2613
block_2631:
    mv r4 r0
    j block_2613
block_2615:
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
    bc1t block_2633
block_2632:
    mv r7 r0
    j block_2634
block_2633:
    addi r7 r0 1
    j block_2634
block_2634:
    bne r4 r0 block_2636
    j block_2635
block_2635:
    mv r4 r7
    j block_2637
block_2636:
    bne r7 r0 block_2639
    j block_2638
block_2638:
    addi r4 r0 1
    j block_2637
block_2639:
    mv r4 r0
    j block_2637
block_2637:
    bne r4 r0 block_2641
    j block_2640
block_2640:
    addi r4 r0 1
    j block_2613
block_2641:
    mv r4 r0
    j block_2613
block_2612:
    #0.0
    flui f7 0
    fclt f4 f7
    bc1t block_2643
block_2642:
    j block_2644
block_2643:
    fneg f4 f4
    j block_2644
block_2644:
    lw r7 r4 16
    lwcZ f7 r7 0
    fclt f4 f7
    bc1t block_2646
block_2645:
    mv r7 r0
    j block_2647
block_2646:
    #0.0
    flui f4 0
    fclt f5 f4
    bc1t block_2649
block_2648:
    fmv f4 f5
    j block_2650
block_2649:
    fneg f4 f5
    j block_2650
block_2650:
    lw r7 r4 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_2652
block_2651:
    mv r7 r0
    j block_2647
block_2652:
    #0.0
    flui f4 0
    fclt f6 f4
    bc1t block_2654
block_2653:
    fmv f4 f6
    j block_2655
block_2654:
    fneg f4 f6
    j block_2655
block_2655:
    lw r7 r4 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_2657
block_2656:
    mv r7 r0
    j block_2647
block_2657:
    addi r7 r0 1
    j block_2647
block_2647:
    bne r7 r0 block_2659
    j block_2658
block_2658:
    lw r4 r4 24
    bne r4 r0 block_2661
    j block_2660
block_2660:
    addi r4 r0 1
    j block_2613
block_2661:
    mv r4 r0
    j block_2613
block_2659:
    lw r4 r4 24
    j block_2613
block_2613:
    bne r4 r0 block_2663
    j block_2662
block_2662:
    addi r4 r0 3
    mv r1 r4
    fmv f0 f1
    fmv f1 f2
    fmv f2 f3
    sw r31 r29 36
    addi r29 r29 40
    jal check_all_inside.4238
    subi r29 r29 40
    lw r31 r29 36
    j block_2500
block_2663:
    mv r1 r0
    j block_2500
block_2610:
    addi r1 r0 1
    j block_2500
block_2608:
    mv r1 r0
    j block_2500
block_2555:
    addi r1 r0 1
    j block_2500
block_2553:
    mv r1 r0
    j block_2500
block_2499:
    addi r1 r0 1
    j block_2500
block_2500:
    bne r1 r0 block_2665
    j block_2664
block_2664:
    j block_2495
block_2665:
    lwcZ f0 r29 28
    swcZ f0 r0 30548
    lwcZ f0 r29 16
    swcZ f0 r0 30552
    lwcZ f0 r29 20
    swcZ f0 r0 30556
    lwcZ f0 r29 24
    swcZ f0 r0 30560
    lw r1 r29 12
    sw r1 r0 30564
    lw r1 r29 32
    sw r1 r0 30544
    j block_2495
block_2495:
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
block_2492:
    sll r4 r5 2
    lw r4 r4 30048
    lw r4 r4 24
    bne r4 r0 block_2667
    j block_2666
block_2666:
    jr r31
block_2667:
    addi r1 r1 1
    sw r31 r29 36
    addi r29 r29 40
    jal solve_each_element_fast.4421
    subi r29 r29 40
    lw r31 r29 36
    jr r31
block_2416:
    jr r31
solve_one_or_network.4375:
block_2106:
    sll r4 r1 2
    lwab r4 r2 r4
    addi r5 r0 -1
    beq r4 r5 block_2108
block_2107:
    sll r4 r4 2
    lw r4 r4 30332
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
    beq r2 r4 block_2110
block_2109:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2112
block_2111:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2114
block_2113:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2116
block_2115:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2118
block_2117:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2120
block_2119:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2122
block_2121:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
block_2122:
    jr r31
block_2120:
    jr r31
block_2118:
    jr r31
block_2116:
    jr r31
block_2114:
    jr r31
block_2112:
    jr r31
block_2110:
    jr r31
block_2108:
    jr r31
solve_one_or_network_fast.4471:
block_2668:
    sll r4 r1 2
    lwab r4 r2 r4
    addi r5 r0 -1
    beq r4 r5 block_2670
block_2669:
    sll r4 r4 2
    lw r4 r4 30332
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
    beq r2 r4 block_2672
block_2671:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2674
block_2673:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2676
block_2675:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2678
block_2677:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2680
block_2679:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2682
block_2681:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
    beq r2 r4 block_2684
block_2683:
    sll r2 r2 2
    lw r2 r2 30332
    lw r4 r29 28
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
block_2684:
    jr r31
block_2682:
    jr r31
block_2680:
    jr r31
block_2678:
    jr r31
block_2676:
    jr r31
block_2674:
    jr r31
block_2672:
    jr r31
block_2670:
    jr r31
trace_diffuse_ray.4917:
block_3791:
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 30548
    lw r2 r0 30536
    swcZ f0 r29 8
    sw r1 r29 4
    mv r3 r1
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal trace_or_matrix_fast.4483
    subi r29 r29 24
    lw r31 r29 20
    lwcZ f0 r0 30548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_3793
block_3792:
    mv r1 r0
    j block_3794
block_3793:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_3796
block_3795:
    mv r1 r0
    j block_3794
block_3796:
    addi r1 r0 1
    j block_3794
block_3794:
    bne r1 r0 block_3798
    j block_3797
block_3797:
    jr r31
block_3798:
    lw r1 r0 30564
    sll r1 r1 2
    lw r1 r1 30048
    lw r2 r29 4
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_3800
block_3799:
    addi r2 r0 2
    beq r3 r2 block_3803
block_3802:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
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
    beq r2 r0 block_3805
block_3804:
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
    swcZ f3 r0 30568
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
    swcZ f2 r0 30572
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
    swcZ f0 r0 30576
    j block_3806
block_3805:
    swcZ f3 r0 30568
    swcZ f4 r0 30572
    swcZ f5 r0 30576
    j block_3806
block_3806:
    lw r2 r1 24
    lwcZ f0 r0 30568
    fmul f0 f0 f0
    lwcZ f1 r0 30572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 30576
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
    bc1t block_3808
block_3807:
    bne r2 r0 block_3811
    j block_3810
block_3810:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_3809
block_3811:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_3809
block_3808:
    #1.0
    flui f0 16256
    j block_3809
block_3809:
    lwcZ f1 r0 30568
    fmul f1 f1 f0
    swcZ f1 r0 30568
    lwcZ f1 r0 30572
    fmul f1 f1 f0
    swcZ f1 r0 30572
    lwcZ f1 r0 30576
    fmul f0 f1 f0
    swcZ f0 r0 30576
    j block_3801
block_3803:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 30568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 30572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 30576
    j block_3801
block_3800:
    lw r3 r0 30544
    #0.0
    flui f0 0
    swcZ f0 r0 30568
    swcZ f0 r0 30572
    swcZ f0 r0 30576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3813
block_3812:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3816
block_3815:
    mv r2 r0
    j block_3817
block_3816:
    addi r2 r0 1
    j block_3817
block_3817:
    bne r2 r0 block_3819
    j block_3818
block_3818:
    #-1.0
    flui f0 -16512
    j block_3814
block_3819:
    #1.0
    flui f0 16256
    j block_3814
block_3813:
    #0.0
    flui f0 0
    j block_3814
block_3814:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 30568
    j block_3801
block_3801:
    lw r2 r1 0
    lw r3 r1 32
    lwcZ f0 r3 0
    swcZ f0 r0 30580
    lw r3 r1 32
    lwcZ f0 r3 4
    swcZ f0 r0 30584
    lw r3 r1 32
    lwcZ f0 r3 8
    swcZ f0 r0 30588
    addi r3 r0 1
    beq r2 r3 block_3821
block_3820:
    addi r3 r0 2
    beq r2 r3 block_3824
block_3823:
    addi r3 r0 3
    beq r2 r3 block_3826
block_3825:
    addi r3 r0 4
    beq r2 r3 block_3828
block_3827:
    j block_3822
block_3828:
    lwcZ f0 r0 30552
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
    lwcZ f1 r0 30560
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
    bc1t block_3830
block_3829:
    fmv f3 f0
    j block_3831
block_3830:
    fneg f3 f0
    j block_3831
block_3831:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_3833
block_3832:
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
    bc1t block_3836
block_3835:
    j block_3837
block_3836:
    fneg f0 f0
    j block_3837
block_3837:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3839
block_3838:
    mv r2 r0
    j block_3840
block_3839:
    addi r2 r0 1
    j block_3840
block_3840:
    bne r2 r0 block_3842
    j block_3841
block_3841:
    fneg f0 f0
    j block_3843
block_3842:
    j block_3843
block_3843:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_3845
block_3844:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_3848
block_3847:
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
    j block_3846
block_3848:
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
    j block_3846
block_3845:
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
    j block_3846
block_3846:
    bne r2 r0 block_3850
    j block_3849
block_3849:
    fneg f0 f0
    j block_3851
block_3850:
    j block_3851
block_3851:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_3834
block_3833:
    #15.0
    flui f0 16752
    j block_3834
block_3834:
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_3853
block_3852:
    j block_3854
block_3853:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_3854
block_3854:
    fsub f0 f0 f1
    lwcZ f1 r0 30556
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
    bc1t block_3856
block_3855:
    fmv f3 f2
    j block_3857
block_3856:
    fneg f3 f2
    j block_3857
block_3857:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_3859
block_3858:
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
    bc1t block_3862
block_3861:
    j block_3863
block_3862:
    fneg f1 f1
    j block_3863
block_3863:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_3865
block_3864:
    mv r2 r0
    j block_3866
block_3865:
    addi r2 r0 1
    j block_3866
block_3866:
    bne r2 r0 block_3868
    j block_3867
block_3867:
    fneg f1 f1
    j block_3869
block_3868:
    j block_3869
block_3869:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_3871
block_3870:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_3874
block_3873:
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
    j block_3872
block_3874:
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
    j block_3872
block_3871:
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
    j block_3872
block_3872:
    bne r2 r0 block_3876
    j block_3875
block_3875:
    fneg f1 f1
    j block_3877
block_3876:
    j block_3877
block_3877:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_3860
block_3859:
    #15.0
    flui f1 16752
    j block_3860
block_3860:
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_3879
block_3878:
    j block_3880
block_3879:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_3880
block_3880:
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
    bc1t block_3882
block_3881:
    mv r2 r0
    j block_3883
block_3882:
    addi r2 r0 1
    j block_3883
block_3883:
    bne r2 r0 block_3885
    j block_3884
block_3884:
    j block_3886
block_3885:
    #0.0
    flui f0 0
    j block_3886
block_3886:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 30588
    j block_3822
block_3826:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30560
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
    bc1t block_3888
block_3887:
    j block_3889
block_3888:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_3889
block_3889:
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
    bc1t block_3891
block_3890:
    fneg f0 f0
    j block_3892
block_3891:
    j block_3892
block_3892:
    fclt f3 f0
    bc1t block_3894
block_3893:
    addi r2 r0 1
    j block_3895
block_3894:
    addi r2 r0 -1
    j block_3895
block_3895:
    fclt f3 f0
    bc1t block_3897
block_3896:
    j block_3898
block_3897:
    fsub f0 f0 f3
    j block_3898
block_3898:
    fclt f2 f0
    bc1t block_3900
block_3899:
    j block_3901
block_3900:
    sub r2 r0 r2
    j block_3901
block_3901:
    fclt f2 f0
    bc1t block_3903
block_3902:
    j block_3904
block_3903:
    fsub f0 f3 f0
    j block_3904
block_3904:
    fclt f0 f1
    bc1t block_3906
block_3905:
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
    j block_3907
block_3906:
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
    j block_3907
block_3907:
    addi r3 r0 -1
    beq r2 r3 block_3909
block_3908:
    j block_3910
block_3909:
    fneg f0 f0
    j block_3910
block_3910:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 30584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 30588
    j block_3822
block_3824:
    lwcZ f0 r0 30556
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
    bc1t block_3912
block_3911:
    fadd f0 f0 f4
    j block_3913
block_3912:
    j block_3913
block_3913:
    fclt f3 f0
    bc1t block_3915
block_3914:
    addi r2 r0 1
    j block_3916
block_3915:
    mv r2 r0
    j block_3916
block_3916:
    fclt f3 f0
    bc1t block_3918
block_3917:
    j block_3919
block_3918:
    fsub f0 f0 f3
    j block_3919
block_3919:
    fclt f2 f0
    bc1t block_3921
block_3920:
    j block_3922
block_3921:
    fsub f0 f3 f0
    j block_3922
block_3922:
    fclt f1 f0
    bc1t block_3924
block_3923:
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
    j block_3925
block_3924:
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
    j block_3925
block_3925:
    bne r2 r0 block_3927
    j block_3926
block_3926:
    fneg f0 f0
    j block_3928
block_3927:
    j block_3928
block_3928:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 30580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 30584
    j block_3822
block_3821:
    lwcZ f0 r0 30552
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
    bc1t block_3930
block_3929:
    fmv f1 f2
    j block_3931
block_3930:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_3931
block_3931:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_3933
block_3932:
    mv r2 r0
    j block_3934
block_3933:
    addi r2 r0 1
    j block_3934
block_3934:
    lwcZ f0 r0 30560
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
    bc1t block_3936
block_3935:
    fmv f1 f2
    j block_3937
block_3936:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_3937
block_3937:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_3939
block_3938:
    mv r3 r0
    j block_3940
block_3939:
    addi r3 r0 1
    j block_3940
block_3940:
    bne r2 r0 block_3942
    j block_3941
block_3941:
    bne r3 r0 block_3945
    j block_3944
block_3944:
    #255.0
    flui f0 17279
    j block_3943
block_3945:
    #0.0
    flui f0 0
    j block_3943
block_3942:
    bne r3 r0 block_3947
    j block_3946
block_3946:
    #0.0
    flui f0 0
    j block_3943
block_3947:
    #255.0
    flui f0 17279
    j block_3943
block_3943:
    swcZ f0 r0 30584
    j block_3822
block_3822:
    lw r2 r0 30536
    lw r3 r2 0
    lw r4 r3 0
    addi r5 r0 -1
    sw r1 r29 16
    beq r4 r5 block_3949
block_3948:
    addi r5 r0 99
    sw r3 r29 12
    sw r2 r29 0
    beq r4 r5 block_3952
block_3951:
    sll r5 r4 2
    lw r5 r5 30048
    lwcZ f0 r0 30552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 30992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_3955
block_3954:
    addi r7 r0 2
    beq r6 r7 block_3958
block_3957:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_3960
block_3959:
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
    beq r6 r0 block_3962
block_3961:
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
    j block_3963
block_3962:
    fmv f0 f5
    j block_3963
block_3963:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_3965
block_3964:
    j block_3966
block_3965:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_3966
block_3966:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3968
block_3967:
    mv r6 r0
    j block_3969
block_3968:
    addi r6 r0 1
    j block_3969
block_3969:
    bne r6 r0 block_3971
    j block_3970
block_3970:
    mv r4 r0
    j block_3956
block_3971:
    lw r5 r5 24
    bne r5 r0 block_3973
    j block_3972
block_3972:
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
    swcZ f0 r0 30540
    j block_3974
block_3973:
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
    swcZ f0 r0 30540
    j block_3974
block_3974:
    addi r4 r0 1
    j block_3956
block_3960:
    mv r4 r0
    j block_3956
block_3958:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_3976
block_3975:
    mv r5 r0
    j block_3977
block_3976:
    addi r5 r0 1
    j block_3977
block_3977:
    bne r5 r0 block_3979
    j block_3978
block_3978:
    mv r4 r0
    j block_3956
block_3979:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_3956
block_3955:
    lw r6 r0 30988
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
    bc1t block_3981
block_3980:
    j block_3982
block_3981:
    fneg f4 f4
    j block_3982
block_3982:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_3984
block_3983:
    mv r7 r0
    j block_3985
block_3984:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3987
block_3986:
    j block_3988
block_3987:
    fneg f4 f4
    j block_3988
block_3988:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_3990
block_3989:
    mv r7 r0
    j block_3985
block_3990:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_3992
block_3991:
    mv r7 r0
    j block_3993
block_3992:
    addi r7 r0 1
    j block_3993
block_3993:
    bne r7 r0 block_3995
    j block_3994
block_3994:
    addi r7 r0 1
    j block_3985
block_3995:
    mv r7 r0
    j block_3985
block_3985:
    bne r7 r0 block_3997
    j block_3996
block_3996:
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
    bc1t block_3999
block_3998:
    j block_4000
block_3999:
    fneg f4 f4
    j block_4000
block_4000:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_4002
block_4001:
    mv r7 r0
    j block_4003
block_4002:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_4005
block_4004:
    j block_4006
block_4005:
    fneg f4 f4
    j block_4006
block_4006:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_4008
block_4007:
    mv r7 r0
    j block_4003
block_4008:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_4010
block_4009:
    mv r7 r0
    j block_4011
block_4010:
    addi r7 r0 1
    j block_4011
block_4011:
    bne r7 r0 block_4013
    j block_4012
block_4012:
    addi r7 r0 1
    j block_4003
block_4013:
    mv r7 r0
    j block_4003
block_4003:
    bne r7 r0 block_4015
    j block_4014
block_4014:
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
    bc1t block_4017
block_4016:
    j block_4018
block_4017:
    fneg f0 f0
    j block_4018
block_4018:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_4020
block_4019:
    mv r4 r0
    j block_4021
block_4020:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_4023
block_4022:
    j block_4024
block_4023:
    fneg f0 f0
    j block_4024
block_4024:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_4026
block_4025:
    mv r4 r0
    j block_4021
block_4026:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_4028
block_4027:
    mv r4 r0
    j block_4029
block_4028:
    addi r4 r0 1
    j block_4029
block_4029:
    bne r4 r0 block_4031
    j block_4030
block_4030:
    addi r4 r0 1
    j block_4021
block_4031:
    mv r4 r0
    j block_4021
block_4021:
    bne r4 r0 block_4033
    j block_4032
block_4032:
    mv r4 r0
    j block_3956
block_4033:
    swcZ f2 r0 30540
    addi r4 r0 3
    j block_3956
block_4015:
    swcZ f3 r0 30540
    addi r4 r0 2
    j block_3956
block_3997:
    swcZ f3 r0 30540
    addi r4 r0 1
    j block_3956
block_3956:
    beq r4 r0 block_4035
block_4034:
    lwcZ f0 r0 30540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f0 f1
    bc1t block_4037
block_4036:
    mv r1 r0
    j block_3953
block_4037:
    lw r4 r3 4
    addi r5 r0 -1
    beq r4 r5 block_4039
block_4038:
    sll r4 r4 2
    lw r4 r4 30332
    mv r2 r4
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4042
    j block_4041
block_4041:
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_4044
block_4043:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4046
    j block_4045
block_4045:
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_4048
block_4047:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4050
    j block_4049
block_4049:
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_4052
block_4051:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4054
    j block_4053
block_4053:
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_4056
block_4055:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4058
    j block_4057
block_4057:
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_4060
block_4059:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4062
    j block_4061
block_4061:
    addi r1 r0 7
    lw r2 r29 12
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_one_or_group.4292
    subi r29 r29 24
    lw r31 r29 20
    j block_4040
block_4062:
    addi r1 r0 1
    j block_4040
block_4060:
    mv r1 r0
    j block_4040
block_4058:
    addi r1 r0 1
    j block_4040
block_4056:
    mv r1 r0
    j block_4040
block_4054:
    addi r1 r0 1
    j block_4040
block_4052:
    mv r1 r0
    j block_4040
block_4050:
    addi r1 r0 1
    j block_4040
block_4048:
    mv r1 r0
    j block_4040
block_4046:
    addi r1 r0 1
    j block_4040
block_4044:
    mv r1 r0
    j block_4040
block_4042:
    addi r1 r0 1
    j block_4040
block_4039:
    mv r1 r0
    j block_4040
block_4040:
    bne r1 r0 block_4064
    j block_4063
block_4063:
    mv r1 r0
    j block_3953
block_4064:
    addi r1 r0 1
    j block_3953
block_4035:
    mv r1 r0
    j block_3953
block_3952:
    addi r1 r0 1
    j block_3953
block_3953:
    bne r1 r0 block_4066
    j block_4065
block_4065:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 24
    lw r31 r29 20
    j block_3950
block_4066:
    lw r1 r29 12
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_4068
block_4067:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4071
    j block_4070
block_4070:
    lw r1 r29 12
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_4073
block_4072:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4075
    j block_4074
block_4074:
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_4077
block_4076:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4079
    j block_4078
block_4078:
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_4081
block_4080:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4083
    j block_4082
block_4082:
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_4085
block_4084:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4087
    j block_4086
block_4086:
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_4089
block_4088:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_and_group.4251
    subi r29 r29 24
    lw r31 r29 20
    bne r1 r0 block_4091
    j block_4090
block_4090:
    addi r1 r0 7
    lw r2 r29 12
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_one_or_group.4292
    subi r29 r29 24
    lw r31 r29 20
    j block_4069
block_4091:
    addi r1 r0 1
    j block_4069
block_4089:
    mv r1 r0
    j block_4069
block_4087:
    addi r1 r0 1
    j block_4069
block_4085:
    mv r1 r0
    j block_4069
block_4083:
    addi r1 r0 1
    j block_4069
block_4081:
    mv r1 r0
    j block_4069
block_4079:
    addi r1 r0 1
    j block_4069
block_4077:
    mv r1 r0
    j block_4069
block_4075:
    addi r1 r0 1
    j block_4069
block_4073:
    mv r1 r0
    j block_4069
block_4071:
    addi r1 r0 1
    j block_4069
block_4068:
    mv r1 r0
    j block_4069
block_4069:
    bne r1 r0 block_4093
    j block_4092
block_4092:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 20
    addi r29 r29 24
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 24
    lw r31 r29 20
    j block_3950
block_4093:
    addi r1 r0 1
    j block_3950
block_3949:
    mv r1 r0
    j block_3950
block_3950:
    bne r1 r0 block_4095
    j block_4094
block_4094:
    lwcZ f0 r0 30568
    lwcZ f1 r0 30312
    fmul f0 f0 f1
    lwcZ f1 r0 30572
    lwcZ f2 r0 30316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 30576
    lwcZ f2 r0 30320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_4097
block_4096:
    mv r1 r0
    j block_4098
block_4097:
    addi r1 r0 1
    j block_4098
block_4098:
    bne r1 r0 block_4100
    j block_4099
block_4099:
    #0.0
    flui f0 0
    j block_4101
block_4100:
    j block_4101
block_4101:
    lwcZ f1 r29 8
    fmul f0 f1 f0
    lw r1 r29 16
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 30592
    lwcZ f2 r0 30580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30592
    lwcZ f1 r0 30596
    lwcZ f2 r0 30584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30596
    lwcZ f1 r0 30600
    lwcZ f2 r0 30588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 30600
    jr r31
block_4095:
    jr r31
trace_diffuse_rays.4959:
block_4979:
    lwcZ f0 r3 0
    swcZ f0 r0 30648
    lwcZ f0 r3 4
    swcZ f0 r0 30652
    lwcZ f0 r3 8
    swcZ f0 r0 30656
    lw r4 r0 30000
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
    blt r1 r0 block_4981
block_4980:
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
    bc1t block_4983
block_4982:
    mv r2 r0
    j block_4984
block_4983:
    addi r2 r0 1
    j block_4984
block_4984:
    bne r2 r0 block_4986
    j block_4985
block_4985:
    lw r2 r1 472
    #0.006666667
    flui f1 15322
    fori f1 f1 29710
    fmul f0 f0 f1
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 30548
    lw r4 r0 30536
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
    lwcZ f0 r0 30548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_4989
block_4988:
    mv r1 r0
    j block_4990
block_4989:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_4992
block_4991:
    mv r1 r0
    j block_4990
block_4992:
    addi r1 r0 1
    j block_4990
block_4990:
    bne r1 r0 block_4994
    j block_4993
block_4993:
    j block_4987
block_4994:
    lw r1 r0 30564
    sll r1 r1 2
    lw r1 r1 30048
    lw r2 r29 20
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_4996
block_4995:
    addi r2 r0 2
    beq r3 r2 block_4999
block_4998:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
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
    beq r2 r0 block_5001
block_5000:
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
    swcZ f3 r0 30568
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
    swcZ f2 r0 30572
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
    swcZ f0 r0 30576
    j block_5002
block_5001:
    swcZ f3 r0 30568
    swcZ f4 r0 30572
    swcZ f5 r0 30576
    j block_5002
block_5002:
    lw r2 r1 24
    lwcZ f0 r0 30568
    fmul f0 f0 f0
    lwcZ f1 r0 30572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 30576
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
    bc1t block_5004
block_5003:
    bne r2 r0 block_5007
    j block_5006
block_5006:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_5005
block_5007:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_5005
block_5004:
    #1.0
    flui f0 16256
    j block_5005
block_5005:
    lwcZ f1 r0 30568
    fmul f1 f1 f0
    swcZ f1 r0 30568
    lwcZ f1 r0 30572
    fmul f1 f1 f0
    swcZ f1 r0 30572
    lwcZ f1 r0 30576
    fmul f0 f1 f0
    swcZ f0 r0 30576
    j block_4997
block_4999:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 30568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 30572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 30576
    j block_4997
block_4996:
    lw r3 r0 30544
    #0.0
    flui f0 0
    swcZ f0 r0 30568
    swcZ f0 r0 30572
    swcZ f0 r0 30576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5009
block_5008:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5012
block_5011:
    mv r2 r0
    j block_5013
block_5012:
    addi r2 r0 1
    j block_5013
block_5013:
    bne r2 r0 block_5015
    j block_5014
block_5014:
    #-1.0
    flui f0 -16512
    j block_5010
block_5015:
    #1.0
    flui f0 16256
    j block_5010
block_5009:
    #0.0
    flui f0 0
    j block_5010
block_5010:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 30568
    j block_4997
block_4997:
    lw r2 r1 0
    lw r3 r1 32
    lwcZ f0 r3 0
    swcZ f0 r0 30580
    lw r3 r1 32
    lwcZ f0 r3 4
    swcZ f0 r0 30584
    lw r3 r1 32
    lwcZ f0 r3 8
    swcZ f0 r0 30588
    addi r3 r0 1
    beq r2 r3 block_5017
block_5016:
    addi r3 r0 2
    beq r2 r3 block_5020
block_5019:
    addi r3 r0 3
    beq r2 r3 block_5022
block_5021:
    addi r3 r0 4
    beq r2 r3 block_5024
block_5023:
    j block_5018
block_5024:
    lwcZ f0 r0 30552
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
    lwcZ f1 r0 30560
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
    bc1t block_5026
block_5025:
    fmv f3 f0
    j block_5027
block_5026:
    fneg f3 f0
    j block_5027
block_5027:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_5029
block_5028:
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
    bc1t block_5032
block_5031:
    j block_5033
block_5032:
    fneg f0 f0
    j block_5033
block_5033:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5035
block_5034:
    mv r2 r0
    j block_5036
block_5035:
    addi r2 r0 1
    j block_5036
block_5036:
    bne r2 r0 block_5038
    j block_5037
block_5037:
    fneg f0 f0
    j block_5039
block_5038:
    j block_5039
block_5039:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_5041
block_5040:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_5044
block_5043:
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
    j block_5042
block_5044:
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
    j block_5042
block_5041:
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
    j block_5042
block_5042:
    bne r2 r0 block_5046
    j block_5045
block_5045:
    fneg f0 f0
    j block_5047
block_5046:
    j block_5047
block_5047:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_5030
block_5029:
    #15.0
    flui f0 16752
    j block_5030
block_5030:
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_5049
block_5048:
    j block_5050
block_5049:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_5050
block_5050:
    fsub f0 f0 f1
    lwcZ f1 r0 30556
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
    bc1t block_5052
block_5051:
    fmv f3 f2
    j block_5053
block_5052:
    fneg f3 f2
    j block_5053
block_5053:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_5055
block_5054:
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
    bc1t block_5058
block_5057:
    j block_5059
block_5058:
    fneg f1 f1
    j block_5059
block_5059:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_5061
block_5060:
    mv r2 r0
    j block_5062
block_5061:
    addi r2 r0 1
    j block_5062
block_5062:
    bne r2 r0 block_5064
    j block_5063
block_5063:
    fneg f1 f1
    j block_5065
block_5064:
    j block_5065
block_5065:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_5067
block_5066:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_5070
block_5069:
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
    j block_5068
block_5070:
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
    j block_5068
block_5067:
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
    j block_5068
block_5068:
    bne r2 r0 block_5072
    j block_5071
block_5071:
    fneg f1 f1
    j block_5073
block_5072:
    j block_5073
block_5073:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_5056
block_5055:
    #15.0
    flui f1 16752
    j block_5056
block_5056:
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_5075
block_5074:
    j block_5076
block_5075:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_5076
block_5076:
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
    bc1t block_5078
block_5077:
    mv r2 r0
    j block_5079
block_5078:
    addi r2 r0 1
    j block_5079
block_5079:
    bne r2 r0 block_5081
    j block_5080
block_5080:
    j block_5082
block_5081:
    #0.0
    flui f0 0
    j block_5082
block_5082:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 30588
    j block_5018
block_5022:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30560
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
    bc1t block_5084
block_5083:
    j block_5085
block_5084:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_5085
block_5085:
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
    bc1t block_5087
block_5086:
    fneg f0 f0
    j block_5088
block_5087:
    j block_5088
block_5088:
    fclt f3 f0
    bc1t block_5090
block_5089:
    addi r2 r0 1
    j block_5091
block_5090:
    addi r2 r0 -1
    j block_5091
block_5091:
    fclt f3 f0
    bc1t block_5093
block_5092:
    j block_5094
block_5093:
    fsub f0 f0 f3
    j block_5094
block_5094:
    fclt f2 f0
    bc1t block_5096
block_5095:
    j block_5097
block_5096:
    sub r2 r0 r2
    j block_5097
block_5097:
    fclt f2 f0
    bc1t block_5099
block_5098:
    j block_5100
block_5099:
    fsub f0 f3 f0
    j block_5100
block_5100:
    fclt f0 f1
    bc1t block_5102
block_5101:
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
    j block_5103
block_5102:
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
    j block_5103
block_5103:
    addi r3 r0 -1
    beq r2 r3 block_5105
block_5104:
    j block_5106
block_5105:
    fneg f0 f0
    j block_5106
block_5106:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 30584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 30588
    j block_5018
block_5020:
    lwcZ f0 r0 30556
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
    bc1t block_5108
block_5107:
    fadd f0 f0 f4
    j block_5109
block_5108:
    j block_5109
block_5109:
    fclt f3 f0
    bc1t block_5111
block_5110:
    addi r2 r0 1
    j block_5112
block_5111:
    mv r2 r0
    j block_5112
block_5112:
    fclt f3 f0
    bc1t block_5114
block_5113:
    j block_5115
block_5114:
    fsub f0 f0 f3
    j block_5115
block_5115:
    fclt f2 f0
    bc1t block_5117
block_5116:
    j block_5118
block_5117:
    fsub f0 f3 f0
    j block_5118
block_5118:
    fclt f1 f0
    bc1t block_5120
block_5119:
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
    j block_5121
block_5120:
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
    j block_5121
block_5121:
    bne r2 r0 block_5123
    j block_5122
block_5122:
    fneg f0 f0
    j block_5124
block_5123:
    j block_5124
block_5124:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 30580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 30584
    j block_5018
block_5017:
    lwcZ f0 r0 30552
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
    bc1t block_5126
block_5125:
    fmv f1 f2
    j block_5127
block_5126:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_5127
block_5127:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_5129
block_5128:
    mv r2 r0
    j block_5130
block_5129:
    addi r2 r0 1
    j block_5130
block_5130:
    lwcZ f0 r0 30560
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
    bc1t block_5132
block_5131:
    fmv f1 f2
    j block_5133
block_5132:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_5133
block_5133:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_5135
block_5134:
    mv r3 r0
    j block_5136
block_5135:
    addi r3 r0 1
    j block_5136
block_5136:
    bne r2 r0 block_5138
    j block_5137
block_5137:
    bne r3 r0 block_5141
    j block_5140
block_5140:
    #255.0
    flui f0 17279
    j block_5139
block_5141:
    #0.0
    flui f0 0
    j block_5139
block_5138:
    bne r3 r0 block_5143
    j block_5142
block_5142:
    #0.0
    flui f0 0
    j block_5139
block_5143:
    #255.0
    flui f0 17279
    j block_5139
block_5139:
    swcZ f0 r0 30584
    j block_5018
block_5018:
    lw r2 r0 30536
    lw r3 r2 0
    lw r4 r3 0
    addi r5 r0 -1
    sw r1 r29 44
    beq r4 r5 block_5145
block_5144:
    addi r5 r0 99
    sw r3 r29 32
    sw r2 r29 4
    beq r4 r5 block_5148
block_5147:
    sll r5 r4 2
    lw r5 r5 30048
    lwcZ f0 r0 30552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 30992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_5151
block_5150:
    addi r7 r0 2
    beq r6 r7 block_5154
block_5153:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_5156
block_5155:
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
    beq r6 r0 block_5158
block_5157:
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
    j block_5159
block_5158:
    fmv f0 f5
    j block_5159
block_5159:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_5161
block_5160:
    j block_5162
block_5161:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_5162
block_5162:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5164
block_5163:
    mv r6 r0
    j block_5165
block_5164:
    addi r6 r0 1
    j block_5165
block_5165:
    bne r6 r0 block_5167
    j block_5166
block_5166:
    mv r4 r0
    j block_5152
block_5167:
    lw r5 r5 24
    bne r5 r0 block_5169
    j block_5168
block_5168:
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
    swcZ f0 r0 30540
    j block_5170
block_5169:
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
    swcZ f0 r0 30540
    j block_5170
block_5170:
    addi r4 r0 1
    j block_5152
block_5156:
    mv r4 r0
    j block_5152
block_5154:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_5172
block_5171:
    mv r5 r0
    j block_5173
block_5172:
    addi r5 r0 1
    j block_5173
block_5173:
    bne r5 r0 block_5175
    j block_5174
block_5174:
    mv r4 r0
    j block_5152
block_5175:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_5152
block_5151:
    lw r6 r0 30988
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
    bc1t block_5177
block_5176:
    j block_5178
block_5177:
    fneg f4 f4
    j block_5178
block_5178:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_5180
block_5179:
    mv r7 r0
    j block_5181
block_5180:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_5183
block_5182:
    j block_5184
block_5183:
    fneg f4 f4
    j block_5184
block_5184:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_5186
block_5185:
    mv r7 r0
    j block_5181
block_5186:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_5188
block_5187:
    mv r7 r0
    j block_5189
block_5188:
    addi r7 r0 1
    j block_5189
block_5189:
    bne r7 r0 block_5191
    j block_5190
block_5190:
    addi r7 r0 1
    j block_5181
block_5191:
    mv r7 r0
    j block_5181
block_5181:
    bne r7 r0 block_5193
    j block_5192
block_5192:
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
    bc1t block_5195
block_5194:
    j block_5196
block_5195:
    fneg f4 f4
    j block_5196
block_5196:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_5198
block_5197:
    mv r7 r0
    j block_5199
block_5198:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_5201
block_5200:
    j block_5202
block_5201:
    fneg f4 f4
    j block_5202
block_5202:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_5204
block_5203:
    mv r7 r0
    j block_5199
block_5204:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_5206
block_5205:
    mv r7 r0
    j block_5207
block_5206:
    addi r7 r0 1
    j block_5207
block_5207:
    bne r7 r0 block_5209
    j block_5208
block_5208:
    addi r7 r0 1
    j block_5199
block_5209:
    mv r7 r0
    j block_5199
block_5199:
    bne r7 r0 block_5211
    j block_5210
block_5210:
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
    bc1t block_5213
block_5212:
    j block_5214
block_5213:
    fneg f0 f0
    j block_5214
block_5214:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_5216
block_5215:
    mv r4 r0
    j block_5217
block_5216:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5219
block_5218:
    j block_5220
block_5219:
    fneg f0 f0
    j block_5220
block_5220:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_5222
block_5221:
    mv r4 r0
    j block_5217
block_5222:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5224
block_5223:
    mv r4 r0
    j block_5225
block_5224:
    addi r4 r0 1
    j block_5225
block_5225:
    bne r4 r0 block_5227
    j block_5226
block_5226:
    addi r4 r0 1
    j block_5217
block_5227:
    mv r4 r0
    j block_5217
block_5217:
    bne r4 r0 block_5229
    j block_5228
block_5228:
    mv r4 r0
    j block_5152
block_5229:
    swcZ f2 r0 30540
    addi r4 r0 3
    j block_5152
block_5211:
    swcZ f3 r0 30540
    addi r4 r0 2
    j block_5152
block_5193:
    swcZ f3 r0 30540
    addi r4 r0 1
    j block_5152
block_5152:
    beq r4 r0 block_5231
block_5230:
    lwcZ f0 r0 30540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f0 f1
    bc1t block_5233
block_5232:
    mv r1 r0
    j block_5149
block_5233:
    lw r4 r3 4
    addi r5 r0 -1
    beq r4 r5 block_5235
block_5234:
    sll r4 r4 2
    lw r4 r4 30332
    mv r2 r4
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5238
    j block_5237
block_5237:
    lw r1 r29 32
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_5240
block_5239:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5242
    j block_5241
block_5241:
    lw r1 r29 32
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_5244
block_5243:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5246
    j block_5245
block_5245:
    lw r1 r29 32
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_5248
block_5247:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5250
    j block_5249
block_5249:
    addi r1 r0 5
    lw r2 r29 32
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    j block_5236
block_5250:
    addi r1 r0 1
    j block_5236
block_5248:
    mv r1 r0
    j block_5236
block_5246:
    addi r1 r0 1
    j block_5236
block_5244:
    mv r1 r0
    j block_5236
block_5242:
    addi r1 r0 1
    j block_5236
block_5240:
    mv r1 r0
    j block_5236
block_5238:
    addi r1 r0 1
    j block_5236
block_5235:
    mv r1 r0
    j block_5236
block_5236:
    bne r1 r0 block_5252
    j block_5251
block_5251:
    mv r1 r0
    j block_5149
block_5252:
    addi r1 r0 1
    j block_5149
block_5231:
    mv r1 r0
    j block_5149
block_5148:
    addi r1 r0 1
    j block_5149
block_5149:
    bne r1 r0 block_5254
    j block_5253
block_5253:
    addi r1 r0 1
    lw r2 r29 4
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_5146
block_5254:
    lw r1 r29 32
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_5256
block_5255:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5259
    j block_5258
block_5258:
    lw r1 r29 32
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_5261
block_5260:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5263
    j block_5262
block_5262:
    lw r1 r29 32
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_5265
block_5264:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5267
    j block_5266
block_5266:
    lw r1 r29 32
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_5269
block_5268:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5271
    j block_5270
block_5270:
    addi r1 r0 5
    lw r2 r29 32
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    j block_5257
block_5271:
    addi r1 r0 1
    j block_5257
block_5269:
    mv r1 r0
    j block_5257
block_5267:
    addi r1 r0 1
    j block_5257
block_5265:
    mv r1 r0
    j block_5257
block_5263:
    addi r1 r0 1
    j block_5257
block_5261:
    mv r1 r0
    j block_5257
block_5259:
    addi r1 r0 1
    j block_5257
block_5256:
    mv r1 r0
    j block_5257
block_5257:
    bne r1 r0 block_5273
    j block_5272
block_5272:
    addi r1 r0 1
    lw r2 r29 4
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_5146
block_5273:
    addi r1 r0 1
    j block_5146
block_5145:
    mv r1 r0
    j block_5146
block_5146:
    bne r1 r0 block_5275
    j block_5274
block_5274:
    lwcZ f0 r0 30568
    lwcZ f1 r0 30312
    fmul f0 f0 f1
    lwcZ f1 r0 30572
    lwcZ f2 r0 30316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 30576
    lwcZ f2 r0 30320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5277
block_5276:
    mv r1 r0
    j block_5278
block_5277:
    addi r1 r0 1
    j block_5278
block_5278:
    bne r1 r0 block_5280
    j block_5279
block_5279:
    #0.0
    flui f0 0
    j block_5281
block_5280:
    j block_5281
block_5281:
    lwcZ f1 r29 12
    fmul f0 f1 f0
    lw r1 r29 44
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 30592
    lwcZ f2 r0 30580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30592
    lwcZ f1 r0 30596
    lwcZ f2 r0 30584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30596
    lwcZ f1 r0 30600
    lwcZ f2 r0 30588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 30600
    j block_4987
block_5275:
    j block_4987
block_4986:
    lw r2 r1 476
    #-0.006666667
    flui f1 -17446
    fori f1 f1 29710
    fmul f0 f0 f1
    #1000000000.0
    flui f1 20078
    fori f1 f1 27432
    swcZ f1 r0 30548
    lw r4 r0 30536
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
    lwcZ f0 r0 30548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_5283
block_5282:
    mv r1 r0
    j block_5284
block_5283:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_5286
block_5285:
    mv r1 r0
    j block_5284
block_5286:
    addi r1 r0 1
    j block_5284
block_5284:
    bne r1 r0 block_5288
    j block_5287
block_5287:
    j block_4987
block_5288:
    lw r1 r0 30564
    sll r1 r1 2
    lw r1 r1 30048
    lw r2 r29 16
    lw r2 r2 0
    lw r3 r1 4
    addi r4 r0 1
    beq r3 r4 block_5290
block_5289:
    addi r2 r0 2
    beq r3 r2 block_5293
block_5292:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r2 r1 20
    lwcZ f2 r2 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
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
    beq r2 r0 block_5295
block_5294:
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
    swcZ f3 r0 30568
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
    swcZ f2 r0 30572
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
    swcZ f0 r0 30576
    j block_5296
block_5295:
    swcZ f3 r0 30568
    swcZ f4 r0 30572
    swcZ f5 r0 30576
    j block_5296
block_5296:
    lw r2 r1 24
    lwcZ f0 r0 30568
    fmul f0 f0 f0
    lwcZ f1 r0 30572
    fmul f1 f1 f1
    fadd f0 f0 f1
    lwcZ f1 r0 30576
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
    bc1t block_5298
block_5297:
    bne r2 r0 block_5301
    j block_5300
block_5300:
    #1.0
    flui f1 16256
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_5299
block_5301:
    #-1.0
    flui f1 -16512
    finv_init f2 f0
    #2.0
    flui f3 16384
    fmul f0 f0 f2
    fsub f0 f3 f0
    fmul f0 f2 f0
    fmul f0 f1 f0
    j block_5299
block_5298:
    #1.0
    flui f0 16256
    j block_5299
block_5299:
    lwcZ f1 r0 30568
    fmul f1 f1 f0
    swcZ f1 r0 30568
    lwcZ f1 r0 30572
    fmul f1 f1 f0
    swcZ f1 r0 30572
    lwcZ f1 r0 30576
    fmul f0 f1 f0
    swcZ f0 r0 30576
    j block_5291
block_5293:
    lw r2 r1 16
    lwcZ f0 r2 0
    fneg f0 f0
    swcZ f0 r0 30568
    lw r2 r1 16
    lwcZ f0 r2 4
    fneg f0 f0
    swcZ f0 r0 30572
    lw r2 r1 16
    lwcZ f0 r2 8
    fneg f0 f0
    swcZ f0 r0 30576
    j block_5291
block_5290:
    lw r3 r0 30544
    #0.0
    flui f0 0
    swcZ f0 r0 30568
    swcZ f0 r0 30572
    swcZ f0 r0 30576
    subi r4 r3 1
    subi r3 r3 1
    sll r3 r3 2
    flwab f0 r2 r3
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5303
block_5302:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5306
block_5305:
    mv r2 r0
    j block_5307
block_5306:
    addi r2 r0 1
    j block_5307
block_5307:
    bne r2 r0 block_5309
    j block_5308
block_5308:
    #-1.0
    flui f0 -16512
    j block_5304
block_5309:
    #1.0
    flui f0 16256
    j block_5304
block_5303:
    #0.0
    flui f0 0
    j block_5304
block_5304:
    fneg f0 f0
    sll r2 r4 2
    swcZ f0 r2 30568
    j block_5291
block_5291:
    lw r2 r1 0
    lw r3 r1 32
    lwcZ f0 r3 0
    swcZ f0 r0 30580
    lw r3 r1 32
    lwcZ f0 r3 4
    swcZ f0 r0 30584
    lw r3 r1 32
    lwcZ f0 r3 8
    swcZ f0 r0 30588
    addi r3 r0 1
    beq r2 r3 block_5311
block_5310:
    addi r3 r0 2
    beq r2 r3 block_5314
block_5313:
    addi r3 r0 3
    beq r2 r3 block_5316
block_5315:
    addi r3 r0 4
    beq r2 r3 block_5318
block_5317:
    j block_5312
block_5318:
    lwcZ f0 r0 30552
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
    lwcZ f1 r0 30560
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
    bc1t block_5320
block_5319:
    fmv f3 f0
    j block_5321
block_5320:
    fneg f3 f0
    j block_5321
block_5321:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_5323
block_5322:
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
    bc1t block_5326
block_5325:
    j block_5327
block_5326:
    fneg f0 f0
    j block_5327
block_5327:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5329
block_5328:
    mv r2 r0
    j block_5330
block_5329:
    addi r2 r0 1
    j block_5330
block_5330:
    bne r2 r0 block_5332
    j block_5331
block_5331:
    fneg f0 f0
    j block_5333
block_5332:
    j block_5333
block_5333:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_5335
block_5334:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_5338
block_5337:
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
    j block_5336
block_5338:
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
    j block_5336
block_5335:
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
    j block_5336
block_5336:
    bne r2 r0 block_5340
    j block_5339
block_5339:
    fneg f0 f0
    j block_5341
block_5340:
    j block_5341
block_5341:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_5324
block_5323:
    #15.0
    flui f0 16752
    j block_5324
block_5324:
    ftoi r2 f0
    itof f1 r2
    fclt f0 f1
    bc1t block_5343
block_5342:
    j block_5344
block_5343:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_5344
block_5344:
    fsub f0 f0 f1
    lwcZ f1 r0 30556
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
    bc1t block_5346
block_5345:
    fmv f3 f2
    j block_5347
block_5346:
    fneg f3 f2
    j block_5347
block_5347:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_5349
block_5348:
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
    bc1t block_5352
block_5351:
    j block_5353
block_5352:
    fneg f1 f1
    j block_5353
block_5353:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_5355
block_5354:
    mv r2 r0
    j block_5356
block_5355:
    addi r2 r0 1
    j block_5356
block_5356:
    bne r2 r0 block_5358
    j block_5357
block_5357:
    fneg f1 f1
    j block_5359
block_5358:
    j block_5359
block_5359:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_5361
block_5360:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_5364
block_5363:
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
    j block_5362
block_5364:
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
    j block_5362
block_5361:
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
    j block_5362
block_5362:
    bne r2 r0 block_5366
    j block_5365
block_5365:
    fneg f1 f1
    j block_5367
block_5366:
    j block_5367
block_5367:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_5350
block_5349:
    #15.0
    flui f1 16752
    j block_5350
block_5350:
    ftoi r2 f1
    itof f2 r2
    fclt f1 f2
    bc1t block_5369
block_5368:
    j block_5370
block_5369:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_5370
block_5370:
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
    bc1t block_5372
block_5371:
    mv r2 r0
    j block_5373
block_5372:
    addi r2 r0 1
    j block_5373
block_5373:
    bne r2 r0 block_5375
    j block_5374
block_5374:
    j block_5376
block_5375:
    #0.0
    flui f0 0
    j block_5376
block_5376:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 30588
    j block_5312
block_5316:
    lwcZ f0 r0 30552
    lw r2 r1 20
    lwcZ f1 r2 0
    fsub f0 f0 f1
    lwcZ f1 r0 30560
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
    bc1t block_5378
block_5377:
    j block_5379
block_5378:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_5379
block_5379:
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
    bc1t block_5381
block_5380:
    fneg f0 f0
    j block_5382
block_5381:
    j block_5382
block_5382:
    fclt f3 f0
    bc1t block_5384
block_5383:
    addi r2 r0 1
    j block_5385
block_5384:
    addi r2 r0 -1
    j block_5385
block_5385:
    fclt f3 f0
    bc1t block_5387
block_5386:
    j block_5388
block_5387:
    fsub f0 f0 f3
    j block_5388
block_5388:
    fclt f2 f0
    bc1t block_5390
block_5389:
    j block_5391
block_5390:
    sub r2 r0 r2
    j block_5391
block_5391:
    fclt f2 f0
    bc1t block_5393
block_5392:
    j block_5394
block_5393:
    fsub f0 f3 f0
    j block_5394
block_5394:
    fclt f0 f1
    bc1t block_5396
block_5395:
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
    j block_5397
block_5396:
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
    j block_5397
block_5397:
    addi r3 r0 -1
    beq r2 r3 block_5399
block_5398:
    j block_5400
block_5399:
    fneg f0 f0
    j block_5400
block_5400:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 30584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 30588
    j block_5312
block_5314:
    lwcZ f0 r0 30556
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
    bc1t block_5402
block_5401:
    fadd f0 f0 f4
    j block_5403
block_5402:
    j block_5403
block_5403:
    fclt f3 f0
    bc1t block_5405
block_5404:
    addi r2 r0 1
    j block_5406
block_5405:
    mv r2 r0
    j block_5406
block_5406:
    fclt f3 f0
    bc1t block_5408
block_5407:
    j block_5409
block_5408:
    fsub f0 f0 f3
    j block_5409
block_5409:
    fclt f2 f0
    bc1t block_5411
block_5410:
    j block_5412
block_5411:
    fsub f0 f3 f0
    j block_5412
block_5412:
    fclt f1 f0
    bc1t block_5414
block_5413:
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
    j block_5415
block_5414:
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
    j block_5415
block_5415:
    bne r2 r0 block_5417
    j block_5416
block_5416:
    fneg f0 f0
    j block_5418
block_5417:
    j block_5418
block_5418:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 30580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 30584
    j block_5312
block_5311:
    lwcZ f0 r0 30552
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
    bc1t block_5420
block_5419:
    fmv f1 f2
    j block_5421
block_5420:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_5421
block_5421:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_5423
block_5422:
    mv r2 r0
    j block_5424
block_5423:
    addi r2 r0 1
    j block_5424
block_5424:
    lwcZ f0 r0 30560
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
    bc1t block_5426
block_5425:
    fmv f1 f2
    j block_5427
block_5426:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_5427
block_5427:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_5429
block_5428:
    mv r3 r0
    j block_5430
block_5429:
    addi r3 r0 1
    j block_5430
block_5430:
    bne r2 r0 block_5432
    j block_5431
block_5431:
    bne r3 r0 block_5435
    j block_5434
block_5434:
    #255.0
    flui f0 17279
    j block_5433
block_5435:
    #0.0
    flui f0 0
    j block_5433
block_5432:
    bne r3 r0 block_5437
    j block_5436
block_5436:
    #0.0
    flui f0 0
    j block_5433
block_5437:
    #255.0
    flui f0 17279
    j block_5433
block_5433:
    swcZ f0 r0 30584
    j block_5312
block_5312:
    lw r2 r0 30536
    lw r3 r2 0
    lw r4 r3 0
    addi r5 r0 -1
    sw r1 r29 40
    beq r4 r5 block_5439
block_5438:
    addi r5 r0 99
    sw r3 r29 28
    sw r2 r29 0
    beq r4 r5 block_5442
block_5441:
    sll r5 r4 2
    lw r5 r5 30048
    lwcZ f0 r0 30552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 30992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_5445
block_5444:
    addi r7 r0 2
    beq r6 r7 block_5448
block_5447:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_5450
block_5449:
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
    beq r6 r0 block_5452
block_5451:
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
    j block_5453
block_5452:
    fmv f0 f5
    j block_5453
block_5453:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_5455
block_5454:
    j block_5456
block_5455:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_5456
block_5456:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5458
block_5457:
    mv r6 r0
    j block_5459
block_5458:
    addi r6 r0 1
    j block_5459
block_5459:
    bne r6 r0 block_5461
    j block_5460
block_5460:
    mv r4 r0
    j block_5446
block_5461:
    lw r5 r5 24
    bne r5 r0 block_5463
    j block_5462
block_5462:
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
    swcZ f0 r0 30540
    j block_5464
block_5463:
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
    swcZ f0 r0 30540
    j block_5464
block_5464:
    addi r4 r0 1
    j block_5446
block_5450:
    mv r4 r0
    j block_5446
block_5448:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_5466
block_5465:
    mv r5 r0
    j block_5467
block_5466:
    addi r5 r0 1
    j block_5467
block_5467:
    bne r5 r0 block_5469
    j block_5468
block_5468:
    mv r4 r0
    j block_5446
block_5469:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_5446
block_5445:
    lw r6 r0 30988
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
    bc1t block_5471
block_5470:
    j block_5472
block_5471:
    fneg f4 f4
    j block_5472
block_5472:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_5474
block_5473:
    mv r7 r0
    j block_5475
block_5474:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_5477
block_5476:
    j block_5478
block_5477:
    fneg f4 f4
    j block_5478
block_5478:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_5480
block_5479:
    mv r7 r0
    j block_5475
block_5480:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_5482
block_5481:
    mv r7 r0
    j block_5483
block_5482:
    addi r7 r0 1
    j block_5483
block_5483:
    bne r7 r0 block_5485
    j block_5484
block_5484:
    addi r7 r0 1
    j block_5475
block_5485:
    mv r7 r0
    j block_5475
block_5475:
    bne r7 r0 block_5487
    j block_5486
block_5486:
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
    bc1t block_5489
block_5488:
    j block_5490
block_5489:
    fneg f4 f4
    j block_5490
block_5490:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_5492
block_5491:
    mv r7 r0
    j block_5493
block_5492:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_5495
block_5494:
    j block_5496
block_5495:
    fneg f4 f4
    j block_5496
block_5496:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_5498
block_5497:
    mv r7 r0
    j block_5493
block_5498:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_5500
block_5499:
    mv r7 r0
    j block_5501
block_5500:
    addi r7 r0 1
    j block_5501
block_5501:
    bne r7 r0 block_5503
    j block_5502
block_5502:
    addi r7 r0 1
    j block_5493
block_5503:
    mv r7 r0
    j block_5493
block_5493:
    bne r7 r0 block_5505
    j block_5504
block_5504:
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
    bc1t block_5507
block_5506:
    j block_5508
block_5507:
    fneg f0 f0
    j block_5508
block_5508:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_5510
block_5509:
    mv r4 r0
    j block_5511
block_5510:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_5513
block_5512:
    j block_5514
block_5513:
    fneg f0 f0
    j block_5514
block_5514:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_5516
block_5515:
    mv r4 r0
    j block_5511
block_5516:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_5518
block_5517:
    mv r4 r0
    j block_5519
block_5518:
    addi r4 r0 1
    j block_5519
block_5519:
    bne r4 r0 block_5521
    j block_5520
block_5520:
    addi r4 r0 1
    j block_5511
block_5521:
    mv r4 r0
    j block_5511
block_5511:
    bne r4 r0 block_5523
    j block_5522
block_5522:
    mv r4 r0
    j block_5446
block_5523:
    swcZ f2 r0 30540
    addi r4 r0 3
    j block_5446
block_5505:
    swcZ f3 r0 30540
    addi r4 r0 2
    j block_5446
block_5487:
    swcZ f3 r0 30540
    addi r4 r0 1
    j block_5446
block_5446:
    beq r4 r0 block_5525
block_5524:
    lwcZ f0 r0 30540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f0 f1
    bc1t block_5527
block_5526:
    mv r1 r0
    j block_5443
block_5527:
    lw r4 r3 4
    addi r5 r0 -1
    beq r4 r5 block_5529
block_5528:
    sll r4 r4 2
    lw r4 r4 30332
    mv r2 r4
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5532
    j block_5531
block_5531:
    lw r1 r29 28
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_5534
block_5533:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5536
    j block_5535
block_5535:
    lw r1 r29 28
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_5538
block_5537:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5540
    j block_5539
block_5539:
    lw r1 r29 28
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_5542
block_5541:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5544
    j block_5543
block_5543:
    addi r1 r0 5
    lw r2 r29 28
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    j block_5530
block_5544:
    addi r1 r0 1
    j block_5530
block_5542:
    mv r1 r0
    j block_5530
block_5540:
    addi r1 r0 1
    j block_5530
block_5538:
    mv r1 r0
    j block_5530
block_5536:
    addi r1 r0 1
    j block_5530
block_5534:
    mv r1 r0
    j block_5530
block_5532:
    addi r1 r0 1
    j block_5530
block_5529:
    mv r1 r0
    j block_5530
block_5530:
    bne r1 r0 block_5546
    j block_5545
block_5545:
    mv r1 r0
    j block_5443
block_5546:
    addi r1 r0 1
    j block_5443
block_5525:
    mv r1 r0
    j block_5443
block_5442:
    addi r1 r0 1
    j block_5443
block_5443:
    bne r1 r0 block_5548
    j block_5547
block_5547:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_5440
block_5548:
    lw r1 r29 28
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_5550
block_5549:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5553
    j block_5552
block_5552:
    lw r1 r29 28
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_5555
block_5554:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5557
    j block_5556
block_5556:
    lw r1 r29 28
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_5559
block_5558:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5561
    j block_5560
block_5560:
    lw r1 r29 28
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_5563
block_5562:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_5565
    j block_5564
block_5564:
    addi r1 r0 5
    lw r2 r29 28
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    j block_5551
block_5565:
    addi r1 r0 1
    j block_5551
block_5563:
    mv r1 r0
    j block_5551
block_5561:
    addi r1 r0 1
    j block_5551
block_5559:
    mv r1 r0
    j block_5551
block_5557:
    addi r1 r0 1
    j block_5551
block_5555:
    mv r1 r0
    j block_5551
block_5553:
    addi r1 r0 1
    j block_5551
block_5550:
    mv r1 r0
    j block_5551
block_5551:
    bne r1 r0 block_5567
    j block_5566
block_5566:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_5440
block_5567:
    addi r1 r0 1
    j block_5440
block_5439:
    mv r1 r0
    j block_5440
block_5440:
    bne r1 r0 block_5569
    j block_5568
block_5568:
    lwcZ f0 r0 30568
    lwcZ f1 r0 30312
    fmul f0 f0 f1
    lwcZ f1 r0 30572
    lwcZ f2 r0 30316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 30576
    lwcZ f2 r0 30320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_5571
block_5570:
    mv r1 r0
    j block_5572
block_5571:
    addi r1 r0 1
    j block_5572
block_5572:
    bne r1 r0 block_5574
    j block_5573
block_5573:
    #0.0
    flui f0 0
    j block_5575
block_5574:
    j block_5575
block_5575:
    lwcZ f1 r29 8
    fmul f0 f1 f0
    lw r1 r29 40
    lw r1 r1 28
    lwcZ f1 r1 0
    fmul f0 f0 f1
    lwcZ f1 r0 30592
    lwcZ f2 r0 30580
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30592
    lwcZ f1 r0 30596
    lwcZ f2 r0 30584
    fmul f2 f0 f2
    fadd f1 f1 f2
    swcZ f1 r0 30596
    lwcZ f1 r0 30600
    lwcZ f2 r0 30588
    fmul f0 f0 f2
    fadd f0 f1 f0
    swcZ f0 r0 30600
    j block_4987
block_5569:
    j block_4987
block_4987:
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
block_4981:
    jr r31
trace_or_matrix.4387:
block_2123:
    sll r4 r1 2
    lwab r4 r2 r4
    lw r5 r4 0
    addi r6 r0 -1
    beq r5 r6 block_2125
block_2124:
    addi r6 r0 99
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    beq r5 r6 block_2127
block_2126:
    sll r5 r5 2
    lw r5 r5 30048
    lwcZ f0 r0 30636
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 30640
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 30644
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_2130
block_2129:
    addi r7 r0 2
    beq r6 r7 block_2133
block_2132:
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
    beq r6 r0 block_2135
block_2134:
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
    j block_2136
block_2135:
    fmv f3 f6
    j block_2136
block_2136:
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2138
block_2137:
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
    beq r6 r0 block_2140
block_2139:
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
    j block_2141
block_2140:
    fmv f4 f7
    j block_2141
block_2141:
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
    beq r6 r0 block_2143
block_2142:
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
    j block_2144
block_2143:
    fmv f0 f5
    j block_2144
block_2144:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_2146
block_2145:
    j block_2147
block_2146:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_2147
block_2147:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_2149
block_2148:
    mv r6 r0
    j block_2150
block_2149:
    addi r6 r0 1
    j block_2150
block_2150:
    bne r6 r0 block_2152
    j block_2151
block_2151:
    mv r5 r0
    j block_2131
block_2152:
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
    bne r5 r0 block_2154
    j block_2153
block_2153:
    fneg f0 f0
    j block_2155
block_2154:
    j block_2155
block_2155:
    fsub f0 f0 f4
    finv_init f1 f3
    #2.0
    flui f2 16384
    fmul f3 f3 f1
    fsub f2 f2 f3
    fmul f1 f1 f2
    fmul f0 f0 f1
    swcZ f0 r0 30540
    addi r5 r0 1
    j block_2131
block_2138:
    mv r5 r0
    j block_2131
block_2133:
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
    bc1t block_2157
block_2156:
    mv r6 r0
    j block_2158
block_2157:
    addi r6 r0 1
    j block_2158
block_2158:
    bne r6 r0 block_2160
    j block_2159
block_2159:
    mv r5 r0
    j block_2131
block_2160:
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
    swcZ f0 r0 30540
    addi r5 r0 1
    j block_2131
block_2130:
    lwcZ f3 r3 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2162
block_2161:
    lw r6 r5 16
    lw r7 r5 24
    lwcZ f3 r3 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2165
block_2164:
    mv r8 r0
    j block_2166
block_2165:
    addi r8 r0 1
    j block_2166
block_2166:
    bne r7 r0 block_2168
    j block_2167
block_2167:
    mv r7 r8
    j block_2169
block_2168:
    bne r8 r0 block_2171
    j block_2170
block_2170:
    addi r7 r0 1
    j block_2169
block_2171:
    mv r7 r0
    j block_2169
block_2169:
    lwcZ f3 r6 0
    bne r7 r0 block_2173
    j block_2172
block_2172:
    fneg f3 f3
    j block_2174
block_2173:
    j block_2174
block_2174:
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
    bc1t block_2176
block_2175:
    j block_2177
block_2176:
    fneg f4 f4
    j block_2177
block_2177:
    lwcZ f5 r6 4
    fclt f4 f5
    bc1t block_2179
block_2178:
    mv r6 r0
    j block_2163
block_2179:
    lwcZ f4 r3 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2181
block_2180:
    j block_2182
block_2181:
    fneg f4 f4
    j block_2182
block_2182:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_2184
block_2183:
    mv r6 r0
    j block_2163
block_2184:
    swcZ f3 r0 30540
    addi r6 r0 1
    j block_2163
block_2162:
    mv r6 r0
    j block_2163
block_2163:
    bne r6 r0 block_2186
    j block_2185
block_2185:
    lwcZ f3 r3 4
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2188
block_2187:
    lw r6 r5 16
    lw r7 r5 24
    lwcZ f3 r3 4
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
    lwcZ f3 r6 4
    bne r7 r0 block_2199
    j block_2198
block_2198:
    fneg f3 f3
    j block_2200
block_2199:
    j block_2200
block_2200:
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
    bc1t block_2202
block_2201:
    j block_2203
block_2202:
    fneg f4 f4
    j block_2203
block_2203:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_2205
block_2204:
    mv r6 r0
    j block_2189
block_2205:
    lwcZ f4 r3 0
    fmul f4 f3 f4
    fadd f4 f4 f0
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
    lwcZ f5 r6 0
    fclt f4 f5
    bc1t block_2210
block_2209:
    mv r6 r0
    j block_2189
block_2210:
    swcZ f3 r0 30540
    addi r6 r0 1
    j block_2189
block_2188:
    mv r6 r0
    j block_2189
block_2189:
    bne r6 r0 block_2212
    j block_2211
block_2211:
    lwcZ f3 r3 8
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2214
block_2213:
    lw r6 r5 16
    lw r5 r5 24
    lwcZ f3 r3 8
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2217
block_2216:
    mv r7 r0
    j block_2218
block_2217:
    addi r7 r0 1
    j block_2218
block_2218:
    bne r5 r0 block_2220
    j block_2219
block_2219:
    mv r5 r7
    j block_2221
block_2220:
    bne r7 r0 block_2223
    j block_2222
block_2222:
    addi r5 r0 1
    j block_2221
block_2223:
    mv r5 r0
    j block_2221
block_2221:
    lwcZ f3 r6 8
    bne r5 r0 block_2225
    j block_2224
block_2224:
    fneg f3 f3
    j block_2226
block_2225:
    j block_2226
block_2226:
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
    bc1t block_2228
block_2227:
    j block_2229
block_2228:
    fneg f0 f0
    j block_2229
block_2229:
    lwcZ f3 r6 0
    fclt f0 f3
    bc1t block_2231
block_2230:
    mv r5 r0
    j block_2215
block_2231:
    lwcZ f0 r3 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2233
block_2232:
    j block_2234
block_2233:
    fneg f0 f0
    j block_2234
block_2234:
    lwcZ f1 r6 4
    fclt f0 f1
    bc1t block_2236
block_2235:
    mv r5 r0
    j block_2215
block_2236:
    swcZ f2 r0 30540
    addi r5 r0 1
    j block_2215
block_2214:
    mv r5 r0
    j block_2215
block_2215:
    bne r5 r0 block_2238
    j block_2237
block_2237:
    mv r5 r0
    j block_2131
block_2238:
    addi r5 r0 3
    j block_2131
block_2212:
    addi r5 r0 2
    j block_2131
block_2186:
    addi r5 r0 1
    j block_2131
block_2131:
    beq r5 r0 block_2240
block_2239:
    lwcZ f0 r0 30540
    lwcZ f1 r0 30548
    fclt f0 f1
    bc1t block_2242
block_2241:
    j block_2128
block_2242:
    lw r5 r4 4
    addi r6 r0 -1
    beq r5 r6 block_2244
block_2243:
    sll r5 r5 2
    lw r5 r5 30332
    sw r4 r29 8
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
    beq r2 r3 block_2246
block_2245:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2248
block_2247:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2250
block_2249:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2252
block_2251:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2254
block_2253:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 28
    addi r3 r0 -1
    beq r2 r3 block_2256
block_2255:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 8
    lw r2 r29 8
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network.4375
    subi r29 r29 28
    lw r31 r29 24
    j block_2128
block_2256:
    j block_2128
block_2254:
    j block_2128
block_2252:
    j block_2128
block_2250:
    j block_2128
block_2248:
    j block_2128
block_2246:
    j block_2128
block_2244:
    j block_2128
block_2240:
    j block_2128
block_2127:
    lw r5 r4 4
    addi r6 r0 -1
    beq r5 r6 block_2258
block_2257:
    sll r5 r5 2
    lw r5 r5 30332
    sw r4 r29 8
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
    beq r2 r3 block_2260
block_2259:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2262
block_2261:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2264
block_2263:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2266
block_2265:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2268
block_2267:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 28
    addi r3 r0 -1
    beq r2 r3 block_2270
block_2269:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 8
    lw r2 r29 8
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network.4375
    subi r29 r29 28
    lw r31 r29 24
    j block_2128
block_2270:
    j block_2128
block_2268:
    j block_2128
block_2266:
    j block_2128
block_2264:
    j block_2128
block_2262:
    j block_2128
block_2260:
    j block_2128
block_2258:
    j block_2128
block_2128:
    lw r1 r29 16
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 20
    lwab r2 r3 r2
    lw r4 r2 0
    addi r5 r0 -1
    beq r4 r5 block_2272
block_2271:
    addi r5 r0 99
    sw r1 r29 0
    beq r4 r5 block_2274
block_2273:
    sll r4 r4 2
    lw r4 r4 30048
    lwcZ f0 r0 30636
    lw r5 r4 20
    lwcZ f1 r5 0
    fsub f0 f0 f1
    lwcZ f1 r0 30640
    lw r5 r4 20
    lwcZ f2 r5 4
    fsub f1 f1 f2
    lwcZ f2 r0 30644
    lw r5 r4 20
    lwcZ f3 r5 8
    fsub f2 f2 f3
    lw r5 r4 4
    addi r6 r0 1
    beq r5 r6 block_2277
block_2276:
    addi r6 r0 2
    beq r5 r6 block_2280
block_2279:
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
    beq r6 r0 block_2282
block_2281:
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
    j block_2283
block_2282:
    fmv f3 f6
    j block_2283
block_2283:
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2285
block_2284:
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
    beq r6 r0 block_2287
block_2286:
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
    j block_2288
block_2287:
    fmv f4 f7
    j block_2288
block_2288:
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
    beq r6 r0 block_2290
block_2289:
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
    j block_2291
block_2290:
    fmv f0 f5
    j block_2291
block_2291:
    lw r6 r4 4
    addi r7 r0 3
    beq r6 r7 block_2293
block_2292:
    j block_2294
block_2293:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_2294
block_2294:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_2296
block_2295:
    mv r6 r0
    j block_2297
block_2296:
    addi r6 r0 1
    j block_2297
block_2297:
    bne r6 r0 block_2299
    j block_2298
block_2298:
    mv r4 r0
    j block_2278
block_2299:
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
    bne r4 r0 block_2301
    j block_2300
block_2300:
    fneg f0 f0
    j block_2302
block_2301:
    j block_2302
block_2302:
    fsub f0 f0 f4
    finv_init f1 f3
    #2.0
    flui f2 16384
    fmul f3 f3 f1
    fsub f2 f2 f3
    fmul f1 f1 f2
    fmul f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_2278
block_2285:
    mv r4 r0
    j block_2278
block_2280:
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
    bc1t block_2304
block_2303:
    mv r6 r0
    j block_2305
block_2304:
    addi r6 r0 1
    j block_2305
block_2305:
    bne r6 r0 block_2307
    j block_2306
block_2306:
    mv r4 r0
    j block_2278
block_2307:
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
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_2278
block_2277:
    lw r5 r29 4
    lwcZ f3 r5 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2309
block_2308:
    lw r6 r4 16
    lw r7 r4 24
    lwcZ f3 r5 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2312
block_2311:
    mv r8 r0
    j block_2313
block_2312:
    addi r8 r0 1
    j block_2313
block_2313:
    bne r7 r0 block_2315
    j block_2314
block_2314:
    mv r7 r8
    j block_2316
block_2315:
    bne r8 r0 block_2318
    j block_2317
block_2317:
    addi r7 r0 1
    j block_2316
block_2318:
    mv r7 r0
    j block_2316
block_2316:
    lwcZ f3 r6 0
    bne r7 r0 block_2320
    j block_2319
block_2319:
    fneg f3 f3
    j block_2321
block_2320:
    j block_2321
block_2321:
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
    bc1t block_2323
block_2322:
    j block_2324
block_2323:
    fneg f4 f4
    j block_2324
block_2324:
    lwcZ f5 r6 4
    fclt f4 f5
    bc1t block_2326
block_2325:
    mv r6 r0
    j block_2310
block_2326:
    lwcZ f4 r5 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2328
block_2327:
    j block_2329
block_2328:
    fneg f4 f4
    j block_2329
block_2329:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_2331
block_2330:
    mv r6 r0
    j block_2310
block_2331:
    swcZ f3 r0 30540
    addi r6 r0 1
    j block_2310
block_2309:
    mv r6 r0
    j block_2310
block_2310:
    bne r6 r0 block_2333
    j block_2332
block_2332:
    lwcZ f3 r5 4
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2335
block_2334:
    lw r6 r4 16
    lw r7 r4 24
    lwcZ f3 r5 4
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2338
block_2337:
    mv r8 r0
    j block_2339
block_2338:
    addi r8 r0 1
    j block_2339
block_2339:
    bne r7 r0 block_2341
    j block_2340
block_2340:
    mv r7 r8
    j block_2342
block_2341:
    bne r8 r0 block_2344
    j block_2343
block_2343:
    addi r7 r0 1
    j block_2342
block_2344:
    mv r7 r0
    j block_2342
block_2342:
    lwcZ f3 r6 4
    bne r7 r0 block_2346
    j block_2345
block_2345:
    fneg f3 f3
    j block_2347
block_2346:
    j block_2347
block_2347:
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
    bc1t block_2349
block_2348:
    j block_2350
block_2349:
    fneg f4 f4
    j block_2350
block_2350:
    lwcZ f5 r6 8
    fclt f4 f5
    bc1t block_2352
block_2351:
    mv r6 r0
    j block_2336
block_2352:
    lwcZ f4 r5 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2354
block_2353:
    j block_2355
block_2354:
    fneg f4 f4
    j block_2355
block_2355:
    lwcZ f5 r6 0
    fclt f4 f5
    bc1t block_2357
block_2356:
    mv r6 r0
    j block_2336
block_2357:
    swcZ f3 r0 30540
    addi r6 r0 1
    j block_2336
block_2335:
    mv r6 r0
    j block_2336
block_2336:
    bne r6 r0 block_2359
    j block_2358
block_2358:
    lwcZ f3 r5 8
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2361
block_2360:
    lw r6 r4 16
    lw r4 r4 24
    lwcZ f3 r5 8
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_2364
block_2363:
    mv r7 r0
    j block_2365
block_2364:
    addi r7 r0 1
    j block_2365
block_2365:
    bne r4 r0 block_2367
    j block_2366
block_2366:
    mv r4 r7
    j block_2368
block_2367:
    bne r7 r0 block_2370
    j block_2369
block_2369:
    addi r4 r0 1
    j block_2368
block_2370:
    mv r4 r0
    j block_2368
block_2368:
    lwcZ f3 r6 8
    bne r4 r0 block_2372
    j block_2371
block_2371:
    fneg f3 f3
    j block_2373
block_2372:
    j block_2373
block_2373:
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
    bc1t block_2375
block_2374:
    j block_2376
block_2375:
    fneg f0 f0
    j block_2376
block_2376:
    lwcZ f3 r6 0
    fclt f0 f3
    bc1t block_2378
block_2377:
    mv r4 r0
    j block_2362
block_2378:
    lwcZ f0 r5 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2380
block_2379:
    j block_2381
block_2380:
    fneg f0 f0
    j block_2381
block_2381:
    lwcZ f1 r6 4
    fclt f0 f1
    bc1t block_2383
block_2382:
    mv r4 r0
    j block_2362
block_2383:
    swcZ f2 r0 30540
    addi r4 r0 1
    j block_2362
block_2361:
    mv r4 r0
    j block_2362
block_2362:
    bne r4 r0 block_2385
    j block_2384
block_2384:
    mv r4 r0
    j block_2278
block_2385:
    addi r4 r0 3
    j block_2278
block_2359:
    addi r4 r0 2
    j block_2278
block_2333:
    addi r4 r0 1
    j block_2278
block_2278:
    beq r4 r0 block_2387
block_2386:
    lwcZ f0 r0 30540
    lwcZ f1 r0 30548
    fclt f0 f1
    bc1t block_2389
block_2388:
    j block_2275
block_2389:
    lw r4 r2 4
    addi r6 r0 -1
    beq r4 r6 block_2391
block_2390:
    sll r4 r4 2
    lw r4 r4 30332
    sw r2 r29 12
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
    beq r2 r3 block_2393
block_2392:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2395
block_2394:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2397
block_2396:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2399
block_2398:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2401
block_2400:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 7
    lw r2 r29 12
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network.4375
    subi r29 r29 28
    lw r31 r29 24
    j block_2275
block_2401:
    j block_2275
block_2399:
    j block_2275
block_2397:
    j block_2275
block_2395:
    j block_2275
block_2393:
    j block_2275
block_2391:
    j block_2275
block_2387:
    j block_2275
block_2274:
    lw r4 r2 4
    addi r5 r0 -1
    beq r4 r5 block_2403
block_2402:
    sll r4 r4 2
    lw r4 r4 30332
    lw r5 r29 4
    sw r2 r29 12
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
    beq r2 r3 block_2405
block_2404:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2407
block_2406:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2409
block_2408:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2411
block_2410:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2413
block_2412:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element.4326
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 7
    lw r2 r29 12
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network.4375
    subi r29 r29 28
    lw r31 r29 24
    j block_2275
block_2413:
    j block_2275
block_2411:
    j block_2275
block_2409:
    j block_2275
block_2407:
    j block_2275
block_2405:
    j block_2275
block_2403:
    j block_2275
block_2275:
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
block_2272:
    jr r31
block_2125:
    jr r31
trace_or_matrix_fast.4483:
block_2685:
    sll r4 r1 2
    lwab r4 r2 r4
    lw r5 r4 0
    addi r6 r0 -1
    beq r5 r6 block_2687
block_2686:
    addi r6 r0 99
    sw r2 r29 20
    sw r1 r29 16
    sw r3 r29 4
    beq r5 r6 block_2689
block_2688:
    sll r6 r5 2
    lw r6 r6 30048
    lw r7 r6 40
    lwcZ f0 r7 0
    lwcZ f1 r7 4
    lwcZ f2 r7 8
    lw r8 r3 4
    sll r5 r5 2
    lwab r5 r8 r5
    lw r8 r6 4
    addi r9 r0 1
    beq r8 r9 block_2692
block_2691:
    addi r9 r0 2
    beq r8 r9 block_2695
block_2694:
    lwcZ f3 r5 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2697
block_2696:
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
    bc1t block_2699
block_2698:
    mv r7 r0
    j block_2700
block_2699:
    addi r7 r0 1
    j block_2700
block_2700:
    bne r7 r0 block_2702
    j block_2701
block_2701:
    mv r5 r0
    j block_2693
block_2702:
    lw r6 r6 24
    bne r6 r0 block_2704
    j block_2703
block_2703:
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
    swcZ f0 r0 30540
    j block_2705
block_2704:
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
    swcZ f0 r0 30540
    j block_2705
block_2705:
    addi r5 r0 1
    j block_2693
block_2697:
    mv r5 r0
    j block_2693
block_2695:
    lwcZ f0 r5 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2707
block_2706:
    mv r6 r0
    j block_2708
block_2707:
    addi r6 r0 1
    j block_2708
block_2708:
    bne r6 r0 block_2710
    j block_2709
block_2709:
    mv r5 r0
    j block_2693
block_2710:
    lwcZ f0 r5 0
    lwcZ f1 r7 12
    fmul f0 f0 f1
    swcZ f0 r0 30540
    addi r5 r0 1
    j block_2693
block_2692:
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
    bc1t block_2712
block_2711:
    j block_2713
block_2712:
    fneg f4 f4
    j block_2713
block_2713:
    lw r8 r6 16
    lwcZ f5 r8 4
    fclt f4 f5
    bc1t block_2715
block_2714:
    mv r8 r0
    j block_2716
block_2715:
    lwcZ f4 r7 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2718
block_2717:
    j block_2719
block_2718:
    fneg f4 f4
    j block_2719
block_2719:
    lw r8 r6 16
    lwcZ f5 r8 8
    fclt f4 f5
    bc1t block_2721
block_2720:
    mv r8 r0
    j block_2716
block_2721:
    lwcZ f4 r5 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2723
block_2722:
    mv r8 r0
    j block_2724
block_2723:
    addi r8 r0 1
    j block_2724
block_2724:
    bne r8 r0 block_2726
    j block_2725
block_2725:
    addi r8 r0 1
    j block_2716
block_2726:
    mv r8 r0
    j block_2716
block_2716:
    bne r8 r0 block_2728
    j block_2727
block_2727:
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
    bc1t block_2730
block_2729:
    j block_2731
block_2730:
    fneg f4 f4
    j block_2731
block_2731:
    lw r8 r6 16
    lwcZ f5 r8 0
    fclt f4 f5
    bc1t block_2733
block_2732:
    mv r8 r0
    j block_2734
block_2733:
    lwcZ f4 r7 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2736
block_2735:
    j block_2737
block_2736:
    fneg f4 f4
    j block_2737
block_2737:
    lw r8 r6 16
    lwcZ f5 r8 8
    fclt f4 f5
    bc1t block_2739
block_2738:
    mv r8 r0
    j block_2734
block_2739:
    lwcZ f4 r5 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2741
block_2740:
    mv r8 r0
    j block_2742
block_2741:
    addi r8 r0 1
    j block_2742
block_2742:
    bne r8 r0 block_2744
    j block_2743
block_2743:
    addi r8 r0 1
    j block_2734
block_2744:
    mv r8 r0
    j block_2734
block_2734:
    bne r8 r0 block_2746
    j block_2745
block_2745:
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
    bc1t block_2748
block_2747:
    j block_2749
block_2748:
    fneg f0 f0
    j block_2749
block_2749:
    lw r8 r6 16
    lwcZ f3 r8 0
    fclt f0 f3
    bc1t block_2751
block_2750:
    mv r5 r0
    j block_2752
block_2751:
    lwcZ f0 r7 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2754
block_2753:
    j block_2755
block_2754:
    fneg f0 f0
    j block_2755
block_2755:
    lw r6 r6 16
    lwcZ f1 r6 4
    fclt f0 f1
    bc1t block_2757
block_2756:
    mv r5 r0
    j block_2752
block_2757:
    lwcZ f0 r5 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_2759
block_2758:
    mv r5 r0
    j block_2760
block_2759:
    addi r5 r0 1
    j block_2760
block_2760:
    bne r5 r0 block_2762
    j block_2761
block_2761:
    addi r5 r0 1
    j block_2752
block_2762:
    mv r5 r0
    j block_2752
block_2752:
    bne r5 r0 block_2764
    j block_2763
block_2763:
    mv r5 r0
    j block_2693
block_2764:
    swcZ f2 r0 30540
    addi r5 r0 3
    j block_2693
block_2746:
    swcZ f3 r0 30540
    addi r5 r0 2
    j block_2693
block_2728:
    swcZ f3 r0 30540
    addi r5 r0 1
    j block_2693
block_2693:
    beq r5 r0 block_2766
block_2765:
    lwcZ f0 r0 30540
    lwcZ f1 r0 30548
    fclt f0 f1
    bc1t block_2768
block_2767:
    j block_2690
block_2768:
    lw r5 r4 4
    addi r6 r0 -1
    beq r5 r6 block_2770
block_2769:
    sll r5 r5 2
    lw r5 r5 30332
    sw r4 r29 8
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
    beq r2 r3 block_2772
block_2771:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2774
block_2773:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2776
block_2775:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2778
block_2777:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2780
block_2779:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 28
    addi r3 r0 -1
    beq r2 r3 block_2782
block_2781:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 8
    lw r2 r29 8
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network_fast.4471
    subi r29 r29 28
    lw r31 r29 24
    j block_2690
block_2782:
    j block_2690
block_2780:
    j block_2690
block_2778:
    j block_2690
block_2776:
    j block_2690
block_2774:
    j block_2690
block_2772:
    j block_2690
block_2770:
    j block_2690
block_2766:
    j block_2690
block_2689:
    lw r5 r4 4
    addi r6 r0 -1
    beq r5 r6 block_2784
block_2783:
    sll r5 r5 2
    lw r5 r5 30332
    sw r4 r29 8
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
    beq r2 r3 block_2786
block_2785:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2788
block_2787:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2790
block_2789:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2792
block_2791:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2794
block_2793:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 8
    lw r2 r1 28
    addi r3 r0 -1
    beq r2 r3 block_2796
block_2795:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 8
    lw r2 r29 8
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network_fast.4471
    subi r29 r29 28
    lw r31 r29 24
    j block_2690
block_2796:
    j block_2690
block_2794:
    j block_2690
block_2792:
    j block_2690
block_2790:
    j block_2690
block_2788:
    j block_2690
block_2786:
    j block_2690
block_2784:
    j block_2690
block_2690:
    lw r1 r29 16
    addi r1 r1 1
    sll r2 r1 2
    lw r3 r29 20
    lwab r2 r3 r2
    lw r4 r2 0
    addi r5 r0 -1
    beq r4 r5 block_2798
block_2797:
    addi r5 r0 99
    sw r1 r29 0
    beq r4 r5 block_2800
block_2799:
    sll r5 r4 2
    lw r5 r5 30048
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
    beq r8 r9 block_2803
block_2802:
    addi r9 r0 2
    beq r8 r9 block_2806
block_2805:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_2808
block_2807:
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
    bc1t block_2810
block_2809:
    mv r6 r0
    j block_2811
block_2810:
    addi r6 r0 1
    j block_2811
block_2811:
    bne r6 r0 block_2813
    j block_2812
block_2812:
    mv r4 r0
    j block_2804
block_2813:
    lw r5 r5 24
    bne r5 r0 block_2815
    j block_2814
block_2814:
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
    swcZ f0 r0 30540
    j block_2816
block_2815:
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
    swcZ f0 r0 30540
    j block_2816
block_2816:
    addi r4 r0 1
    j block_2804
block_2808:
    mv r4 r0
    j block_2804
block_2806:
    lwcZ f0 r4 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2818
block_2817:
    mv r5 r0
    j block_2819
block_2818:
    addi r5 r0 1
    j block_2819
block_2819:
    bne r5 r0 block_2821
    j block_2820
block_2820:
    mv r4 r0
    j block_2804
block_2821:
    lwcZ f0 r4 0
    lwcZ f1 r6 12
    fmul f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_2804
block_2803:
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
    bc1t block_2823
block_2822:
    j block_2824
block_2823:
    fneg f4 f4
    j block_2824
block_2824:
    lw r8 r5 16
    lwcZ f5 r8 4
    fclt f4 f5
    bc1t block_2826
block_2825:
    mv r8 r0
    j block_2827
block_2826:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2829
block_2828:
    j block_2830
block_2829:
    fneg f4 f4
    j block_2830
block_2830:
    lw r8 r5 16
    lwcZ f5 r8 8
    fclt f4 f5
    bc1t block_2832
block_2831:
    mv r8 r0
    j block_2827
block_2832:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2834
block_2833:
    mv r8 r0
    j block_2835
block_2834:
    addi r8 r0 1
    j block_2835
block_2835:
    bne r8 r0 block_2837
    j block_2836
block_2836:
    addi r8 r0 1
    j block_2827
block_2837:
    mv r8 r0
    j block_2827
block_2827:
    bne r8 r0 block_2839
    j block_2838
block_2838:
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
    bc1t block_2841
block_2840:
    j block_2842
block_2841:
    fneg f4 f4
    j block_2842
block_2842:
    lw r8 r5 16
    lwcZ f5 r8 0
    fclt f4 f5
    bc1t block_2844
block_2843:
    mv r8 r0
    j block_2845
block_2844:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_2847
block_2846:
    j block_2848
block_2847:
    fneg f4 f4
    j block_2848
block_2848:
    lw r8 r5 16
    lwcZ f5 r8 8
    fclt f4 f5
    bc1t block_2850
block_2849:
    mv r8 r0
    j block_2845
block_2850:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_2852
block_2851:
    mv r8 r0
    j block_2853
block_2852:
    addi r8 r0 1
    j block_2853
block_2853:
    bne r8 r0 block_2855
    j block_2854
block_2854:
    addi r8 r0 1
    j block_2845
block_2855:
    mv r8 r0
    j block_2845
block_2845:
    bne r8 r0 block_2857
    j block_2856
block_2856:
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
    bc1t block_2859
block_2858:
    j block_2860
block_2859:
    fneg f0 f0
    j block_2860
block_2860:
    lw r8 r5 16
    lwcZ f3 r8 0
    fclt f0 f3
    bc1t block_2862
block_2861:
    mv r4 r0
    j block_2863
block_2862:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_2865
block_2864:
    j block_2866
block_2865:
    fneg f0 f0
    j block_2866
block_2866:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_2868
block_2867:
    mv r4 r0
    j block_2863
block_2868:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_2870
block_2869:
    mv r4 r0
    j block_2871
block_2870:
    addi r4 r0 1
    j block_2871
block_2871:
    bne r4 r0 block_2873
    j block_2872
block_2872:
    addi r4 r0 1
    j block_2863
block_2873:
    mv r4 r0
    j block_2863
block_2863:
    bne r4 r0 block_2875
    j block_2874
block_2874:
    mv r4 r0
    j block_2804
block_2875:
    swcZ f2 r0 30540
    addi r4 r0 3
    j block_2804
block_2857:
    swcZ f3 r0 30540
    addi r4 r0 2
    j block_2804
block_2839:
    swcZ f3 r0 30540
    addi r4 r0 1
    j block_2804
block_2804:
    beq r4 r0 block_2877
block_2876:
    lwcZ f0 r0 30540
    lwcZ f1 r0 30548
    fclt f0 f1
    bc1t block_2879
block_2878:
    j block_2801
block_2879:
    lw r4 r2 4
    addi r5 r0 -1
    beq r4 r5 block_2881
block_2880:
    sll r4 r4 2
    lw r4 r4 30332
    sw r2 r29 12
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
    beq r2 r3 block_2883
block_2882:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2885
block_2884:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2887
block_2886:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2889
block_2888:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2891
block_2890:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 7
    lw r2 r29 12
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network_fast.4471
    subi r29 r29 28
    lw r31 r29 24
    j block_2801
block_2891:
    j block_2801
block_2889:
    j block_2801
block_2887:
    j block_2801
block_2885:
    j block_2801
block_2883:
    j block_2801
block_2881:
    j block_2801
block_2877:
    j block_2801
block_2800:
    lw r4 r2 4
    addi r5 r0 -1
    beq r4 r5 block_2893
block_2892:
    sll r4 r4 2
    lw r4 r4 30332
    lw r5 r29 4
    sw r2 r29 12
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
    beq r2 r3 block_2895
block_2894:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_2897
block_2896:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_2899
block_2898:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_2901
block_2900:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    lw r1 r29 12
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_2903
block_2902:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 4
    mv r1 r0
    sw r31 r29 24
    addi r29 r29 28
    jal solve_each_element_fast.4421
    subi r29 r29 28
    lw r31 r29 24
    addi r1 r0 7
    lw r2 r29 12
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal solve_one_or_network_fast.4471
    subi r29 r29 28
    lw r31 r29 24
    j block_2801
block_2903:
    j block_2801
block_2901:
    j block_2801
block_2899:
    j block_2801
block_2897:
    j block_2801
block_2895:
    j block_2801
block_2893:
    j block_2801
block_2801:
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
block_2798:
    jr r31
block_2687:
    jr r31
trace_ray.4807:
block_3329:
    addi r4 r0 4
    addi r5 r0 30552
    blt r4 r1 block_3331
block_3330:
    lw r4 r3 8
    #1000000000.0
    flui f2 20078
    fori f2 f2 27432
    swcZ f2 r0 30548
    lw r6 r0 30536
    sw r3 r29 64
    sw r1 r29 56
    sw r4 r29 48
    sw r5 r29 40
    swcZ f0 r29 24
    swcZ f1 r29 20
    sw r2 r29 16
    mv r3 r2
    mv r1 r0
    mv r2 r6
    sw r31 r29 72
    addi r29 r29 76
    jal trace_or_matrix.4387
    subi r29 r29 76
    lw r31 r29 72
    lwcZ f0 r0 30548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_3333
block_3332:
    mv r1 r0
    j block_3334
block_3333:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_3336
block_3335:
    mv r1 r0
    j block_3334
block_3336:
    addi r1 r0 1
    j block_3334
block_3334:
    bne r1 r0 block_3338
    j block_3337
block_3337:
    addi r1 r0 -1
    lw r2 r29 56
    sll r3 r2 2
    lw r4 r29 48
    swab r1 r4 r3
    beq r2 r0 block_3340
block_3339:
    lw r1 r29 16
    lwcZ f0 r1 0
    lwcZ f1 r0 30312
    fmul f0 f0 f1
    lwcZ f1 r1 4
    lwcZ f2 r0 30316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r1 8
    lwcZ f2 r0 30320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3342
block_3341:
    mv r1 r0
    j block_3343
block_3342:
    addi r1 r0 1
    j block_3343
block_3343:
    bne r1 r0 block_3345
    j block_3344
block_3344:
    jr r31
block_3345:
    fmul f1 f0 f0
    fmul f0 f1 f0
    lwcZ f1 r29 24
    fmul f0 f0 f1
    lwcZ f1 r0 30324
    fmul f0 f0 f1
    lwcZ f1 r0 30604
    fadd f1 f1 f0
    swcZ f1 r0 30604
    lwcZ f1 r0 30608
    fadd f1 f1 f0
    swcZ f1 r0 30608
    lwcZ f1 r0 30612
    fadd f0 f1 f0
    swcZ f0 r0 30612
    jr r31
block_3340:
    jr r31
block_3338:
    lw r1 r0 30564
    sll r2 r1 2
    lw r2 r2 30048
    lw r3 r2 8
    lw r4 r2 28
    lwcZ f0 r4 0
    lwcZ f1 r29 24
    fmul f0 f0 f1
    lw r4 r2 4
    addi r5 r0 1
    beq r4 r5 block_3347
block_3346:
    addi r5 r0 2
    beq r4 r5 block_3350
block_3349:
    lwcZ f2 r0 30552
    lw r4 r2 20
    lwcZ f3 r4 0
    fsub f2 f2 f3
    lwcZ f3 r0 30556
    lw r4 r2 20
    lwcZ f4 r4 4
    fsub f3 f3 f4
    lwcZ f4 r0 30560
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
    beq r4 r0 block_3352
block_3351:
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
    swcZ f5 r0 30568
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
    swcZ f4 r0 30572
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
    swcZ f2 r0 30576
    j block_3353
block_3352:
    swcZ f5 r0 30568
    swcZ f6 r0 30572
    swcZ f7 r0 30576
    j block_3353
block_3353:
    lw r4 r2 24
    lwcZ f2 r0 30568
    fmul f2 f2 f2
    lwcZ f3 r0 30572
    fmul f3 f3 f3
    fadd f2 f2 f3
    lwcZ f3 r0 30576
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
    bc1t block_3355
block_3354:
    bne r4 r0 block_3358
    j block_3357
block_3357:
    #1.0
    flui f3 16256
    finv_init f4 f2
    #2.0
    flui f5 16384
    fmul f2 f2 f4
    fsub f2 f5 f2
    fmul f2 f4 f2
    fmul f2 f3 f2
    j block_3356
block_3358:
    #-1.0
    flui f3 -16512
    finv_init f4 f2
    #2.0
    flui f5 16384
    fmul f2 f2 f4
    fsub f2 f5 f2
    fmul f2 f4 f2
    fmul f2 f3 f2
    j block_3356
block_3355:
    #1.0
    flui f2 16256
    j block_3356
block_3356:
    lwcZ f3 r0 30568
    fmul f3 f3 f2
    swcZ f3 r0 30568
    lwcZ f3 r0 30572
    fmul f3 f3 f2
    swcZ f3 r0 30572
    lwcZ f3 r0 30576
    fmul f2 f3 f2
    swcZ f2 r0 30576
    j block_3348
block_3350:
    lw r4 r2 16
    lwcZ f2 r4 0
    fneg f2 f2
    swcZ f2 r0 30568
    lw r4 r2 16
    lwcZ f2 r4 4
    fneg f2 f2
    swcZ f2 r0 30572
    lw r4 r2 16
    lwcZ f2 r4 8
    fneg f2 f2
    swcZ f2 r0 30576
    j block_3348
block_3347:
    lw r4 r0 30544
    #0.0
    flui f2 0
    swcZ f2 r0 30568
    swcZ f2 r0 30572
    swcZ f2 r0 30576
    subi r5 r4 1
    subi r4 r4 1
    sll r4 r4 2
    lw r6 r29 16
    flwab f2 r6 r4
    #0.0
    flui f3 0
    fsub f31 f2 f3
    fcz f31
    bc1t block_3360
block_3359:
    #0.0
    flui f3 0
    fclt f3 f2
    bc1t block_3363
block_3362:
    mv r4 r0
    j block_3364
block_3363:
    addi r4 r0 1
    j block_3364
block_3364:
    bne r4 r0 block_3366
    j block_3365
block_3365:
    #-1.0
    flui f2 -16512
    j block_3361
block_3366:
    #1.0
    flui f2 16256
    j block_3361
block_3360:
    #0.0
    flui f2 0
    j block_3361
block_3361:
    fneg f2 f2
    sll r4 r5 2
    swcZ f2 r4 30568
    j block_3348
block_3348:
    lwcZ f2 r0 30552
    swcZ f2 r0 30636
    lwcZ f2 r0 30556
    swcZ f2 r0 30640
    lwcZ f2 r0 30560
    swcZ f2 r0 30644
    lw r4 r2 0
    lw r5 r2 32
    lwcZ f2 r5 0
    swcZ f2 r0 30580
    lw r5 r2 32
    lwcZ f2 r5 4
    swcZ f2 r0 30584
    lw r5 r2 32
    lwcZ f2 r5 8
    swcZ f2 r0 30588
    addi r5 r0 1
    beq r4 r5 block_3368
block_3367:
    addi r5 r0 2
    beq r4 r5 block_3371
block_3370:
    addi r5 r0 3
    beq r4 r5 block_3373
block_3372:
    addi r5 r0 4
    beq r4 r5 block_3375
block_3374:
    j block_3369
block_3375:
    lwcZ f2 r0 30552
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
    lwcZ f3 r0 30560
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
    bc1t block_3377
block_3376:
    fmv f5 f2
    j block_3378
block_3377:
    fneg f5 f2
    j block_3378
block_3378:
    #0.0001
    flui f6 14545
    fori f6 f6 -18665
    fclt f5 f6
    bc1t block_3380
block_3379:
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
    bc1t block_3383
block_3382:
    j block_3384
block_3383:
    fneg f2 f2
    j block_3384
block_3384:
    #0.0
    flui f3 0
    fclt f3 f2
    bc1t block_3386
block_3385:
    mv r4 r0
    j block_3387
block_3386:
    addi r4 r0 1
    j block_3387
block_3387:
    bne r4 r0 block_3389
    j block_3388
block_3388:
    fneg f2 f2
    j block_3390
block_3389:
    j block_3390
block_3390:
    #0.4375
    flui f3 16096
    fclt f2 f3
    bc1t block_3392
block_3391:
    #2.4375
    flui f3 16412
    fclt f2 f3
    bc1t block_3395
block_3394:
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
    j block_3393
block_3395:
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
    j block_3393
block_3392:
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
    j block_3393
block_3393:
    bne r4 r0 block_3397
    j block_3396
block_3396:
    fneg f2 f2
    j block_3398
block_3397:
    j block_3398
block_3398:
    #30.0
    flui f3 16880
    fmul f2 f2 f3
    #0.31830987
    flui f3 16034
    fori f3 f3 -1661
    fmul f2 f2 f3
    j block_3381
block_3380:
    #15.0
    flui f2 16752
    j block_3381
block_3381:
    ftoi r4 f2
    itof f3 r4
    fclt f2 f3
    bc1t block_3400
block_3399:
    j block_3401
block_3400:
    #1.0
    flui f5 16256
    fsub f3 f3 f5
    j block_3401
block_3401:
    fsub f2 f2 f3
    lwcZ f3 r0 30556
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
    bc1t block_3403
block_3402:
    fmv f5 f4
    j block_3404
block_3403:
    fneg f5 f4
    j block_3404
block_3404:
    #0.0001
    flui f6 14545
    fori f6 f6 -18665
    fclt f5 f6
    bc1t block_3406
block_3405:
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
    bc1t block_3409
block_3408:
    j block_3410
block_3409:
    fneg f3 f3
    j block_3410
block_3410:
    #0.0
    flui f4 0
    fclt f4 f3
    bc1t block_3412
block_3411:
    mv r4 r0
    j block_3413
block_3412:
    addi r4 r0 1
    j block_3413
block_3413:
    bne r4 r0 block_3415
    j block_3414
block_3414:
    fneg f3 f3
    j block_3416
block_3415:
    j block_3416
block_3416:
    #0.4375
    flui f4 16096
    fclt f3 f4
    bc1t block_3418
block_3417:
    #2.4375
    flui f4 16412
    fclt f3 f4
    bc1t block_3421
block_3420:
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
    j block_3419
block_3421:
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
    j block_3419
block_3418:
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
    j block_3419
block_3419:
    bne r4 r0 block_3423
    j block_3422
block_3422:
    fneg f3 f3
    j block_3424
block_3423:
    j block_3424
block_3424:
    #30.0
    flui f4 16880
    fmul f3 f3 f4
    #0.31830987
    flui f4 16034
    fori f4 f4 -1661
    fmul f3 f3 f4
    j block_3407
block_3406:
    #15.0
    flui f3 16752
    j block_3407
block_3407:
    ftoi r4 f3
    itof f4 r4
    fclt f3 f4
    bc1t block_3426
block_3425:
    j block_3427
block_3426:
    #1.0
    flui f5 16256
    fsub f4 f4 f5
    j block_3427
block_3427:
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
    bc1t block_3429
block_3428:
    mv r4 r0
    j block_3430
block_3429:
    addi r4 r0 1
    j block_3430
block_3430:
    bne r4 r0 block_3432
    j block_3431
block_3431:
    j block_3433
block_3432:
    #0.0
    flui f2 0
    j block_3433
block_3433:
    #255.0
    flui f3 17279
    fmul f2 f3 f2
    #3.3333333
    flui f3 16469
    fori f3 f3 21845
    fmul f2 f2 f3
    swcZ f2 r0 30588
    j block_3369
block_3373:
    lwcZ f2 r0 30552
    lw r4 r2 20
    lwcZ f3 r4 0
    fsub f2 f2 f3
    lwcZ f3 r0 30560
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
    bc1t block_3435
block_3434:
    j block_3436
block_3435:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_3436
block_3436:
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
    bc1t block_3438
block_3437:
    fneg f2 f2
    j block_3439
block_3438:
    j block_3439
block_3439:
    fclt f5 f2
    bc1t block_3441
block_3440:
    addi r4 r0 1
    j block_3442
block_3441:
    addi r4 r0 -1
    j block_3442
block_3442:
    fclt f5 f2
    bc1t block_3444
block_3443:
    j block_3445
block_3444:
    fsub f2 f2 f5
    j block_3445
block_3445:
    fclt f4 f2
    bc1t block_3447
block_3446:
    j block_3448
block_3447:
    sub r4 r0 r4
    j block_3448
block_3448:
    fclt f4 f2
    bc1t block_3450
block_3449:
    j block_3451
block_3450:
    fsub f2 f5 f2
    j block_3451
block_3451:
    fclt f2 f3
    bc1t block_3453
block_3452:
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
    j block_3454
block_3453:
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
    j block_3454
block_3454:
    addi r5 r0 -1
    beq r4 r5 block_3456
block_3455:
    j block_3457
block_3456:
    fneg f2 f2
    j block_3457
block_3457:
    fmul f2 f2 f2
    #255.0
    flui f3 17279
    fmul f3 f2 f3
    swcZ f3 r0 30584
    #1.0
    flui f3 16256
    fsub f2 f3 f2
    #255.0
    flui f3 17279
    fmul f2 f2 f3
    swcZ f2 r0 30588
    j block_3369
block_3371:
    lwcZ f2 r0 30556
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
    bc1t block_3459
block_3458:
    fadd f2 f2 f6
    j block_3460
block_3459:
    j block_3460
block_3460:
    fclt f5 f2
    bc1t block_3462
block_3461:
    addi r4 r0 1
    j block_3463
block_3462:
    mv r4 r0
    j block_3463
block_3463:
    fclt f5 f2
    bc1t block_3465
block_3464:
    j block_3466
block_3465:
    fsub f2 f2 f5
    j block_3466
block_3466:
    fclt f4 f2
    bc1t block_3468
block_3467:
    j block_3469
block_3468:
    fsub f2 f5 f2
    j block_3469
block_3469:
    fclt f3 f2
    bc1t block_3471
block_3470:
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
    j block_3472
block_3471:
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
    j block_3472
block_3472:
    bne r4 r0 block_3474
    j block_3473
block_3473:
    fneg f2 f2
    j block_3475
block_3474:
    j block_3475
block_3475:
    fmul f2 f2 f2
    #255.0
    flui f3 17279
    fmul f3 f3 f2
    swcZ f3 r0 30580
    #255.0
    flui f3 17279
    #1.0
    flui f4 16256
    fsub f2 f4 f2
    fmul f2 f3 f2
    swcZ f2 r0 30584
    j block_3369
block_3368:
    lwcZ f2 r0 30552
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
    bc1t block_3477
block_3476:
    fmv f3 f4
    j block_3478
block_3477:
    #1.0
    flui f3 16256
    fsub f3 f4 f3
    j block_3478
block_3478:
    #20.0
    flui f4 16800
    fmul f3 f3 f4
    fsub f2 f2 f3
    #10.0
    flui f3 16672
    fclt f2 f3
    bc1t block_3480
block_3479:
    mv r4 r0
    j block_3481
block_3480:
    addi r4 r0 1
    j block_3481
block_3481:
    lwcZ f2 r0 30560
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
    bc1t block_3483
block_3482:
    fmv f3 f4
    j block_3484
block_3483:
    #1.0
    flui f3 16256
    fsub f3 f4 f3
    j block_3484
block_3484:
    #20.0
    flui f4 16800
    fmul f3 f3 f4
    fsub f2 f2 f3
    #10.0
    flui f3 16672
    fclt f2 f3
    bc1t block_3486
block_3485:
    mv r5 r0
    j block_3487
block_3486:
    addi r5 r0 1
    j block_3487
block_3487:
    bne r4 r0 block_3489
    j block_3488
block_3488:
    bne r5 r0 block_3492
    j block_3491
block_3491:
    #255.0
    flui f2 17279
    j block_3490
block_3492:
    #0.0
    flui f2 0
    j block_3490
block_3489:
    bne r5 r0 block_3494
    j block_3493
block_3493:
    #0.0
    flui f2 0
    j block_3490
block_3494:
    #255.0
    flui f2 17279
    j block_3490
block_3490:
    swcZ f2 r0 30584
    j block_3369
block_3369:
    sll r1 r1 2
    lw r4 r0 30544
    add r1 r1 r4
    lw r4 r29 56
    sll r5 r4 2
    lw r6 r29 48
    swab r1 r6 r5
    lw r1 r29 64
    lw r5 r1 4
    sll r7 r4 2
    lwab r5 r5 r7
    lwcZ f2 r0 30552
    swcZ f2 r5 0
    lwcZ f2 r0 30556
    swcZ f2 r5 4
    lwcZ f2 r0 30560
    swcZ f2 r5 8
    lw r5 r1 12
    lw r7 r2 28
    lwcZ f2 r7 0
    #0.5
    flui f3 16128
    fclt f2 f3
    bc1t block_3496
block_3495:
    addi r7 r0 1
    sll r8 r4 2
    swab r7 r5 r8
    lw r5 r1 16
    sll r7 r4 2
    lwab r7 r5 r7
    lwcZ f2 r0 30580
    swcZ f2 r7 0
    lwcZ f2 r0 30584
    swcZ f2 r7 4
    lwcZ f2 r0 30588
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
    lwcZ f2 r0 30568
    swcZ f2 r5 0
    lwcZ f2 r0 30572
    swcZ f2 r5 4
    lwcZ f2 r0 30576
    swcZ f2 r5 8
    j block_3497
block_3496:
    sll r7 r4 2
    swab r0 r5 r7
    j block_3497
block_3497:
    #-2.0
    flui f2 -16384
    lw r5 r29 16
    lwcZ f3 r5 0
    lwcZ f4 r0 30568
    fmul f3 f3 f4
    lwcZ f4 r5 4
    lwcZ f5 r0 30572
    fmul f4 f4 f5
    fadd f3 f3 f4
    lwcZ f4 r5 8
    lwcZ f5 r0 30576
    fmul f4 f4 f5
    fadd f3 f3 f4
    fmul f2 f2 f3
    lwcZ f3 r5 0
    lwcZ f4 r0 30568
    fmul f4 f2 f4
    fadd f3 f3 f4
    swcZ f3 r5 0
    lwcZ f3 r5 4
    lwcZ f4 r0 30572
    fmul f4 f2 f4
    fadd f3 f3 f4
    swcZ f3 r5 4
    lwcZ f3 r5 8
    lwcZ f4 r0 30576
    fmul f2 f2 f4
    fadd f2 f3 f2
    swcZ f2 r5 8
    lw r7 r2 28
    lwcZ f2 r7 4
    fmul f2 f1 f2
    lw r7 r0 30536
    lw r8 r7 0
    lw r9 r8 0
    addi r10 r0 -1
    sw r2 r29 60
    sw r3 r29 52
    swcZ f2 r29 36
    swcZ f0 r29 12
    beq r9 r10 block_3499
block_3498:
    addi r10 r0 99
    sw r8 r29 28
    sw r7 r29 0
    beq r9 r10 block_3502
block_3501:
    sll r10 r9 2
    lw r10 r10 30048
    lwcZ f3 r0 30552
    lw r11 r10 20
    lwcZ f4 r11 0
    fsub f3 f3 f4
    lwcZ f4 r0 30556
    lw r11 r10 20
    lwcZ f5 r11 4
    fsub f4 f4 f5
    lwcZ f5 r0 30560
    lw r11 r10 20
    lwcZ f6 r11 8
    fsub f5 f5 f6
    lw r11 r0 30992
    sll r9 r9 2
    lwab r9 r11 r9
    lw r11 r10 4
    addi r12 r0 1
    beq r11 r12 block_3505
block_3504:
    addi r12 r0 2
    beq r11 r12 block_3508
block_3507:
    lwcZ f6 r9 0
    #0.0
    flui f7 0
    fsub f31 f6 f7
    fcz f31
    bc1t block_3510
block_3509:
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
    beq r11 r0 block_3512
block_3511:
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
    j block_3513
block_3512:
    fmv f3 f8
    j block_3513
block_3513:
    lw r11 r10 4
    addi r12 r0 3
    beq r11 r12 block_3515
block_3514:
    j block_3516
block_3515:
    #1.0
    flui f4 16256
    fsub f3 f3 f4
    j block_3516
block_3516:
    fmul f4 f7 f7
    fmul f3 f6 f3
    fsub f3 f4 f3
    #0.0
    flui f4 0
    fclt f4 f3
    bc1t block_3518
block_3517:
    mv r11 r0
    j block_3519
block_3518:
    addi r11 r0 1
    j block_3519
block_3519:
    bne r11 r0 block_3521
    j block_3520
block_3520:
    mv r9 r0
    j block_3506
block_3521:
    lw r10 r10 24
    bne r10 r0 block_3523
    j block_3522
block_3522:
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
    swcZ f3 r0 30540
    j block_3524
block_3523:
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
    swcZ f3 r0 30540
    j block_3524
block_3524:
    addi r9 r0 1
    j block_3506
block_3510:
    mv r9 r0
    j block_3506
block_3508:
    lwcZ f6 r9 0
    #0.0
    flui f7 0
    fclt f6 f7
    bc1t block_3526
block_3525:
    mv r10 r0
    j block_3527
block_3526:
    addi r10 r0 1
    j block_3527
block_3527:
    bne r10 r0 block_3529
    j block_3528
block_3528:
    mv r9 r0
    j block_3506
block_3529:
    lwcZ f6 r9 4
    fmul f3 f6 f3
    lwcZ f6 r9 8
    fmul f4 f6 f4
    fadd f3 f3 f4
    lwcZ f4 r9 12
    fmul f4 f4 f5
    fadd f3 f3 f4
    swcZ f3 r0 30540
    addi r9 r0 1
    j block_3506
block_3505:
    lw r11 r0 30988
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
    bc1t block_3531
block_3530:
    j block_3532
block_3531:
    fneg f7 f7
    j block_3532
block_3532:
    lw r12 r10 16
    lwcZ f8 r12 4
    fclt f7 f8
    bc1t block_3534
block_3533:
    mv r12 r0
    j block_3535
block_3534:
    lwcZ f7 r11 8
    fmul f7 f6 f7
    fadd f7 f7 f5
    #0.0
    flui f8 0
    fclt f7 f8
    bc1t block_3537
block_3536:
    j block_3538
block_3537:
    fneg f7 f7
    j block_3538
block_3538:
    lw r12 r10 16
    lwcZ f8 r12 8
    fclt f7 f8
    bc1t block_3540
block_3539:
    mv r12 r0
    j block_3535
block_3540:
    lwcZ f7 r9 4
    #0.0
    flui f8 0
    fsub f31 f7 f8
    fcz f31
    bc1t block_3542
block_3541:
    mv r12 r0
    j block_3543
block_3542:
    addi r12 r0 1
    j block_3543
block_3543:
    bne r12 r0 block_3545
    j block_3544
block_3544:
    addi r12 r0 1
    j block_3535
block_3545:
    mv r12 r0
    j block_3535
block_3535:
    bne r12 r0 block_3547
    j block_3546
block_3546:
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
    bc1t block_3549
block_3548:
    j block_3550
block_3549:
    fneg f7 f7
    j block_3550
block_3550:
    lw r12 r10 16
    lwcZ f8 r12 0
    fclt f7 f8
    bc1t block_3552
block_3551:
    mv r12 r0
    j block_3553
block_3552:
    lwcZ f7 r11 8
    fmul f7 f6 f7
    fadd f7 f7 f5
    #0.0
    flui f8 0
    fclt f7 f8
    bc1t block_3555
block_3554:
    j block_3556
block_3555:
    fneg f7 f7
    j block_3556
block_3556:
    lw r12 r10 16
    lwcZ f8 r12 8
    fclt f7 f8
    bc1t block_3558
block_3557:
    mv r12 r0
    j block_3553
block_3558:
    lwcZ f7 r9 12
    #0.0
    flui f8 0
    fsub f31 f7 f8
    fcz f31
    bc1t block_3560
block_3559:
    mv r12 r0
    j block_3561
block_3560:
    addi r12 r0 1
    j block_3561
block_3561:
    bne r12 r0 block_3563
    j block_3562
block_3562:
    addi r12 r0 1
    j block_3553
block_3563:
    mv r12 r0
    j block_3553
block_3553:
    bne r12 r0 block_3565
    j block_3564
block_3564:
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
    bc1t block_3567
block_3566:
    j block_3568
block_3567:
    fneg f3 f3
    j block_3568
block_3568:
    lw r12 r10 16
    lwcZ f6 r12 0
    fclt f3 f6
    bc1t block_3570
block_3569:
    mv r9 r0
    j block_3571
block_3570:
    lwcZ f3 r11 4
    fmul f3 f5 f3
    fadd f3 f3 f4
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_3573
block_3572:
    j block_3574
block_3573:
    fneg f3 f3
    j block_3574
block_3574:
    lw r10 r10 16
    lwcZ f4 r10 4
    fclt f3 f4
    bc1t block_3576
block_3575:
    mv r9 r0
    j block_3571
block_3576:
    lwcZ f3 r9 20
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_3578
block_3577:
    mv r9 r0
    j block_3579
block_3578:
    addi r9 r0 1
    j block_3579
block_3579:
    bne r9 r0 block_3581
    j block_3580
block_3580:
    addi r9 r0 1
    j block_3571
block_3581:
    mv r9 r0
    j block_3571
block_3571:
    bne r9 r0 block_3583
    j block_3582
block_3582:
    mv r9 r0
    j block_3506
block_3583:
    swcZ f5 r0 30540
    addi r9 r0 3
    j block_3506
block_3565:
    swcZ f6 r0 30540
    addi r9 r0 2
    j block_3506
block_3547:
    swcZ f6 r0 30540
    addi r9 r0 1
    j block_3506
block_3506:
    beq r9 r0 block_3585
block_3584:
    lwcZ f3 r0 30540
    #-0.1
    flui f4 -16948
    fori f4 f4 -13107
    fclt f3 f4
    bc1t block_3587
block_3586:
    mv r1 r0
    j block_3503
block_3587:
    lw r9 r8 4
    addi r10 r0 -1
    beq r9 r10 block_3589
block_3588:
    sll r9 r9 2
    lw r9 r9 30332
    mv r2 r9
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3592
    j block_3591
block_3591:
    lw r1 r29 28
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3594
block_3593:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3596
    j block_3595
block_3595:
    lw r1 r29 28
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3598
block_3597:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3600
    j block_3599
block_3599:
    lw r1 r29 28
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3602
block_3601:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3604
    j block_3603
block_3603:
    lw r1 r29 28
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_3606
block_3605:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3608
    j block_3607
block_3607:
    lw r1 r29 28
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_3610
block_3609:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3612
    j block_3611
block_3611:
    addi r1 r0 7
    lw r2 r29 28
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_one_or_group.4292
    subi r29 r29 76
    lw r31 r29 72
    j block_3590
block_3612:
    addi r1 r0 1
    j block_3590
block_3610:
    mv r1 r0
    j block_3590
block_3608:
    addi r1 r0 1
    j block_3590
block_3606:
    mv r1 r0
    j block_3590
block_3604:
    addi r1 r0 1
    j block_3590
block_3602:
    mv r1 r0
    j block_3590
block_3600:
    addi r1 r0 1
    j block_3590
block_3598:
    mv r1 r0
    j block_3590
block_3596:
    addi r1 r0 1
    j block_3590
block_3594:
    mv r1 r0
    j block_3590
block_3592:
    addi r1 r0 1
    j block_3590
block_3589:
    mv r1 r0
    j block_3590
block_3590:
    bne r1 r0 block_3614
    j block_3613
block_3613:
    mv r1 r0
    j block_3503
block_3614:
    addi r1 r0 1
    j block_3503
block_3585:
    mv r1 r0
    j block_3503
block_3502:
    addi r1 r0 1
    j block_3503
block_3503:
    bne r1 r0 block_3616
    j block_3615
block_3615:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 76
    lw r31 r29 72
    j block_3500
block_3616:
    lw r1 r29 28
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_3618
block_3617:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3621
    j block_3620
block_3620:
    lw r1 r29 28
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3623
block_3622:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3625
    j block_3624
block_3624:
    lw r1 r29 28
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3627
block_3626:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3629
    j block_3628
block_3628:
    lw r1 r29 28
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3631
block_3630:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3633
    j block_3632
block_3632:
    lw r1 r29 28
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_3635
block_3634:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3637
    j block_3636
block_3636:
    lw r1 r29 28
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_3639
block_3638:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_and_group.4251
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3641
    j block_3640
block_3640:
    addi r1 r0 7
    lw r2 r29 28
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_one_or_group.4292
    subi r29 r29 76
    lw r31 r29 72
    j block_3619
block_3641:
    addi r1 r0 1
    j block_3619
block_3639:
    mv r1 r0
    j block_3619
block_3637:
    addi r1 r0 1
    j block_3619
block_3635:
    mv r1 r0
    j block_3619
block_3633:
    addi r1 r0 1
    j block_3619
block_3631:
    mv r1 r0
    j block_3619
block_3629:
    addi r1 r0 1
    j block_3619
block_3627:
    mv r1 r0
    j block_3619
block_3625:
    addi r1 r0 1
    j block_3619
block_3623:
    mv r1 r0
    j block_3619
block_3621:
    addi r1 r0 1
    j block_3619
block_3618:
    mv r1 r0
    j block_3619
block_3619:
    bne r1 r0 block_3643
    j block_3642
block_3642:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 76
    lw r31 r29 72
    j block_3500
block_3643:
    addi r1 r0 1
    j block_3500
block_3499:
    mv r1 r0
    j block_3500
block_3500:
    bne r1 r0 block_3645
    j block_3644
block_3644:
    lwcZ f0 r0 30568
    lwcZ f1 r0 30312
    fmul f0 f0 f1
    lwcZ f1 r0 30572
    lwcZ f2 r0 30316
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 30576
    lwcZ f2 r0 30320
    fmul f1 f1 f2
    fadd f0 f0 f1
    fneg f0 f0
    lwcZ f1 r29 12
    fmul f0 f0 f1
    lw r1 r29 16
    lwcZ f2 r1 0
    lwcZ f3 r0 30312
    fmul f2 f2 f3
    lwcZ f3 r1 4
    lwcZ f4 r0 30316
    fmul f3 f3 f4
    fadd f2 f2 f3
    lwcZ f3 r1 8
    lwcZ f4 r0 30320
    fmul f3 f3 f4
    fadd f2 f2 f3
    fneg f2 f2
    #0.0
    flui f3 0
    fclt f3 f0
    bc1t block_3648
block_3647:
    mv r2 r0
    j block_3649
block_3648:
    addi r2 r0 1
    j block_3649
block_3649:
    bne r2 r0 block_3651
    j block_3650
block_3650:
    j block_3652
block_3651:
    lwcZ f3 r0 30604
    lwcZ f4 r0 30580
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 30604
    lwcZ f3 r0 30608
    lwcZ f4 r0 30584
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 30608
    lwcZ f3 r0 30612
    lwcZ f4 r0 30588
    fmul f0 f0 f4
    fadd f0 f3 f0
    swcZ f0 r0 30612
    j block_3652
block_3652:
    #0.0
    flui f0 0
    fclt f0 f2
    bc1t block_3654
block_3653:
    mv r2 r0
    j block_3655
block_3654:
    addi r2 r0 1
    j block_3655
block_3655:
    bne r2 r0 block_3657
    j block_3656
block_3656:
    j block_3646
block_3657:
    fmul f0 f2 f2
    fmul f0 f0 f0
    lwcZ f2 r29 36
    fmul f0 f0 f2
    lwcZ f3 r0 30604
    fadd f3 f3 f0
    swcZ f3 r0 30604
    lwcZ f3 r0 30608
    fadd f3 f3 f0
    swcZ f3 r0 30608
    lwcZ f3 r0 30612
    fadd f0 f3 f0
    swcZ f0 r0 30612
    j block_3646
block_3645:
    j block_3646
block_3646:
    lwcZ f0 r0 30552
    swcZ f0 r0 30648
    lwcZ f0 r0 30556
    swcZ f0 r0 30652
    lwcZ f0 r0 30560
    swcZ f0 r0 30656
    lw r1 r0 30000
    subi r2 r1 1
    lw r1 r29 40
    sw r31 r29 72
    addi r29 r29 76
    jal setup_startp_constants.4131
    subi r29 r29 76
    lw r31 r29 72
    lw r1 r0 31736
    subi r1 r1 1
    blt r1 r0 block_3659
block_3658:
    sll r2 r1 2
    lw r2 r2 31016
    lw r3 r2 4
    #1000000000.0
    flui f0 20078
    fori f0 f0 27432
    swcZ f0 r0 30548
    lw r4 r0 30536
    lw r5 r4 0
    lw r6 r5 0
    addi r7 r0 -1
    sw r2 r29 68
    sw r3 r29 44
    sw r1 r29 8
    beq r6 r7 block_3662
block_3661:
    addi r7 r0 99
    sw r4 r29 4
    beq r6 r7 block_3665
block_3664:
    sll r7 r6 2
    lw r7 r7 30048
    lw r8 r7 40
    lwcZ f0 r8 0
    lwcZ f1 r8 4
    lwcZ f2 r8 8
    lw r9 r3 4
    sll r6 r6 2
    lwab r6 r9 r6
    lw r9 r7 4
    addi r10 r0 1
    beq r9 r10 block_3668
block_3667:
    addi r10 r0 2
    beq r9 r10 block_3671
block_3670:
    lwcZ f3 r6 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_3673
block_3672:
    lwcZ f4 r6 4
    fmul f0 f4 f0
    lwcZ f4 r6 8
    fmul f1 f4 f1
    fadd f0 f0 f1
    lwcZ f1 r6 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r8 12
    fmul f2 f0 f0
    fmul f1 f3 f1
    fsub f1 f2 f1
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_3675
block_3674:
    mv r8 r0
    j block_3676
block_3675:
    addi r8 r0 1
    j block_3676
block_3676:
    bne r8 r0 block_3678
    j block_3677
block_3677:
    mv r6 r0
    j block_3669
block_3678:
    lw r7 r7 24
    bne r7 r0 block_3680
    j block_3679
block_3679:
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
    lwcZ f1 r6 16
    fmul f0 f0 f1
    swcZ f0 r0 30540
    j block_3681
block_3680:
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
    lwcZ f1 r6 16
    fmul f0 f0 f1
    swcZ f0 r0 30540
    j block_3681
block_3681:
    addi r6 r0 1
    j block_3669
block_3673:
    mv r6 r0
    j block_3669
block_3671:
    lwcZ f0 r6 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_3683
block_3682:
    mv r7 r0
    j block_3684
block_3683:
    addi r7 r0 1
    j block_3684
block_3684:
    bne r7 r0 block_3686
    j block_3685
block_3685:
    mv r6 r0
    j block_3669
block_3686:
    lwcZ f0 r6 0
    lwcZ f1 r8 12
    fmul f0 f0 f1
    swcZ f0 r0 30540
    addi r6 r0 1
    j block_3669
block_3668:
    lw r8 r3 0
    lwcZ f3 r6 0
    fsub f3 f3 f0
    lwcZ f4 r6 4
    fmul f3 f3 f4
    lwcZ f4 r8 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3688
block_3687:
    j block_3689
block_3688:
    fneg f4 f4
    j block_3689
block_3689:
    lw r9 r7 16
    lwcZ f5 r9 4
    fclt f4 f5
    bc1t block_3691
block_3690:
    mv r9 r0
    j block_3692
block_3691:
    lwcZ f4 r8 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3694
block_3693:
    j block_3695
block_3694:
    fneg f4 f4
    j block_3695
block_3695:
    lw r9 r7 16
    lwcZ f5 r9 8
    fclt f4 f5
    bc1t block_3697
block_3696:
    mv r9 r0
    j block_3692
block_3697:
    lwcZ f4 r6 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_3699
block_3698:
    mv r9 r0
    j block_3700
block_3699:
    addi r9 r0 1
    j block_3700
block_3700:
    bne r9 r0 block_3702
    j block_3701
block_3701:
    addi r9 r0 1
    j block_3692
block_3702:
    mv r9 r0
    j block_3692
block_3692:
    bne r9 r0 block_3704
    j block_3703
block_3703:
    lwcZ f3 r6 8
    fsub f3 f3 f1
    lwcZ f4 r6 12
    fmul f3 f3 f4
    lwcZ f4 r8 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3706
block_3705:
    j block_3707
block_3706:
    fneg f4 f4
    j block_3707
block_3707:
    lw r9 r7 16
    lwcZ f5 r9 0
    fclt f4 f5
    bc1t block_3709
block_3708:
    mv r9 r0
    j block_3710
block_3709:
    lwcZ f4 r8 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3712
block_3711:
    j block_3713
block_3712:
    fneg f4 f4
    j block_3713
block_3713:
    lw r9 r7 16
    lwcZ f5 r9 8
    fclt f4 f5
    bc1t block_3715
block_3714:
    mv r9 r0
    j block_3710
block_3715:
    lwcZ f4 r6 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
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
    lwcZ f3 r6 16
    fsub f2 f3 f2
    lwcZ f3 r6 20
    fmul f2 f2 f3
    lwcZ f3 r8 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_3724
block_3723:
    j block_3725
block_3724:
    fneg f0 f0
    j block_3725
block_3725:
    lw r9 r7 16
    lwcZ f3 r9 0
    fclt f0 f3
    bc1t block_3727
block_3726:
    mv r6 r0
    j block_3728
block_3727:
    lwcZ f0 r8 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_3730
block_3729:
    j block_3731
block_3730:
    fneg f0 f0
    j block_3731
block_3731:
    lw r7 r7 16
    lwcZ f1 r7 4
    fclt f0 f1
    bc1t block_3733
block_3732:
    mv r6 r0
    j block_3728
block_3733:
    lwcZ f0 r6 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3735
block_3734:
    mv r6 r0
    j block_3736
block_3735:
    addi r6 r0 1
    j block_3736
block_3736:
    bne r6 r0 block_3738
    j block_3737
block_3737:
    addi r6 r0 1
    j block_3728
block_3738:
    mv r6 r0
    j block_3728
block_3728:
    bne r6 r0 block_3740
    j block_3739
block_3739:
    mv r6 r0
    j block_3669
block_3740:
    swcZ f2 r0 30540
    addi r6 r0 3
    j block_3669
block_3722:
    swcZ f3 r0 30540
    addi r6 r0 2
    j block_3669
block_3704:
    swcZ f3 r0 30540
    addi r6 r0 1
    j block_3669
block_3669:
    beq r6 r0 block_3742
block_3741:
    lwcZ f0 r0 30540
    lwcZ f1 r0 30548
    fclt f0 f1
    bc1t block_3744
block_3743:
    j block_3666
block_3744:
    lw r6 r5 4
    addi r7 r0 -1
    beq r6 r7 block_3746
block_3745:
    sll r6 r6 2
    lw r6 r6 30332
    sw r5 r29 32
    mv r2 r6
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal solve_each_element_fast.4421
    subi r29 r29 76
    lw r31 r29 72
    lw r1 r29 32
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3748
block_3747:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 44
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal solve_each_element_fast.4421
    subi r29 r29 76
    lw r31 r29 72
    lw r1 r29 32
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3750
block_3749:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 44
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal solve_each_element_fast.4421
    subi r29 r29 76
    lw r31 r29 72
    lw r1 r29 32
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3752
block_3751:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 44
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal solve_each_element_fast.4421
    subi r29 r29 76
    lw r31 r29 72
    addi r1 r0 5
    lw r2 r29 32
    lw r3 r29 44
    sw r31 r29 72
    addi r29 r29 76
    jal solve_one_or_network_fast.4471
    subi r29 r29 76
    lw r31 r29 72
    j block_3666
block_3752:
    j block_3666
block_3750:
    j block_3666
block_3748:
    j block_3666
block_3746:
    j block_3666
block_3742:
    j block_3666
block_3665:
    lw r6 r5 4
    addi r7 r0 -1
    beq r6 r7 block_3754
block_3753:
    sll r6 r6 2
    lw r6 r6 30332
    sw r5 r29 32
    mv r2 r6
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal solve_each_element_fast.4421
    subi r29 r29 76
    lw r31 r29 72
    lw r1 r29 32
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3756
block_3755:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 44
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal solve_each_element_fast.4421
    subi r29 r29 76
    lw r31 r29 72
    lw r1 r29 32
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3758
block_3757:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 44
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal solve_each_element_fast.4421
    subi r29 r29 76
    lw r31 r29 72
    lw r1 r29 32
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3760
block_3759:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 44
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal solve_each_element_fast.4421
    subi r29 r29 76
    lw r31 r29 72
    addi r1 r0 5
    lw r2 r29 32
    lw r3 r29 44
    sw r31 r29 72
    addi r29 r29 76
    jal solve_one_or_network_fast.4471
    subi r29 r29 76
    lw r31 r29 72
    j block_3666
block_3760:
    j block_3666
block_3758:
    j block_3666
block_3756:
    j block_3666
block_3754:
    j block_3666
block_3666:
    addi r1 r0 1
    lw r2 r29 4
    lw r3 r29 44
    sw r31 r29 72
    addi r29 r29 76
    jal trace_or_matrix_fast.4483
    subi r29 r29 76
    lw r31 r29 72
    j block_3663
block_3662:
    j block_3663
block_3663:
    lwcZ f0 r0 30548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_3762
block_3761:
    mv r1 r0
    j block_3763
block_3762:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_3765
block_3764:
    mv r1 r0
    j block_3763
block_3765:
    addi r1 r0 1
    j block_3763
block_3763:
    bne r1 r0 block_3767
    j block_3766
block_3766:
    j block_3768
block_3767:
    lw r1 r0 30564
    sll r1 r1 2
    lw r2 r0 30544
    add r1 r1 r2
    lw r2 r29 68
    lw r3 r2 0
    beq r1 r3 block_3770
block_3769:
    j block_3768
block_3770:
    lw r1 r0 30536
    mv r2 r1
    mv r1 r0
    sw r31 r29 72
    addi r29 r29 76
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 76
    lw r31 r29 72
    bne r1 r0 block_3772
    j block_3771
block_3771:
    lw r1 r29 44
    lw r2 r1 0
    lwcZ f0 r0 30568
    lwcZ f1 r2 0
    fmul f0 f0 f1
    lwcZ f1 r0 30572
    lwcZ f2 r2 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 30576
    lwcZ f2 r2 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    lw r2 r29 68
    lwcZ f1 r2 8
    lwcZ f2 r29 12
    fmul f3 f1 f2
    fmul f0 f3 f0
    lw r1 r1 0
    lw r2 r29 16
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
    j block_3778
block_3777:
    lwcZ f3 r0 30604
    lwcZ f4 r0 30580
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 30604
    lwcZ f3 r0 30608
    lwcZ f4 r0 30584
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 30608
    lwcZ f3 r0 30612
    lwcZ f4 r0 30588
    fmul f0 f0 f4
    fadd f0 f3 f0
    swcZ f0 r0 30612
    j block_3778
block_3778:
    #0.0
    flui f0 0
    fclt f0 f1
    bc1t block_3780
block_3779:
    mv r1 r0
    j block_3781
block_3780:
    addi r1 r0 1
    j block_3781
block_3781:
    bne r1 r0 block_3783
    j block_3782
block_3782:
    j block_3768
block_3783:
    fmul f0 f1 f1
    fmul f0 f0 f0
    lwcZ f1 r29 36
    fmul f0 f0 f1
    lwcZ f3 r0 30604
    fadd f3 f3 f0
    swcZ f3 r0 30604
    lwcZ f3 r0 30608
    fadd f3 f3 f0
    swcZ f3 r0 30608
    lwcZ f3 r0 30612
    fadd f0 f3 f0
    swcZ f0 r0 30612
    j block_3768
block_3772:
    j block_3768
block_3768:
    lw r1 r29 8
    subi r1 r1 1
    lw r2 r29 16
    lwcZ f0 r29 12
    lwcZ f1 r29 36
    sw r31 r29 72
    addi r29 r29 76
    jal trace_reflections.4776
    subi r29 r29 76
    lw r31 r29 72
    j block_3660
block_3659:
    j block_3660
block_3660:
    #0.1
    flui f0 15820
    fori f0 f0 -13107
    lwcZ f1 r29 24
    fclt f0 f1
    bc1t block_3785
block_3784:
    jr r31
block_3785:
    addi r1 r0 4
    lw r2 r29 56
    blt r2 r1 block_3787
block_3786:
    j block_3788
block_3787:
    addi r1 r2 1
    addi r3 r0 -1
    sll r1 r1 2
    lw r4 r29 48
    swab r3 r4 r1
    j block_3788
block_3788:
    addi r1 r0 2
    lw r3 r29 52
    beq r3 r1 block_3790
block_3789:
    jr r31
block_3790:
    #1.0
    flui f0 16256
    lw r1 r29 60
    lw r1 r1 28
    lwcZ f2 r1 0
    fsub f0 f0 f2
    fmul f0 f1 f0
    addi r1 r2 1
    lwcZ f1 r0 30548
    lwcZ f2 r29 20
    fadd f1 f2 f1
    lw r2 r29 16
    lw r3 r29 64
    sw r31 r29 72
    addi r29 r29 76
    jal trace_ray.4807
    subi r29 r29 76
    lw r31 r29 72
    jr r31
block_3331:
    jr r31
trace_reflections.4776:
block_3032:
    blt r1 r0 block_3034
block_3033:
    sll r3 r1 2
    lw r3 r3 31016
    lw r4 r3 4
    #1000000000.0
    flui f2 20078
    fori f2 f2 27432
    swcZ f2 r0 30548
    lw r5 r0 30536
    sw r3 r29 44
    sw r4 r29 40
    sw r1 r29 32
    swcZ f1 r29 28
    sw r2 r29 16
    swcZ f0 r29 12
    mv r3 r4
    mv r2 r5
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal trace_or_matrix_fast.4483
    subi r29 r29 56
    lw r31 r29 52
    lwcZ f0 r0 30548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_3036
block_3035:
    mv r1 r0
    j block_3037
block_3036:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_3039
block_3038:
    mv r1 r0
    j block_3037
block_3039:
    addi r1 r0 1
    j block_3037
block_3037:
    bne r1 r0 block_3041
    j block_3040
block_3040:
    j block_3042
block_3041:
    lw r1 r0 30564
    sll r1 r1 2
    lw r2 r0 30544
    add r1 r1 r2
    lw r2 r29 44
    lw r3 r2 0
    beq r1 r3 block_3044
block_3043:
    j block_3042
block_3044:
    lw r1 r0 30536
    lw r3 r1 0
    lw r4 r3 0
    addi r5 r0 -1
    beq r4 r5 block_3046
block_3045:
    addi r5 r0 99
    sw r3 r29 20
    sw r1 r29 0
    beq r4 r5 block_3049
block_3048:
    sll r5 r4 2
    lw r5 r5 30048
    lwcZ f0 r0 30552
    lw r6 r5 20
    lwcZ f1 r6 0
    fsub f0 f0 f1
    lwcZ f1 r0 30556
    lw r6 r5 20
    lwcZ f2 r6 4
    fsub f1 f1 f2
    lwcZ f2 r0 30560
    lw r6 r5 20
    lwcZ f3 r6 8
    fsub f2 f2 f3
    lw r6 r0 30992
    sll r4 r4 2
    lwab r4 r6 r4
    lw r6 r5 4
    addi r7 r0 1
    beq r6 r7 block_3052
block_3051:
    addi r7 r0 2
    beq r6 r7 block_3055
block_3054:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_3057
block_3056:
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
    beq r6 r0 block_3059
block_3058:
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
    j block_3060
block_3059:
    fmv f0 f5
    j block_3060
block_3060:
    lw r6 r5 4
    addi r7 r0 3
    beq r6 r7 block_3062
block_3061:
    j block_3063
block_3062:
    #1.0
    flui f1 16256
    fsub f0 f0 f1
    j block_3063
block_3063:
    fmul f1 f4 f4
    fmul f0 f3 f0
    fsub f0 f1 f0
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_3065
block_3064:
    mv r6 r0
    j block_3066
block_3065:
    addi r6 r0 1
    j block_3066
block_3066:
    bne r6 r0 block_3068
    j block_3067
block_3067:
    mv r4 r0
    j block_3053
block_3068:
    lw r5 r5 24
    bne r5 r0 block_3070
    j block_3069
block_3069:
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
    swcZ f0 r0 30540
    j block_3071
block_3070:
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
    swcZ f0 r0 30540
    j block_3071
block_3071:
    addi r4 r0 1
    j block_3053
block_3057:
    mv r4 r0
    j block_3053
block_3055:
    lwcZ f3 r4 0
    #0.0
    flui f4 0
    fclt f3 f4
    bc1t block_3073
block_3072:
    mv r5 r0
    j block_3074
block_3073:
    addi r5 r0 1
    j block_3074
block_3074:
    bne r5 r0 block_3076
    j block_3075
block_3075:
    mv r4 r0
    j block_3053
block_3076:
    lwcZ f3 r4 4
    fmul f0 f3 f0
    lwcZ f3 r4 8
    fmul f1 f3 f1
    fadd f0 f0 f1
    lwcZ f1 r4 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30540
    addi r4 r0 1
    j block_3053
block_3052:
    lw r6 r0 30988
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
    bc1t block_3078
block_3077:
    j block_3079
block_3078:
    fneg f4 f4
    j block_3079
block_3079:
    lw r7 r5 16
    lwcZ f5 r7 4
    fclt f4 f5
    bc1t block_3081
block_3080:
    mv r7 r0
    j block_3082
block_3081:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3084
block_3083:
    j block_3085
block_3084:
    fneg f4 f4
    j block_3085
block_3085:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_3087
block_3086:
    mv r7 r0
    j block_3082
block_3087:
    lwcZ f4 r4 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_3089
block_3088:
    mv r7 r0
    j block_3090
block_3089:
    addi r7 r0 1
    j block_3090
block_3090:
    bne r7 r0 block_3092
    j block_3091
block_3091:
    addi r7 r0 1
    j block_3082
block_3092:
    mv r7 r0
    j block_3082
block_3082:
    bne r7 r0 block_3094
    j block_3093
block_3093:
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
    bc1t block_3096
block_3095:
    j block_3097
block_3096:
    fneg f4 f4
    j block_3097
block_3097:
    lw r7 r5 16
    lwcZ f5 r7 0
    fclt f4 f5
    bc1t block_3099
block_3098:
    mv r7 r0
    j block_3100
block_3099:
    lwcZ f4 r6 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3102
block_3101:
    j block_3103
block_3102:
    fneg f4 f4
    j block_3103
block_3103:
    lw r7 r5 16
    lwcZ f5 r7 8
    fclt f4 f5
    bc1t block_3105
block_3104:
    mv r7 r0
    j block_3100
block_3105:
    lwcZ f4 r4 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_3107
block_3106:
    mv r7 r0
    j block_3108
block_3107:
    addi r7 r0 1
    j block_3108
block_3108:
    bne r7 r0 block_3110
    j block_3109
block_3109:
    addi r7 r0 1
    j block_3100
block_3110:
    mv r7 r0
    j block_3100
block_3100:
    bne r7 r0 block_3112
    j block_3111
block_3111:
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
    bc1t block_3114
block_3113:
    j block_3115
block_3114:
    fneg f0 f0
    j block_3115
block_3115:
    lw r7 r5 16
    lwcZ f3 r7 0
    fclt f0 f3
    bc1t block_3117
block_3116:
    mv r4 r0
    j block_3118
block_3117:
    lwcZ f0 r6 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_3120
block_3119:
    j block_3121
block_3120:
    fneg f0 f0
    j block_3121
block_3121:
    lw r5 r5 16
    lwcZ f1 r5 4
    fclt f0 f1
    bc1t block_3123
block_3122:
    mv r4 r0
    j block_3118
block_3123:
    lwcZ f0 r4 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3125
block_3124:
    mv r4 r0
    j block_3126
block_3125:
    addi r4 r0 1
    j block_3126
block_3126:
    bne r4 r0 block_3128
    j block_3127
block_3127:
    addi r4 r0 1
    j block_3118
block_3128:
    mv r4 r0
    j block_3118
block_3118:
    bne r4 r0 block_3130
    j block_3129
block_3129:
    mv r4 r0
    j block_3053
block_3130:
    swcZ f2 r0 30540
    addi r4 r0 3
    j block_3053
block_3112:
    swcZ f3 r0 30540
    addi r4 r0 2
    j block_3053
block_3094:
    swcZ f3 r0 30540
    addi r4 r0 1
    j block_3053
block_3053:
    beq r4 r0 block_3132
block_3131:
    lwcZ f0 r0 30540
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f0 f1
    bc1t block_3134
block_3133:
    mv r1 r0
    j block_3050
block_3134:
    lw r4 r3 4
    addi r5 r0 -1
    beq r4 r5 block_3136
block_3135:
    sll r4 r4 2
    lw r4 r4 30332
    mv r2 r4
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3139
    j block_3138
block_3138:
    lw r1 r29 20
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3141
block_3140:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3143
    j block_3142
block_3142:
    lw r1 r29 20
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3145
block_3144:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3147
    j block_3146
block_3146:
    lw r1 r29 20
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3149
block_3148:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3151
    j block_3150
block_3150:
    lw r1 r29 20
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_3153
block_3152:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3155
    j block_3154
block_3154:
    lw r1 r29 20
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_3157
block_3156:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3159
    j block_3158
block_3158:
    addi r1 r0 7
    lw r2 r29 20
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    j block_3137
block_3159:
    addi r1 r0 1
    j block_3137
block_3157:
    mv r1 r0
    j block_3137
block_3155:
    addi r1 r0 1
    j block_3137
block_3153:
    mv r1 r0
    j block_3137
block_3151:
    addi r1 r0 1
    j block_3137
block_3149:
    mv r1 r0
    j block_3137
block_3147:
    addi r1 r0 1
    j block_3137
block_3145:
    mv r1 r0
    j block_3137
block_3143:
    addi r1 r0 1
    j block_3137
block_3141:
    mv r1 r0
    j block_3137
block_3139:
    addi r1 r0 1
    j block_3137
block_3136:
    mv r1 r0
    j block_3137
block_3137:
    bne r1 r0 block_3161
    j block_3160
block_3160:
    mv r1 r0
    j block_3050
block_3161:
    addi r1 r0 1
    j block_3050
block_3132:
    mv r1 r0
    j block_3050
block_3049:
    addi r1 r0 1
    j block_3050
block_3050:
    bne r1 r0 block_3163
    j block_3162
block_3162:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_3047
block_3163:
    lw r1 r29 20
    lw r2 r1 4
    addi r3 r0 -1
    beq r2 r3 block_3165
block_3164:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3168
    j block_3167
block_3167:
    lw r1 r29 20
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3170
block_3169:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3172
    j block_3171
block_3171:
    lw r1 r29 20
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3174
block_3173:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3176
    j block_3175
block_3175:
    lw r1 r29 20
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3178
block_3177:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3180
    j block_3179
block_3179:
    lw r1 r29 20
    lw r2 r1 20
    addi r3 r0 -1
    beq r2 r3 block_3182
block_3181:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3184
    j block_3183
block_3183:
    lw r1 r29 20
    lw r2 r1 24
    addi r3 r0 -1
    beq r2 r3 block_3186
block_3185:
    sll r2 r2 2
    lw r2 r2 30332
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_and_group.4251
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3188
    j block_3187
block_3187:
    addi r1 r0 7
    lw r2 r29 20
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_group.4292
    subi r29 r29 56
    lw r31 r29 52
    j block_3166
block_3188:
    addi r1 r0 1
    j block_3166
block_3186:
    mv r1 r0
    j block_3166
block_3184:
    addi r1 r0 1
    j block_3166
block_3182:
    mv r1 r0
    j block_3166
block_3180:
    addi r1 r0 1
    j block_3166
block_3178:
    mv r1 r0
    j block_3166
block_3176:
    addi r1 r0 1
    j block_3166
block_3174:
    mv r1 r0
    j block_3166
block_3172:
    addi r1 r0 1
    j block_3166
block_3170:
    mv r1 r0
    j block_3166
block_3168:
    addi r1 r0 1
    j block_3166
block_3165:
    mv r1 r0
    j block_3166
block_3166:
    bne r1 r0 block_3190
    j block_3189
block_3189:
    addi r1 r0 1
    lw r2 r29 0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    j block_3047
block_3190:
    addi r1 r0 1
    j block_3047
block_3046:
    mv r1 r0
    j block_3047
block_3047:
    bne r1 r0 block_3192
    j block_3191
block_3191:
    lw r1 r29 40
    lw r2 r1 0
    lwcZ f0 r0 30568
    lwcZ f1 r2 0
    fmul f0 f0 f1
    lwcZ f1 r0 30572
    lwcZ f2 r2 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 30576
    lwcZ f2 r2 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    lw r2 r29 44
    lwcZ f1 r2 8
    lwcZ f2 r29 12
    fmul f3 f1 f2
    fmul f0 f3 f0
    lw r1 r1 0
    lw r2 r29 16
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
    bc1t block_3194
block_3193:
    mv r1 r0
    j block_3195
block_3194:
    addi r1 r0 1
    j block_3195
block_3195:
    bne r1 r0 block_3197
    j block_3196
block_3196:
    j block_3198
block_3197:
    lwcZ f3 r0 30604
    lwcZ f4 r0 30580
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 30604
    lwcZ f3 r0 30608
    lwcZ f4 r0 30584
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 30608
    lwcZ f3 r0 30612
    lwcZ f4 r0 30588
    fmul f0 f0 f4
    fadd f0 f3 f0
    swcZ f0 r0 30612
    j block_3198
block_3198:
    #0.0
    flui f0 0
    fclt f0 f1
    bc1t block_3200
block_3199:
    mv r1 r0
    j block_3201
block_3200:
    addi r1 r0 1
    j block_3201
block_3201:
    bne r1 r0 block_3203
    j block_3202
block_3202:
    j block_3042
block_3203:
    fmul f0 f1 f1
    fmul f0 f0 f0
    lwcZ f1 r29 28
    fmul f0 f0 f1
    lwcZ f3 r0 30604
    fadd f3 f3 f0
    swcZ f3 r0 30604
    lwcZ f3 r0 30608
    fadd f3 f3 f0
    swcZ f3 r0 30608
    lwcZ f3 r0 30612
    fadd f0 f3 f0
    swcZ f0 r0 30612
    j block_3042
block_3192:
    j block_3042
block_3042:
    lw r1 r29 32
    subi r1 r1 1
    blt r1 r0 block_3205
block_3204:
    sll r2 r1 2
    lw r2 r2 31016
    lw r3 r2 4
    #1000000000.0
    flui f0 20078
    fori f0 f0 27432
    swcZ f0 r0 30548
    lw r4 r0 30536
    lw r5 r4 0
    lw r6 r5 0
    addi r7 r0 -1
    sw r2 r29 48
    sw r3 r29 36
    sw r1 r29 8
    beq r6 r7 block_3207
block_3206:
    addi r7 r0 99
    sw r4 r29 4
    beq r6 r7 block_3210
block_3209:
    sll r7 r6 2
    lw r7 r7 30048
    lw r8 r7 40
    lwcZ f0 r8 0
    lwcZ f1 r8 4
    lwcZ f2 r8 8
    lw r9 r3 4
    sll r6 r6 2
    lwab r6 r9 r6
    lw r9 r7 4
    addi r10 r0 1
    beq r9 r10 block_3213
block_3212:
    addi r10 r0 2
    beq r9 r10 block_3216
block_3215:
    lwcZ f3 r6 0
    #0.0
    flui f4 0
    fsub f31 f3 f4
    fcz f31
    bc1t block_3218
block_3217:
    lwcZ f4 r6 4
    fmul f0 f4 f0
    lwcZ f4 r6 8
    fmul f1 f4 f1
    fadd f0 f0 f1
    lwcZ f1 r6 12
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r8 12
    fmul f2 f0 f0
    fmul f1 f3 f1
    fsub f1 f2 f1
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_3220
block_3219:
    mv r8 r0
    j block_3221
block_3220:
    addi r8 r0 1
    j block_3221
block_3221:
    bne r8 r0 block_3223
    j block_3222
block_3222:
    mv r6 r0
    j block_3214
block_3223:
    lw r7 r7 24
    bne r7 r0 block_3225
    j block_3224
block_3224:
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
    lwcZ f1 r6 16
    fmul f0 f0 f1
    swcZ f0 r0 30540
    j block_3226
block_3225:
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
    lwcZ f1 r6 16
    fmul f0 f0 f1
    swcZ f0 r0 30540
    j block_3226
block_3226:
    addi r6 r0 1
    j block_3214
block_3218:
    mv r6 r0
    j block_3214
block_3216:
    lwcZ f0 r6 0
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_3228
block_3227:
    mv r7 r0
    j block_3229
block_3228:
    addi r7 r0 1
    j block_3229
block_3229:
    bne r7 r0 block_3231
    j block_3230
block_3230:
    mv r6 r0
    j block_3214
block_3231:
    lwcZ f0 r6 0
    lwcZ f1 r8 12
    fmul f0 f0 f1
    swcZ f0 r0 30540
    addi r6 r0 1
    j block_3214
block_3213:
    lw r8 r3 0
    lwcZ f3 r6 0
    fsub f3 f3 f0
    lwcZ f4 r6 4
    fmul f3 f3 f4
    lwcZ f4 r8 4
    fmul f4 f3 f4
    fadd f4 f4 f1
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3233
block_3232:
    j block_3234
block_3233:
    fneg f4 f4
    j block_3234
block_3234:
    lw r9 r7 16
    lwcZ f5 r9 4
    fclt f4 f5
    bc1t block_3236
block_3235:
    mv r9 r0
    j block_3237
block_3236:
    lwcZ f4 r8 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3239
block_3238:
    j block_3240
block_3239:
    fneg f4 f4
    j block_3240
block_3240:
    lw r9 r7 16
    lwcZ f5 r9 8
    fclt f4 f5
    bc1t block_3242
block_3241:
    mv r9 r0
    j block_3237
block_3242:
    lwcZ f4 r6 4
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_3244
block_3243:
    mv r9 r0
    j block_3245
block_3244:
    addi r9 r0 1
    j block_3245
block_3245:
    bne r9 r0 block_3247
    j block_3246
block_3246:
    addi r9 r0 1
    j block_3237
block_3247:
    mv r9 r0
    j block_3237
block_3237:
    bne r9 r0 block_3249
    j block_3248
block_3248:
    lwcZ f3 r6 8
    fsub f3 f3 f1
    lwcZ f4 r6 12
    fmul f3 f3 f4
    lwcZ f4 r8 0
    fmul f4 f3 f4
    fadd f4 f4 f0
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3251
block_3250:
    j block_3252
block_3251:
    fneg f4 f4
    j block_3252
block_3252:
    lw r9 r7 16
    lwcZ f5 r9 0
    fclt f4 f5
    bc1t block_3254
block_3253:
    mv r9 r0
    j block_3255
block_3254:
    lwcZ f4 r8 8
    fmul f4 f3 f4
    fadd f4 f4 f2
    #0.0
    flui f5 0
    fclt f4 f5
    bc1t block_3257
block_3256:
    j block_3258
block_3257:
    fneg f4 f4
    j block_3258
block_3258:
    lw r9 r7 16
    lwcZ f5 r9 8
    fclt f4 f5
    bc1t block_3260
block_3259:
    mv r9 r0
    j block_3255
block_3260:
    lwcZ f4 r6 12
    #0.0
    flui f5 0
    fsub f31 f4 f5
    fcz f31
    bc1t block_3262
block_3261:
    mv r9 r0
    j block_3263
block_3262:
    addi r9 r0 1
    j block_3263
block_3263:
    bne r9 r0 block_3265
    j block_3264
block_3264:
    addi r9 r0 1
    j block_3255
block_3265:
    mv r9 r0
    j block_3255
block_3255:
    bne r9 r0 block_3267
    j block_3266
block_3266:
    lwcZ f3 r6 16
    fsub f2 f3 f2
    lwcZ f3 r6 20
    fmul f2 f2 f3
    lwcZ f3 r8 0
    fmul f3 f2 f3
    fadd f0 f3 f0
    #0.0
    flui f3 0
    fclt f0 f3
    bc1t block_3269
block_3268:
    j block_3270
block_3269:
    fneg f0 f0
    j block_3270
block_3270:
    lw r9 r7 16
    lwcZ f3 r9 0
    fclt f0 f3
    bc1t block_3272
block_3271:
    mv r6 r0
    j block_3273
block_3272:
    lwcZ f0 r8 4
    fmul f0 f2 f0
    fadd f0 f0 f1
    #0.0
    flui f1 0
    fclt f0 f1
    bc1t block_3275
block_3274:
    j block_3276
block_3275:
    fneg f0 f0
    j block_3276
block_3276:
    lw r7 r7 16
    lwcZ f1 r7 4
    fclt f0 f1
    bc1t block_3278
block_3277:
    mv r6 r0
    j block_3273
block_3278:
    lwcZ f0 r6 20
    #0.0
    flui f1 0
    fsub f31 f0 f1
    fcz f31
    bc1t block_3280
block_3279:
    mv r6 r0
    j block_3281
block_3280:
    addi r6 r0 1
    j block_3281
block_3281:
    bne r6 r0 block_3283
    j block_3282
block_3282:
    addi r6 r0 1
    j block_3273
block_3283:
    mv r6 r0
    j block_3273
block_3273:
    bne r6 r0 block_3285
    j block_3284
block_3284:
    mv r6 r0
    j block_3214
block_3285:
    swcZ f2 r0 30540
    addi r6 r0 3
    j block_3214
block_3267:
    swcZ f3 r0 30540
    addi r6 r0 2
    j block_3214
block_3249:
    swcZ f3 r0 30540
    addi r6 r0 1
    j block_3214
block_3214:
    beq r6 r0 block_3287
block_3286:
    lwcZ f0 r0 30540
    lwcZ f1 r0 30548
    fclt f0 f1
    bc1t block_3289
block_3288:
    j block_3211
block_3289:
    lw r6 r5 4
    addi r7 r0 -1
    beq r6 r7 block_3291
block_3290:
    sll r6 r6 2
    lw r6 r6 30332
    sw r5 r29 24
    mv r2 r6
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal solve_each_element_fast.4421
    subi r29 r29 56
    lw r31 r29 52
    lw r1 r29 24
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3293
block_3292:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 36
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal solve_each_element_fast.4421
    subi r29 r29 56
    lw r31 r29 52
    lw r1 r29 24
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3295
block_3294:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 36
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal solve_each_element_fast.4421
    subi r29 r29 56
    lw r31 r29 52
    lw r1 r29 24
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3297
block_3296:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 36
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal solve_each_element_fast.4421
    subi r29 r29 56
    lw r31 r29 52
    addi r1 r0 5
    lw r2 r29 24
    lw r3 r29 36
    sw r31 r29 52
    addi r29 r29 56
    jal solve_one_or_network_fast.4471
    subi r29 r29 56
    lw r31 r29 52
    j block_3211
block_3297:
    j block_3211
block_3295:
    j block_3211
block_3293:
    j block_3211
block_3291:
    j block_3211
block_3287:
    j block_3211
block_3210:
    lw r6 r5 4
    addi r7 r0 -1
    beq r6 r7 block_3299
block_3298:
    sll r6 r6 2
    lw r6 r6 30332
    sw r5 r29 24
    mv r2 r6
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal solve_each_element_fast.4421
    subi r29 r29 56
    lw r31 r29 52
    lw r1 r29 24
    lw r2 r1 8
    addi r3 r0 -1
    beq r2 r3 block_3301
block_3300:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 36
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal solve_each_element_fast.4421
    subi r29 r29 56
    lw r31 r29 52
    lw r1 r29 24
    lw r2 r1 12
    addi r3 r0 -1
    beq r2 r3 block_3303
block_3302:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 36
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal solve_each_element_fast.4421
    subi r29 r29 56
    lw r31 r29 52
    lw r1 r29 24
    lw r2 r1 16
    addi r3 r0 -1
    beq r2 r3 block_3305
block_3304:
    sll r2 r2 2
    lw r2 r2 30332
    lw r3 r29 36
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal solve_each_element_fast.4421
    subi r29 r29 56
    lw r31 r29 52
    addi r1 r0 5
    lw r2 r29 24
    lw r3 r29 36
    sw r31 r29 52
    addi r29 r29 56
    jal solve_one_or_network_fast.4471
    subi r29 r29 56
    lw r31 r29 52
    j block_3211
block_3305:
    j block_3211
block_3303:
    j block_3211
block_3301:
    j block_3211
block_3299:
    j block_3211
block_3211:
    addi r1 r0 1
    lw r2 r29 4
    lw r3 r29 36
    sw r31 r29 52
    addi r29 r29 56
    jal trace_or_matrix_fast.4483
    subi r29 r29 56
    lw r31 r29 52
    j block_3208
block_3207:
    j block_3208
block_3208:
    lwcZ f0 r0 30548
    #-0.1
    flui f1 -16948
    fori f1 f1 -13107
    fclt f1 f0
    bc1t block_3307
block_3306:
    mv r1 r0
    j block_3308
block_3307:
    #100000000.0
    flui f1 19646
    fori f1 f1 -17376
    fclt f0 f1
    bc1t block_3310
block_3309:
    mv r1 r0
    j block_3308
block_3310:
    addi r1 r0 1
    j block_3308
block_3308:
    bne r1 r0 block_3312
    j block_3311
block_3311:
    j block_3313
block_3312:
    lw r1 r0 30564
    sll r1 r1 2
    lw r2 r0 30544
    add r1 r1 r2
    lw r2 r29 48
    lw r3 r2 0
    beq r1 r3 block_3315
block_3314:
    j block_3313
block_3315:
    lw r1 r0 30536
    mv r2 r1
    mv r1 r0
    sw r31 r29 52
    addi r29 r29 56
    jal shadow_check_one_or_matrix.4303
    subi r29 r29 56
    lw r31 r29 52
    bne r1 r0 block_3317
    j block_3316
block_3316:
    lw r1 r29 36
    lw r2 r1 0
    lwcZ f0 r0 30568
    lwcZ f1 r2 0
    fmul f0 f0 f1
    lwcZ f1 r0 30572
    lwcZ f2 r2 4
    fmul f1 f1 f2
    fadd f0 f0 f1
    lwcZ f1 r0 30576
    lwcZ f2 r2 8
    fmul f1 f1 f2
    fadd f0 f0 f1
    lw r2 r29 48
    lwcZ f1 r2 8
    lwcZ f2 r29 12
    fmul f3 f1 f2
    fmul f0 f3 f0
    lw r1 r1 0
    lw r2 r29 16
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
    bc1t block_3319
block_3318:
    mv r1 r0
    j block_3320
block_3319:
    addi r1 r0 1
    j block_3320
block_3320:
    bne r1 r0 block_3322
    j block_3321
block_3321:
    j block_3323
block_3322:
    lwcZ f3 r0 30604
    lwcZ f4 r0 30580
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 30604
    lwcZ f3 r0 30608
    lwcZ f4 r0 30584
    fmul f4 f0 f4
    fadd f3 f3 f4
    swcZ f3 r0 30608
    lwcZ f3 r0 30612
    lwcZ f4 r0 30588
    fmul f0 f0 f4
    fadd f0 f3 f0
    swcZ f0 r0 30612
    j block_3323
block_3323:
    #0.0
    flui f0 0
    fclt f0 f1
    bc1t block_3325
block_3324:
    mv r1 r0
    j block_3326
block_3325:
    addi r1 r0 1
    j block_3326
block_3326:
    bne r1 r0 block_3328
    j block_3327
block_3327:
    j block_3313
block_3328:
    fmul f0 f1 f1
    fmul f0 f0 f0
    lwcZ f1 r29 28
    fmul f0 f0 f1
    lwcZ f3 r0 30604
    fadd f3 f3 f0
    swcZ f3 r0 30604
    lwcZ f3 r0 30608
    fadd f3 f3 f0
    swcZ f3 r0 30608
    lwcZ f3 r0 30612
    fadd f0 f3 f0
    swcZ f0 r0 30612
    j block_3313
block_3317:
    j block_3313
block_3313:
    lw r1 r29 8
    subi r1 r1 1
    lw r2 r29 16
    lwcZ f0 r29 12
    lwcZ f1 r29 28
    sw r31 r29 52
    addi r29 r29 56
    jal trace_reflections.4776
    subi r29 r29 56
    lw r31 r29 52
    jr r31
block_3205:
    jr r31
block_3034:
    jr r31
try_exploit_neighbors.5085:
block_5621:
    sll r7 r1 2
    lwab r7 r4 r7
    addi r8 r0 4
    blt r8 r6 block_5623
block_5622:
    lw r8 r7 8
    sll r9 r6 2
    lwab r8 r8 r9
    blt r8 r0 block_5625
block_5624:
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
    beq r9 r8 block_5627
block_5626:
    mv r8 r0
    j block_5628
block_5627:
    sll r9 r1 2
    lwab r9 r5 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5630
block_5629:
    mv r8 r0
    j block_5628
block_5630:
    subi r9 r1 1
    sll r9 r9 2
    lwab r9 r4 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5632
block_5631:
    mv r8 r0
    j block_5628
block_5632:
    addi r9 r1 1
    sll r9 r9 2
    lwab r9 r4 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5634
block_5633:
    mv r8 r0
    j block_5628
block_5634:
    addi r8 r0 1
    j block_5628
block_5628:
    bne r8 r0 block_5636
    j block_5635
block_5635:
    sll r1 r1 2
    lwab r1 r4 r1
    addi r2 r0 4
    blt r2 r6 block_5638
block_5637:
    lw r2 r1 8
    sll r3 r6 2
    lwab r2 r2 r3
    blt r2 r0 block_5640
block_5639:
    lw r2 r1 12
    sll r3 r6 2
    lwab r2 r2 r3
    sw r6 r29 20
    sw r1 r29 12
    bne r2 r0 block_5642
    j block_5641
block_5641:
    j block_5643
block_5642:
    lw r2 r1 20
    lw r3 r1 28
    lw r4 r1 4
    lw r5 r1 16
    sll r7 r6 2
    lwab r2 r2 r7
    lwcZ f0 r2 0
    swcZ f0 r0 30592
    lwcZ f0 r2 4
    swcZ f0 r0 30596
    lwcZ f0 r2 8
    swcZ f0 r0 30600
    lw r2 r1 24
    lw r2 r2 0
    sll r7 r6 2
    lwab r3 r3 r7
    sll r7 r6 2
    lwab r4 r4 r7
    sw r5 r29 16
    sw r2 r29 8
    sw r4 r29 4
    sw r3 r29 0
    beq r2 r0 block_5645
block_5644:
    lw r7 r0 30716
    mv r2 r3
    mv r1 r7
    mv r3 r4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_diffuse_rays.4959
    subi r29 r29 28
    lw r31 r29 24
    j block_5646
block_5645:
    j block_5646
block_5646:
    addi r1 r0 1
    lw r2 r29 8
    beq r2 r1 block_5648
block_5647:
    lw r1 r0 30720
    lw r3 r29 0
    lw r4 r29 4
    mv r2 r3
    mv r3 r4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_diffuse_rays.4959
    subi r29 r29 28
    lw r31 r29 24
    j block_5649
block_5648:
    j block_5649
block_5649:
    addi r1 r0 2
    lw r2 r29 8
    beq r2 r1 block_5651
block_5650:
    lw r1 r0 30724
    lw r3 r29 0
    lw r4 r29 4
    mv r2 r3
    mv r3 r4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_diffuse_rays.4959
    subi r29 r29 28
    lw r31 r29 24
    j block_5652
block_5651:
    j block_5652
block_5652:
    addi r1 r0 3
    lw r2 r29 8
    beq r2 r1 block_5654
block_5653:
    lw r1 r0 30728
    lw r3 r29 0
    lw r4 r29 4
    mv r2 r3
    mv r3 r4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_diffuse_rays.4959
    subi r29 r29 28
    lw r31 r29 24
    j block_5655
block_5654:
    j block_5655
block_5655:
    addi r1 r0 4
    lw r2 r29 8
    beq r2 r1 block_5657
block_5656:
    lw r1 r0 30732
    lw r2 r29 0
    lw r3 r29 4
    sw r31 r29 24
    addi r29 r29 28
    jal trace_diffuse_rays.4959
    subi r29 r29 28
    lw r31 r29 24
    j block_5658
block_5657:
    j block_5658
block_5658:
    lw r1 r29 20
    sll r2 r1 2
    lw r3 r29 16
    lwab r2 r3 r2
    lwcZ f0 r0 30604
    lwcZ f1 r2 0
    lwcZ f2 r0 30592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30604
    lwcZ f0 r0 30608
    lwcZ f1 r2 4
    lwcZ f2 r0 30596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30608
    lwcZ f0 r0 30612
    lwcZ f1 r2 8
    lwcZ f2 r0 30600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30612
    j block_5643
block_5643:
    lw r1 r29 20
    addi r2 r1 1
    lw r1 r29 12
    sw r31 r29 24
    addi r29 r29 28
    jal do_without_neighbors.5035
    subi r29 r29 28
    lw r31 r29 24
    jr r31
block_5640:
    jr r31
block_5638:
    jr r31
block_5636:
    lw r7 r7 12
    sll r8 r6 2
    lwab r7 r7 r8
    bne r7 r0 block_5660
    j block_5659
block_5659:
    j block_5661
block_5660:
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
    swcZ f0 r0 30592
    lwcZ f0 r7 4
    swcZ f0 r0 30596
    lwcZ f0 r7 8
    swcZ f0 r0 30600
    sll r7 r6 2
    lwab r7 r8 r7
    lwcZ f0 r0 30592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    sll r7 r6 2
    lwab r7 r9 r7
    lwcZ f0 r0 30592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    sll r7 r6 2
    lwab r7 r10 r7
    lwcZ f0 r0 30592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    sll r7 r6 2
    lwab r7 r11 r7
    lwcZ f0 r0 30592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    sll r7 r1 2
    lwab r7 r4 r7
    lw r7 r7 16
    sll r8 r6 2
    lwab r7 r7 r8
    lwcZ f0 r0 30604
    lwcZ f1 r7 0
    lwcZ f2 r0 30592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30604
    lwcZ f0 r0 30608
    lwcZ f1 r7 4
    lwcZ f2 r0 30596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30608
    lwcZ f0 r0 30612
    lwcZ f1 r7 8
    lwcZ f2 r0 30600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30612
    j block_5661
block_5661:
    addi r6 r6 1
    sll r7 r1 2
    lwab r7 r4 r7
    addi r8 r0 4
    blt r8 r6 block_5663
block_5662:
    lw r8 r7 8
    sll r9 r6 2
    lwab r8 r8 r9
    blt r8 r0 block_5665
block_5664:
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
    beq r9 r8 block_5667
block_5666:
    mv r8 r0
    j block_5668
block_5667:
    sll r9 r1 2
    lwab r9 r5 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5670
block_5669:
    mv r8 r0
    j block_5668
block_5670:
    subi r9 r1 1
    sll r9 r9 2
    lwab r9 r4 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5672
block_5671:
    mv r8 r0
    j block_5668
block_5672:
    addi r9 r1 1
    sll r9 r9 2
    lwab r9 r4 r9
    lw r9 r9 8
    sll r10 r6 2
    lwab r9 r9 r10
    beq r9 r8 block_5674
block_5673:
    mv r8 r0
    j block_5668
block_5674:
    addi r8 r0 1
    j block_5668
block_5668:
    bne r8 r0 block_5676
    j block_5675
block_5675:
    sll r1 r1 2
    lwab r1 r4 r1
    mv r2 r6
    sw r31 r29 24
    addi r29 r29 28
    jal do_without_neighbors.5035
    subi r29 r29 28
    lw r31 r29 24
    jr r31
block_5676:
    lw r7 r7 12
    sll r8 r6 2
    lwab r7 r7 r8
    bne r7 r0 block_5678
    j block_5677
block_5677:
    j block_5679
block_5678:
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
    swcZ f0 r0 30592
    lwcZ f0 r7 4
    swcZ f0 r0 30596
    lwcZ f0 r7 8
    swcZ f0 r0 30600
    sll r7 r6 2
    lwab r7 r8 r7
    lwcZ f0 r0 30592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    sll r7 r6 2
    lwab r7 r9 r7
    lwcZ f0 r0 30592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    sll r7 r6 2
    lwab r7 r10 r7
    lwcZ f0 r0 30592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    sll r7 r6 2
    lwab r7 r11 r7
    lwcZ f0 r0 30592
    lwcZ f1 r7 0
    fadd f0 f0 f1
    swcZ f0 r0 30592
    lwcZ f0 r0 30596
    lwcZ f1 r7 4
    fadd f0 f0 f1
    swcZ f0 r0 30596
    lwcZ f0 r0 30600
    lwcZ f1 r7 8
    fadd f0 f0 f1
    swcZ f0 r0 30600
    sll r7 r1 2
    lwab r7 r4 r7
    lw r7 r7 16
    sll r8 r6 2
    lwab r7 r7 r8
    lwcZ f0 r0 30604
    lwcZ f1 r7 0
    lwcZ f2 r0 30592
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30604
    lwcZ f0 r0 30608
    lwcZ f1 r7 4
    lwcZ f2 r0 30596
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30608
    lwcZ f0 r0 30612
    lwcZ f1 r7 8
    lwcZ f2 r0 30600
    fmul f1 f1 f2
    fadd f0 f0 f1
    swcZ f0 r0 30612
    j block_5679
block_5679:
    addi r6 r6 1
    sw r31 r29 24
    addi r29 r29 28
    jal try_exploit_neighbors.5085
    subi r29 r29 28
    lw r31 r29 24
    jr r31
block_5665:
    jr r31
block_5663:
    jr r31
block_5625:
    jr r31
block_5623:
    jr r31
utexture.4603:
block_2904:
    lw r3 r1 0
    lw r4 r1 32
    lwcZ f0 r4 0
    swcZ f0 r0 30580
    lw r4 r1 32
    lwcZ f0 r4 4
    swcZ f0 r0 30584
    lw r4 r1 32
    lwcZ f0 r4 8
    swcZ f0 r0 30588
    addi r4 r0 1
    beq r3 r4 block_2906
block_2905:
    addi r4 r0 2
    beq r3 r4 block_2908
block_2907:
    addi r4 r0 3
    beq r3 r4 block_2910
block_2909:
    addi r4 r0 4
    beq r3 r4 block_2912
block_2911:
    jr r31
block_2912:
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
    bc1t block_2914
block_2913:
    fmv f3 f0
    j block_2915
block_2914:
    fneg f3 f0
    j block_2915
block_2915:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_2917
block_2916:
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
    bc1t block_2920
block_2919:
    j block_2921
block_2920:
    fneg f0 f0
    j block_2921
block_2921:
    #0.0
    flui f1 0
    fclt f1 f0
    bc1t block_2923
block_2922:
    mv r3 r0
    j block_2924
block_2923:
    addi r3 r0 1
    j block_2924
block_2924:
    bne r3 r0 block_2926
    j block_2925
block_2925:
    fneg f0 f0
    j block_2927
block_2926:
    j block_2927
block_2927:
    #0.4375
    flui f1 16096
    fclt f0 f1
    bc1t block_2929
block_2928:
    #2.4375
    flui f1 16412
    fclt f0 f1
    bc1t block_2932
block_2931:
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
    j block_2930
block_2932:
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
    j block_2930
block_2929:
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
    j block_2930
block_2930:
    bne r3 r0 block_2934
    j block_2933
block_2933:
    fneg f0 f0
    j block_2935
block_2934:
    j block_2935
block_2935:
    #30.0
    flui f1 16880
    fmul f0 f0 f1
    #0.31830987
    flui f1 16034
    fori f1 f1 -1661
    fmul f0 f0 f1
    j block_2918
block_2917:
    #15.0
    flui f0 16752
    j block_2918
block_2918:
    ftoi r3 f0
    itof f1 r3
    fclt f0 f1
    bc1t block_2937
block_2936:
    j block_2938
block_2937:
    #1.0
    flui f3 16256
    fsub f1 f1 f3
    j block_2938
block_2938:
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
    bc1t block_2940
block_2939:
    fmv f3 f2
    j block_2941
block_2940:
    fneg f3 f2
    j block_2941
block_2941:
    #0.0001
    flui f4 14545
    fori f4 f4 -18665
    fclt f3 f4
    bc1t block_2943
block_2942:
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
    bc1t block_2946
block_2945:
    j block_2947
block_2946:
    fneg f1 f1
    j block_2947
block_2947:
    #0.0
    flui f2 0
    fclt f2 f1
    bc1t block_2949
block_2948:
    mv r1 r0
    j block_2950
block_2949:
    addi r1 r0 1
    j block_2950
block_2950:
    bne r1 r0 block_2952
    j block_2951
block_2951:
    fneg f1 f1
    j block_2953
block_2952:
    j block_2953
block_2953:
    #0.4375
    flui f2 16096
    fclt f1 f2
    bc1t block_2955
block_2954:
    #2.4375
    flui f2 16412
    fclt f1 f2
    bc1t block_2958
block_2957:
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
    j block_2956
block_2958:
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
    j block_2956
block_2955:
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
    j block_2956
block_2956:
    bne r1 r0 block_2960
    j block_2959
block_2959:
    fneg f1 f1
    j block_2961
block_2960:
    j block_2961
block_2961:
    #30.0
    flui f2 16880
    fmul f1 f1 f2
    #0.31830987
    flui f2 16034
    fori f2 f2 -1661
    fmul f1 f1 f2
    j block_2944
block_2943:
    #15.0
    flui f1 16752
    j block_2944
block_2944:
    ftoi r1 f1
    itof f2 r1
    fclt f1 f2
    bc1t block_2963
block_2962:
    j block_2964
block_2963:
    #1.0
    flui f3 16256
    fsub f2 f2 f3
    j block_2964
block_2964:
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
    bc1t block_2966
block_2965:
    mv r1 r0
    j block_2967
block_2966:
    addi r1 r0 1
    j block_2967
block_2967:
    bne r1 r0 block_2969
    j block_2968
block_2968:
    j block_2970
block_2969:
    #0.0
    flui f0 0
    j block_2970
block_2970:
    #255.0
    flui f1 17279
    fmul f0 f1 f0
    #3.3333333
    flui f1 16469
    fori f1 f1 21845
    fmul f0 f0 f1
    swcZ f0 r0 30588
    jr r31
block_2910:
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
    bc1t block_2972
block_2971:
    j block_2973
block_2972:
    #1.0
    flui f2 16256
    fsub f1 f1 f2
    j block_2973
block_2973:
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
    bc1t block_2975
block_2974:
    fneg f0 f0
    j block_2976
block_2975:
    j block_2976
block_2976:
    fclt f3 f0
    bc1t block_2978
block_2977:
    addi r1 r0 1
    j block_2979
block_2978:
    addi r1 r0 -1
    j block_2979
block_2979:
    fclt f3 f0
    bc1t block_2981
block_2980:
    j block_2982
block_2981:
    fsub f0 f0 f3
    j block_2982
block_2982:
    fclt f2 f0
    bc1t block_2984
block_2983:
    j block_2985
block_2984:
    sub r1 r0 r1
    j block_2985
block_2985:
    fclt f2 f0
    bc1t block_2987
block_2986:
    j block_2988
block_2987:
    fsub f0 f3 f0
    j block_2988
block_2988:
    fclt f0 f1
    bc1t block_2990
block_2989:
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
    j block_2991
block_2990:
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
    j block_2991
block_2991:
    addi r2 r0 -1
    beq r1 r2 block_2993
block_2992:
    j block_2994
block_2993:
    fneg f0 f0
    j block_2994
block_2994:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f0 f1
    swcZ f1 r0 30584
    #1.0
    flui f1 16256
    fsub f0 f1 f0
    #255.0
    flui f1 17279
    fmul f0 f0 f1
    swcZ f0 r0 30588
    jr r31
block_2908:
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
    bc1t block_2996
block_2995:
    fadd f0 f0 f4
    j block_2997
block_2996:
    j block_2997
block_2997:
    fclt f3 f0
    bc1t block_2999
block_2998:
    addi r1 r0 1
    j block_3000
block_2999:
    mv r1 r0
    j block_3000
block_3000:
    fclt f3 f0
    bc1t block_3002
block_3001:
    j block_3003
block_3002:
    fsub f0 f0 f3
    j block_3003
block_3003:
    fclt f2 f0
    bc1t block_3005
block_3004:
    j block_3006
block_3005:
    fsub f0 f3 f0
    j block_3006
block_3006:
    fclt f1 f0
    bc1t block_3008
block_3007:
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
    j block_3009
block_3008:
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
    j block_3009
block_3009:
    bne r1 r0 block_3011
    j block_3010
block_3010:
    fneg f0 f0
    j block_3012
block_3011:
    j block_3012
block_3012:
    fmul f0 f0 f0
    #255.0
    flui f1 17279
    fmul f1 f1 f0
    swcZ f1 r0 30580
    #255.0
    flui f1 17279
    #1.0
    flui f2 16256
    fsub f0 f2 f0
    fmul f0 f1 f0
    swcZ f0 r0 30584
    jr r31
block_2906:
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
    bc1t block_3014
block_3013:
    fmv f1 f2
    j block_3015
block_3014:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_3015
block_3015:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_3017
block_3016:
    mv r3 r0
    j block_3018
block_3017:
    addi r3 r0 1
    j block_3018
block_3018:
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
    bc1t block_3020
block_3019:
    fmv f1 f2
    j block_3021
block_3020:
    #1.0
    flui f1 16256
    fsub f1 f2 f1
    j block_3021
block_3021:
    #20.0
    flui f2 16800
    fmul f1 f1 f2
    fsub f0 f0 f1
    #10.0
    flui f1 16672
    fclt f0 f1
    bc1t block_3023
block_3022:
    mv r1 r0
    j block_3024
block_3023:
    addi r1 r0 1
    j block_3024
block_3024:
    bne r3 r0 block_3026
    j block_3025
block_3025:
    bne r1 r0 block_3029
    j block_3028
block_3028:
    #255.0
    flui f0 17279
    j block_3027
block_3029:
    #0.0
    flui f0 0
    j block_3027
block_3026:
    bne r1 r0 block_3031
    j block_3030
block_3030:
    #0.0
    flui f0 0
    j block_3027
block_3031:
    #255.0
    flui f0 17279
    j block_3027
block_3027:
    swcZ f0 r0 30584
    jr r31
