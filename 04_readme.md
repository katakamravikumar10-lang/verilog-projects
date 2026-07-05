# 4-Bit Shift Register (Serial-In Parallel-Out)

## 📖 Description

A 4-Bit Shift Register is a sequential logic circuit used to store and shift binary data one bit at a time. It is constructed using four D Flip-Flops connected in series. On every positive edge of the clock (`CLK`), the input bit (`Serial In`) is shifted into the register, while the existing bits move one position to the next flip-flop.

This implementation is a **Serial-In Parallel-Out (SIPO)** shift register because data is entered serially and read out in parallel.

### Inputs

- `clk` – Clock Signal
- `serial_in` – Serial Data Input

### Output

- `q[3:0]` – 4-Bit Parallel Output

---

## 📌 Operation

### Initial State

```text
Q3 Q2 Q1 Q0
0  0  0  0
```

### Example

If the serial input sequence is:

```text
1 → 0 → 1 → 1
```

Then the register contents after each positive clock edge are:

| Clock Edge | Serial In | Q3 Q2 Q1 Q0 |
|------------|-----------|-------------|
| Initial | - | 0000 |
| 1 | 1 | 0001 |
| 2 | 0 | 0010 |
| 3 | 1 | 0101 |
| 4 | 1 | 1011 |

---

## 🧮 RTL Behavior

```text
On every positive edge of the clock:

Q0 <= Serial In
Q1 <= Previous Q0
Q2 <= Previous Q1
Q3 <= Previous Q2
```

---

## 📂 Project Files

- `design.sv` – Verilog RTL design
- `testbench.sv` – Verilog testbench
- `waveform.png` – Simulation waveform
- `README.md` – Project documentation

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
- Shift Register Architecture
- Serial-In Parallel-Out (SIPO) Operation
- Positive Edge Triggering
- Non-Blocking Assignment (`<=`)
- Verilog RTL Coding
- Testbench Development
- Waveform Analysis

---

## 🎯 Applications

- Serial-to-Parallel Data Conversion
- Data Storage
- Data Transfer
- Digital Communication Systems
- Embedded Systems
- FPGA and ASIC Designs
- Digital Signal Processing (DSP)

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering