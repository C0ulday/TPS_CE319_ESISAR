
.section .text
.globl main

main:
    addi sp,sp,-16
    sd ra,8(sp)  
    ####
    mv a0,zero #copie de l'adresse du debut
    mv t1,zero #curseur de taille
    mv t3,zero #variable de calcul

loop:
    beq t1,a1,end #si pas de tableau on finit
    ld t3,0(t0)
    addi t3,t3,1
    sd t3,0(t0)
    ##affichage
    mv a0,t3
    call print_int
    call newline
    ###fin affichage

    addi t0,t0,8
    addi t1,t1,1
    j loop

end:
##### FIN CODE DE CAESAR
    ## fin du code fonctionnel
    ld      ra,8(sp)
    addi    sp,sp,16
    ret





