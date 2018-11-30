//'timescle 1ns/1ns
`timescale   1ns/1ns
`include   "fsm.v"
module tb_fsm;   
reg in,clk,rst;
initial
begin    
    in=0;
    rst=0;
    clk=0;
   // out=0;
   
    #100 rst=1;  //the difference of "<=" and "=": absolutely and relative time delay  
    
    
    #40   in=1;
    #100   in=0;
    
    #100   in=1;
    #100   in=1;  //the fsm can not scan include the previous number 1
    #100   in=0;
    #100   in=0;
    
    #100   in=1;
    #100   in=0;
    
    
    #2000  $stop;
end

always 
 begin
   #50 clk=~clk;
 end
fsm b(.in(in),.out(out),.rst(rst),.clk(clk));
endmodule




