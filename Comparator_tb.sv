module comp_tb; 
  reg [3:0] a,b;
  wire [3:0] st,eq,lt;
  
 // integer i;
  
  comparator my_comp (.A(a), .B(b), .ST(st), .EQ(eq), .LT(lt));
                      
 	 initial
       begin
         // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
         
        // for( i = 0; i <= 8; i = i + 1)
           
      begin   
         a=1; b=1;
         #5;
         a=5; b=1;
         #5;
         a=0; b=3;
         #5;
         a=1; b=8;
         #5;
         a=1; b=0;
         #5;
         a=8; b=1;
         #1;
        end
       end
endmodule
