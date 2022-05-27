module traffic_light(red,yellow,green,an,seg,light0,light1,light2,light3,clk,reset,led,buzzer);
input clk,reset;
reg [4:0]counter;
output reg [3:0]red;
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

initial 
begin
red[0]<=1'b0;
red[1]<=1'b0;
red[2]<=1'b1;
red[3]<=1'b1;
yellow[0]<=1'b0;
yellow[1]<=1'b1;
yellow[2]<=1'b0;
yellow[3]<=1'b0;
green[0]<=1'b1;
green[1]<=1'b0;
green[2]<=1'b0;
green[3]<=1'b0;
counter<=5'b00000;
counters0<=4'b0100;
counters1<=4'b0100;
counters2<=4'b0100;
counters3<=4'b1001;
end


reg [26:0] lights_clk=0;
timer_display displaytime(an,seg,counters0,counters1,counters2,counters3,clk,reset);
signal_break sb(led,light0,light1,light2,light3,green,reset,buzzer);

always @(posedge clk or posedge reset) begin
    if(reset==1)begin
    red[0]<=1'b0;
red[1]<=1'b0;
red[2]<=1'b1;
red[3]<=1'b1;
yellow[0]<=1'b0;
yellow[1]<=1'b1;
yellow[2]<=1'b0;
yellow[3]<=1'b0;
green[0]<=1'b1;
green[1]<=1'b0;
green[2]<=1'b0;
green[3]<=1'b0;
counter<=5'b00000;
counters0<=4'b0100;
counters1<=4'b0100;
counters2<=4'b0100;
counters3<=4'b1001;
    end
    else
begin
 lights_clk<=lights_clk+1;
    if(lights_clk==100000000)
    begin
    lights_clk<=0;
    counter<=counter+1;
    counters0<=counters0-1;
    counters1<=counters1-1;
    counters2<=counters2-1;
    counters3<=counters3-1;
    case(counter)
    5'b00100: 
    begin
        red[0]<=1'b1;
        green[0]<=1'b0;
        yellow[1]<=1'b0;
        green[1]<=1'b1;
        red[2]<=1'b0;
        yellow[2]<=1'b1;
        counters0<=4'b1001;
        counters1<=4'b0100;
        counters2<=4'b0100;
    end
    5'b01001:
    begin
        red[1]<=1'b1;
        green[1]<=1'b0;
        yellow[2]<=1'b0;
        green[2]<=1'b1;
        red[3]<=1'b0;
        yellow[3]<=1'b1;
        counters1<=4'b1001;
        counters2<=4'b0100;
        counters3<=4'b0100;
    end
    5'b01110:
    begin
        red[2]<=1'b1;
        green[2]<=1'b0;
        yellow[3]<=1'b0;
        green[3]<=1'b1;
        red[0]<=1'b0;
        yellow[0]<=1'b1;
        counters0<=4'b0100;
        counters2<=4'b1001;
        counters3<=4'b0100;
    end
    5'b10011:
    begin
        counter<=5'b00000;
        red[3]<=1'b1;
        green[3]<=1'b0;
        yellow[0]<=1'b0;
        green[0]<=1'b1;
        red[1]<=1'b0;
        yellow[1]<=1'b1;
        counters0<=4'b0100;
        counters1<=4'b0100;
        counters3<=4'b1001; 
    end
    endcase
    end
    end
end

endmodule
