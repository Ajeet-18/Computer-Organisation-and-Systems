//This is to test Xnor logic.

// Include the Verilog module definition for the 'xnor_logic' module
`include "xnor_logic.v"

// Define a testbench module for the 'xnor_logic' module
module xnor_logic_tb;

    // Declare reg (register) type variables a and b as inputs
    reg a, b;

    // Declare wire type variable c as an output
    wire c;

    // Instantiate an instance of the 'xnor_logic' module
    xnor_logic it_is_instance_of_first_module(a, b, c);

    // Initial block for simulation setup and behavior
    initial begin
        // Monitor the values of inputs a, b, and output c
        $monitor("input=%b, input=%b, output=%b\n", a, b, c);

        // Assign values to inputs a and b at different simulation time steps
        #2 a = 1'b0; b = 1'b0;
        #2 a = 1'b1; b = 1'b0;
        #2 a = 1'b0; b = 1'b1;
        #2 a = 1'b1; b = 1'b1;
    end

    // Initial block for dumping simulation waveforms to a VCD file
    initial begin
        // Specify the VCD file name as "out.vcd"
        $dumpfile("out.vcd");

        // Dump variables (a, b, c) for waveform visualization
        $dumpvars;

        // Finish simulation after 20 time units
        #20 $finish;
    end

endmodule