module tb;
  
   reg serial_in;
   reg clk;
   wire [3:0] q;
  
  shift_register_4bit uut(
    
    .serial_in(serial_in),
    .clk(clk),
    .q(q)
    
  );
  
  initial begin
    
    clk = 0;
    
  end
  
  initial begin
    
    $dumpfile("shift_register_4bit.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t, serial_in=%b, clk=%b, q=%b",
             $time, serial_in, clk, q);
  end
 
    
    always #5 clk = ~clk;
  
  initial begin
    
    serial_in = 0;
    #2;
    
    serial_in = 1;
    #10;
    
    serial_in = 0;
    #10;
    
    serial_in = 1;
    #10;
    
    serial_in = 1;
    #10;

  
  $finish;
  end
    
endmodule