module timer_display(an,seg,in0,in1,in2,in3,clk,reset);
output reg [3:0] an;
output reg [6:0] seg;
input [3:0] in0,in1,in2,in3;
input clk,reset;
wire [6:0] seg0,seg1,seg2,seg3;

segment_decode segment0(seg0,in0);
segment_decode segment1(seg1,in1);
segment_decode segment2(seg2,in2);
segment_decode segment3(seg3,in3);

reg [17:0] seg_clk=0;

initial an<=4'b1110;
  
always @(posedge clk or posedge reset) begin
seg_clk<=seg_clk+1'b1;
if(reset==1) an<=4'b1110;
else begin
if(seg_clk==18'b100000000000000000)
begin
    seg_clk<=0;
    if(an==4'b1110)begin
        an<=4'b1101;
        seg<=seg2;
    end
    else if(an==4'b1101)begin
        an<=4'b1011;
        seg<=seg1;      
    end
    else if(an==4'b1011)begin
        an<=4'b0111;
        seg<=seg0;        
    end
    else if(an==4'b0111)begin
        an<=4'b1110;
        seg<=seg3;
    end
end
end
end
endmodule

module segment_decode(seg_temp,in);
    input [3:0] in;
    output reg [6:0] seg_temp;
    always @(in) begin
        if(in==4'b0000)seg_temp<=7'b1000000;
        else if(in==4'b0001)seg_temp<=7'b1111001;
        else if(in==4'b0010)seg_temp<=7'b0100100;
        else if(in==4'b0011)seg_temp<=7'b0110000;
        else if(in==4'b0100)seg_temp<=7'b0011001;
        else if(in==4'b0101)seg_temp<=7'b0010010;
        else if(in==4'b0110)seg_temp<=7'b0000010;
        else if(in==4'b0111)seg_temp<=7'b1111000;
        else if(in==4'b1000)seg_temp<=7'b0000000;
        else if(in==4'b1001)seg_temp<=7'b0010000;
        else seg_temp<=7'b1000000;
    end
endmodule
