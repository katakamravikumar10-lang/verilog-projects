module piso_shift_register(
  input clk,
  input reset,
  input load,
  input [3:0] din,
  
  output sout,
  output reg [3:0]q
  
);
  always@ (posedge clk or posedge reset)
  
  if(reset)
    q <= 4'b0000;
  
else if (load)
begin
  q <= din;
  
end
else
  begin
  
  q[3] <= q[2];
  q[2] <= q[1];
  q[1] <= q[0];
    q[0] <= 1'b0;
  
  end
  
  assign sout = q[3];
  endmodule