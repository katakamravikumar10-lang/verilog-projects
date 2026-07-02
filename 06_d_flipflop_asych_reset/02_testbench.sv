module tb;
  
  reg d;
  reg clk;
  reg reset;
  wire q;
  
  d_flipflop_asych uut(
    
    .d(d),
    .clk(clk),
    .reset(reset),
    .q(q)
    
  );  
  
  initial begin
    
    clk=0;
    
  end
  
  always #5 clk = ~clk;
    
  initial begin
    
     
    $dumpfile("d_flipflop_asych.vcd");
    $dumpvars(0,tb);
    $monitor("time=%0t, d=%b, reset=%b, q=%b, clk=%b",
              $time, d, clk, reset, q);
    
     reset=1;
    d=0;
    #10;
    
    reset=0;
    d=1;
    #10;
    
    d=0;
    #10;
    
    $finish;
    
  end 
endmodule