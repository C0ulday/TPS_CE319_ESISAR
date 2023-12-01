
.section .text
.globl main

main:
    addi sp,sp,-16
    sd ra,8(sp) 

    ####
    mv t5,zero
    mv t6,zero

    la t1,etoile
    ld a0, 0(t1)

    la t2,nombre
    ld t3, 0(t2)

loop2:
    beq t6,t3,loop1
    call print_char
    addi t6,t6,1
    j loop2


loop1:
    call newline
    addi t5,t5,1
    mv t6,zero
    bne t5,t3,loop2

end:
##### FIN CODE 
    ## fin du code fonctionnel
    ld      ra,8(sp)
    addi    sp,sp,16
    ret

nombre:
    .dword 3

etoile:
    .dword 'x'



