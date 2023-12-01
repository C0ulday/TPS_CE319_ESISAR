# Code de César en RISCV
# CE313, binôme : COULIBALY, WEETS

.section .text
.globl main

main:
    addi sp,sp,-16
    sd ra,8(sp)
##### CODE DE CAESAR
    la a0,machaine
    mv t3,a0 # contient l'adresse de début. On pourra le modifier sans perdre l'adresse de debut
    
loop:	
	lb t5, 0(t3) # caractère courant : on load dans t5 la valeur à l'adresse consideree
    beq t5,zero,end #si chaine nulle/chaine finie on met fin au programme sinon on continue

    addi t5,t5,4 # je "code " le caractere courant en le décalant (en ASCII)
    sb t5 , 0(t3) # on modifie la lettre par son codage
    addi t3, t3,1 # incrément de l'adresse
    j loop 

end:
    call println_string # affiche la chaine modifiée, a0 contient l'adresse de debut de machaine
    call newline

##### FIN CODE DE CAESAR
    ## fin du code fonctionnel
    ld      ra,8(sp)
    addi    sp,sp,16
    ret

##### DONNEES
.section .data
machaine:
	.string "Hello world!"



