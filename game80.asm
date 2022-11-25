      	JP   L8606
      	JP   L8611
L8606:	LD   HL,DA00
      	ADC  A,(HL)
      	LD   (L8D7E),HL
      	LD   (L8D50),HL
      	LD   (HL),DA
      	RST  38H
      	LD   HL,9FFF
      	LD   (L8D58),HL
      	LD   SP,00DA
      	ADC  A,(HL)
      	LD   HL,L8DC4
      	LD   (L8D88),HL
      	JP   C,L8D21
L8626:	ADC  A,H
      	CALL L8785
      	CALL DAA5
      	ADC  A,D
      	JP   NC,L8672
      	LD   (L8D42),HL
      	CALL 08DA
      	ADC  A,B
      	JP   Z,L8617
      	CALL L86B1
      	JP   C,17FA
      	ADD  A,(HL)
      	LD   (L8D42),HL
      	INC  HL
      	INC  HL
      	JP   C,FE7E
      	JR   NZ,-62
      	LD   D,L
      	ADD  A,(HL)
      	CALL DA07
      	ADC  A,B
      	JP   NZ,L865B
      	INC  HL
      	LD   A,(HL)
      	AND  A
      	JP   38DA
L865B:	ADD  A,(HL)
      	NOP 
      	NOP 
      	NOP 
      	CALL L86C6
      	JP   C,38C3
      	ADD  A,(HL)
      	LD   HL,(L8D42)
      	LD   (DA72),HL
      	ADC  A,L
      	CALL L86B7
      	JP   M,L8617
      	LD   C,DA
      	LD   (HL),D
      	CALL L8764
      	JP   Z,L8635
      	JP   3EDA
      	ADD  A,(HL)
L8680:	LD   (L8D74),HL
L8683:	EX   DE,HL
      	LD   (DA4A),HL
      	ADC  A,L
      	EX   DE,HL
      	LD   A,(HL)
      	CP   2F
      	JP   NZ,L86D4
      	JP   C,B1CD
      	LD   H,(HL)
      	CALL L8C83
      	LD   A,(HL)
      	AND  A
      	JP   C,0000
      	NOP 
      	JP   M,L8617
      	CALL DA94
      	ADD  A,(HL)
      	JP   L8683
      	LD   (L8D42),HL
L86A9:	LD   D,(HL)
      	JP   C,5E23
      	PUSH HL
      	LD   C,05
      	CALL L8B9C
      	JP   C,23E1
      	JP   L8785
      	LD   HL,(L8D42)
      	JP   C,2323
      	LD   A,(HL)
      	OR   A
      	JP   NZ,L86A9
      	INC  HL
      	JP   C,2AC9
      	LD   A,(HL)
      	ADC  A,L
      	LD   (L8D42),HL
L86CD:	LD   A,(HL)
      	JP   C,F8A7
      	EX   DE,HL
      	LD   HL,(L8D4A)
      	EX   DE,HL
      	INC  HL
      	JP   C,937E
      	DEC  HL
      	LD   A,(HL)
      	SBC  D
      	RET  NC
      	CALL DAA5
      	ADD  A,(HL)
      	JP   L86B4
      	NOP 
      	NOP 
      	NOP 
      	NOP 
      	JP   C,0000
      	NOP 
      	NOP 
      	LD   HL,(L8D4A)
      	LD   A,D
      	JP   C,FAA7
      	RLA 
      	ADD  A,(HL)
      	ADD  A,E
      	JP   Z,L8680
      	JP   C,502A
      	ADC  A,L
      	LD   A,(HL)
      	INC  A
      	JP   NZ,L8617
      	JP   C,B1CD
      	ADD  A,(HL)
      	JP   M,L8713
      	LD   B,(HL)
      	INC  HL
      	JP   C,606E
      	LD   C,4A
      	CALL L8764
      	JP   NZ,13DA
      	ADD  A,A
      	CALL L86A5
      	EX   DE,HL
