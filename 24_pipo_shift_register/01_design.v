module pipo_shift_register(
  
  input clk,
  input reset,
  input [3:0] din,
  
  output reg [3:0] q
  
);
  
  always @(posedge clk or posedge reset)
    
    if(reset)
      begin
      
      q <= 4'b0000;
      end
  else
    begin
    q <= din;
    end
endmodule