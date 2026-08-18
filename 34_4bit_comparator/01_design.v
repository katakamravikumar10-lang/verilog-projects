module comparator_4bit(
  
  input [3:0] a,
  input [3:0] b,
  output reg gt,
  output reg eq,
  output reg lt
);
  always@ (*)
    begin 
      
      if(a>b)begin
      
      gt = 1'b1;
      eq = 1'b0;
      lt = 1'b0;
      end
  
      else if(a==b)begin
         
        gt = 1'b0;
        eq = 1'b1;
        lt = 1'b0;
      end
  else begin
    
    gt = 1'b0;
    eq = 1'b0;
    lt = 1'b1;
    end
    end
endmodule