L871D:	LD   HL,(DA42)
      	ADC  A,L
      	EX   DE,HL
      	LD   C,50
      	CALL L8764
      	LD   A,(HL)
      	JP   C,2312
      	INC  DE
      	JP   NZ,L8702
      	EX   DE,HL
      	DEC  HL
      	JP   C,5022
      	ADC  A,L
      	LD   HL,(L8D74)
      	LD   E,03
      	JP   C,B77E
      	JP   Z,L875E
      	INC  E
      	INC  HL
      	LD   A,(HL)
      	JP   C,E519
      	EX   DE,HL
      	LD   HL,(L8D56)
      	CALL DA03
      	ADD  A,A
      	JP   NZ,L871D
      	LD   D,A
      	LD   HL,(L8D50)
      	JP   C,D28A
      	RLA 
      	ADD  A,(HL)
      	LD   HL,(L8D50)
      	EX   DE,HL
L875E:	JP   C,22E1
      	LD   D,B
      	ADC  A,L
      	EX   DE,HL
L8764:	INC  HL
      	DEC  HL
      	LD   A,(HL)
      	JP   C,1B12
      	LD   C,42
      	CALL L8764
      	JP   NZ,3EDA
      	ADD  A,A
      	EX   DE,HL
      	LD   HL,(L8D4A)
      	EX   DE,HL
      	LD   (HL),D
      	JP   C,7323
      	EX   DE,HL
      	LD   HL,(L8D74)
      	LD   A,(HL)
      	INC  HL
      	JP   C,1213
L8785:	OR   A
      	JP   NZ,L8756
      	LD   SP,DA00
      	ADC  A,(HL)
      	JP   L8626
      	LD   B,8D
      	LD   A,(BC)
L8793:	CP   L
      	JP   C,03C0
      	LD   A,(BC)
      	CP   H
      	RET 
      	LD   HL,L8D87
      	JP   C,0036
      	PUSH HL
      	LD   HL,000A
      	CALL DA63
      	ADC  A,D
      	LD   A,L
      	ADD  A,30
      	POP  HL
      	DEC  HL
      	LD   (HL),A
      	LD   A,E
      	JP   C,C2B2
      	LD   (HL),D
      	ADD  A,A
      	RET 
      	XOR  A
      	LD   B,A
      	LD   A,(HL)
      	JP   C,B823
      	JP   Z,L8793
      	CALL L8C99
      	JP   C,L87C3
      	ADD  A,A
      	CALL L8C9C
      	RET  NC
      	CALL B6DA
      	ADC  A,H
      	CP   21
      	JP   Z,L8617
      	CP   DA
      	JR   NZ,-64
      	JP   L8CB6
      	CP   20
      	JP   Z,07DA
      	ADC  A,B
      	LD   D,A
      	SUB  A
      	LD   (L8D4A),A
      	LD   (4BDA),A
      	ADC  A,L
      	INC  HL
      	LD   A,(HL)
      	DEC  HL
      	LD   E,A
      	AND  DF
      	JP   C,C27A
      	JP   C,FE67
      	LD   E,L
      	JP   NZ,DAC7
      	ADD  A,A
      	CALL L8AF9
      	JP   L8803
      	CP   DA
      	LD   B,B
      	JP   NZ,L87DA
      	INC  HL
      	LD   (L8D46),HL
      	JP   C,1197
      	NOP 
      	NOP 
L880E:	CALL L880E
      	JP   03DA
      	ADC  A,B
      	CP   22
      	JP   NZ,L87E6
      	INC  HL
      	JP   C,L86CD
      	ADD  A,A
      	JP   L8808
      	CP   2F
      	JP   C,F1C2
      	ADD  A,A
      	CALL L8C83
L882B:	JP   DA07
      	ADC  A,B
      	LD   (L8D72),HL
      	CALL L882B
      	CALL C8DA
      	ADC  A,D
      	CALL L8793
      	LD   HL,(L8D4A)
      	JP   C,B57C
      	RET  NZ
      	LD   HL,(L8D46)
      	LD   B,23
      	JP   C,A77E
      	JP   NZ,L87A5
      	RET 
      	EX   DE,HL
      	LD   (6ADA),HL
L8853:	ADC  A,L
      	EX   DE,HL
      	CALL L8823
      	LD   HL,DA6A
      	ADC  A,L
      	JP   L882C
      	PUSH DE
      	INC  HL
      	CALL DA37
      	ADC  A,B
      	CALL L880E
      	POP  DE
      	RET 
      	LD   A,3D
      	JP   C,F3C3
      	ADC  A,E
      	LD   A,(HL)
      	INC  HL
      	AND  DF
      	JP   Z,26DA
      	ADC  A,B
L8878:	CP   1D
      	JP   NZ,L882B
      	CALL 59DA
      	ADC  A,B
      	LD   A,(HL)
      	AND  DF
