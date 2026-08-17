# 4×2 Encoder — Verilog RTL

## Overview

A 4×2 Encoder is a combinational circuit that converts 4 input lines into 2-bit binary output. It assumes that only one input is HIGH at a time.

## Truth Table

| D3 | D2 | D1 | D0 | Y[1:0] |
|----|----|----|----|--------|
| 0  | 0  | 0  | 1  | 00     |
| 0  | 0  | 1  | 0  | 01     |
| 0  | 1  | 0  | 0  | 10     |
| 1  | 0  | 0  | 0  | 11     |

## Boolean Equations

Y0 = D1 + D3  
Y1 = D2 + D3

In Verilog, OR operation is represented using `|`.

## RTL Implementation

The encoder is implemented using continuous assignment (`assign`) statements.

```verilog
module encoder_4x2(
    input [3:0] d,
    output [1:0] y
);

  assign y[0] = d[1] | d[3];
  assign y[1] = d[2] | d[3];

endmodule