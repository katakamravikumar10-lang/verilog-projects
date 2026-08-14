# 3-bit Gray Code Counter using Verilog

## 📌 Project Overview

This project implements a **3-bit Gray Code Counter** using Verilog HDL.

The design internally maintains a binary counter and converts the binary value into Gray Code.

The main property of Gray Code is that **only one bit changes between consecutive states**.

---

## 🎯 Features

- 3-bit Gray Code Counter
- Binary counter internally
- Binary-to-Gray conversion
- Asynchronous active-high reset
- Combinational Gray conversion logic
- Sequential counter logic
- Testbench verification
- Waveform verified using EPWave

---

## 🛠️ Tools Used

- Verilog HDL
- EDA Playground
- Icarus Verilog
- EPWave
- Git & GitHub

---

## 🏗️ Block Diagram

```text
             ┌─────────────────┐
CLK ────────►│  Binary Counter │
RESET ──────►│                 │
             └────────┬────────┘
                      │
                  Binary[2:0]
                      │
                      ▼
             ┌─────────────────┐
             │ Binary → Gray   │
             │   Converter     │
             └────────┬────────┘
                      │
                      ▼
                  Gray[2:0]