L8884:	JP   Z,L8853
      	JP   C,09FE
      	JP   Z,L8857
      	CP   0C
      	JP   Z,1CDA
      	ADC  A,B
      	CALL L897B
      	LD   HL,(L8D5A)
      	JP   C,3AC3
      	ADC  A,B
      	LD   (L8D46),HL
      	RET 
      	INC  HL
      	JP   C,CDC9
      	XOR  B
      	ADC  A,D
      	RET  NC
      	CP   2D
      	JP   NZ,69DA
      	ADC  A,B
      	INC  HL
      	CALL L8859
      	JP   DA5B
      	ADC  A,D
      	CP   2B
      	JP   NZ,L8878
      	INC  HL
      	CALL 59DA
      	ADC  A,B
      	LD   A,D
      	AND  A
      	JP   M,L8A5B
      	RET 
      	JP   C,23FE
      	JP   NZ,L8886
      	INC  HL
      	CALL DA59
      	ADC  A,B
      	LD   A,D
      	AND  A
      	JP   L899D
      	CP   25
      	JP   C,95C2
      	ADC  A,B
      	INC  HL
      	CALL L8859
      	EX   DE,HL
      	JP   C,4E2A
      	ADC  A,L
      	EX   DE,HL
      	RET 
      	CP   27
      	JP   NZ,BCDA
      	ADC  A,B
      	INC  HL
      	CALL L8859
      	PUSH HL
      	PUSH DE
      	JP   C,522A
      	ADC  A,L
      	LD   DE,3D09
      	CALL DA0F
      	ADC  A,D
      	INC  DE
L88FF:	EX   DE,HL
      	LD   (L8D52),HL
      	EX   DE,HL
      	POP  HL
      	JP   C,165A
      	NOP 
      	CALL L8A0F
      	LD   E,D
      	LD   D,DA
      	NOP 
      	POP  HL
      	INC  DE
      	RET 
      	CP   22
      	JP   NZ,DAC8
      	CP   24
      	JP   NZ,L88FF
      	LD   D,00
      	CALL DADA
      	ADC  A,B
      	JP   C,L88F0
      	CALL EE96
      	JP   C,C95F
      	INC  HL
      	RET  P
L892E:	ADC  A,B
      	CALL L8C96
      	JP   C,FE88
L8935:	LD   A,(BC)
      	RET  C
      	SUB  07
      	CP   0A
      	JP   C,EEDA
      	ADC  A,B
      	CP   10
      	RET 
L8942:	CCF 
      	RET 
      	JP   C,CD5F
      	JP   C,D088
      	EX   DE,HL
      	ADD  HL,HL
      	ADD  HL,HL
      	JP   C,2929
L8950:	EX   DE,HL
      	ADD  A,E
      	JP   L88F0
      	CP   DA
      	CCF 
      	JP   NZ,L890E
      	PUSH HL
      	CALL L8C5E
      	JP   C,37CD
      	ADC  A,B
      	POP  HL
      	INC  HL
      	RET 
      	CP   28
      	JP   C,17C2
L896B:	ADC  A,C
      	INC  HL
      	JP   L8837
      	CALL 61DA
      	ADC  A,C
      	CP   3A
      	JP   Z,L8928
      	CALL 42DA
      	ADC  A,C
      	LD   E,(HL)
      	INC  HL
      	LD   D,(HL)
      	JP   L892E
      	JP   C,C98D
      	CALL L8950
      	LD   A,(L8D76)
      	JP   C,5F83
      	LD   A,(L8D77)
      	ADC  A,D
      	LD   D,A
      	JP   74DA
      	ADC  A,C
      	CP   28
L899A:	JP   NZ,L896B
L899D:	CALL 50DA
      	ADC  A,C
      	EX   DE,HL
      	ADD  HL,HL
      	EX   DE,HL
      	JP   L8935
      	JP   C,6BCD
      	ADC  A,C
      	LD   C,(HL)
      	INC  HL
      	LD   H,(HL)
      	LD   L,C
      	LD   (76DA),HL
      	ADC  A,L
      	LD   HL,(L8D70)
      	INC  HL
      	JP   DA37
      	ADC  A,B
      	LD   E,(HL)
      	INC  HL
      	LD   A,(HL)
      	CP   41
      	LD   D,A
      	JP   P,62DA
      	ADC  A,C
      	RET 
      	LD   D,8D
      	LD   A,E
      	AND  3F
      	JP   C,02C6
