# 🔁 Multiply and Accumulate (MAC) Unit  
**Verilog | FPGA | Digital Design**  
*Academic Project (2023–24)*

## 📌 Overview  
This project implements a **Multiply and Accumulate (MAC) Unit** using **Verilog HDL**. The design performs iterative multiplication and accumulation of 4-bit inputs over **N cycles**, storing and updating results in each cycle. This unit is fundamental in DSP and machine learning hardware accelerators.

## 🔧 Features  
- Performs **4-bit multiplication and accumulation** over configurable N cycles.  
- Includes essential components: **registers, counter, multiplier, adder, datapath, controller**, and **top module**.  
- Modular design for easy integration and reuse in larger digital systems.  
- Fully synthesizable and **FPGA-compatible**.  
- Functionality verified through **simulation and hardware testing**.

## 🧱 Architecture Components  
- **Registers**: Store operands and intermediate results.  
- **Multiplier**: Performs 4-bit × 4-bit multiplication.  
- **Adder**: Adds current product to accumulated result.  
- **Counter**: Tracks iteration count up to N.  
- **Datapath**: Handles arithmetic and data flow logic.  
- **Control Unit**: Generates control signals for each cycle.  
- **Top Module**: Coordinates submodules and ensures system synchronization.

## 🔁 Operation Flow  
1. Load initial operands.  
2. Multiply current pair of 4-bit inputs.  
3. Add result to the previously accumulated value.  
4. Repeat steps 2–3 for **N cycles**.  
5. Output the final accumulated result after N iterations.

## 📁 Project Structure  
mac-unit/
├── src/
│ ├── mac_top.v
│ ├── datapath.v
│ ├── controller.v
│ ├── multiplier.v
│ ├── adder.v
│ ├── register.v
│ └── counter.v
├── testbench/
│ └── mac_tb.v
├── simulation/
│ └── waveforms.vcd
├── README.md
└── synthesis/
└── mac_unit_constraints.xdc

## ⚙️ Tools & Technologies  
- **Language**: Verilog HDL  
- **Simulation**: ModelSim / Vivado Simulator  
- **Synthesis & Implementation**: Xilinx Vivado  
- **Target FPGA**: (e.g., Xilinx Spartan-6 / Artix-7)

## 🚀 How to Run  
1. Open the project in **Xilinx Vivado** or your preferred Verilog IDE.  
2. Simulate using the provided testbench (`mac_tb.v`).  
3. Verify waveform output to confirm correct functionality.  
4. Synthesize and implement on FPGA using constraint file.  
5. Program the FPGA and observe outputs.

## ✅ Results  
- Verified correct operation through simulation with test vectors.  
- Successfully synthesized and deployed on FPGA board.  
- Modular structure supports reuse in larger digital systems like FIR filters and DSP cores.

## 📚 Learning Outcomes  
- Gained hands-on experience in **RTL design**, **modular Verilog coding**, and **hardware testing**.  
- Understood practical implementation of **MAC operations**, essential in embedded and DSP systems.

## 📜 License  
This project is for academic and educational use only. Contact the author for reuse or collaboration.
