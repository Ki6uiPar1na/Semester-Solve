DSCH3
VERSION 31/05/2024 21:23:49
BB(-39,-39,124,191)
SYM  #and3
BB(80,140,115,170)
TITLE 95 155  #&
MODEL 403
PROP                                                                                                                                    
REC(80,140,0,0,P)
VIS 0
PIN(80,145,0.000,0.000)a
PIN(80,155,0.000,0.000)b
PIN(80,165,0.000,0.000)c
PIN(120,155,0.090,0.070)s
LIG(120,155,110,155)
LIG(80,165,90,165)
LIG(80,155,90,155)
LIG(80,145,90,145)
LIG(90,155,90,170)
LIG(105,166,100,169)
LIG(109,158,105,166)
LIG(90,140,90,155)
LIG(90,140,100,141)
LIG(110,155,109,158)
LIG(109,152,110,155)
LIG(90,170,100,169)
LIG(105,144,109,152)
LIG(100,141,105,144)
VLG   and and3(s,a,b,c);
FSYM
SYM  #button
BB(-39,-39,-31,-30)
TITLE -35 -35  #S0
MODEL 59
PROP                                                                                                                                    
REC(-38,-38,6,6,r)
VIS 1
PIN(-35,-30,0.000,0.000)S0
LIG(-35,-31,-35,-30)
LIG(-39,-39,-31,-39)
LIG(-39,-31,-39,-39)
LIG(-31,-31,-39,-31)
LIG(-31,-39,-31,-31)
LIG(-38,-38,-32,-38)
LIG(-38,-32,-38,-38)
LIG(-32,-32,-38,-32)
LIG(-32,-38,-32,-32)
FSYM
SYM  #button
BB(6,-39,14,-30)
TITLE 10 -35  #S1
MODEL 59
PROP                                                                                                                                    
REC(7,-38,6,6,r)
VIS 1
PIN(10,-30,0.000,0.000)S1
LIG(10,-31,10,-30)
LIG(6,-39,14,-39)
LIG(6,-31,6,-39)
LIG(14,-31,6,-31)
LIG(14,-39,14,-31)
LIG(7,-38,13,-38)
LIG(7,-32,7,-38)
LIG(13,-32,7,-32)
LIG(13,-38,13,-32)
FSYM
SYM  #inv
BB(-25,-30,-5,5)
TITLE -15 -15  #~
MODEL 101
PROP                                                                                                                                    
REC(-20,-25,0,0, )
VIS 0
PIN(-15,-30,0.000,0.000)in
PIN(-15,5,0.030,0.140)out
LIG(-15,-30,-15,-20)
LIG(-5,-20,-25,-20)
LIG(-5,-20,-15,-5)
LIG(-25,-20,-15,-5)
LIG(-15,-3,-15,-3)
LIG(-15,-1,-15,5)
VLG   not not1(out,in);
FSYM
SYM  #inv
BB(20,-30,40,5)
TITLE 30 -15  #~
MODEL 101
PROP                                                                                                                                    
REC(25,-25,0,0, )
VIS 0
PIN(30,-30,0.000,0.000)in
PIN(30,5,0.030,0.140)out
LIG(30,-30,30,-20)
LIG(40,-20,20,-20)
LIG(40,-20,30,-5)
LIG(20,-20,30,-5)
LIG(30,-3,30,-3)
LIG(30,-1,30,5)
VLG   not not1(out,in);
FSYM
SYM  #and3
BB(80,10,115,40)
TITLE 95 25  #&
MODEL 403
PROP                                                                                                                                    
REC(80,10,0,0,P)
VIS 0
PIN(80,15,0.000,0.000)a
PIN(80,25,0.000,0.000)b
PIN(80,35,0.000,0.000)c
PIN(120,25,0.090,0.070)s
LIG(120,25,110,25)
LIG(80,35,90,35)
LIG(80,25,90,25)
LIG(80,15,90,15)
LIG(90,25,90,40)
LIG(105,36,100,39)
LIG(109,28,105,36)
LIG(90,10,90,25)
LIG(90,10,100,11)
LIG(110,25,109,28)
LIG(109,22,110,25)
LIG(90,40,100,39)
LIG(105,14,109,22)
LIG(100,11,105,14)
VLG   and and3(s,a,b,c);
FSYM
SYM  #and3
BB(80,50,115,80)
TITLE 95 65  #&
MODEL 403
PROP                                                                                                                                    
REC(80,50,0,0,P)
VIS 0
PIN(80,55,0.000,0.000)a
PIN(80,65,0.000,0.000)b
PIN(80,75,0.000,0.000)c
PIN(120,65,0.090,0.070)s
LIG(120,65,110,65)
LIG(80,75,90,75)
LIG(80,65,90,65)
LIG(80,55,90,55)
LIG(90,65,90,80)
LIG(105,76,100,79)
LIG(109,68,105,76)
LIG(90,50,90,65)
LIG(90,50,100,51)
LIG(110,65,109,68)
LIG(109,62,110,65)
LIG(90,80,100,79)
LIG(105,54,109,62)
LIG(100,51,105,54)
VLG   and and3(s,a,b,c);
FSYM
SYM  #and3
BB(80,95,115,125)
TITLE 95 110  #&
MODEL 403
PROP                                                                                                                                    
REC(80,95,0,0,P)
VIS 0
PIN(80,100,0.000,0.000)a
PIN(80,110,0.000,0.000)b
PIN(80,120,0.000,0.000)c
PIN(120,110,0.090,0.070)s
LIG(120,110,110,110)
LIG(80,120,90,120)
LIG(80,110,90,110)
LIG(80,100,90,100)
LIG(90,110,90,125)
LIG(105,121,100,124)
LIG(109,113,105,121)
LIG(90,95,90,110)
LIG(90,95,100,96)
LIG(110,110,109,113)
LIG(109,107,110,110)
LIG(90,125,100,124)
LIG(105,99,109,107)
LIG(100,96,105,99)
VLG   and and3(s,a,b,c);
FSYM
SYM  #button
BB(66,-39,74,-30)
TITLE 70 -35  #E
MODEL 59
PROP                                                                                                                                    
REC(67,-38,6,6,r)
VIS 1
PIN(70,-30,0.000,0.000)E
LIG(70,-31,70,-30)
LIG(66,-39,74,-39)
LIG(66,-31,66,-39)
LIG(74,-31,66,-31)
LIG(74,-39,74,-31)
LIG(67,-38,73,-38)
LIG(67,-32,67,-38)
LIG(73,-32,67,-32)
LIG(73,-38,73,-32)
FSYM
SYM  #light
BB(118,10,124,24)
TITLE 120 24  #light1
MODEL 49
PROP                                                                                                                                    
REC(119,11,4,4,r)
VIS 1
PIN(120,25,0.000,0.000)out1
LIG(123,16,123,11)
LIG(123,11,122,10)
LIG(119,11,119,16)
LIG(122,21,122,18)
LIG(121,21,124,21)
LIG(121,23,123,21)
LIG(122,23,124,21)
LIG(118,18,124,18)
LIG(120,18,120,25)
LIG(118,16,118,18)
LIG(124,16,118,16)
LIG(124,18,124,16)
LIG(120,10,119,11)
LIG(122,10,120,10)
FSYM
SYM  #light
BB(118,50,124,64)
TITLE 120 64  #light1
MODEL 49
PROP                                                                                                                                    
REC(119,51,4,4,r)
VIS 1
PIN(120,65,0.000,0.000)out1
LIG(123,56,123,51)
LIG(123,51,122,50)
LIG(119,51,119,56)
LIG(122,61,122,58)
LIG(121,61,124,61)
LIG(121,63,123,61)
LIG(122,63,124,61)
LIG(118,58,124,58)
LIG(120,58,120,65)
LIG(118,56,118,58)
LIG(124,56,118,56)
LIG(124,58,124,56)
LIG(120,50,119,51)
LIG(122,50,120,50)
FSYM
SYM  #light
BB(118,140,124,154)
TITLE 120 154  #light1
MODEL 49
PROP                                                                                                                                    
REC(119,141,4,4,r)
VIS 1
PIN(120,155,0.000,0.000)out1
LIG(123,146,123,141)
LIG(123,141,122,140)
LIG(119,141,119,146)
LIG(122,151,122,148)
LIG(121,151,124,151)
LIG(121,153,123,151)
LIG(122,153,124,151)
LIG(118,148,124,148)
LIG(120,148,120,155)
LIG(118,146,118,148)
LIG(124,146,118,146)
LIG(124,148,124,146)
LIG(120,140,119,141)
LIG(122,140,120,140)
FSYM
SYM  #light
BB(118,95,124,109)
TITLE 120 109  #light1
MODEL 49
PROP                                                                                                                                    
REC(119,96,4,4,r)
VIS 1
PIN(120,110,0.000,0.000)out1
LIG(123,101,123,96)
LIG(123,96,122,95)
LIG(119,96,119,101)
LIG(122,106,122,103)
LIG(121,106,124,106)
LIG(121,108,123,106)
LIG(122,108,124,106)
LIG(118,103,124,103)
LIG(120,103,120,110)
LIG(118,101,118,103)
LIG(124,101,118,101)
LIG(124,103,124,101)
LIG(120,95,119,96)
LIG(122,95,120,95)
FSYM
CNC(70 120)
CNC(30 100)
CNC(-15 65)
CNC(30 15)
CNC(-15 25)
CNC(10 55)
CNC(-35 110)
CNC(10 145)
CNC(-35 155)
CNC(70 35)
CNC(70 75)
LIG(-15,5,-15,25)
LIG(-35,-30,-35,110)
LIG(10,-30,10,55)
LIG(30,5,30,15)
LIG(10,-30,30,-30)
LIG(-35,-30,-15,-30)
LIG(70,120,70,75)
LIG(70,75,70,35)
LIG(30,100,30,175)
LIG(30,100,80,100)
LIG(-15,65,-15,165)
LIG(-15,65,80,65)
LIG(10,55,10,145)
LIG(30,15,80,15)
LIG(30,15,30,100)
LIG(-15,25,80,25)
LIG(-15,25,-15,65)
LIG(10,55,80,55)
LIG(-35,110,80,110)
LIG(-35,110,-35,155)
LIG(10,145,80,145)
LIG(10,145,10,170)
LIG(-35,155,80,155)
LIG(-35,155,-35,165)
LIG(80,35,70,35)
LIG(80,75,70,75)
LIG(80,120,70,120)
LIG(80,165,70,165)
LIG(70,165,70,120)
LIG(70,35,70,-30)
TEXT -9 181  #1 to 4 DMUX with BASIC Gate
FFIG G:\dsch\dsch\Lab Exam\2 to 4 DEMUX with Basic Gate.sch