L89CE:	ADD  A,A
      	LD   E,A
      	LD   (L8D70),HL
      	EX   DE,HL
L89D4:	JP   C,B57C
      	RET 
      	PUSH DE
      	LD   D,(HL)
      	INC  HL
      	LD   E,(HL)
      	PUSH DE
      	JP   C,D67B
      	DEC  A
      	JP   Z,L898A
      	DEC  A
      	JP   NZ,L8BDA
      	ADC  A,C
      	INC  HL
      	CALL L8859
      	LD   (DA5A),HL
      	ADC  A,L
      	EX   DE,HL
      	POP  DE
      	LD   A,D
      	CP   3D
      	JP   NZ,DAAB
      	ADC  A,C
      	POP  DE
      	CALL L8A03
      	JP   NZ,L89CE
      	JP   C,B77B
      	JP   NZ,L89CE
      	LD   DE,0001
      	JP   C,FFF6
      	RET 
      	CP   3C
      	JP   NZ,L89D4
      	JP   C,FE7B
      	DEC  A
      	POP  DE
      	JP   Z,L89C2
      	CP   DA
      	LD   A,C2
      	RET  Z
      	ADC  A,C
L8A21:	CALL L899A
      	JP   EFDA
L8A27:	ADC  A,C
      	CALL L89E6
      	JP   L89EF
      	JP   C,03CD
      	ADC  A,D
      	JP   M,L89A5
      	LD   DE,DA00
      	NOP 
      	AND  00
      	RET 
      	CP   3E
      	JP   NZ,DAF4
      	ADC  A,C
      	LD   A,B
      	CP   3D
L8A45:	POP  DE
      	JP   NZ,L89E6
      	JP   C,C8CD
      	ADC  A,C
      	JP   L89EF
      	CALL DA03
      	ADC  A,D
      	JP   M,L89CE
      	CALL L899D
      	LD   A,E
L8A5B:	JP   C,01EE
      	LD   E,A
      	RET 
      	POP  DE
      	CP   2B
      	JP   NZ,FEDA
      	ADC  A,C
      	EX   DE,HL
      	ADD  HL,DE
      	EX   DE,HL
      	RET 
      	CP   2D
      	JP   C,0AC2
      	ADC  A,D
      	LD   A,E
      	SUB  L
      	RST  08H
      	LD   A,D
      	SBC  H
      	JP   C,C957
      	CP   2A
      	JP   NZ,L8A27
      	PUSH DE
      	JP   C,100E
      	LD   DE,0000
      	EX   (SP),HL
      	CALL DA92
      	ADD  HL,HL
      	DEC  C
      	JP   NZ,L8A15
      	POP  BC
      	RET 
      	CP   DA
      	CPL 
L8A93:	JP   NZ,L8BF3
      	LD   B,00
      	LD   A,H
      	OR   A
L8A9A:	JP   C,3CC2
      	ADC  A,D
      	OR   L
      	JP   NZ,L8A45
      	LD   A,DA
      	CPL 
      	JP   L8BF3
      	JP   P,L8A45
      	INC  B
      	JP   C,CDEB
      	LD   E,E
L8AB0:	ADC  A,D
      	EX   DE,HL
      	LD   A,D
      	OR   A
      	JP   P,4EDA
      	ADC  A,D
      	DEC  B
      	CALL L8A5B
      	CALL DA63
      	ADC  A,D
      	LD   (L8D4E),HL
      	LD   HL,(L8D68)
      	LD   A,DA
      	NOP 
      	CP   B
      	RET  Z
      	LD   A,D
      	CPL 
      	LD   D,A
      	LD   A,E
      	CPL 
      	JP   C,135F
      	RET 
      	LD   C,00
      	INC  C
      	ADD  HL,HL
      	JP   NC,65DA
      	ADC  A,D
      	CALL L8A93
      	PUSH HL
      	LD   HL,DA00
      	NOP 
      	EX   (SP),HL
      	CALL L8A03
      	CCF 
      	JP   C,DA7D
L8AEC:	ADC  A,D
      	EX   DE,HL
      	ADD  HL,DE
      	EX   DE,HL
      	OR   A
      	EX   (SP),HL
      	LD   A,L
L8AF3:	RLA 
      	JP   C,7C6F
      	RLA 
      	LD   H,A
