//This is to test or logic.

// Include the Verilog module definition for the 'or_logic' module
`include "or_logic.v"

// Define a testbench module for the 'or_logic' module
module or_logic_tb;

    // Declare reg (register) type variables a and b as inputs
    reg a, b;

    // Declare wire type variable c as an output
    wire c;

    // Instantiate an instance of the 'or_logic' module
    or_logic it_is_instance_of_first_module(a, b, c);

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