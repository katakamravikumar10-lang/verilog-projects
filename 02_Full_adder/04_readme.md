# Full Adder

## 📖 Description

A Full Adder is a combinational logic circuit that adds three 1-bit binary inputs:

- A
- B
- Cin (Carry Input)

It produces two outputs:

- Sum
- Cout (Carry Output)

A Full Adder is used in digital systems to perform binary addition and is the basic building block of multi-bit adders.

---

## 📌 Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

---

## 🧮 Logic Equations

```text
Sum  = A ^ B ^ Cin
Cout = (A & B) | (B & Cin) | (A & Cin)
```

---

## 📂 Project Files

- `design.sv` – Verilog RTL design
- `testbench.sv` – Verilog testbench

---

## 🛠️ Tools Used

- Verilog HDL
- EDA Playground
- GTKWave
- Visual Studio Code
- Git & GitHub

---

## 📚 Learning Outcomes

- Combinational Logic Design
- Continuous Assignment (`assign`)
- Binary Addition
- Carry Propagation
- Verilog Testbench Writing
- Waveform Analysis

---

## 🎯 Applications

- Arithmetic Logic Unit (ALU)
- Ripple Carry Adder
- Binary Adders
- Digital Processors
- Arithmetic Circuits

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering