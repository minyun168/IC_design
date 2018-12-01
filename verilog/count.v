module count(cin,rst,dir,cout);
	input cin,rst,dir;
	output [3:0]cout;
	reg [3:0]cuot;  //为什么不是reg cin,rst,dir;  ?
	
	 always @ (posedge cin)
	 begin:
	 	if rst==1
	 		cout<=0;
	 		else	
	 	  if dir==1
	 		 cout<=cout+1;
	 	  else if dir == 0
	 		 cout<=cout-1;
	 	
	 	end
	endmodule