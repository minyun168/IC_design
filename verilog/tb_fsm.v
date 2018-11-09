//test bench of fsm

`timescale   1ns/1ns
`include   "fsm.v"
module tb_fsm;   
reg in,clk,rst;//who need to be assign shoud use reg to declare
initial
begin    
    in=0;
    rst=0;
    clk=0;
    #100 rst=1;
    //presentstate=2'b0;
    //nextstate=2'b0;
    #60   in=1;
    #100   in=0;
    #100   in=1;
    #100   in=0;
    #100   in=1;  //auto run
    
    #1000  $stop;
end

always             //here need not @(posedge ..)...
 begin
   #50 clk=~clk;
 end
fsm b(.in(in),.out(out),.rst(rst),.clk(clk));
endmodule




