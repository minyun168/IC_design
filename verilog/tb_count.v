`timescale 1ns/1ns
`include "count.v"
module tb_count;
reg cin,rst,dir;
//output cout;
wire cout;
always
#50 cin=-cin;
initial
begin
#50 rst=0;dir=0;
#50 dir=1;
#100 rst=0;dir=0;
end
count m(.cin(cin),.rst(rst),.dir(dir),.cout(cout)); 
endmodule