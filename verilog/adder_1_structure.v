//adder of 1 bit and using structural description form 
module adder_1_structure(a,b,cin,sum,out);
  
  input a,b,cin;
  output sum,out;
  
  wire s1,t1,t2,t3;
  
  xor x1(s1,a,b),
      x2(sum,s1,cin);
  
  and a1(t3,a,b),
      a2(t1,a,cin),
      a3(t2,b,cin);
      
  or o1(out,t1,t2,t3);
  
  
  
endmodule