L8AF9:	EX   (SP),HL
      	DEC  C
      	JP   Z,DA8F
      	EX   DE,HL
      	RET 
L8B00:	OR   A
      	LD   A,H
      	RRA 
      	LD   H,A
      	LD   A,L
      	RRA 
      	JP   C,C96F
      	LD   A,(HL)
      	CP   3A
      	SCF 
      	RET  P
      	CP   DA
      	JR   NC,55
      	RET  M
      	CCF 
      	RET 
      	CALL L8C5B
      	JP   C,9ACD
      	ADC  A,D
      	RET  C
      	EX   DE,HL
      	LD   HL,0000
      	JP   C,D61A
      	JR   NC,79
      	LD   B,00
      	ADD  HL,BC
      	LD   B,H
      	JP   C,134D
      	EX   DE,HL
      	CALL L8A9A
      	CCF 
      	RET  NC
      	JP   C,29EB
      	ADD  HL,HL
      	ADD  HL,BC
      	ADD  HL,HL
      	JP   L8AB0
      	JP   C,722A
      	ADC  A,L
      	PUSH DE
      	LD   A,(HL)
      	CP   40
      	JP   NZ,14DA
      	ADC  A,E
      	INC  HL
      	INC  HL
      	LD   E,(HL)
      	CALL L896B
      	JP   C,CDD1
      	INC  BC
L8B52:	ADC  A,E
      	PUSH DE
      	CALL L8B07
      	JP   C,CDE1
L8B5A:	RET  Z
      	ADC  A,C
      	JP   NZ,L8AF3
      	CALL F9DA
      	ADC  A,D
      	LD   B,06
      	LD   HL,L8D88
      	LD   A,(HL)
      	JP   C,7790
      	RET 
      	LD   B,FC
      	JP   L8AEC
      	JP   C,2E00
      	LD   B,(HL)
      	CALL L8B00
      	LD   L,42
      	JP   C,07CD
      	ADC  A,B
      	LD   (HL),E
      	INC  HL
      	LD   (HL),D
      	RET 
      	LD   C,L
      	JP   C,L882A
      	ADC  A,L
      	ADC  A,23
      	LD   D,(HL)
      	INC  HL
      	LD   (L88DA),HL
      	ADC  A,L
      	LD   L,C
      	RET 
      	CP   21
      	JP   NZ,DA3A
      	ADC  A,E
      	POP  DE
      	EX   DE,HL
      	LD   (L8D4A),HL
      	EX   DE,HL
      	CALL 77DA
      	ADC  A,C
      	RET  Z
      	LD   HL,L8D42
      	CALL DA2C
      	ADC  A,E
      	LD   HL,L8D46
      	LD   E,(HL)
      	INC  HL
      	LD   D,(HL)
      	LD   HL,(L88DA)
      	ADC  A,L
      	DEC  HL
      	LD   (HL),D
      	DEC  HL
      	LD   (HL),E
      	LD   (DA88),HL
      	ADC  A,L
      	RET 
      	CP   3B
      	JP   NZ,L884A
      	POP  DE
      	JP   C,77CD
      	ADC  A,C
      	RET  NZ
      	LD   SP,L8E00
      	JP   55DA
      	ADD  A,(HL)
      	CP   3E
      	JP   NZ,L8B52
      	POP  DE
      	JP   C,E9EB
      	CP   2E
L8BDA:	JP   NZ,L8B64
      	POP  DE
      	JP   C,1453
      	DEC  D
      	RET  Z
      	LD   A,20
      	CALL DA99
      	ADC  A,H
      	JP   L8B5A
L8BEC:	CP   26
      	JP   NZ,DA7F
      	ADC  A,E
      	INC  HL
L8BF3:	LD   A,(HL)
      	DEC  HL
      	CP   3D
      	JP   NZ,DA7F
      	ADC  A,E
      	POP  DE
      	CALL L8977
      	RET  NZ
      	LD   HL,(DA7E)
      	ADC  A,L
      	LD   (L8D50),HL
      	LD   (HL),FF
      	RET 
      	CP   DA
      	INC  H
      	JP   NZ,L8B89
      	POP  BC
      	LD   A,E
      	JP   DA99
