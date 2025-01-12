module signal_break(led,light0,light1,light2,light3,green,reset,buzzer);
input [3:0] green;
input light0,light1,light2,light3;
input reset;
output reg buzzer;
output reg [3:0]led;
initial led=4'b0000;

always @( light0 or  light1 or  light2 or  light3 or  reset or green)

begin
if(reset==1)begin
    led[0]=0;
    led[1]=0;
    led[2]=0;
    led[3]=0;
end

else
begin
    if(light0==1)
    begin
        if(green[0]==0) begin
        buzzer=1;
            led[0]=1;
            end
        else led[0]=0;
    end
     else led[0]=0;
     
    if(light1==1)
    begin
        if(green[1]==0)begin
        buzzer=1;
            led[1]=1;
            end
         else led[1]=0;
    end
    else led[1]=0;

    if(light2==1)
    begin
        if(green[2]==0) begin
        buzzer=1;
            led[2]=1;
            end
        else led[2]=0;
    end
    else led[2]=0;

    if(light3==1)
    begin
        if(green[3]==0)begin
        buzzer=1;
            led[3]=1;
            end
         else led[3]=0;
    end
    else led[3]=0;
    
    end
end
endmodule

