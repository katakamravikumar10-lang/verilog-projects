module tb;
  reg clk;
  reg reset;
  wire [3:0] q;
  
  down_counter uut(
    
    .clk(clk),
    .reset(reset),
    .q(q)
    
  );
  always #5 clk = ~clk;
  initial begin
    $dumpfile("down_counter.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t, clk=%b, reset=%b, q=%b",
             $time, clk, reset, q);
  end
  initial begin
    reset = 1;
    clk=0;
    #10;
    
    reset = 0;
    #170;
    
    $finish;
    
  end
endmodule