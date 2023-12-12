# BlinkingLEDbySlowingClock

### Slow Clock for FPGA LED Blinking

This Verilog module implements a slow clock generator for an FPGA board. The code utilizes an input clock signal `clk_in` and generates an output clock `clk_out` with a frequency of 1 Hz.

**Operation**:
- The module `Slowclk_1Hz` consists of a counter `count` that increments on each positive edge of the input clock (`clk_in`).
- The counter tracks the number of clock cycles and toggles the output clock (`clk_out`) when the count reaches 25 million (`25000000`), effectively dividing the input clock frequency to generate a 1 Hz output.

**Usage**:
- After generating the slow clock, this 1 Hz signal can be employed to control an LED on the FPGA board, enabling it to blink at a rate of 1 Hz.

This Verilog module is designed to slow down the clock signal and facilitate LED blinking or synchronization tasks on an FPGA board by providing a reduced frequency clock output.
