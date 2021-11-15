# CS203_project

**GROUP MEMBERS**
1. TARUSHI         (2020CSB1135)
2. INAYAT KAUR     (2020CSB1088)
3. ISHA GOYAL      (2020CSB1089)

**PROJECT NAME**<br />
TRAFFIC CONTROL SYSTEM 

**MODULES USED**<br />
traffic_light(red,yellow,green,an,seg,light0,light1,light2,light3,clk,reset,led,buzzer);<br />
input clk,reset;<br />
reg [4:0]counter;<br />
output reg [3:0]red;<br />
output reg [3:0]yellow;<br />
output reg [3:0]green;<br />
output [3:0] an;<br />
output [3:0] led;<br />
output [6:0] seg;<br />
output buzzer;<br />
input light0,light1,light2,light3;<br />
reg [3:0] counters0;<br />
reg [3:0] counters1;<br />
reg [3:0] counters2;<br />
reg [3:0] counters3;<br />
reg [26:0] lights_clk;<br />

module timer_display(an,seg,in0,in1,in2,in3,clk,reset);<br />
output reg [3:0] an;<br />
output reg [6:0] seg;<br />
input [3:0] in0,in1,in2,in3;<br />
input clk,reset;<br />
wire [6:0] seg0,seg1,seg2,seg3;<br />
reg [17:0] seg_clk;<br />

module segment_decode(seg_temp,in);<br />
input [3:0] in;<br />
output reg [6:0] seg_temp;<br />

module signal_break(led,light0,light1,light2,light3,green,reset,buzzer);<br />
input [3:0] green;<br />
input light0,light1,light2,light3;<br />
input reset;<br />
output reg buzzer;<br />
output reg [3:0]led;<br />

**FPGA PINS USED**<br />
clk=W5<br />

red[0]=L1<br />
red[1]=P3<br />
red[2]=V3<br />
red[3]=U14<br />

yellow[0]=P1<br />
yellow[1]=U3<br />
yellow[2]=V13<br />
yellow[3]=U15<br />

green[0]=N3<br />
green[1]=W3<br />
green[2]=V14<br />
green[3]=W18<br />

led[0]=V19<br />
led[1]=U19<br />
led[2]=E19<br />
led[3]=U16<br />

reset=R2<br />
light0=T1<br />
light1=UI<br />
light2=W2<br />
light3=R3<br />

seg[0]=W7<br />
seg[1]=W6<br />
seg[2]=U8<br />
seg[3]=V8<br />
seg[4]=U5<br />
seg[5]=V5<br />
seg[6]=U7<br />

an[0]=U2<br />
an[1]=U4<br />
an[2]=V4<br />
an[3]=W4<br />

buzzer=L17 , R18
