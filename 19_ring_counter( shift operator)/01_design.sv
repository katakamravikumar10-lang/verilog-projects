module ring_counter(
  
  input clk,
  input reset,
  output reg [3:0] q
  
);
  
  always @(posedge clk or posedge reset)
    
    begin
      
      if(reset)begin
        
        q <= 4'b0001;
      end
      else if (q == 4'b1000) begin
        
        q <= 4'b0001;
      end
      
      else 
        
        q <= q << 1;
    end
endmodule