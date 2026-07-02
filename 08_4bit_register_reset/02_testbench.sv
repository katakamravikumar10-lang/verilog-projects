module tb;
  
  reg [3:0]d;
  reg clk;
  reg reset;
  
  wire [3:0]q;
  
  register_4bit_reset uut(
    
    .d(d),
    .clk(clk),
    .q(q),
    .reset(reset)
    
  );
  
  initial begin
    clk = 0;
  end
  
  always #5 clk = ~clk;
  
  initial begin
    
    $dumpfile("register_4bit_reset.vcd");
    $dumpvars(0, tb);
    $monitor("Time=%0t, d=%b, clk=%b, reset=%b, q=%b", 
             $time, d, clk, reset, q);
    reset=1;
    d=4'b1010;
    #10;
    
    reset=0;
    d=4'b1100;
    #10;
    
    reset=0;
    d=4'b0011;
    #10;
    
    $finish;
  end
    
 
endmodule