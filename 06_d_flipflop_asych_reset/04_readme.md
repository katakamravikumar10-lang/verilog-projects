# D Flip-Flop with Asynchronous Reset

## 📖 Description

A D Flip-Flop with Asynchronous Reset is a sequential logic circuit that stores one bit of data. It captures the input (`D`) on the positive edge of the clock (`CLK`). The asynchronous reset (`RESET`) has the highest priority and immediately clears the output (`Q`) to `0` whenever it is asserted, regardless of the clock signal.

### Inputs

- `d` – Data Input
- `clk` – Clock Signal
- `reset` – Active-High Asynchronous Reset

### Output

- `q` – Stored Output

---

## 📌 Truth Table

| Reset | Clock | D | Q (Next State) |
|-------|-------|---|----------------|
| 1 | X | X | 0 |
| 0 | ↑ | 0 | 0 |
| 0 | ↑ | 1 | 1 |
| 0 | No Edge | X | No Change |

> **Note:**
> - When `reset = 1`, the output is immediately cleared to `0`, regardless of the clock.
> - When `reset = 0`, the flip-flop captures the value of `D` only on the positive edge of the clock.

---

## 🧮 RTL Behavior

```text
If RESET = 1
    Q <= 0
Else if CLK has a positive edge
    Q <= D
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

- Sequential Logic Design
- Edge-Triggered D Flip-Flop
- Active-High Asynchronous Reset
- Sensitivity List (`posedge clk or posedge reset`)
- Non-Blocking Assignment (`<=`)
- Verilog RTL Coding
- Testbench Development
- Waveform Analysis

---

## 🎯 Applications

- Digital Registers
- Shift Registers
- Counters
- Finite State Machines (FSM)
- Memory Elements
- Processor Control Logic
- Digital Systems

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering