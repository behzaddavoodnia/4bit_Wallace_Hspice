**************  AND2  ************************
************************************************
.OPTION ACCURATE

.SUBCKT   AND2  A_IN  B_IN  OUT  VDD
X1		OUT1	A_IN	 B_IN 	VDD	NAND
X2		OUT	OUT1	 VDD  	NOT

*******************  SOURCE *******************


**************************************************
******************  NAND  ************************
.SUBCKT		NAND 	OUT	IN1	IN2	VDD
M1		OUT	IN1	VDD	VDD	PCH	0.35U	 3U
M2		OUT	IN2	VDD	VDD	PCH	0.35U	 3U
M3		OUT	IN1	MD1	0	NCH	0.35U	 2U
M4		MD1	IN2	0	0	NCH	0.35U	 2U
.EOM


*****************  NOT  ****************************
.SUBCKT		NOT	OUT	IN	VDD
M1		OUT	IN	VDD	VDD	PCH	0.35U 	3U
M2		OUT	IN	0	0	NCH	0.35U 	1U
.EOM
******************************************************
.EOM
