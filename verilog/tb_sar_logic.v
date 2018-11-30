`timescale 1ns/100ps
`include "sar_logic.v"

module tb_sar_logic;

reg rest,clk,comp,ena;
wire [5:0] q,dout;
wire [2:0] count;

always #50 clk=~clk;
always #150 comp=~comp;
always #3500 ena=~ena;

initial
	begin

	clk=1;
	comp=1;
	ena=0;
	rest=1;

	#100 rest=0;
	#1000 $stop;
	
	end

sar_logic m(.rest),.clk(clk),.comp)comp),.q(q),.ena(ena),.dout(dout),.count(count);

endmodule
