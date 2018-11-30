//scan 10010

module fsm(in,rst,clk,out);
input rst, clk;
input in;
output out;

parameter s0=0,s1=1,s2=2,s3=3,s4=4;
reg out;
reg [2:0] presentstate,nextstate;

always @(posedge clk)   //sometime we use "negedge"
begin
  if (~rst)
    presentstate <= s0;
  else
    presentstate <= nextstate;
end

always @(presentstate or in)

case(presentstate)
s0:
if (~in) 
  begin
    nextstate<=s0;   
    out<=0;   
  end
else begin
  nextstate<=s1;
  out<=1;//out is 10010 ? or 11111 (if in is 10010)
end
 
s1:
 if (in) begin
   nextstate<=s1;
   out<=0;
   nextstate<=s0;
 end
 
 else begin
   nextstate<=s2;
   out<=1;
 end
    
s2:
 if (in) begin
   nextstate<=s2;
   out<=0;
   nextstate<=s0;
 end 
 else begin
   nextstate<=s3;
   out<=1;
 end
 
 s3:
 if (~in) begin
   nextstate<=s3;
   out<=0;
   nextstate<=s0;
 end 
 else begin
   nextstate<=s4;
   out<=1;
 end
 
 s4:
  if (in) begin
    nextstate<=s4;
    out<=0;
    nextstate<=s0;
  end
else begin
  nextstate<=s0;
  out<=1;
end
endcase
endmodule
  
  
  
  
