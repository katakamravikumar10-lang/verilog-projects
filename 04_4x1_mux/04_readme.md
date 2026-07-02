# 4:1 Multiplexer (MUX)

## 📖 Description

A 4:1 Multiplexer (MUX) is a combinational logic circuit that selects one of four input signals and forwards it to a single output based on the values of two select lines.

### Inputs

- `d0` – Input 0
- `d1` – Input 1
- `d2` – Input 2
- `d3` – Input 3
- `s1` – Select Line 1 (MSB)
- `s0` – Select Line 0 (LSB)

### Output

- `y` – Selected Output

---

## 📌 Truth Table

| s1 | s0 | Output (y) |
|----|----|------------|
| 0 | 0 | d0 |
| 0 | 1 | d1 |
| 1 | 0 | d2 |
| 1 | 1 | d3 |

---

## 🧮 Logic Equation

```text
y = (~s1 & ~s0 & d0) |
    (~s1 &  s0 & d1) |
    ( s1 & ~s0 & d2) |
    ( s1 &  s0 & d3)
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
- Data Selection Using Select Lines
- Continuous Assignment (`assign`)
- Verilog RTL Coding
- Testbench Development
- Waveform Analysis

---

## 🎯 Applications

- Data Routing
- Bus Switching
- Communication Systems
- Arithmetic Logic Units (ALU)
- Memory Address Selection
- Processor Design
- Digital Signal Processing (DSP)

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering