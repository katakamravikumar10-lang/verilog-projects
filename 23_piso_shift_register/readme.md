# 4-bit PISO (Parallel-In Serial-Out) Shift Register using Verilog

## 📌 Project Overview

This project implements a **4-bit Parallel-In Serial-Out (PISO) Shift Register** using Verilog HDL.

A PISO Shift Register loads multiple bits of data simultaneously through parallel inputs and then shifts the stored data out **one bit at a time** through a serial output.

---

## 🎯 Features

- 4-bit PISO Shift Register
- 4-bit parallel data input (`din[3:0]`)
- Serial data output (`sout`)
- Parallel load control (`load`)
- Positive-edge-triggered operation
- Asynchronous active-high reset
- Shift operation using non-blocking assignments
- Verified using a Verilog testbench
- Waveform verified using GTKWave

---

## 🛠️ Tools Used

- Verilog HDL
- EDA Playground
- Icarus Verilog
- GTKWave
- Git & GitHub

---

## 📂 Project Files

```text
design.sv
testbench.sv
piso_shift_register.vcd
README.md
```

---

## 🏗️ Hardware Block Diagram

```text
                  Parallel Inputs
                 D3  D2  D1  D0
                  │   │   │   │
                  ▼   ▼   ▼   ▼
               ┌─────────────────┐
               │  Parallel Load  │
               │     / MUXes     │
               └────────┬────────┘
                        │
                        ▼
                  ┌───────────┐
                  │ 4-bit     │
                  │ Register  │
                  │ Q3 Q2 Q1 Q0
                  └─────┬─────┘
                        │
                        ▼
                       SOUT
```

---

## ⚙️ Working Principle

The PISO shift register operates in two main modes.

### 1. Parallel Load Mode

When:

```text
load = 1
```

The parallel input is loaded into the register on the rising edge of the clock.

For example:

```text
din = 1011
```

After the load clock:

```text
q = 1011
```

---

### 2. Shift Mode

When:

```text
load = 0
```

The stored data shifts toward `q[3]`.

The shift operation is:

```text
q[3] <= q[2]
q[2] <= q[1]
q[1] <= q[0]
q[0] <= 0
```

The serial output is:

```text
sout = q[3]
```

---

## 📊 Example Operation

Parallel input:

```text
din = 1011
```

After loading:

```text
q = 1011
```

The register then shifts as follows:

| Operation | q[3:0] | Serial Output |
|-----------|--------|---------------|
| Reset | 0000 | 0 |
| Load | 1011 | 1 |
| Shift 1 | 0110 | 0 |
| Shift 2 | 1100 | 1 |
| Shift 3 | 1000 | 1 |
| Shift 4 | 0000 | 0 |

Therefore, the original parallel data:

```text
1011
```

is transmitted serially as:

```text
1 → 0 → 1 → 1
```

---

## 🔄 Operation Table

| Reset | Load | Operation |
|:-----:|:----:|-----------|
| 1 | X | Reset register to `0000` |
| 0 | 1 | Parallel load |
| 0 | 0 | Shift right toward `q[3]` |

---

## 💻 RTL Logic

The main RTL behavior is:

```verilog
always @(posedge clk or posedge reset)
begin
    if(reset)
        q <= 4'b0000;

    else if(load)
        q <= din;

    else
    begin
        q[3] <= q[2];
        q[2] <= q[1];
        q[1] <= q[0];
        q[0] <= 1'b0;
    end
end

assign sout = q[3];
```

---

## 🧪 Verification

A Verilog testbench was created to verify:

- Reset operation
- Parallel loading
- Shift operation
- Serial output
- Clocked behavior

### Test Data

```text
Parallel Input = 1011
```

### Expected Serial Output

```text
1 → 0 → 1 → 1
```

The waveform was successfully verified using GTKWave.

---

## 📚 Concepts Learned

- PISO Shift Registers
- Parallel-to-Serial Data Conversion
- Parallel Loading
- Shift Operations
- Multiplexer-based data selection
- D Flip-Flops
- Sequential Logic
- Non-blocking Assignment (`<=`)
- Continuous Assignment (`assign`)
- Asynchronous Reset
- Testbench Development
- Stimulus Timing
- Waveform Verification
- RTL Design

---

## 🔄 Shift Register Comparison

| Type | Input | Output |
|------|-------|--------|
| SISO | Serial | Serial |
| SIPO | Serial | Parallel |
| PISO | Parallel | Serial |
| PIPO | Parallel | Parallel |

---

## 🎯 Interview Questions

1. What is a PISO Shift Register?
2. What is the difference between PISO and SIPO?
3. Why is a `load` control required in PISO?
4. Why are MUXes used in a PISO architecture?
5. What happens when `load = 1`?
6. What happens when `load = 0`?
7. Why is `q[3]` used as the serial output?
8. Why are non-blocking assignments used?
9. What is the purpose of the asynchronous reset?
10. How can a PISO convert parallel data into serial data?

---

## 🚀 Applications

- Serial Data Transmission
- Communication Systems
- Microcontroller Interfaces
- FPGA Designs
- Data Serialization
- Digital Communication
- Embedded Systems
- Reducing the number of communication lines

---

## 🔮 Future Improvements

- Parameterized PISO Shift Register
- Shift Enable
- Bidirectional Shift Register
- Different shift directions
- Universal Shift Register
- Configurable register width

---

## 👨‍💻 Author

**Ravi Kumar**

Final Year B.Tech – Electronics and Communication Engineering (ECE)

Learning RTL Design and Design Verification using Verilog HDL.