# 4-Bit Comparator


## 📖 Description


A Comparator is a combinational logic circuit used to compare two binary numbers and determine their relationship.


This project implements a **4-Bit Comparator** using **Verilog HDL**. It compares two 4-bit inputs and produces three outputs indicating whether:


- `A > B`
- `A = B`
- `A < B`


Since this is a combinational circuit, no clock signal is required.


---


## 📌 Features


- 4-Bit Binary Comparator
- Combinational Logic Design
- Greater Than Output
- Equal Output
- Less Than Output
- Uses `always @(*)`
- Uses `if / else if / else`
- Relational Operators (`>`, `==`)
- Synthesizable RTL Design
- No Clock Required


---


## 📥 Inputs


| Signal | Width | Description |
|---------|------:|-------------|
| `a` | 4 | First 4-bit binary input |
| `b` | 4 | Second 4-bit binary input |


---


## 📤 Outputs


| Signal | Width | Description |
|---------|------:|-------------|
| `gt` | 1 | HIGH when `A > B` |
| `eq` | 1 | HIGH when `A = B` |
| `lt` | 1 | HIGH when `A < B` |


---


## 🔄 Operation


The comparator compares the two 4-bit binary inputs `A` and `B`.


### When A > B


```text
gt = 1
eq = 0
lt = 0
When A = B
gt = 0
eq = 1
lt = 0
When A < B
gt = 0
eq = 0
lt = 1
📊 Comparison Table
Condition	gt	eq	lt
A > B	1	0	0
A = B	0	1	0
A < B	0	0	1
🧠 Working Principle

The comparator uses Verilog relational operators to compare the two 4-bit inputs.

if (a > b)

If A is greater than B, the gt output becomes HIGH.

else if (a == b)

If A is equal to B, the eq output becomes HIGH.

If both conditions are false, then A < B, so the lt output becomes HIGH.

The comparison of binary numbers is determined by the most significant differing bit.

💻 RTL Implementation
module comparator_4bit(


  input [3:0] a,
  input [3:0] b,
  output reg gt,
  output reg eq,
  output reg lt


);


  always @(*) begin


    if (a > b) begin
      gt = 1'b1;
      eq = 1'b0;
      lt = 1'b0;
    end


    else if (a == b) begin
      gt = 1'b0;
      eq = 1'b1;
      lt = 1'b0;
    end


    else begin
      gt = 1'b0;
      eq = 1'b0;
      lt = 1'b1;
    end


  end


endmodule
🧪 Testbench

The testbench applies different combinations of A and B and observes the outputs gt, eq, and lt.

module tb;


  reg [3:0] a;
  reg [3:0] b;


  wire gt;
  wire eq;
  wire lt;


  comparator_4bit dut(
    .a(a),
    .b(b),
    .gt(gt),
    .eq(eq),
    .lt(lt)
  );


  initial begin
    $dumpfile("comparator_4bit.vcd");
    $dumpvars(0,tb);


    $monitor("time=%0t, a=%b, b=%b, gt=%b, eq=%b, lt=%b",
             $time, a, b, gt, eq, lt);
  end


  initial begin


    a = 4'b1010;
    b = 4'b0011;
    #10;


    a = 4'b0101;
    b = 4'b1100;
    #10;


    a = 4'b1101;
    b = 4'b0010;
    #10;


    a = 4'b0110;
    b = 4'b0110;
    #10;


    $finish;


  end


endmodule
📊 Verification

The following test cases were verified using simulation:

A	B	Result	gt	eq	lt
1010	0011	A > B	1	0	0
0101	1100	A < B	0	0	1
1101	0010	A > B	1	0	0
0110	0110	A = B	0	1	0

The waveform was successfully verified and confirmed the correct operation of the 4-Bit Comparator.

📂 Project Structure
12_4-Bit_Comparator/
│
├── 01_design.v
├── 02_testbench.sv
├── 03_waveform.png
└── README.md
🛠️ Tools Used
Verilog HDL
Icarus Verilog
EDA Playground
EPWave
Visual Studio Code
Git
GitHub
📚 Concepts Learned
Combinational Logic
Binary Number Comparison
4-Bit Vectors
Vector Inputs
Relational Operators
Greater Than (>)
Equal To (==)
Less Than (<)
always @(*)
if / else if / else
Procedural Assignments
reg Outputs
Synthesizable RTL Design
Testbench Development
Simulation
Waveform Analysis
🎯 Applications
ALU Design
CPU Control Logic
Address Comparison
Digital Control Systems
Sorting Circuits
Data Processing Units
FPGA Designs
ASIC Designs
Digital Decision-Making Circuits
▶️ Simulation

The testbench verifies all three comparison conditions:

A > B
A = B
A < B

The design was simulated using Icarus Verilog and the waveform was verified using EPWave.

Simulation results confirmed that only the appropriate comparison output becomes HIGH for each test case.

####👨‍💻 Author

Ravi Kumar

B.Tech – Electronics and Communication Engineering (ECE)

Passionate about Digital Design, Verilog HDL, RTL Design, Design Verification, and VLSI.

GitHub: https://github.com/katakamravikumar10-lang