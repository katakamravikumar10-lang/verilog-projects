# 4-Bit Register with Asynchronous Reset

## 📖 Description

A 4-Bit Register with Asynchronous Reset is a sequential logic circuit used to store a 4-bit binary value. It consists of four D Flip-Flops connected in parallel with a common clock (`CLK`) and an active-high asynchronous reset (`RESET`).

When the **RESET** signal is asserted (`RESET = 1`), all four output bits are immediately cleared to `0000`, regardless of the clock signal. When `RESET = 0`, the register stores the 4-bit input (`D`) on the positive edge of the clock.

### Inputs

- `d[3:0]` – 4-Bit Data Input
- `clk` – Clock Signal
- `reset` – Active-High Asynchronous Reset

### Output

- `q[3:0]` – 4-Bit Stored Output

---

## 📌 Operation

| Reset | Clock | D[3:0] | Q[3:0] |
|-------|-------|---------|---------|
| 1 | X | XXXX | 0000 |
| 0 | ↑ | 0000 | 0000 |
| 0 | ↑ | 1010 | 1010 |
| 0 | ↑ | 1100 | 1100 |
| 0 | No Edge | XXXX | No Change |

> **Note:**
>
> - When `RESET = 1`, the output is immediately cleared to `0000`.
> - When `RESET = 0`, the register updates its output only on the positive edge of the clock.

---

## 🧮 RTL Behavior

```text
If RESET = 1
    Q <= 4'b0000
Else if CLK has a positive edge
    Q <= D
```

---

## 📂 Project Files

- `design.sv` – Verilog RTL design
- `testbench.sv` – Verilog testbench
- `waveform.png` – Simulation waveform (optional)

---

## 🛠️ Tools Used

- Verilog HDL
- EDA Playground
- GTKWave
- Visual Studio Code
- Git
- GitHub

---

## 📚 Learning Outcomes

- Sequential Logic Design
- 4-Bit Register Design
- Active-High Asynchronous Reset
- Positive Edge Triggering
- Vector Signals (`[3:0]`)
- Non-Blocking Assignment (`<=`)
- Verilog RTL Coding
- Testbench Development
- Waveform Analysis

---

## 🎯 Applications

- Processor Registers
- Temporary Data Storage
- Register Files
- Digital Controllers
- Finite State Machines (FSM)
- Counters
- FPGA and ASIC Designs

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering