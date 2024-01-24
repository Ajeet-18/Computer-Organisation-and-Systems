//This is to test not logic.

// Include the Verilog module definition for the 'not_logic' module
`include "not_logic.v"

// Define a testbench module for the 'not_logic' module
module not_logic_tb();

    // Declare reg (register) type variable 'a' as an input
    reg a;

    // Declare wire type variable 'b' as an output
    wire b;

    // Instantiate an instance of the 'not_logic' module
    not_logic f1(a, b);

    // Initial block for simulation setup and behavior
    initial begin
        // Monitor the values of input 'a' and output 'b'
        $monitor("input = %b, output=%b\n", a, b);

        // Assign values to input 'a' at different simulation time steps
        #2 a = 1'b0;
        #2 a = 1'b1;
    end

    // Initial block for dumping simulation waveforms to a VCD file
    initial begin
        // Specify the VCD file name as "out.vcd"
        $dumpfile("out.vcd");

        // Dump variables (a, b) for waveform visualization
        $dumpvars;

        // Finish simulation after 10 time units
        #10 $finish;
    end

endmodule