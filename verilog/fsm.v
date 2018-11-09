//finite state machine

module fsm(in,rst,clk,out);
input rst, clk;
input in;
output out;

parameter s0=0,s1=1,s2=2,s3=3;
reg out;
reg [1:0] presentstate,nextstate;

always @(posedge clk)
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
  out<=0;//
end
 
s1:
 if (~in) begin
   nextstate<=s1;
   out<=0;
 end
 
 else begin
   nextstate<=s2;
   out<=1;
 end
    
s2:
 if (~in) begin
   nextstate<=s2;
   out<=0;
 end 
 else begin
   nextstate<=s3;
   out<=1;
 end
 
 s3:
  if (~in) begin
    nextstate<=s3;
    out<=1;
  end
else begin
  nextstate<=s0;
  out<=0;
end
endcase
endmodule
  
  
  
  