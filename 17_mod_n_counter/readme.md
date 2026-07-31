# 4-bit Parameterized Mod-N Counter using Verilog

## 📌 Project Overview
This project implements a 4-bit parameterized Mod-N counter in Verilog HDL. The counter increments on every positive edge of the clock and resets to zero after reaching N-1. The parameterized design allows the same RTL to be reused for different Mod-N counters by changing only the parameter value.

## 🎯 Features
- 4-bit synchronous counter
- Parameterized Mod-N implementation
- Asynchronous active-high reset
- Reusable RTL using parameter override
- Verified using a Verilog testbench
- Waveform generated using GTKWave

## 🛠️ Tools Used
- Verilog HDL
- EDA Playground / Icarus Verilog
- GTKWave

## 📂 Files
- design.sv
- testbench.sv
- mod_n_counter.vcd
- README.md

## ⚙️ Working
- Counter starts from 0 after reset.
- Counter increments on every positive clock edge.
- When the count reaches **N-1**, it resets back to **0**.
- The value of **N** can be changed using parameter override.

Example (N = 4):

0000 → 0001 → 0010 → 0011 → 0000

## 📊 Simulation Result
Simulation was verified using a custom testbench and waveform analysis in GTKWave.

## 📚 Concepts Learned
- Parameterized RTL design
- Sequential logic
- Asynchronous reset
- Testbench development
- Waveform analysis
- Reusable hardware modules

## 🚀 Future Improvements
- Parameterize counter width
- Add enable signal
- Add load functionality