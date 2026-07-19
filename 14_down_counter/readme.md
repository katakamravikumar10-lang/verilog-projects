# 4-bit Down Counter

## 📌 Project Overview

This project implements a **4-bit Down Counter** using Verilog HDL. The counter decrements its value by **1** on every positive edge of the clock and automatically wraps around from **0000** to **1111**. It includes an **active-high asynchronous reset** to initialize the counter to its maximum value.

---

## 🎯 Features

- 4-bit synchronous down counter
- Positive edge-triggered clock
- Active-high asynchronous reset
- Counts from 15 to 0
- Automatically wraps from 0 to 15
- Synthesizable RTL design
- Verified using a Verilog testbench

---

## 🛠️ Hardware Architecture

```
                +----------------------+
                |                      |
clk ----------> |                      |
                |    4-bit Register    |
reset --------> |                      |
                +----------+-----------+
                           |
                           | Current Count
                           v
                     +------------+
                     | Decrement  |
                     |    (-1)    |
                     +------------+
                           |
                           |
                           +-------> Next Count
```

---

## 🔄 Counter Sequence

```
1111
1110
1101
1100
1011
1010
1001
1000
0111
0110
0101
0100
0011
0010
0001
0000
1111
```

---

## 📂 Project Files

```
down_counter/
│── design/
│   └── down_counter.v
│
│── testbench/
│   └── tb_down_counter.v
│
│── waveform/
│   ├── down_counter.vcd
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

Add your waveform screenshot after simulation.

---

## 🎓 Concepts Learned

- Sequential Logic
- Registers
- Positive Edge Triggering
- Asynchronous Reset
- Down Counter Design
- Non-Blocking Assignments (`<=`)
- Testbench Development
- Waveform Analysis

---

## 🚀 Applications

- Digital Timers
- Countdown Timers
- Event Counters
- Memory Address Generation
- Embedded Systems
- Finite State Machines

---

## 👨‍💻 Author

**Ravi Kumar**

Final Year B.Tech – Electronics and Communication Engineering (ECE)

Narayana Engineering College, Gudur

GitHub: https://github.com/katakamravikumar10-lang/verilog-projects