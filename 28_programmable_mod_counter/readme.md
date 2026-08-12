# Programmable Mod-N Counter using Verilog

## 📌 Project Overview

This project implements a **4-bit Programmable Mod-N Counter** using Verilog HDL.

Unlike a fixed Mod-N counter, the modulus is provided as an input. This allows the same counter design to generate different counting sequences by changing the `mod_n` value.

For example:

```text
mod_n = 5

0 → 1 → 2 → 3 → 4 → 0
```

---

## 🎯 Features

- 4-bit programmable Mod-N counter
- Programmable modulus input
- Asynchronous active-high reset
- Automatic wrap-around
- Supports different counting ranges
- RTL implementation using Verilog HDL
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
              mod_n[3:0]
                   │
                   ▼
              ┌──────────┐
              │ Comparator│
              └────┬─────┘
                   │
                   ▼
CLK ─────────► ┌─────────┐
              │ Counter  │ ─────► q[3:0]
              └─────────┘
                   ▲
                 reset
```

The counter compares its current value with the programmed modulus.

---

## ⚙️ Working Principle

The counter follows three basic operations:

```text
Reset
  ↓
q = 0000
```

If the current count reaches:

```text
mod_n - 1
```

the counter returns to zero.

Otherwise, it increments by one.

### RTL Logic

```verilog
if (reset)
    q <= 4'b0000;

else if (q == mod_n - 1)
    q <= 4'b0000;

else
    q <= q + 1'b1;
```

---

## 🔢 Example

For:

```text
mod_n = 5
```

the counter generates:

```text
0000
0001
0010
0011
0100
0000
```

For:

```text
mod_n = 10
```

the counter generates:

```text
0000 → 0001 → ... → 1001 → 0000
```

Thus, changing `mod_n` changes the number of counter states.

---

## 💻 RTL Implementation

```verilog
module programmable_mod_counter(

    input clk,
    input reset,
    input [3:0] mod_n,
    output reg [3:0] q

);

always @(posedge clk or posedge reset)
begin

    if(reset)
        q <= 4'b0000;

    else if(q == mod_n - 1)
        q <= 4'b0000;

    else
        q <= q + 1'b1;

end

endmodule
```

---

## 🧪 Verification

A Verilog testbench was created to verify:

1. Reset operation
2. Programmable modulus
3. Counting operation
4. Automatic wrap-around

### Test Configuration

```text
mod_n = 5
```

### Expected Sequence

```text
0000 → 0001 → 0010 → 0011 → 0100 → 0000
```

The waveform was successfully verified using EPWave.

---

## 📊 Simulation Result

### Result

**Simulation: PASS ✅**

**Waveform Verification: PASS ✅**

The counter correctly generated the programmed Mod-5 sequence and returned to zero after reaching the terminal count.

---

## 🧠 Key Concepts Learned

- Programmable Mod-N counters
- Modulus comparison
- Terminal-count detection
- Counter wrap-around
- Asynchronous reset
- Sequential RTL design
- Non-blocking assignments
- Testbench development
- Waveform verification
- Difference between fixed and programmable counters

---

## 🎯 Interview Questions

1. What is a programmable Mod-N counter?
2. How is it different from a fixed Mod-N counter?
3. Why do we compare `q` with `mod_n - 1`?
4. What happens when the terminal count is reached?
5. How can the same RTL implement Mod-5 and Mod-10 counters?
6. What happens when `mod_n = 1`?
7. Why is asynchronous reset used?
8. What is terminal-count detection?
9. How many states does a Mod-N counter have?
10. How would you make this counter parameterized?

---

## 🚀 Applications

- Programmable Timers
- Frequency Division
- Digital Clock Circuits
- Event Counters
- Timing Control
- Address Generation
- FPGA and ASIC RTL Designs

---

## 📈 Project Status

**Status: ✅ COMPLETED**

RTL design, testbench simulation, and waveform verification successfully completed.

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering (ECE)

Interested in RTL Design and Design Verification.