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
output reg [3:0]yellow;
output reg [3:0]green;
output [3:0] an;
output [3:0] led;
output [6:0] seg;
output buzzer;
input light0,light1,light2,light3;
reg [3:0] counters0;
reg [3:0] counters1;
reg [3:0] counters2;
reg [3:0] counters3;
reg [26:0] lights_clk;

module timer_display(an,seg,in0,in1,in2,in3,clk,reset);
output reg [3:0] an;
output reg [6:0] seg;
input [3:0] in0,in1,in2,in3;
input clk,reset;
wire [6:0] seg0,seg1,seg2,seg3;
reg [17:0] seg_clk;

module segment_decode(seg_temp,in);
input [3:0] in;
output reg [6:0] seg_temp;

module signal_break(led,light0,light1,light2,light3,green,reset,buzzer);
input [3:0] green;
input light0,light1,light2,light3;
input reset;
output reg buzzer;
output reg [3:0]led;
