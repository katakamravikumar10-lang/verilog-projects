# 4-Bit Register

## 📖 Description

A 4-Bit Register is a sequential logic circuit used to store a 4-bit binary value. It consists of four D Flip-Flops connected in parallel and shares a common clock signal. On every positive edge of the clock (`CLK`), the register stores the 4-bit input (`D`) and transfers it to the 4-bit output (`Q`).

### Inputs

- `d[3:0]` – 4-Bit Data Input
- `clk` – Clock Signal

### Output

- `q[3:0]` – 4-Bit Stored Output

---

## 📌 Operation

| Clock | D[3:0] | Q[3:0] |
|-------|---------|---------|
| ↑ | 0000 | 0000 |
| ↑ | 1010 | 1010 |
| ↑ | 1100 | 1100 |
| No Edge | XXXX | No Change |

> **Note:** The register updates its output only on the **positive edge** of the clock.

---

## 🧮 RTL Behavior

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
- 4-Bit Data Storage
- Positive Edge Triggering
- Vector Signals (`[3:0]`)
- Non-Blocking Assignment (`<=`)
- Verilog RTL Coding
- Testbench Development
- Waveform Analysis

---

## 🎯 Applications

- Data Storage Registers
- Processor Registers
- Temporary Data Storage
- Digital Systems
- Memory Interfaces
- Shift Registers
- Counters

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering