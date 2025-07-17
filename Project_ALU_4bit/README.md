4-Bit ALU in Verilog

This project implements a simple 4-bit ALU in Verilog, capable of performing basic arithmetic and logical operations.

🔧 Features
The ALU performs the following operations on two 4-bit inputs (A and B) based on the select lines S1 and S0:

S1	S0	Operation
0	0	Addition
0	1	Subtraction
1	0	Comparator
1	1	AND operation

🧪 Testbenches
Separate testbenches are provided for each operation.

▶️ How to Run
You need Icarus Verilog and GTKWave installed.

# Compile
iverilog testbench_adder.v -o adder

# Run
vvp adder

# View waveform
gtkwave adder.vcd

Replace testbench_adder.v and adder with the respective filenames for subtraction, comparison, or AND operations.
