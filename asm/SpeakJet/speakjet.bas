32 REM -15616 = C300 ACIA
33 REM -15615 = C301 ADDRESS TO CHECK IF SERIAL PORT CLEAR
34 REM -15614 = C302 SET PARITY
35 REM -15613 = C303 BAUD RATE SETTING 1E=9600 1F=19200
40 POKE -15613,30: REM 30=1E FOR 9600 BAUD 8 BIT
50 POKE -15614,11: REM SET FOR NO PARITY
60 DIM A(50)
61 REM SET SPEED
62 R=-15616:B=-15615:POKE A,21
63 X= PEEK (B): IF X#16 THEN 63
64 REM NOW SET SPEED, DEFAULT IS 114
65 POKE R,110
66 X= PEEK (B): IF X#16 THEN 66
70 A(1)=183
71 A(2)=7
72 A(3)=159
73 A(4)=146
74 A(5)=164
75 A(6)=2
76 A(7)=189:A(8)=8:A(9)=132:A(10)=8:A(11)=146
77 A(12)=6: REM 90MS PAUSE
78 A(13)=147:A(14)=8:A(15)=128
79 A(16)=6: REM PAUSE BEFORE PLAY
80 A(17)=199:A(18)=7:A(19)=145:A(20)=131:A(21)=154
90 A(22)=6: REM PAUSE BEFORE A
92 A(23)=154:A(24)=128:A(25)=6
94 REM GAME
95 A(26)=8:A(27)=178:A(28)=154:A(29)=140
96 A(30)=211:A(31)=212
97 A(32)=2
98 A(33)=148
99 A(34)=8
100 A(35)=131
101 A(36)=198
102 A(37)=8
103 A(38)=145
104 A(39)=194: REM K
105 A(40)=8
106 A(41)=136
107 A(42)=2: REM PAUSE BEFORE 'ONE
108 A(43)=147
109 A(44)=14:A(45)=135
110 A(46)=8:A(47)=141
111 A(48)=0
112 I=1
120 S=A(I): IF S=0 THEN 9999
130 POKE R,S
140 X= PEEK (-15615): IF X#16 THEN 140
150 I=I+1: GOTO 120
9999 END