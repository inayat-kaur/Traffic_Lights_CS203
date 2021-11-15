# CS203_project

**GROUP MEMBERS**
1. TARUSHI         (2020CSB1135)
2. INAYAT KAUR     (2020CSB1088)
3. ISHA GOYAL      (2020CSB1089)

**PROJECT NAME**
TRAFFIC CONTROL SYSTEM 

**MODULES USED**
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
