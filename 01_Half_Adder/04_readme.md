# Half Adder

## 📖 Description

A Half Adder is a combinational logic circuit that adds two 1-bit binary inputs and produces two outputs:

- Sum
- Carry

## 📌 Truth Table

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

## 🧮 Logic Equations

```text
Sum   = A ^ B
Carry = A & B
```

## 📂 Project Files

- `design.sv` - Verilog RTL design
- `testbench.sv` - Verilog testbench

## 🛠️ Tools Used

- Verilog HDL
- EDA Playground
- GTKWave
- VS Code

## 📚 Learning Outcomes

- Combinational Logic Design
- Continuous Assignment (`assign`)
- Writing a Verilog Testbench
- Waveform Analysis