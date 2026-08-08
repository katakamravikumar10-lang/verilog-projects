# 4-bit PIPO (Parallel-In Parallel-Out) Shift Register using Verilog

## 📌 Project Overview

This project implements a **4-bit Parallel-In Parallel-Out (PIPO) Shift Register** using Verilog HDL.

A PIPO register accepts 4-bit data simultaneously through parallel inputs and transfers the complete 4-bit data to the parallel output on the active clock edge.

Unlike SISO, SIPO, and PISO registers, this design does not perform serial shifting. It captures the complete parallel input at once.

---

## 🎯 Features

* 4-bit Parallel-In Parallel-Out register
* 4-bit parallel input (`din[3:0]`)
* 4-bit parallel output (`q[3:0]`)
* Positive-edge-triggered operation
* Asynchronous active-high reset
* Non-blocking assignment for sequential logic
* Verilog testbench verification
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
pipo_shift_register.vcd
README.md
```

---

## 🏗️ Hardware Block Diagram

```text
                Parallel Input
                   
        D3       D2       D1       D0
        │        │        │        │
        ▼        ▼        ▼        ▼
      ┌────┐   ┌────┐   ┌────┐   ┌────┐
CLK ─►│ DFF│   │ DFF│   │ DFF│   │ DFF│
      └─┬──┘   └─┬──┘   └─┬──┘   └─┬──┘
        │        │        │        │
        ▼        ▼        ▼        ▼
       Q3       Q2       Q1       Q0

                Parallel Output
```

All four flip-flops share the same clock.

---

## ⚙️ Working Principle

The PIPO register operates by capturing the complete 4-bit parallel input at the rising edge of the clock.

The basic RTL operation is:

```verilog
q <= din;
```

For example:

```text
din = 1011
```

At the rising clock edge:

```text
q = 1011
```

All four bits are transferred simultaneously.

---

## 🔄 Reset Operation

The design uses an asynchronous active-high reset.

When:

```text
reset = 1
```

the output register is immediately cleared:

```text
q = 0000
```

---

## 📊 Example Simulation

The testbench verifies three different parallel input patterns:

```text
1011
0101
1100
```

Expected behavior:

| Clock | Parallel Input (`din`) | Parallel Output (`q`) |
| ----: | :--------------------: | :-------------------: |
| Reset |          0000          |          0000         |
|     1 |          1011          |          1011         |
|     2 |          0101          |          0101         |
|     3 |          1100          |          1100         |

The waveform was successfully verified using GTKWave.

---

## 💻 RTL Logic

```verilog
always @(posedge clk or posedge reset)
begin
    if(reset)
        q <= 4'b0000;

    else
        q <= din;
end
```

The register captures the parallel input only at the rising edge of the clock.

---

## 🔄 Shift Register Comparison

| Type | Input    | Output   |
| ---- | -------- | -------- |
| SISO | Serial   | Serial   |
| SIPO | Serial   | Parallel |
| PISO | Parallel | Serial   |
| PIPO | Parallel | Parallel |

### Data Flow

```text
SISO → Serial → Serial

SIPO → Serial → Parallel

PISO → Parallel → Serial

PIPO → Parallel → Parallel
```

---

## 📚 Concepts Learned

* PIPO Register
* Parallel Data Transfer
* D Flip-Flops
* Sequential Logic
* Clocked Data Capture
* Asynchronous Reset
* Non-blocking Assignment (`<=`)
* RTL Design
* Testbench Development
* Simulation
* Waveform Verification

---

## 🎯 Interview Questions

1. What is a PIPO register?
2. What is the difference between PIPO and PISO?
3. What happens at the positive edge of the clock?
4. Why is a clock required in a PIPO register?
5. Why are non-blocking assignments used?
6. What is the purpose of asynchronous reset?
7. What is the difference between a PIPO register and a shift register?
8. What are the four basic types of shift registers?

---

## 🚀 Applications

* Temporary Data Storage
* Parallel Data Transfer
* FPGA Designs
* Digital Systems
* Processor Registers
* Data Buffering
* Embedded Systems
* Digital Communication Systems

---

## 🔮 Future Improvements

* Parameterized PIPO register
* Synchronous reset
* Enable control
* Load enable
* Variable register width
* Universal Shift Register

---

## 👨‍💻 Author

**Ravi Kumar**

Final Year B.Tech – Electronics and Communication Engineering (ECE)

Learning RTL Design and Design Verification using Verilog HDL.
