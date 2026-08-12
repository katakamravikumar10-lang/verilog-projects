# 4-bit Loadable Counter using Verilog

## 📌 Project Overview

This project implements a **4-bit Loadable Up Counter** using Verilog HDL.

The counter can either **load a user-defined 4-bit value** or **continue counting upward** depending on the `load` control signal.

The design uses an asynchronous active-high reset.

---

## 🎯 Features

- 4-bit loadable up counter
- Parallel data loading
- Up-counting operation
- Asynchronous active-high reset
- Automatic wrap-around from `1111` to `0000`
- Priority control: Reset → Load → Count
- RTL implementation using Verilog HDL
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
                 ┌─────────────┐
din[3:0] ───────►│             │
                 │     MUX     ├────► 4-bit Counter
q + 1 ──────────►│             │
                 └──────┬──────┘
                        │
                       load
                        │
                        ▼
                       Q[3:0]
```

The `load` signal selects whether the counter loads `din` or continues counting.

---

## ⚙️ Operation

| Reset | Load | Operation |
|:---:|:---:|---|
| 1 | X | Reset → `0000` |
| 0 | 1 | Load `din` |
| 0 | 0 | Count Up |

### Priority

```text
RESET
  ↓
LOAD
  ↓
COUNT
```

---

## 🔢 Example

If:

```text
din = 1011
```

and:

```text
load = 1
```

then at the active clock edge:

```text
q = 1011
```

After `load` is disabled:

```text
1011 → 1100 → 1101 → 1110 → 1111 → 0000
```

---

## 💻 RTL Implementation

```verilog
module loadable_counter(

    input clk,
    input reset,
    input [3:0] din,
    input load,
    output reg [3:0] q

);

always @(posedge clk or posedge reset)
begin

    if(reset)
        q <= 4'b0000;

    else if(load)
        q <= din;

    else
        q <= q + 1'b1;

end

endmodule
```

---

## 🧪 Verification

A Verilog testbench was developed to verify:

1. Reset operation
2. Parallel loading
3. Up-counting
4. Counter wrap-around

### Test Sequence

```text
Reset       → 0000
Load 1011   → 1011
Count       → 1100
Count       → 1101
Count       → 1110
Count       → 1111
Count       → 0000
```

---

## 📊 Simulation Result

The RTL was simulated using Icarus Verilog and the waveform was verified using EPWave.

### Expected Result

```text
0000 → 1011 → 1100 → 1101 → 1110 → 1111 → 0000
```

### Result

**Simulation: PASS ✅**

**Waveform Verification: PASS ✅**

---

## 📚 Concepts Learned

- Loadable counters
- Parallel data loading
- Counter enable/control logic
- Priority logic
- Asynchronous reset
- Non-blocking assignments
- Sequential RTL design
- Counter overflow/wrap-around
- Testbench development
- Waveform verification

---

## 🎯 Interview Questions

1. What is a loadable counter?
2. Why is a load input required?
3. What happens when `load = 1`?
4. What happens when `load = 0`?
5. What is the priority between reset and load?
6. What happens when a 4-bit counter reaches `1111`?
7. Why are non-blocking assignments used?
8. What is the difference between a normal counter and a loadable counter?
9. How can this counter be made parameterized?
10. What are practical applications of loadable counters?

---

## 🚀 Applications

- Programmable Timers
- Digital Timing Circuits
- Frequency Control
- Address Generation
- Event Counters
- Configurable Delay Circuits
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