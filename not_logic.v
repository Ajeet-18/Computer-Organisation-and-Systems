//This is for not logic.
// Define a Verilog module named 'not_logic'
module not_logic(a, b);
    // Declare input port 'a'
    input a;

    // Declare output port 'b'
    output b;

    // Assign the bitwise negation of 'a' to the output 'b'
    // (Output 'b' will be the complement of input 'a')
    assign b = ~a;
endmodule