10 REM SHOW TIME FROM INTERRUPT ROUTINE.
20 REM NEED TO RUN EXP5 BEFORE RUNNING THIS.
30 H = PEEK(1024)
40 M = PEEK(1025)
50 S = PEEK(1026)
60 PRINT H;":";
70 IF M < 10 THEN PRINT "0";M;":";
80 IF M >= 10 THEN PRINT M;":";
90 IF S < 10 THEN PRINT "0";S
100 IF S >= 10 THEN PRINT S
110 IF S = PEEK(1026) THEN GOTO 110
120 GOTO 20
130 END
