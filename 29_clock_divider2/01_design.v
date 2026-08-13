module clock_divider(
  input clk,
  input reset,
  output reg clk_div2
);
  always@(posedge clk or posedge reset)
    begin
    if(reset)
      clk_div2 <= 1'b0;
  else 
    clk_div2 <= ~clk_div2;
    end
endmodule