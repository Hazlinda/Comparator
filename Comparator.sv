module comparator (A,B,ST,EQ,LT);
  input [3:0] A,B;
  output reg[3:0] ST,EQ,LT;
  
  always@(*)
    begin
      ST=0;EQ=0; LT=0;
      if (A>B) ST=1;
      else if (A<B) LT=1;
      else EQ=1;
      
    end
endmodule
