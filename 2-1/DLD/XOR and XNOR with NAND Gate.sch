DSCH3
VERSION 26/05/2024 18:54:29
BB(-224,-169,239,-10)
SYM  #button
BB(1,-169,9,-160)
TITLE 5 -165  #button1
MODEL 59
PROP                                                                                                                                   
REC(2,-168,6,6,r)
VIS 1
PIN(5,-160,0.000,0.000)in1
LIG(5,-161,5,-160)
LIG(1,-169,9,-169)
LIG(1,-161,1,-169)
LIG(9,-161,1,-161)
LIG(9,-169,9,-161)
LIG(2,-168,8,-168)
LIG(2,-162,2,-168)
LIG(8,-162,2,-162)
LIG(8,-168,8,-162)
FSYM
SYM  #button
BB(61,-169,69,-160)
TITLE 65 -165  #button2
MODEL 59
PROP                                                                                                                                   
REC(62,-168,6,6,r)
VIS 1
PIN(65,-160,0.000,0.000)in2
LIG(65,-161,65,-160)
LIG(61,-169,69,-169)
LIG(61,-161,61,-169)
LIG(69,-161,61,-161)
LIG(69,-169,69,-161)
LIG(62,-168,68,-168)
LIG(62,-162,62,-168)
LIG(68,-162,62,-162)
LIG(68,-168,68,-162)
FSYM
SYM  #nand2
BB(75,-150,95,-115)
TITLE 84 -138  #&
MODEL 202
PROP                                                                                                                                   
REC(-20,-140,0,0, )
VIS 0
PIN(80,-150,0.000,0.000)b
PIN(90,-150,0.000,0.000)a
PIN(85,-115,0.060,0.070)s
LIG(80,-150,80,-142)
LIG(95,-142,75,-142)
LIG(83,-123,79,-126)
LIG(85,-122,83,-123)
LIG(87,-123,85,-122)
LIG(91,-126,87,-123)
LIG(94,-131,91,-126)
LIG(79,-126,76,-131)
LIG(76,-131,75,-142)
LIG(95,-142,94,-131)
LIG(90,-150,90,-142)
LIG(85,-118,85,-115)
LIG(85,-120,85,-120)
VLG  nand nand2(out,a,b);
FSYM
SYM  #nand2
BB(15,-150,35,-115)
TITLE 24 -138  #&
MODEL 202
PROP                                                                                                                                   
REC(-80,-140,0,0, )
VIS 0
PIN(20,-150,0.000,0.000)b
PIN(30,-150,0.000,0.000)a
PIN(25,-115,0.060,0.070)s
LIG(20,-150,20,-142)
LIG(35,-142,15,-142)
LIG(23,-123,19,-126)
LIG(25,-122,23,-123)
LIG(27,-123,25,-122)
LIG(31,-126,27,-123)
LIG(34,-131,31,-126)
LIG(19,-126,16,-131)
LIG(16,-131,15,-142)
LIG(35,-142,34,-131)
LIG(30,-150,30,-142)
LIG(25,-118,25,-115)
LIG(25,-120,25,-120)
VLG  nand nand2(out,a,b);
FSYM
SYM  #nand2
BB(155,-85,190,-65)
TITLE 167 -74  #&
MODEL 202
PROP                                                                                                                                   
REC(85,-25,0,0, )
VIS 0
PIN(155,-70,0.000,0.000)b
PIN(155,-80,0.000,0.000)a
PIN(190,-75,0.060,0.140)s
LIG(155,-70,163,-70)
LIG(163,-85,163,-65)
LIG(182,-73,179,-69)
LIG(183,-75,182,-73)
LIG(182,-77,183,-75)
LIG(179,-81,182,-77)
LIG(174,-84,179,-81)
LIG(179,-69,174,-66)
LIG(174,-66,163,-65)
LIG(163,-85,174,-84)
LIG(155,-80,163,-80)
LIG(187,-75,190,-75)
LIG(185,-75,185,-75)
VLG  nand nand2(out,a,b);
FSYM
SYM  #nand2
BB(110,-110,145,-90)
TITLE 122 -99  #&
MODEL 202
PROP                                                                                                                                   
REC(135,-25,0,0, )
VIS 0
PIN(110,-95,0.000,0.000)b
PIN(110,-105,0.000,0.000)a
PIN(145,-100,0.060,0.070)s
LIG(110,-95,118,-95)
LIG(118,-110,118,-90)
LIG(137,-98,134,-94)
LIG(138,-100,137,-98)
LIG(137,-102,138,-100)
LIG(134,-106,137,-102)
LIG(129,-109,134,-106)
LIG(134,-94,129,-91)
LIG(129,-91,118,-90)
LIG(118,-110,129,-109)
LIG(110,-105,118,-105)
LIG(142,-100,145,-100)
LIG(140,-100,140,-100)
VLG  nand nand2(out,a,b);
FSYM
SYM  #nand2
BB(110,-65,145,-45)
TITLE 122 -54  #&
MODEL 202
PROP                                                                                                                                   
REC(130,-25,0,0, )
VIS 0
PIN(110,-50,0.000,0.000)b
PIN(110,-60,0.000,0.000)a
PIN(145,-55,0.060,0.070)s
LIG(110,-50,118,-50)
LIG(118,-65,118,-45)
LIG(137,-53,134,-49)
LIG(138,-55,137,-53)
LIG(137,-57,138,-55)
LIG(134,-61,137,-57)
LIG(129,-64,134,-61)
LIG(134,-49,129,-46)
LIG(129,-46,118,-45)
LIG(118,-65,129,-64)
LIG(110,-60,118,-60)
LIG(142,-55,145,-55)
LIG(140,-55,140,-55)
VLG  nand nand2(out,a,b);
FSYM
SYM  #light
BB(233,-90,239,-76)
TITLE 235 -76  #light2
MODEL 49
PROP                                                                                                                                   
REC(234,-89,4,4,r)
VIS 1
PIN(235,-75,0.000,0.000)out2
LIG(238,-84,238,-89)
LIG(238,-89,237,-90)
LIG(234,-89,234,-84)
LIG(237,-79,237,-82)
LIG(236,-79,239,-79)
LIG(236,-77,238,-79)
LIG(237,-77,239,-79)
LIG(233,-82,239,-82)
LIG(235,-82,235,-75)
LIG(233,-84,233,-82)
LIG(239,-84,233,-84)
LIG(239,-82,239,-84)
LIG(235,-90,234,-89)
LIG(237,-90,235,-90)
FSYM
SYM  #light
BB(-37,-90,-31,-76)
TITLE -35 -76  #light1
MODEL 49
PROP                                                                                                                                   
REC(-36,-89,4,4,r)
VIS 1
PIN(-35,-75,0.000,0.000)out1
LIG(-32,-84,-32,-89)
LIG(-32,-89,-33,-90)
LIG(-36,-89,-36,-84)
LIG(-33,-79,-33,-82)
LIG(-34,-79,-31,-79)
LIG(-34,-77,-32,-79)
LIG(-33,-77,-31,-79)
LIG(-37,-82,-31,-82)
LIG(-35,-82,-35,-75)
LIG(-37,-84,-37,-82)
LIG(-31,-84,-37,-84)
LIG(-31,-82,-31,-84)
LIG(-35,-90,-36,-89)
LIG(-33,-90,-35,-90)
FSYM
SYM  #nand2
BB(-115,-65,-80,-45)
TITLE -103 -54  #&
MODEL 202
PROP                                                                                                                                   
REC(-95,-25,0,0, )
VIS 0
PIN(-115,-50,0.000,0.000)b
PIN(-115,-60,0.000,0.000)a
PIN(-80,-55,0.060,0.070)s
LIG(-115,-50,-107,-50)
LIG(-107,-65,-107,-45)
LIG(-88,-53,-91,-49)
LIG(-87,-55,-88,-53)
LIG(-88,-57,-87,-55)
LIG(-91,-61,-88,-57)
LIG(-96,-64,-91,-61)
LIG(-91,-49,-96,-46)
LIG(-96,-46,-107,-45)
LIG(-107,-65,-96,-64)
LIG(-115,-60,-107,-60)
LIG(-83,-55,-80,-55)
LIG(-85,-55,-85,-55)
VLG  nand nand2(out,a,b);
FSYM
SYM  #nand2
BB(-115,-110,-80,-90)
TITLE -103 -99  #&
MODEL 202
PROP                                                                                                                                   
REC(-90,-25,0,0, )
VIS 0
PIN(-115,-95,0.000,0.000)b
PIN(-115,-105,0.000,0.000)a
PIN(-80,-100,0.060,0.070)s
LIG(-115,-95,-107,-95)
LIG(-107,-110,-107,-90)
LIG(-88,-98,-91,-94)
LIG(-87,-100,-88,-98)
LIG(-88,-102,-87,-100)
LIG(-91,-106,-88,-102)
LIG(-96,-109,-91,-106)
LIG(-91,-94,-96,-91)
LIG(-96,-91,-107,-90)
LIG(-107,-110,-96,-109)
LIG(-115,-105,-107,-105)
LIG(-83,-100,-80,-100)
LIG(-85,-100,-85,-100)
VLG  nand nand2(out,a,b);
FSYM
SYM  #nand2
BB(-70,-85,-35,-65)
TITLE -58 -74  #&
MODEL 202
PROP                                                                                                                                   
REC(-140,-25,0,0, )
VIS 0
PIN(-70,-70,0.000,0.000)b
PIN(-70,-80,0.000,0.000)a
PIN(-35,-75,0.060,0.070)s
LIG(-70,-70,-62,-70)
LIG(-62,-85,-62,-65)
LIG(-43,-73,-46,-69)
LIG(-42,-75,-43,-73)
LIG(-43,-77,-42,-75)
LIG(-46,-81,-43,-77)
LIG(-51,-84,-46,-81)
LIG(-46,-69,-51,-66)
LIG(-51,-66,-62,-65)
LIG(-62,-85,-51,-84)
LIG(-70,-80,-62,-80)
LIG(-38,-75,-35,-75)
LIG(-40,-75,-40,-75)
VLG  nand nand2(out,a,b);
FSYM
SYM  #nand2
BB(-210,-150,-190,-115)
TITLE -201 -138  #&
MODEL 202
PROP                                                                                                                                   
REC(-305,-140,0,0, )
VIS 0
PIN(-205,-150,0.000,0.000)b
PIN(-195,-150,0.000,0.000)a
PIN(-200,-115,0.060,0.070)s
LIG(-205,-150,-205,-142)
LIG(-190,-142,-210,-142)
LIG(-202,-123,-206,-126)
LIG(-200,-122,-202,-123)
LIG(-198,-123,-200,-122)
LIG(-194,-126,-198,-123)
LIG(-191,-131,-194,-126)
LIG(-206,-126,-209,-131)
LIG(-209,-131,-210,-142)
LIG(-190,-142,-191,-131)
LIG(-195,-150,-195,-142)
LIG(-200,-118,-200,-115)
LIG(-200,-120,-200,-120)
VLG  nand nand2(out,a,b);
FSYM
SYM  #nand2
BB(-150,-150,-130,-115)
TITLE -141 -138  #&
MODEL 202
PROP                                                                                                                                   
REC(-245,-140,0,0, )
VIS 0
PIN(-145,-150,0.000,0.000)b
PIN(-135,-150,0.000,0.000)a
PIN(-140,-115,0.060,0.070)s
LIG(-145,-150,-145,-142)
LIG(-130,-142,-150,-142)
LIG(-142,-123,-146,-126)
LIG(-140,-122,-142,-123)
LIG(-138,-123,-140,-122)
LIG(-134,-126,-138,-123)
LIG(-131,-131,-134,-126)
LIG(-146,-126,-149,-131)
LIG(-149,-131,-150,-142)
LIG(-130,-142,-131,-131)
LIG(-135,-150,-135,-142)
LIG(-140,-118,-140,-115)
LIG(-140,-120,-140,-120)
VLG  nand nand2(out,a,b);
FSYM
SYM  #button
BB(-164,-169,-156,-160)
TITLE -160 -165  #button2
MODEL 59
PROP                                                                                                                                   
REC(-163,-168,6,6,r)
VIS 1
PIN(-160,-160,0.000,0.000)in2
LIG(-160,-161,-160,-160)
LIG(-164,-169,-156,-169)
LIG(-164,-161,-164,-169)
LIG(-156,-161,-164,-161)
LIG(-156,-169,-156,-161)
LIG(-163,-168,-157,-168)
LIG(-163,-162,-163,-168)
LIG(-157,-162,-163,-162)
LIG(-157,-168,-157,-162)
FSYM
SYM  #button
BB(-224,-169,-216,-160)
TITLE -220 -165  #button1
MODEL 59
PROP                                                                                                                                   
REC(-223,-168,6,6,r)
VIS 1
PIN(-220,-160,0.000,0.000)in1
LIG(-220,-161,-220,-160)
LIG(-224,-169,-216,-169)
LIG(-224,-161,-224,-169)
LIG(-216,-161,-224,-161)
LIG(-216,-169,-216,-161)
LIG(-223,-168,-217,-168)
LIG(-223,-162,-223,-168)
LIG(-217,-162,-223,-162)
LIG(-217,-168,-217,-162)
FSYM
SYM  #nand2
BB(200,-85,235,-65)
TITLE 212 -74  #&
MODEL 202
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(200,-70,0.000,0.000)b
PIN(200,-80,0.000,0.000)a
PIN(235,-75,0.060,0.070)s
LIG(200,-70,208,-70)
LIG(208,-85,208,-65)
LIG(227,-73,224,-69)
LIG(228,-75,227,-73)
LIG(227,-77,228,-75)
LIG(224,-81,227,-77)
LIG(219,-84,224,-81)
LIG(224,-69,219,-66)
LIG(219,-66,208,-65)
LIG(208,-85,219,-84)
LIG(200,-80,208,-80)
LIG(232,-75,235,-75)
LIG(230,-75,230,-75)
VLG  nand nand2(out,a,b);
FSYM
CNC(85 -50)
CNC(25 -105)
CNC(65 -95)
CNC(5 -60)
CNC(-220 -60)
CNC(-160 -95)
CNC(-200 -105)
CNC(-140 -50)
LIG(5,-160,5,-60)
LIG(65,-160,65,-95)
LIG(20,-150,30,-150)
LIG(20,-150,20,-160)
LIG(20,-160,5,-160)
LIG(80,-150,90,-150)
LIG(80,-150,80,-160)
LIG(65,-160,80,-160)
LIG(25,-115,25,-105)
LIG(85,-115,85,-50)
LIG(85,-50,85,-15)
LIG(85,-50,110,-50)
LIG(25,-105,110,-105)
LIG(25,-105,25,-10)
LIG(65,-95,110,-95)
LIG(65,-95,65,-25)
LIG(5,-60,110,-60)
LIG(5,-60,5,-20)
LIG(145,-100,150,-100)
LIG(150,-100,150,-80)
LIG(150,-80,155,-80)
LIG(155,-70,150,-70)
LIG(150,-70,150,-55)
LIG(150,-55,145,-55)
LIG(-75,-55,-80,-55)
LIG(-75,-70,-75,-55)
LIG(-70,-70,-75,-70)
LIG(-75,-80,-70,-80)
LIG(-75,-100,-75,-80)
LIG(-80,-100,-75,-100)
LIG(-220,-60,-220,-20)
LIG(-220,-60,-115,-60)
LIG(-160,-95,-160,-25)
LIG(-160,-95,-115,-95)
LIG(-200,-105,-200,-10)
LIG(-200,-105,-115,-105)
LIG(-140,-50,-115,-50)
LIG(-140,-50,-140,-15)
LIG(-140,-115,-140,-50)
LIG(-200,-115,-200,-105)
LIG(-160,-160,-145,-160)
LIG(-145,-150,-145,-160)
LIG(-145,-150,-135,-150)
LIG(-205,-160,-220,-160)
LIG(-205,-150,-205,-160)
LIG(-205,-150,-195,-150)
LIG(-160,-160,-160,-95)
LIG(-220,-160,-220,-60)
LIG(200,-80,200,-70)
LIG(200,-80,195,-80)
LIG(195,-80,195,-75)
LIG(195,-75,190,-75)
FFIG G:\dsch\dsch\Lab Exam\XOR and XNOR with NAND Gate.sch
