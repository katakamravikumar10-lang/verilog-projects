# Universal Shift Register (4-Bit)

## 📖 Description

A Universal Shift Register is a versatile sequential logic circuit capable of performing multiple operations using a single hardware design. It combines the functionality of a shift register and a parallel register by supporting four different modes of operation.

This project implements a **4-Bit Universal Shift Register** using Verilog HDL.

---

## 📌 Features

- Hold Operation
- Shift Right
- Shift Left
- Parallel Load
- Positive Edge Triggered
- 4-Bit Data Storage

---

## 📥 Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| `clk` | 1 | Clock Signal |
| `sel` | 2 | Mode Selection |
| `serial_input_right` | 1 | Serial input during Shift Right |
| `serial_input_left` | 1 | Serial input during Shift Left |
| `parallel_input` | 4 | Parallel data input |

---

## 📤 Output

| Signal | Width | Description |
|---------|------:|-------------|
| `q` | 4 | Register Output |

---

## 🔄 Mode Selection

| `sel` | Operation | Description |
|:----:|------------|-------------|
| `00` | Hold | Retains the previous register value |
| `01` | Shift Right | Data shifts towards Q0 |
| `10` | Shift Left | Data shifts towards Q3 |
| `11` | Parallel Load | Loads all 4 bits simultaneously |

---

## 🧮 Operation Example

### Initial Register

```text
Q3 Q2 Q1 Q0

0000
```

### Parallel Load (sel = 11)

```text
Parallel Input = 1010

Output = 1010
```

### Hold (sel = 00)

```text
Output remains

1010
```

### Shift Right (sel = 01)

```text
Serial Input Right = 1

Before : 1010

After  : 1101
```

### Shift Left (sel = 10)

```text
Serial Input Left = 0

Before : 1101

After  : 1010
```

---

## 📂 Project Files

```
10_Universal_Shift_Register/
│
├── design.sv
├── testbench.sv
├── waveform.png
└── README.md
```

---

## 🛠️ Tools Used

- Verilog HDL
- EDA Playground
- GTKWave
- Visual Studio Code
- Git
- GitHub

---

## 📚 Concepts Learned

- Sequential Logic
- Universal Shift Register
- Shift Left Operation
- Shift Right Operation
- Parallel Load
- Hold Operation
- Case Statement
- Non-Blocking Assignment (`<=`)
- Testbench Development
- Waveform Analysis

---

## 🎯 Applications

- Serial-to-Parallel Data Conversion
- Parallel-to-Serial Data Conversion
- Temporary Data Storage
- Digital Communication
- Data Buffering
- FPGA Designs
- ASIC Designs
- Microprocessor Systems
- Digital Signal Processing (DSP)

---

## ▶️ Simulation

The testbench verifies all four operating modes:

- Hold
- Shift Right
- Shift Left
- Parallel Load

The simulation waveform confirms the correct functionality of the Universal Shift Register.

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering (ECE)

Passionate about **Digital Design, Verilog HDL, RTL Design, and VLSI**.