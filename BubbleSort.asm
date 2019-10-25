inicio:		movi 1,1
		movi 2,32768
		movi 3,32767

loop:		beq 0,1,fim
		movi 1,0
		movi 4,6

compara:	lw 6,4,vetor
		addi 4,4,-1
		lw 5,4,vetor
		nand 7,6,6
		addi 7,7,1
		add 7,7,5
		nand 7,7,2
		beq 3,7,checa

troca:		lw 5,4,vetor
		sw 6,4,vetor
		addi 4,4,1
		sw 5,4,vetor
		addi 4,4,-1
		movi 1,1

checa:		beq 0,4,loop
		beq 0,0,compara

fim:		movi 7,0
		lw 1,7,vetor
		movi 7,1
		lw 2,7,vetor
		movi 7,2
		lw 3,7,vetor
		movi 7,3
		lw 4,7,vetor
		movi 7,4
		lw 5,7,vetor
		movi 7,5
		lw 6,7,vetor
		movi 7,6
		lw 7,7,vetor
		halt

vetor:		.fill 3
		.fill 6
		.fill 2
		.fill 4
		.fill 1
		.fill 7
		.fill 5