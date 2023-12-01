	.text
	.globl main
main: 	 
	# ce programme print le max puis le min
	
	addi	sp,sp,-16 #stack pointer remonte d'oùu il est  de 4 instructions
	sd	ra,8(sp) # stocke dans ra sp + 2 instructions en avant (instructions de 64bits)
## Your assembly code there
	la 	t3, mydata # load reading address
	ld 	t4,  0(t3) # first op of minmax
	ld 	t5,  8(t3) # second op of minmax
	la 	t6, max # load writing adress
	bge t4, t5, fst_is_max
	mv 	a0, t5
	mv  a1, t4
	j 	end
fst_is_max:
	mv 	a0, t4
	mv 	a1, t5 #du coup deuxieme op cad min
end:
	sd 	a0, 0(t6) # write result
	call 	print_int
	call	newline

	mv a0, a1
	sd 	a0, 0(t6) # write result
	call 	print_int
	call	newline
	
## End of user assembly code
	ld	ra,8(sp)
	addi	sp,sp,16
	ret

# Data comes here
	.section	.data
mydata:
	.dword 7 #premier nombre sur 64 bits
	.dword 42 #dexuieme nombre sur 64 bits
max:
	.dword 0
