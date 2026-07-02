module register_4bit_reset(
  
  input [3:0]d,
  input clk,
  input reset,
  output reg [3:0]q
  
);
  
  always@(posedge clk or posedge reset)
    
    begin
      
      if(reset)
        
        q <= 0;
      else
        q <= d;
      
    end
  endmodule