L8C15:	ADC  A,H
      	CP   3F
      	JP   NZ,L8BC1
      	INC  HL
      	LD   A,(HL)
      	JP   C,FE2B
      	JR   Z,-62
      	DEC  DE
      	ADC  A,H
      	INC  HL
      	CALL 59DA
      	ADC  A,B
      	LD   C,E
      	POP  DE
      	PUSH BC
L8C2C:	CALL L85AF
      	JP   C,CD87
L8C32:	LD   E,C
      	ADC  A,E
      	JP   L8785
      	LD   A,D
      	JP   C,FAB7
      	ADD  A,A
L8C3C:	ADC  A,E
      	JP   L876D
      	CALL 5BDA
      	ADC  A,D
      	CALL L8884
      	DEC  HL
      	LD   (HL),2D
      	JP   C,FEC9
      	DEC  A
L8C4E:	JP   NZ,L8BDB
      	POP  DE
      	EX   DE,HL
      	JP   C,7E22
      	ADC  A,L
      	EX   DE,HL
      	LD   HL,FF00
L8C5B:	LD   (4ADA),HL
L8C5E:	ADC  A,L
      	CALL L86B1
      	LD   (L8D50),HL
      	JP   C,17C3
L8C68:	ADD  A,(HL)
      	LD   HL,(L8D72)
      	CALL DA61
      	ADC  A,C
      	CP   3A
      	JP   NZ,L8BEC
      	CALL DA32
      	ADC  A,C
      	POP  DE
      	LD   (HL),E
      	RET 
      	CALL L8942
      	POP  DE
      	JP   C,03C3
L8C83:	ADC  A,E
      	LD   B,A
      	CALL L8C83
      	LD   A,DA
      	CCF 
      	CALL L8C99
      	LD   A,B
      	CALL L8C99
      	JP   C,203E
      	CALL L8C99
      	LD   HL,(L8D42)
      	JP   C,L8A3A
      	ADC  A,L
      	CP   (HL)
      	JP   NZ,L8C15
L8CA3:	CALL L85DA
      	ADD  A,A
      	JP   L8617
      	CALL L8694
      	JP   C,17C3
      	ADD  A,(HL)
      	CP   3F
      	JP   Z,L8C2C
L8CB6:	JP   C,24FE
      	JP   Z,L8C30
      	POP  DE
      	CALL DAAF
      	ADC  A,E
      	JP   L8785
      	LD   B,D
      	CALL L8C32
      	JP   C,43D1
      	LD   A,B
      	CALL L8C3C
      	LD   A,B
      	AND  DA
      	RRCA
      	JP   L8C42
      	AND  F0
      	RRCA
      	RRCA
      	JP   C,0F0F
      	CP   0A
      	JP   M,L8C49
      	ADD  A,DA
      	RLCA
      	ADD  A,30
      	JP   L8C99
      	CP   7F
      	JP   C,5BCA
      	ADC  A,H
      	INC  HL
      	INC  E
      	LD   A,E
      	CP   4A
      	JP   C,6DC2
      	ADC  A,H
      	CALL L8C83
      	LD   A,3A
      	JP   C,99CD
      	ADC  A,H
      	LD   HL,L8D8B
      	LD   E,02
      	JP   C,102B
      	JP   Z,L8C5B
      	CALL L8C96
      	JP   C,FE77
      	EX   AF,AF'
      	JP   Z,L8C68
      	CP   0A
      	JP   C,6DFA
      	ADC  A,H
      	JP   NZ,L8C4E
      	LD   (HL),00
      	JP   C,L8A21
      	ADC  A,L
      	LD   A,0D
      	CALL L8C99
      	JP   C,0A3E
      	JP   L8C99
      	DEC  C
      	LD   A,(BC)
      	LD   HL,(52DA)
      	LD   B,L
      	LD   B,C
      	LD   B,H
      	LD   E,C
      	NOP 
      	CALL DAB6
      	ADC  A,H
      	JP   L8CA3
L8D42:	LD   A,(7DFE)
      	SUB  DA
      	JR   NZ,63
      	RET 
L8D4A:	LD   (L8D00),A
      	CALL PE,DA21
L8D50:	LD   A,D
      	ADD  A,H
L8D52:	LD   (HL),01
      	INC  HL
      	LD   (HL),00
      	INC  HL
L8D58:	JP   C,E67D
      	JR   NZ,-54
      	ADD  A,(HL)
      	ADC  A,H
      	LD   A,(DAFC)
      	LD   A,L
      	RET 
      	JP   C,00DA

