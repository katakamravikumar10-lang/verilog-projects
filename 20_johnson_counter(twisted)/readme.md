# 4-bit Johnson Counter (Twisted Ring Counter) using Verilog

## 📌 Project Overview
This project implements a 4-bit Johnson Counter (Twisted Ring Counter) using Verilog HDL. A Johnson Counter is a modified Ring Counter in which the inverted output of the last flip-flop is fed back to the input of the first flip-flop. It generates **2N unique states** for an N-bit counter.

## 🎯 Features
- 4-bit Johnson Counter
- Twisted Ring Counter implementation
- Inverted feedback (~q[3])
- Asynchronous active-high reset
- Generates 8 unique states
- Verified using a Verilog testbench
- Waveform generated using GTKWave

## 🛠️ Tools Used
- Verilog HDL
- EDA Playground / Icarus Verilog
- GTKWave

## 📂 Files
- design.sv
- testbench.sv
- johnson_counter.vcd
- README.md

## ⚙️ Working

After reset:

```
0000
```

Counting sequence:

```
0000
0001
0011
0111
1111
1110
1100
1000
0000
```

The counter uses the **inverted output of the last flip-flop** as feedback to the first flip-flop. This causes the register to first fill with logic **1s** and then empty with logic **0s**, producing **2N states**.

## 📊 Simulation Result
The Johnson Counter was successfully simulated using a custom Verilog testbench. The generated waveform matches the expected 8-state Johnson Counter sequence.

## 🔄 Ring Counter vs Johnson Counter

| Ring Counter | Johnson Counter |
|--------------|-----------------|
| Feedback: `q[3]` | Feedback: `~q[3]` |
| N states | 2N states |
| 4-bit = 4 states | 4-bit = 8 states |
| One logic '1' rotates | Register fills with 1s and empties with 0s |

## 📚 Concepts Learned
- Johnson (Twisted Ring) Counter
- Inverted feedback
- Shift register operation
- Sequential logic design
- Asynchronous reset
- RTL simulation
- Testbench development
- Waveform verification

## 🎓 Interview Questions
1. What is a Johnson Counter?
2. Why is it called a Twisted Ring Counter?
3. Why does an N-bit Johnson Counter have 2N states?
4. What is the difference between a Ring Counter and a Johnson Counter?
5. Where are Johnson Counters used in digital systems?

## 🚀 Applications
- Sequence generators
- Timing and control circuits
- Frequency division
- Finite State Machines (FSM)
- Digital controllers
- Pattern generation

## 🚀 Future Improvements
- Parameterized Johnson Counter
- Bidirectional Johnson Counter
- Johnson Counter with Enable signal
- Johnson Counter with synchronous reset

## 👨‍💻 Author
**Ravi Kumar**

Final Year B.Tech – Electronics and Communication Engineering (ECE)

Learning RTL Design and Design Verification using Verilog HDL.