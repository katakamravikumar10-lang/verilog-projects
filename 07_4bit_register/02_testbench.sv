module tb;
  
  reg [3:0]d;
   reg clk;
  wire [3:0]q;
  
  
  
  register_4bit uut(
    
    .d(d),
    .clk(clk),
    .q(q)
    
  );
    
      
      initial begin
        
        clk = 0;
        
      end
  always #5 clk = ~clk;
  
  initial begin
    
    $dumpfile("register_4bit.vcd");
    $dumpvars(0, tb);
    $monitor("Time=%0t, d=%b, clk=%b, q=%b",
             $time, d, clk, q);
    
    
    d = 4'b0000;
    #10;
    
    d = 4'b1010;
    #10;
    
    d = 4'b1111;
    #10;
    
    $finish;
    
  end
        
    endmodule