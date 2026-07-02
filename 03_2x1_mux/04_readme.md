# 2:1 Multiplexer (MUX)

## 📖 Description

A 2:1 Multiplexer (MUX) is a combinational logic circuit that selects one of two input signals and forwards it to a single output based on the value of the select line.

### Inputs

- `d0` – Input 0
- `d1` – Input 1
- `s` – Select Line

### Output

- `y` – Selected Output

---

## 📌 Truth Table

| Select (s) | Output (y) |
|------------|------------|
| 0 | d0 |
| 1 | d1 |

---

## 🧮 Logic Equation

```text
y = (~s & d0) | (s & d1)
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
- Multiplexer Operation
- Conditional Data Selection
- Continuous Assignment (`assign`)
- Verilog Testbench Writing
- Waveform Analysis

---

## 🎯 Applications

- Data Selection
- Bus Switching
- Communication Systems
- Arithmetic Logic Units (ALU)
- Digital Signal Processing (DSP)
- Processor Design

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering