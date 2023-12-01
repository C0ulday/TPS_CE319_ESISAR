
.section .text
.globl main

main:
    addi sp,sp,-16
    sd ra,8(sp)  
    ####
    mv a0,zero
    mv t0,zero
    addi t5,zero,10
loop:
    beq t0,t5,end
	add a0,a0,t0
	addi t0,t0,1
    j loop
    
end:
	call print_int
    call newline
##### FIN CODE DE CAESAR
    ## fin du code fonctionnel
    ld      ra,8(sp)
    addi    sp,sp,16
    ret





