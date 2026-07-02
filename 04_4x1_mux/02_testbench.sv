module tb;
  
  reg d0;
  reg d1;
  reg d2;
  reg d3;
  reg s0;
  reg s1;
  wire y;
  
  
  mux4x1 uut(
    
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .s0(s0),
    .s1(s1),
    .y(y)
    
  );
    
    initial begin 
      
      $dumpfile("mux4x1.vcd");
      $dumpvars(0,tb);
      
      $monitor(" Time=%0t, d0=%b, d1=%b, d2=%b, d3=%b, s0=%b, s1=%b, y=%b",
               $time, d0, d1, d2, d3, s0, s1, y);
      
      d0=0;
      d1=1;
      d2=0;
      d3=1;
      
      s1=0;
      s0=0;
      #10;
      
      s1=0;
      s0=1;
      #10;
      
      s1=1;
      s0=0;
      #10;
      
      s1=1;
      s0=1;
      #10;
      
      $finish;
      
    end
endmodule