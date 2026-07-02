# D Flip-Flop

## 📖 Description

A D (Data) Flip-Flop is a sequential logic circuit that stores one bit of data. It captures the value of the input (`D`) on the positive edge of the clock (`CLK`) and transfers it to the output (`Q`).

Unlike combinational circuits, a D Flip-Flop stores data and changes its output only on the active clock edge.

### Inputs

- `d` – Data Input
- `clk` – Clock Signal

### Output

- `q` – Stored Output

---

## 📌 Truth Table

| Clock | D | Q (Next State) |
|-------|---|----------------|
| ↑ | 0 | 0 |
| ↑ | 1 | 1 |
| No Edge | X | No Change |

> **Note:** The output changes only on the **positive edge (↑)** of the clock.

---

## 🧮 Logic Operation

```text
On every positive edge of the clock:

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
- Edge-Triggered Flip-Flops
- Positive Edge Clocking
- Non-Blocking Assignment (`<=`)
- Verilog RTL Coding
- Testbench Development
- Waveform Analysis

---

## 🎯 Applications

- Data Storage
- Registers
- Shift Registers
- Counters
- Finite State Machines (FSM)
- Digital Systems
- Processor Design

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering