# 4-Bit Ring Counter

## 📖 Description

A Ring Counter is a special type of shift register in which the output of the last flip-flop is connected to the input of the first flip-flop. A single logic '1' circulates continuously through the register, producing a repeating one-hot sequence.

This project implements a **4-Bit Ring Counter** using **Verilog HDL** with an **active-high asynchronous reset**.

---

## 📌 Features

- 4-Bit Ring Counter
- Positive Edge Triggered
- Active-High Asynchronous Reset
- One-Hot Output Sequence
- Synthesizable RTL Design
- Non-Blocking Assignments (`<=`)

---

## 📥 Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| `clk` | 1 | Positive edge clock signal |
| `reset` | 1 | Active-high asynchronous reset |

---

## 📤 Output

| Signal | Width | Description |
|---------|------:|-------------|
| `q` | 4 | 4-bit Ring Counter output |

---

## 🔄 Operation

### Reset

When `reset = 1`

```text
Q = 0001
```

This initializes the counter with a single active bit.

---

### Counter Sequence

On every positive edge of the clock:

| Clock Cycle | Output (Q3 Q2 Q1 Q0) |
|-------------|----------------------|
| Reset | 0001 |
| 1 | 0010 |
| 2 | 0100 |
| 3 | 1000 |
| 4 | 0001 |
| ... | Repeats |

---

## 🧠 Working Principle

The output of the last flip-flop (`Q3`) is fed back to the first flip-flop (`Q0`).

```
Q3 ───────────────► Q0
 │                  │
 ▼                  ▲
Q2 ◄────────────── Q1
```

The single logic '1' continuously circulates through the register, forming a closed loop (ring).

---

## 📂 Project Structure

```
11_Ring_Counter/
│
├── 01_design.v
├── 02_testbench.sv
├── 03_waveform.png
└── README.md
```

---

## 🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code
- Git
- GitHub

---

## 📚 Concepts Learned

- Sequential Logic
- Ring Counter
- Shift Registers
- Asynchronous Reset
- Positive Edge Triggered Circuits
- Non-Blocking Assignments (`<=`)
- RTL Design
- Testbench Development
- Waveform Analysis

---

## 🎯 Applications

- LED Chaser Circuits
- Sequence Generators
- Traffic Light Controllers
- Digital Timing Systems
- FPGA Designs
- ASIC Designs
- Embedded Control Systems

---

## ▶️ Simulation

The testbench verifies:

- Reset Operation
- Ring Counter Initialization
- One-Hot Sequence Generation
- Continuous Circular Shifting

Simulation results confirm the correct operation of the 4-bit Ring Counter.

---

## 💡 Industry Note

Unlike simulation-only designs that use an `initial` block, this implementation uses an **active-high asynchronous reset** to initialize the counter to `4'b0001`. This approach is preferred in synthesizable RTL for FPGA and ASIC designs because it guarantees a known startup state.

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering (ECE)

Passionate about **Digital Design, Verilog HDL, RTL Design, Design Verification, and VLSI**.

GitHub: https://github.com/katakamravikumar10-lang