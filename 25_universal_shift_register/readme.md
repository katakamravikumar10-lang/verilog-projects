# 4-bit Universal Shift Register using Verilog

## 📌 Project Overview

This project implements a **4-bit Universal Shift Register** using Verilog HDL.

A Universal Shift Register is a versatile sequential circuit that can perform multiple operations using control signals:

* Hold
* Shift Right
* Shift Left
* Parallel Load

Two control signals (`s1` and `s0`) select the required operation.

---

## 🎯 Features

* 4-bit Universal Shift Register
* Hold operation
* Shift Right operation
* Shift Left operation
* Parallel Load operation
* Two serial inputs for bidirectional shifting
* Parallel 4-bit data input
* Asynchronous active-high reset
* Positive-edge-triggered operation
* Non-blocking assignments
* Verified using a Verilog testbench
* Waveform verified using GTKWave

---

## 🛠️ Tools Used

* Verilog HDL
* EDA Playground
* Icarus Verilog
* GTKWave
* Git & GitHub

---

## 📂 Project Files

```text
design.sv
testbench.sv
universal_shift_register.vcd
README.md
```

---

## 🏗️ Block Diagram

```text
                    S1 S0
                      │
                      ▼
              ┌───────────────┐
              │   4:1 MUX     │
              │   Selection   │
              └───────┬───────┘
                      │
                      ▼
        ┌─────┬─────┬─────┬─────┐
        │ DFF │ DFF │ DFF │ DFF │
        │ Q3  │ Q2  │ Q1  │ Q0  │
        └─────┴─────┴─────┴─────┘
           ▲                 ▲
           │                 │
          sr                sl

              Parallel Input
                 D[3:0]
```

Each flip-flop can receive data from different sources depending on the control signals.

---

## ⚙️ Operation

The two control signals determine the operation of the register.

|  S1 |  S0 | Operation     |
| :-: | :-: | ------------- |
|  0  |  0  | Hold          |
|  0  |  1  | Shift Right   |
|  1  |  0  | Shift Left    |
|  1  |  1  | Parallel Load |

---

## 1. Hold

When:

```text
S1 S0 = 00
```

The register maintains its current value.

Example:

```text
Before = 1011
After  = 1011
```

RTL:

```verilog
q <= q;
```

---

## 2. Shift Right

When:

```text
S1 S0 = 01
```

Data moves toward `Q0`.

```text
sr → Q3 → Q2 → Q1 → Q0
```

RTL:

```verilog
q <= {sr, q[3:1]};
```

Example:

```text
Initial q = 1011
sr = 0

After shift right:

0101
```

---

## 3. Shift Left

When:

```text
S1 S0 = 10
```

Data moves toward `Q3`.

```text
Q3 ← Q2 ← Q1 ← Q0 ← sl
```

RTL:

```verilog
q <= {q[2:0], sl};
```

Example:

```text
Initial q = 0101
sl = 1

After shift left:

1011
```

---

## 4. Parallel Load

When:

```text
S1 S0 = 11
```

All four bits are loaded simultaneously.

Example:

```text
din = 1011

After clock:

q = 1011
```

RTL:

```verilog
q <= din;
```

---

## 🧠 Complete RTL Logic

```verilog
always @(posedge clk or posedge reset)
begin
    if(reset)
        q <= 4'b0000;

    else
    begin
        case({s1,s0})

            2'b00: q <= q;               // Hold
            2'b01: q <= {sr, q[3:1]};    // Shift Right
            2'b10: q <= {q[2:0], sl};    // Shift Left
            2'b11: q <= din;             // Parallel Load

        endcase
    end
end
```

---

## 🧪 Verification

The testbench verifies all four operating modes:

1. Reset
2. Parallel Load
3. Hold
4. Shift Right
5. Shift Left

### Test Sequence

Starting with reset:

```text
q = 0000
```

### Parallel Load

```text
din = 1011
S1S0 = 11

q = 1011
```

### Hold

```text
S1S0 = 00

q = 1011
```

### Shift Right

```text
sr = 0
S1S0 = 01

q = 0101
```

### Shift Left

```text
sl = 1
S1S0 = 10

q = 1011
```

---

## 📊 Expected Simulation

| Operation     | S1S0 | Input        | Expected Q |
| ------------- | :--: | ------------ | :--------: |
| Reset         |  XX  | —            |   `0000`   |
| Parallel Load | `11` | `din = 1011` |   `1011`   |
| Hold          | `00` | —            |   `1011`   |
| Shift Right   | `01` | `sr = 0`     |   `0101`   |
| Shift Left    | `10` | `sl = 1`     |   `1011`   |

The waveform was successfully verified using GTKWave.

---

## 📚 Concepts Learned

* Universal Shift Registers
* 4:1 MUX selection
* Bidirectional shifting
* Parallel data loading
* Hold operation
* Serial data inputs
* Concatenation operator `{ }`
* `case` statements in RTL
* D Flip-Flops
* Sequential logic
* Non-blocking assignments
* Asynchronous reset
* Testbench development
* Waveform verification
* RTL design

---

## 🔄 Shift Register Family

| Register  | Input             | Output            |
| --------- | ----------------- | ----------------- |
| SISO      | Serial            | Serial            |
| SIPO      | Serial            | Parallel          |
| PISO      | Parallel          | Serial            |
| PIPO      | Parallel          | Parallel          |
| Universal | Serial + Parallel | Serial + Parallel |

The Universal Shift Register combines multiple data-transfer operations into a single configurable circuit.

---

## 🎯 Interview Questions

1. What is a Universal Shift Register?
2. Why is it called "universal"?
3. What are the four operations performed by a Universal Shift Register?
4. What is the purpose of `S1` and `S0`?
5. Why are 4:1 MUXes useful in this design?
6. What happens when `S1S0 = 00`?
7. What happens when `S1S0 = 01`?
8. What happens when `S1S0 = 10`?
9. What happens when `S1S0 = 11`?
10. What is the difference between shift-left and shift-right operations?
11. Why are non-blocking assignments used?
12. What is the purpose of the asynchronous reset?
13. How does concatenation simplify shift-register RTL?

---

## 🚀 Applications

* Data Storage
* Data Transfer
* Serial Communication
* Parallel-to-Serial Conversion
* Serial-to-Parallel Conversion
* FPGA Designs
* Processor Registers
* Digital Communication Systems
* Embedded Systems

---

## 🔮 Future Improvements

* Parameterized register width
* Synchronous reset
* Shift enable
* Separate output enable
* Configurable shift direction
* Larger universal shift registers
* Universal Shift Register with additional control features

---

## 👨‍💻 Author

**Ravi Kumar**

Final Year B.Tech – Electronics and Communication Engineering (ECE)

Learning RTL Design and Design Verification using Verilog HDL.
