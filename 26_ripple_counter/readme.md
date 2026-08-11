# 4-bit Asynchronous (Ripple) Counter using Verilog

## 📌 Project Overview

This project implements a **4-bit Asynchronous (Ripple) Counter** using Verilog HDL.

The counter is built using four toggle flip-flop stages. The first flip-flop receives the external clock, while the output of each flip-flop is used to trigger the next flip-flop.

The counter generates a 4-bit binary sequence from `0000` to `1111`.

---

## 🎯 Features

- 4-bit asynchronous/ripple counter
- Four toggle flip-flop stages
- Asynchronous active-high reset
- Binary counting from `0000` to `1111`
- Automatic wrap-around from `1111` to `0000`
- Ripple clock architecture
- Frequency division by each flip-flop
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
                 4-bit Ripple Counter

        External CLK
             │
             ▼
          ┌─────┐
          │ FF0 │──── Q0
          └─────┘
             │
             ▼
          ┌─────┐
          │ FF1 │──── Q1
          └─────┘
             │
             ▼
          ┌─────┐
          │ FF2 │──── Q2
          └─────┘
             │
             ▼
          ┌─────┐
          │ FF3 │──── Q3
          └─────┘
```

### Clock Connections

```text
FF0 → posedge clk
FF1 → negedge q[0]
FF2 → negedge q[1]
FF3 → negedge q[2]
```

All flip-flops operate as toggle flip-flops with `T = 1`.

---

## ⚙️ Working Principle

A T flip-flop toggles its output when a triggering clock edge occurs:

```text
Q = 0 → 1
Q = 1 → 0
```

In this ripple counter:

```text
CLK → FF0 → Q0 → FF1 → Q1 → FF2 → Q2 → FF3
```

Only the first flip-flop receives the external clock.

The subsequent flip-flops are triggered by the falling edge of the previous flip-flop output.

This creates the **ripple effect**.

---

## 🔢 Counting Sequence

After reset:

```text
Q = 0000
```

The counter produces:

```text
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

The counter contains **16 states** because:

```text
2⁴ = 16
```

After reaching `1111`, it wraps around to `0000`.

---

## 🔄 Frequency Division

Each flip-flop divides the frequency by 2.

```text
Q0 = CLK / 2
Q1 = CLK / 4
Q2 = CLK / 8
Q3 = CLK / 16
```

Therefore, the most significant bit `Q3` has one-sixteenth of the input clock frequency.

---

## 💻 RTL Implementation

```verilog
module ripple_counter(
    input clk,
    input reset,
    output reg [3:0] q
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        q[0] <= 1'b0;
    else
        q[0] <= ~q[0];
end

always @(negedge q[0] or posedge reset)
begin
    if(reset)
        q[1] <= 1'b0;
    else
        q[1] <= ~q[1];
end

always @(negedge q[1] or posedge reset)
begin
    if(reset)
        q[2] <= 1'b0;
    else
        q[2] <= ~q[2];
end

always @(negedge q[2] or posedge reset)
begin
    if(reset)
        q[3] <= 1'b0;
    else
        q[3] <= ~q[3];
end

endmodule
```

---

## 🧪 Verification

A Verilog testbench was created to verify the counter.

### Inputs

```text
clk
reset
```

### Output

```text
q[3:0]
```

No data input is required because the counter generates its counting sequence internally.

### Test Conditions

1. Apply reset
2. Release reset
3. Apply clock
4. Observe the counting sequence
5. Verify wrap-around

---

## 📊 Simulation Result

The waveform was verified using EPWave.

Observed sequence:

```text
0000 → 0001 → 0010 → 0011
→ 0100 → 0101 → 0110 → 0111
→ 1000 → 1001 → 1010 → 1011
→ 1100 → 1101 → 1110 → 1111
→ 0000
```

### Result

**Simulation: PASS ✅**

**Waveform Verification: PASS ✅**

---

## 🆚 Synchronous vs Asynchronous Counter

| Feature | Synchronous Counter | Asynchronous Counter |
|---|---|---|
| Clock | Same clock for all FFs | Ripple clock |
| First FF | External clock | External clock |
| Other FFs | External clock | Previous FF output |
| Propagation Delay | Lower | Higher |
| Counting | Simultaneous logic | Ripple effect |
| Speed | Higher | Lower |
| Main Concept | Common clock | Cascaded clocking |

---

## ⚠️ Important Design Note

This project demonstrates the **hardware concept of an asynchronous/ripple counter**.

The ripple structure introduces propagation delay because each flip-flop waits for the previous flip-flop output to change.

For practical FPGA/ASIC RTL designs, synchronous counters are generally preferred because they provide better timing control and avoid using internal flip-flop outputs as clock signals.

---

## 📚 Concepts Learned

- Asynchronous counters
- Ripple counters
- T flip-flops
- Toggle operation
- Ripple clocking
- Frequency division
- Binary counting
- Counter wrap-around
- Asynchronous reset
- Sequential RTL
- Multiple `always` blocks
- Testbench development
- Waveform verification
- Synchronous vs asynchronous counters

---

## 🎯 Interview Questions

1. What is an asynchronous counter?
2. Why is it called a ripple counter?
3. What is the difference between synchronous and asynchronous counters?
4. Why are T flip-flops used in a ripple counter?
5. What happens when `T = 1`?
6. How many states does a 4-bit counter have?
7. Why does each flip-flop divide the frequency by 2?
8. What is the frequency of `Q3` compared with the input clock?
9. What happens when the counter reaches `1111`?
10. What is propagation delay in a ripple counter?
11. Why are ripple counters slower than synchronous counters?
12. Why are ripple clocks generally avoided in modern RTL designs?

---

## 🚀 Applications

- Frequency Division
- Digital Counters
- Timing Circuits
- Clock Division
- Low-speed Digital Systems
- Sequential Logic Design
- Digital Electronics

---

## 📈 Project Status

**Status: ✅ COMPLETED**

RTL design, simulation, and waveform verification successfully completed.

---

## 👨‍💻 Author

**Ravi Kumar**

B.Tech – Electronics and Communication Engineering (ECE)

Interested in RTL Design and Design Verification.