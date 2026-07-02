module mux2x1(
  
  input a,
  input b,
  input sel,
  output y
  
);
  
  assign y = (~sel & a)|(sel & b);
  
endmodule