DSCH3
VERSION 31/05/2024 21:36:05
BB(-39,-74,149,145)
SYM  #inv
BB(-20,-60,0,-25)
TITLE -10 -45  #~
MODEL 101
PROP                                                                                                                                    
REC(-35,-50,0,0, )
VIS 0
PIN(-10,-60,0.000,0.000)in
PIN(-10,-25,0.030,0.140)out
LIG(-10,-60,-10,-50)
LIG(0,-50,-20,-50)
LIG(0,-50,-10,-35)
LIG(-20,-50,-10,-35)
LIG(-10,-33,-10,-33)
LIG(-10,-31,-10,-25)
VLG    not not1(out,in);
FSYM
SYM  #light
BB(143,100,149,114)
TITLE 145 114  #light4
MODEL 49
PROP                                                                                                                                    
REC(144,101,4,4,r)
VIS 1
PIN(145,115,0.000,0.000)out4
LIG(148,106,148,101)
LIG(148,101,147,100)
LIG(144,101,144,106)
LIG(147,111,147,108)
LIG(146,111,149,111)
LIG(146,113,148,111)
LIG(147,113,149,111)
LIG(143,108,149,108)
LIG(145,108,145,115)
LIG(143,106,143,108)
LIG(149,106,143,106)
LIG(149,108,149,106)
LIG(145,100,144,101)
LIG(147,100,145,100)
FSYM
SYM  #button
BB(11,-74,19,-65)
TITLE 15 -70  #button4
MODEL 59
PROP                                                                                                                                    
REC(12,-73,6,6,r)
VIS 1
PIN(15,-65,0.000,0.000)in4
LIG(15,-66,15,-65)
LIG(11,-74,19,-74)
LIG(11,-66,11,-74)
LIG(19,-66,11,-66)
LIG(19,-74,19,-66)
LIG(12,-73,18,-73)
LIG(12,-67,12,-73)
LIG(18,-67,12,-67)
LIG(18,-73,18,-67)
FSYM
SYM  #button
BB(-39,-74,-31,-65)
TITLE -35 -70  #button3
MODEL 59
PROP                                                                                                                                    
REC(-38,-73,6,6,r)
VIS 1
PIN(-35,-65,0.000,0.000)in3
LIG(-35,-66,-35,-65)
LIG(-39,-74,-31,-74)
LIG(-39,-66,-39,-74)
LIG(-31,-66,-39,-66)
LIG(-31,-74,-31,-66)
LIG(-38,-73,-32,-73)
LIG(-38,-67,-38,-73)
LIG(-32,-67,-38,-67)
LIG(-32,-73,-32,-67)
FSYM
SYM  #and3
BB(105,100,140,130)
TITLE 120 115  #&
MODEL 403
PROP                                                                                                                                    
REC(105,100,0,0,P)
VIS 0
PIN(105,105,0.000,0.000)a
PIN(105,115,0.000,0.000)b
PIN(105,125,0.000,0.000)c
PIN(145,115,0.090,0.070)s
LIG(145,115,135,115)
LIG(105,125,115,125)
LIG(105,115,115,115)
LIG(105,105,115,105)
LIG(115,115,115,130)
LIG(130,126,125,129)
LIG(134,118,130,126)
LIG(115,100,115,115)
LIG(115,100,125,101)
LIG(135,115,134,118)
LIG(134,112,135,115)
LIG(115,130,125,129)
LIG(130,104,134,112)
LIG(125,101,130,104)
VLG    and and3(s,a,b,c);
FSYM
SYM  #and3
BB(105,-45,140,-15)
TITLE 120 -30  #&
MODEL 403
PROP                                                                                                                                    
REC(105,-45,0,0,P)
VIS 0
PIN(105,-40,0.000,0.000)a
PIN(105,-30,0.000,0.000)b
PIN(105,-20,0.000,0.000)c
PIN(145,-30,0.090,0.070)s
LIG(145,-30,135,-30)
LIG(105,-20,115,-20)
LIG(105,-30,115,-30)
LIG(105,-40,115,-40)
LIG(115,-30,115,-15)
LIG(130,-19,125,-16)
LIG(134,-27,130,-19)
LIG(115,-45,115,-30)
LIG(115,-45,125,-44)
LIG(135,-30,134,-27)
LIG(134,-33,135,-30)
LIG(115,-15,125,-16)
LIG(130,-41,134,-33)
LIG(125,-44,130,-41)
VLG    and and3(s,a,b,c);
FSYM
SYM  #and3
BB(105,5,140,35)
TITLE 120 20  #&
MODEL 403
PROP                                                                                                                                    
REC(105,5,0,0,P)
VIS 0
PIN(105,10,0.000,0.000)a
PIN(105,20,0.000,0.000)b
PIN(105,30,0.000,0.000)c
PIN(145,20,0.090,0.070)s
LIG(145,20,135,20)
LIG(105,30,115,30)
LIG(105,20,115,20)
LIG(105,10,115,10)
LIG(115,20,115,35)
LIG(130,31,125,34)
LIG(134,23,130,31)
LIG(115,5,115,20)
LIG(115,5,125,6)
LIG(135,20,134,23)
LIG(134,17,135,20)
LIG(115,35,125,34)
LIG(130,9,134,17)
LIG(125,6,130,9)
VLG    and and3(s,a,b,c);
FSYM
SYM  #inv
BB(25,-60,45,-25)
TITLE 35 -45  #~
MODEL 101
PROP                                                                                                                                    
REC(-10,-90,0,0, )
VIS 0
PIN(35,-60,0.000,0.000)in
PIN(35,-25,0.030,0.140)out
LIG(35,-60,35,-50)
LIG(45,-50,25,-50)
LIG(45,-50,35,-35)
LIG(25,-50,35,-35)
LIG(35,-33,35,-33)
LIG(35,-31,35,-25)
VLG    not not1(out,in);
FSYM
SYM  #and3
BB(105,50,140,80)
TITLE 120 65  #&
MODEL 403
PROP                                                                                                                                    
REC(105,50,0,0,P)
VIS 0
PIN(105,55,0.000,0.000)a
PIN(105,65,0.000,0.000)b
PIN(105,75,0.000,0.000)c
PIN(145,65,0.090,0.070)s
LIG(145,65,135,65)
LIG(105,75,115,75)
LIG(105,65,115,65)
LIG(105,55,115,55)
LIG(115,65,115,80)
LIG(130,76,125,79)
LIG(134,68,130,76)
LIG(115,50,115,65)
LIG(115,50,125,51)
LIG(135,65,134,68)
LIG(134,62,135,65)
LIG(115,80,125,79)
LIG(130,54,134,62)
LIG(125,51,130,54)
VLG    and and3(s,a,b,c);
FSYM
SYM  #light
BB(143,-45,149,-31)
TITLE 145 -31  #light1
MODEL 49
PROP                                                                                                                                    
REC(144,-44,4,4,r)
VIS 1
PIN(145,-30,0.000,0.000)out1
LIG(148,-39,148,-44)
LIG(148,-44,147,-45)
LIG(144,-44,144,-39)
LIG(147,-34,147,-37)
LIG(146,-34,149,-34)
LIG(146,-32,148,-34)
LIG(147,-32,149,-34)
LIG(143,-37,149,-37)
LIG(145,-37,145,-30)
LIG(143,-39,143,-37)
LIG(149,-39,143,-39)
LIG(149,-37,149,-39)
LIG(145,-45,144,-44)
LIG(147,-45,145,-45)
FSYM
SYM  #light
BB(143,5,149,19)
TITLE 145 19  #light2
MODEL 49
PROP                                                                                                                                    
REC(144,6,4,4,r)
VIS 1
PIN(145,20,0.000,0.000)out2
LIG(148,11,148,6)
LIG(148,6,147,5)
LIG(144,6,144,11)
LIG(147,16,147,13)
LIG(146,16,149,16)
LIG(146,18,148,16)
LIG(147,18,149,16)
LIG(143,13,149,13)
LIG(145,13,145,20)
LIG(143,11,143,13)
LIG(149,11,143,11)
LIG(149,13,149,11)
LIG(145,5,144,6)
LIG(147,5,145,5)
FSYM
SYM  #light
BB(143,50,149,64)
TITLE 145 64  #light3
MODEL 49
PROP                                                                                                                                    
REC(144,51,4,4,r)
VIS 1
PIN(145,65,0.000,0.000)out3
LIG(148,56,148,51)
LIG(148,51,147,50)
LIG(144,51,144,56)
LIG(147,61,147,58)
LIG(146,61,149,61)
LIG(146,63,148,61)
LIG(147,63,149,61)
LIG(143,58,149,58)
LIG(145,58,145,65)
LIG(143,56,143,58)
LIG(149,56,143,56)
LIG(149,58,149,56)
LIG(145,50,144,51)
LIG(147,50,145,50)
FSYM
SYM  #button
BB(86,-74,94,-65)
TITLE 90 -70  #button4
MODEL 59
PROP                                                                                                                                    
REC(87,-73,6,6,r)
VIS 1
PIN(90,-65,0.000,0.000)in4
LIG(90,-66,90,-65)
LIG(86,-74,94,-74)
LIG(86,-66,86,-74)
LIG(94,-66,86,-66)
LIG(94,-74,94,-66)
LIG(87,-73,93,-73)
LIG(87,-67,87,-73)
LIG(93,-67,87,-67)
LIG(93,-73,93,-67)
FSYM
CNC(-35 -60)
CNC(15 -60)
CNC(35 -20)
CNC(-10 -15)
CNC(-10 10)
CNC(15 20)
CNC(-35 55)
CNC(35 65)
CNC(15 105)
CNC(15 105)
CNC(-35 55)
CNC(35 65)
CNC(15 20)
CNC(-10 10)
CNC(-10 -15)
CNC(35 -20)
CNC(35 -20)
CNC(-10 -15)
CNC(90 -20)
CNC(90 30)
CNC(90 75)
LIG(-35,-65,-35,-60)
LIG(-35,-60,-10,-60)
LIG(-35,-60,-35,55)
LIG(15,-65,15,-60)
LIG(15,-60,35,-60)
LIG(15,-60,15,20)
LIG(-10,-25,-10,-15)
LIG(35,-25,35,-20)
LIG(35,-20,70,-20)
LIG(35,-20,35,65)
LIG(70,-20,70,-40)
LIG(70,-40,105,-40)
LIG(-10,-15,75,-15)
LIG(-10,-15,-10,10)
LIG(75,-15,75,-30)
LIG(75,-30,105,-30)
LIG(-10,10,105,10)
LIG(-10,10,-10,115)
LIG(15,20,105,20)
LIG(15,20,15,105)
LIG(-35,55,105,55)
LIG(-35,55,-35,125)
LIG(35,65,105,65)
LIG(35,65,35,115)
LIG(15,105,105,105)
LIG(15,105,15,115)
LIG(90,75,90,125)
LIG(-35,125,50,125)
LIG(50,125,50,115)
LIG(50,115,110,115)
LIG(105,-20,90,-20)
LIG(105,30,90,30)
LIG(105,75,90,75)
LIG(90,125,105,125)
LIG(90,-65,90,-20)
LIG(90,-20,90,30)
LIG(90,30,90,75)
TEXT 30 135  #Fig: Decoder Circuit
FFIG G:\dsch\dsch\Lab Exam\Decoder.sch