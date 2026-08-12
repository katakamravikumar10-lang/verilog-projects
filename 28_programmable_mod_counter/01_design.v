module programmable_mod_counter(
  
  input clk,
  input reset,
  input [3:0] mod_n,
  output reg[3:0] q
);
  always@ (posedge clk or posedge reset)
    begin
    if(reset)
      q <= 4'b0000;
  else if(q == mod_n -1)
    q <= 0;
  else
    q <= q+ 1'b1;
    end
endmodule