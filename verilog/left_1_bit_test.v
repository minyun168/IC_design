`timescale 1ns/1ns
`include "left_1_bit.v"

module left_1_bit_test;

reg din,clr,clk;
//wire dout;

always #50 clk=~clk;

initial
	begin:
		din<=0;clk<=0;clr=0;
		//din=0;clk=0;clr=1;
		#50 din<=1;
		#50 clr<=0;
		#500 $stop;
	end
	
	left_1_bit_test m(.din(din),.clk(clk),.clr(clr),.dout(dout));
	
endmodule