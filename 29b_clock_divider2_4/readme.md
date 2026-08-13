# 2-Stage Clock Divider using Verilog

## 📌 Project Overview

This project implements a **2-Stage Clock Divider** using Verilog HDL.

The design uses two cascaded toggle stages to generate:

- Divide-by-2 clock
- Divide-by-4 clock

```text
CLK
 │
 ▼
Stage 1 ───► clk_div2 = CLK / 2
 │
 ▼
Stage 2 ───► clk_div4 = CLK / 4
```

---

## 🎯 Features

- Divide-by-2 clock output
- Divide-by-4 clock output
- Two cascaded divider stages
- Asynchronous active-high reset
- Non-blocking assignments
- Verilog RTL implementation
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
                    ┌──────────────┐
CLK ───────────────►│   Stage 1    │
                    │   Toggle FF  │
                    └──────┬───────┘
                           │
                           ▼
                       clk_div2
                         CLK/2
                           │
                           ▼
                    ┌──────────────┐
                    │   Stage 2    │
                    │   Toggle FF  │
                    └──────┬───────┘
                           │
                           ▼
                       clk_div4
                         CLK/4
```

---

## ⚙️ Working Principle

Each toggle stage divides its input frequency by 2.

```text
Stage 1:

Fdiv2 = Fclk / 2
```

The output of the first stage drives the second stage:

```text
Fdiv4 = Fdiv2 / 2
      = Fclk / 4
```

Therefore:

```text
CLK → ÷2 → ÷2
```

---

## 💻 RTL Implementation

```verilog
module clock_divider2_4(
    input clk,
    input reset,
    output reg clk_div2,
    output reg clk_div4
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        clk_div2 <= 1'b0;
    else
        clk_div2 <= ~clk_div2;
end

always @(posedge clk_div2 or posedge reset)
begin
    if(reset)
        clk_div4 <= 1'b0;
    else
        clk_div4 <= ~clk_div4;
end

endmodule
```

---

## 🧪 Verification

A Verilog testbench was created to verify:

1. Asynchronous reset
2. Input clock generation
3. Divide-by-2 output
4. Divide-by-4 output
5. Cascaded divider operation

### Test Configuration

```text
Input clock period = 20 ns
```

### Expected Output

```text
clk_div2 period = 40 ns
clk_div4 period = 80 ns
```

Therefore:

```text
clk_div2 = Fclk / 2
clk_div4 = Fclk / 4
```

---

## 📊 Simulation Result

The RTL was simulated using Icarus Verilog and the waveform was verified using EPWave.

### Verified Relationship

```text
CLK       → F
clk_div2  → F/2
clk_div4  → F/4
```

The waveform also confirms that reset initializes both divider outputs to `0`.

### Result

**Simulation: PASS ✅**

**Waveform Verification: PASS ✅**

---

## 🧠 Key Concepts Learned

- Clock division
- Cascaded frequency dividers
- Toggle flip-flop operation
- Divide-by-2 and divide-by-4 generation
- Frequency vs period
- Asynchronous reset
- Non-blocking assignments
- Sequential RTL design
- Testbench development
- Waveform verification

---

## 🎯 Interview Questions

1. What is a clock divider?
2. How does a toggle flip-flop divide frequency?
3. Why does the first stage produce `F/2`?
4. Why does the second stage produce `F/4`?
5. Why is `clk_div2` used as the clock for the second stage?
6. What is the difference between frequency and period?
7. Why are non-blocking assignments used?
8. How would you design a divide-by-8 clock divider?
9. How many toggle stages are required for divide-by-8?
10. What are practical applications of clock dividers?

---

## 🚀 Applications

- Frequency Division
- Digital Timing Circuits
- Clock Generation
- FPGA/ASIC Designs
- Low-Frequency Clock Generation
- Timing Control

---

## 📈 Project Status

**Status: ✅ COMPLETED**

RTL design, testbench simulation, and waveform verification successfully completed.

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering (ECE)

Interested in RTL Design and Design Verification.