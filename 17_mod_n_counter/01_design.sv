module mod_n_counter#(
  parameter N=4
)(
  
  input clk,
  input reset,
  output reg [3:0] q
  
);
  
  always @(posedge clk or posedge reset)
begin
    if (reset)
        q <= 4'd0;

    else if (q == N-1)
        q <= 4'd0;

    else
        q <= q + 1;
end
endmodule
