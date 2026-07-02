module tb;
  
  reg d;
  reg clk;
  wire q;
  
  d_flipflop uut(
    
    .d(d),
    .clk(clk),
    .q(q)
    
  );
  
  initial begin
    
    
    clk = 0;
end

always #5 clk = ~clk;
  
  initial begin
    
    $dumpfile("d_flipflop.vcd");
    $dumpvars(0,tb);
    $monitor("time=%0t, d=%b, clk=%b, q=%b",
      $time, d, clk, q);
  
  d = 0;
  #12;
  
  d = 1;
  #10;
  
  d = 0;
  #10;
    
  
  $finish;
    
  end
  
    endmodule