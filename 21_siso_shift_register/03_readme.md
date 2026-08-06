# 4-bit SISO (Serial-In Serial-Out) Shift Register using Verilog

## 📌 Project Overview
This project implements a 4-bit Serial-In Serial-Out (SISO) Shift Register using Verilog HDL. A SISO Shift Register accepts one bit of serial input on every clock cycle, shifts the existing data through the register, and produces one serial output from the last flip-flop.

## 🎯 Features
- 4-bit SISO Shift Register
- Serial data input (sin)
- Serial data output (sout)
- Asynchronous active-high reset
- Positive edge-triggered operation
- Verified using a Verilog testbench
- Waveform generated using GTKWave

---

## 🛠️ Tools Used
- Verilog HDL
- EDA Playground
- Icarus Verilog
- GTKWave
- Git & GitHub

---

## 📂 Project Files

```
design.sv
testbench.sv
siso_shift_register.vcd
README.md
```

---

## 🏗️ Hardware Block Diagram

```
                  CLOCK
                    │
                    ▼

Serial In
    │
    ▼
+--------+    +--------+    +--------+    +--------+
| DFF 0  |--->| DFF 1  |--->| DFF 2  |--->| DFF 3  |----> Serial Out
+--------+    +--------+    +--------+    +--------+
```

---

## ⚙️ Working Principle

Initially,

```
0000
```

Suppose the serial input sequence is:

```
1 → 0 → 1 → 1
```

The register contents become:

| Clock | Serial Input | Register (q) |
|-------|--------------|--------------|
| Reset | - | 0000 |
| 1 | 1 | 0001 |
| 2 | 0 | 0010 |
| 3 | 1 | 0101 |
| 4 | 1 | 1011 |

The serial output (`sout`) is continuously connected to the last flip-flop (`q[3]`).

---

## 📊 Simulation Result

The design was successfully simulated using a custom Verilog testbench.

The generated waveform confirms:

- Correct serial data shifting
- Proper asynchronous reset
- Correct serial output generation
- Expected shift register behavior

---

## 📚 Concepts Learned

- Shift Registers
- SISO Architecture
- D Flip-Flops
- Serial Data Transfer
- Sequential Logic
- Non-blocking Assignment (`<=`)
- Continuous Assignment (`assign`)
- Testbench Development
- Waveform Analysis

---

## 🎯 Interview Questions

1. What is a Shift Register?
2. What is the difference between SISO, SIPO, PISO and PIPO?
3. Why do sequential circuits use non-blocking assignments (`<=`)?
4. Why is `assign sout = q[3];` used?
5. What happens on every positive clock edge?
6. Difference between Shift Register and Counter?
7. Why do we use delays (`#10`) in the testbench?

---

## 🚀 Applications

- UART Communication
- SPI Interface
- I2C Communication
- Data Serialization
- Communication Systems
- FPGA Designs
- Digital Signal Processing
- Memory Interfaces

---

## 🔮 Future Improvements

- Parameterized Shift Register
- Shift Enable Signal
- Bidirectional Shift Register
- Universal Shift Register
- Variable Register Width

---

## 👨‍💻 Author

**Ravi Kumar**

Final Year B.Tech (ECE)

Learning RTL Design and Design Verification using Verilog HDL.