//tb_adder_1  shujuliu

`timescale 1ns/1ns
module tb_adder_1;

integer i,j,k;
reg a,b,cin;
wire sum,out;

initial
begin 
a=0;b=0;cin=0; 

for (i=0;i<=1;i=i+1)
  begin
    for (j=0;j<=1;j=j+1)
    begin
      for (k=0;k<=1;k=k+1)
      begin
        #10 cin=~cin;
      end
       b=b+1;
    end
     a=a+1;
 end
   #1000 $stop;
end



adder_1 m(a,b,cin,sum,out);
endmodule