# 4-bit Ring Counter using Shift Operator (Verilog)

## 📌 Project Overview
This project implements a 4-bit Ring Counter using the left shift operator in Verilog HDL. A single logic '1' circulates through the register on every positive clock edge.

## 🎯 Features
- 4-bit Ring Counter
- Left Shift Operator (<<)
- Asynchronous active-high reset
- Single active bit rotation
- Verified using a Verilog testbench
- Waveform generated using GTKWave

## 🛠️ Tools Used
- Verilog HDL
- EDA Playground / Icarus Verilog
- GTKWave

## 📂 Files
- design.sv
- testbench.sv
- ring_counter.vcd
- README.md

## ⚙️ Working
After reset:

0001

Counting sequence:

0001 → 0010 → 0100 → 1000 → 0001

The design uses the left shift operator to move the active bit. When the output reaches **1000**, it reloads **0001** to continue the sequence.

## 📊 Simulation Result
The design was verified using a custom testbench, and the waveform confirms the correct circular movement of the active bit.

## 📚 Concepts Learned
- Shift operator (<<)
- Ring Counter
- Sequential logic
- Asynchronous reset
- RTL simulation
- Waveform analysis

## 🚀 Future Improvements
- Parameterized Ring Counter
- Bidirectional Ring Counter
- Johnson (Twisted Ring) Counter