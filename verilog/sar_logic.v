module sar_logic(rest,clk,comp,count,dout,q,ena);

input rest,clk,comp,ena;
output[5:0] q,dout;
output[2:0] count;

reg [5:0] q;
reg [2:0] dout;
reg [2:0] count;

parameter c0=3'b000,c1=3'b001,c2=3'b010,c3=3'b011,c4=3'b100,c5=3'b101,c6=3'b110,c7=3'b111;

always@(posedge clk)
	if(rest)
	begin
		dout<=6'b000000;
		count<=3'b000;
	end
	else
	case(count)
		c0:
		begin
			count=3'b000;
			dout=6'b000000;
			if(ena)
				begin
					count<=count+1;

				end
			else
				begin
					dout=dout;
					count=c0;
				end
			c=dout;
		end
	
		c1:
			begin
			
			dout[5]<=0;
			dout[4]<=0;
			dout[3]<=0;
			dout[2]<=0;
			dout[1]<=0;
			dout[0]<=0;

			count<=c2;
			
			end
		c2:
			begin



		
