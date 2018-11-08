`timescale   1ns/1ns
`include   "voter7.v"
module   voter7_top;
reg  [6:0]  vote;
initial
begin
    vote=7'b0;
    #50   vote=7'b0101101;
    #50   vote=7'b1000010;
    #50   vote=7'b0010110;
    #50   vote=7'b0111111;
    #1000  $stop;
end
voter7 m(.vote(vote),.pass(pass));
endmodule

