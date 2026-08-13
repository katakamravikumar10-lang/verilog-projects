# Divide-by-2 Clock Divider using Verilog

## 📌 Project Overview

This project implements a **Divide-by-2 Clock Divider** using Verilog HDL.

The design uses a toggle-based sequential circuit. The output toggles on every positive edge of the input clock, resulting in an output frequency that is half of the input frequency.

```text
Fout = Fin / 2
```

---

## 🎯 Features

- Divide-by-2 clock division
- Asynchronous active-high reset
- Toggle-based sequential logic
- Non-blocking assignments
- Verilog RTL implementation
- Testbench-based verification
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
CLK ────────►│  Toggle Logic   │──────► clk_div2
             │                 │
RESET ──────►│  Async Reset    │
             └─────────────────┘

             Fout = Fin / 2
```

---

## ⚙️ Working Principle

The output toggles on every positive edge of the input clock.

```text
0 → 1
1 → 0
0 → 1
1 → 0
```

Since one complete output cycle requires two input clock cycles:

```text
Tout = 2 × Tin
```

Therefore:

```text
Fout = Fin / 2
```

---

## 💻 RTL Implementation

```verilog
module clock_divider(
    input clk,
    input reset,
    output reg clk_div2
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        clk_div2 <= 1'b0;
    else
        clk_div2 <= ~clk_div2;
end

endmodule
```

---

## 🧪 Verification

A Verilog testbench was created to verify:

1. Asynchronous reset
2. Input clock generation
3. Output toggling
4. Frequency division

### Clock Configuration

```text
Input clock period = 20 ns
Output clock period = 40 ns
```

Therefore:

```text
Fout = Fin / 2
```

---

## 📊 Simulation Result

The waveform was successfully verified using EPWave.

```text
CLK      : 0 → 1 → 0 → 1 → 0 → 1 → ...
clk_div2 : 0 → 1 → 1 → 0 → 0 → 1 → ...
```

The output completes one full cycle for every two input clock cycles.

### Result

**Simulation: PASS ✅**

**Waveform Verification: PASS ✅**

---

## 🧠 Key Concepts Learned

- Clock division
- Frequency and period relationship
- Toggle operation
- T flip-flop concept
- Asynchronous reset
- Non-blocking assignments
- Sequential RTL design
- Testbench development
- Waveform verification

---

## 🎯 Interview Questions

1. What is a clock divider?
2. How does a toggle flip-flop divide the clock frequency?
3. Why is the output frequency `Fin/2`?
4. What is the relationship between input and output period?
5. Why is non-blocking assignment used?
6. What is the purpose of asynchronous reset?
7. How would you design a divide-by-4 clock divider?
8. What is the difference between a counter and a clock divider?
9. How can multiple divider stages be cascaded?
10. What are practical applications of clock dividers?

---

## 🚀 Applications

- Frequency Division
- Timing Circuits
- Clock Generation
- Digital Systems
- FPGA/ASIC Clocking Concepts
- Low-frequency Clock Generation

---

## 📈 Project Status

**Status: ✅ COMPLETED**

RTL design, testbench simulation, and waveform verification successfully completed.

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering (ECE)

Interested in RTL Design and Design Verification.