//This code is for "and" logic.

// Define a Verilog module named 'and_logic'
module and_logic(a, b, c);
    // Declare input ports 'a' and 'b'
    input a, b;
    
    // Declare output port 'c'
    output c;

    // Assign the AND operation of 'a' and 'b' to the output 'c'
    assign c = a & b;
endmodule
