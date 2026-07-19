# 4-bit Up Counter

## 📌 Project Overview

This project implements a **4-bit Up Counter** using Verilog HDL. The counter increments its value by **1** on every positive edge of the clock and automatically wraps around from **1111** to **0000**. It includes an **active-high asynchronous reset** to initialize the counter.

---

## 🎯 Features

- 4-bit synchronous up counter
- Positive edge-triggered clock
- Active-high asynchronous reset
- Counts from 0 to 15
- Automatically wraps from 15 to 0
- Synthesizable RTL design
- Verified using a Verilog testbench

---

## 🛠️ Hardware Architecture

```
                +----------------------+
                |                      |
clk ----------> |                      |
                |     4-bit Register   |
reset --------> |                      |
                +----------+-----------+
                           |
                           | Current Count
                           v
                     +-----------+
                     |  Adder +1 |
                     +-----------+
                           |
                           |
                           +-------> Next Count
```

---

## 🔄 Counter Sequence

```
0000
0001
0010
0011
0100
0101
0110
0111
1000
1001
1010
1011
1100
1101
1110
1111
0000
```

---

## 📂 Project Files

```
up_counter/
│── design/
│   └── up_counter.v
│
│── testbench/
│   └── tb_up_counter.v
│
│── waveform/
│   ├── up_counter.vcd
│   └── waveform.png
│
└── README.md
```

---

## ⚙️ Simulation Tools

- Verilog HDL
- Icarus Verilog
- GTKWave
- EDA Playground

---

## 📷 Waveform

Add your waveform screenshot here after simulation.

Example:

```
waveform/waveform.png
```

---

## 🎓 Concepts Learned

- Sequential Logic
- Registers
- Positive Edge Triggering
- Asynchronous Reset
- Up Counter Design
- Non-Blocking Assignments (`<=`)
- Testbench Development
- Waveform Analysis

---

## 🚀 Applications

- Digital Clocks
- Timers
- Frequency Dividers
- Program Counters (CPU)
- Address Generators
- Memory Controllers
- Embedded Systems
- Digital Signal Processing

---

## 👨‍💻 Author

**Ravi Kumar**

Final Year B.Tech - Electronics and Communication Engineering (ECE)

Narayana Engineering College, Gudur

GitHub: https://github.com/katakamravikumar10-lang/verilog-projects