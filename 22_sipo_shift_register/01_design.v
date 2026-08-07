module sipo_shift_register(

    input clk,
    input reset,
    input sin,

    output reg [3:0] q
    
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        q <= 4'b0000;

    else
    begin
        q[3] <= q[2];
        q[2] <= q[1];
        q[1] <= q[0];
        q[0] <= sin;
    end
end

endmodule