module shift_register_4bit(
  
  input wire clk,
  input wire serial_in,
  output reg [3:0] q
  
);
  
  always@(posedge clk)
    
    begin
    
      q[0] <= serial_in;
      q[1] <= q[0];
      q[2] <= q[1];
      q[3] <= q[2];
      
    end
endmodule