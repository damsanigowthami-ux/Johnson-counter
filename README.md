# Johnson Counter using Verilog

## Overview

This project implements a 4-bit Johnson Counter using Verilog HDL. A Johnson Counter is a modified ring counter where the inverted output of the last flip-flop is fed back to the input, generating a sequence of unique states.

## Features

- 4-bit Johnson Counter
- Asynchronous reset
- Clock-based operation
- 8 unique output states
- Verilog HDL implementation
- Testbench verification

## Files

- `johnson_counter.v` – Counter design
- `johnson_counter_tb.v` – Testbench
- `waveform.vcd` – Simulation waveform
- `simulation/output.txt` – Simulation output
- `simulation/simulation.png` – Waveform screenshot

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave

## Simulation

Compile:

```bash
iverilog -o johnson johnson_counter.v johnson_counter_tb.v
```

Run:

```bash
vvp johnson
```

View waveform:

```bash
gtkwave waveform.vcd
```

## Author

Your Name
