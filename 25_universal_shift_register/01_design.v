module universal_shift_register(
  
  input clk, 
  input reset, 
  input s0,
  input s1,
  input sr,
  input sl,
  input [3:0]din,
  output reg [3:0] q
  
);
  
  always @(posedge clk or posedge reset)
    
    if(reset)
      begin
      q <= 4'b0000;
      end
  else
    begin
      case({s1,s0})
        
        2'b00: q <= q;
        2'b01: q <= ({sr,q[3:1]});
        2'b10: q <= ({q[2:0],sl});
        2'b11: q <= din;
        
      endcase
    end
  endmodule