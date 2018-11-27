#Eight_frequency_divider
module eight_divider(clk,res,out);
	input clk,res;
	output out;
  	
	reg [2:0]count;
	
	always @ (posedge clk)
		begin
			if (res)
				begin
					out<=0;count<=0;
				end
			else 
				begin
					if (count==3'b011) //here is different with ppt
						begin
							out<=~out ;
							count<=3'b000;
						end
					else
						if (count<=3'b011 )
							out<=out+1;
				end
						
		end
	endmodule