module universal_shift_register(
  
  input clk,
  input serial_input_right,
  input serial_input_left,
  input [3:0] parallel_input,
  input [1:0] sel,
  output reg [3:0] q
);
  
  always@(posedge clk)
      begin
    
    case(sel)
      2'b00:
      begin
        q <= q;
      end
      2'b01:
      begin
        q[3] <= serial_input_right;
        q[2] <= q[3];
        q[1] <= q[2];
        q[0] <= q[1];
      end
      2'b10:
      begin
        q[3] <= q[2];
        q[2] <= q[1];
        q[1] <= q[0];
        q[0] <= serial_input_left;
      end
      2'b11:
      begin
        q <= parallel_input;
      end

    endcase
      end
      endmodule