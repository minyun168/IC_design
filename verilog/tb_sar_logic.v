
`timescale 1ns/1ns
`include "sar_logic.v"

module tb_sar_logic;

reg rest,clk,comp,ena;
wire [5:0] q,dout;
wire [2:0] count;

always #50 clk=~clk;
always #175 comp=~comp;
always #5000 ena=~ena;

initial
	begin

	clk=0;
	comp=1;
	ena=1;
	rest=1;

	#160 rest=0;
	#5000 $stop;
	
	end

sar_logic m(.rest(rest),.clk(clk),.comp(comp),.q(q),.ena(ena),.dout(dout),.count(count));

endmodule
