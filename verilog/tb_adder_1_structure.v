//
`timescale 1ns/1ns
`include "adder_1_structure.v"

module tb_adder_1_structure;
  
  reg cin;
  reg a;
  reg b;
  wire sum;
  wire out;
  
  //wire 
  integer i,j,k;
  
  initial 
  begin
    a=2'b00;
    b=2'b00;
    cin=0;
    
    //repeat(5)
    
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
  
  adder_1_structure m(.a(a),.b(b),.cin(cin),.out(out),.sum(sum));
endmodule

