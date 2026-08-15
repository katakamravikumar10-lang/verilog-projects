# 2×4 Decoder — Verilog RTL

## Overview

A 2×4 Decoder is a combinational circuit that converts 2 input bits into 4 output lines. For every input combination, exactly one output is HIGH.

## Truth Table

| A | B | Y[3:0] |
|---|---|--------|
| 0 | 0 | 0001 |
| 0 | 1 | 0010 |
| 1 | 0 | 0100 |
| 1 | 1 | 1000 |

## Boolean Equations

Y0 = A'B'  
Y1 = A'B  
Y2 = AB'  
Y3 = AB

## RTL Implementation

The decoder is implemented using continuous assignment (`assign`) and Boolean logic.

```verilog
module decoder_2x4(
    input a,
    input b,
    output [3:0] y
);

  assign y[0] = (~a) & (~b);
  assign y[1] = (~a) & b;
  assign y[2] = a & (~b);
  assign y[3] = a & b;

endmodule