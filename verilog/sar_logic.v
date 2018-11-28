module sar_logic(rest,clk,comp,count,dout,q,ena);

input rest,clk,comp,ena;
output[5:0] q,dout;
output[2:0] count;

reg [5:0] q;
reg [5:0] dout;
reg [2:0] count;

parameter c0=3'b000,c1=3'b001,c2=3'b010,c3=3'b011,c4=3'b100,c5=3'b101,c6=3'b110;

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
			dout=6'b100000;
			if(ena)
				begin
					count<=count+1;
				end
			else
				begin
					dout=dout;
					count=c0;
				end
			q=dout;
			
			end
	
		c1:
			begin
			
			dout[5]<=comp;
			dout[4]<=1;
			dout[3]<=0;
			dout[2]<=0;
			dout[1]<=0;
			dout[0]<=0;

			count<=c2;
			
			end
		c2:
			begin

			dout[5]<=dout[5];
			dout[4]<=comp;
			dout[3]<=1;
			dout[2]<=0;
			dout[1]<=0;
			dout[0]<=0;

			count<=c3;

			end

		c3:
			begin

			dout[5]<=dout[5];
			dout[4]<=dout[4];
			dout[3]<=comp;
			dout[2]<=1;
			dout[1]<=0;
			dout[0]<=0;

			count<=c4;

			end

		c4:
			begin

			dout[5]<=dout[5];
			dout[4]<=dout[4];
			dout[3]<=dout[3];
			dout[2]<=comp;
			dout[1]<=1;
			dout[0]<=0;

			count<=c5;

			end

		c5:
			begin

			dout[5]<=dout[5];
			dout[4]<=dout[4];
			dout[3]<=dout[3];
			dout[2]<=dout[2];
			dout[1]<=comp;
			dout[0]<=1;

			count<=c6;

			end

		c6:
			begin

			dout[5]<=dout[5];
			dout[4]<=dout[4];
			dout[3]<=dout[3];
			dout[2]<=dout[2];
			dout[1]<=dout[1];
			dout[0]<=comp;

			count<=cout+1;

			end

		default:
			begin

			count<=3'b0;
			q<=dout;

			end

	endcase

endmodule



		
