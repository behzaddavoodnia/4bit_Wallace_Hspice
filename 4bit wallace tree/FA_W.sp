********* Full Adder ************
.SUBCKT ADDER A_IN B_IN C_IN SUM COUT VDD

X10 A_IN B_IN C_IN SUM1 COUT1  VDD ADDER1
X20 MD1 SUM1 VDD NOT
X30 SUM MD1 VDD NOT
X40 MD2 COUT1 VDD NOT
X50 COUT MD2 VDD NOT
******************************************************* 

.SUBCKT		NOT	OUT	IN	VDD
M1		OUT	IN	VDD	VDD	PCH	0.35U	  3U
M2		OUT	IN	 0	0	NCH	0.35U	  1U
.EOM


*********************************************************
.SUBCKT  ADDER1 A_IN1  B_IN1 C_IN1 SUM1 COUT1 VDD
X1   1  A_IN1   VDD  NOT
X2   3  C_IN1   VDD  NOT
**************************************************************
M1  1  B_IN1  2  2  NCH	0.35U	  1U
M2  B_IN1  2  COUT1 COUT1    PCH 	0.35U	  3U
M3  C_IN1  2  COUT1 COUT1    NCH   0.35U  1U
M4  2  B_IN1  A_IN1  A_IN1   PCH 	0.35U	  3U
M5  3   2   SUM1   SUM1       NCH   0.35U  1U
M6  C_IN1   2  SUM1  0    PCH 	0.35U	  3U
*********************  NOT **********************
.SUBCKT		NOT	OUT	IN	VDD
M1		OUT	IN	VDD	VDD	PCH	0.35U	  3U
M2		OUT	IN	 0	0	NCH	0.35U	  1U
.EOM
*****************************************************
.EOM
******************************************************
.EOM