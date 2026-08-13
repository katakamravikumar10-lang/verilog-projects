module clock_divider2_4(
  input clk,
input reset,
output reg clk_div2,
output reg clk_div4
);
  always @(posedge clk or posedge reset)
begin
    if(reset)
        clk_div2 <= 1'b0;
    else
        clk_div2 <= ~clk_div2;
end
  always @(posedge clk_div2 or posedge reset)
begin
    if(reset)
        clk_div4 <= 1'b0;
    else
        clk_div4 <= ~clk_div4;
end
endmodule