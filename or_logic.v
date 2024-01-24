//This is for or logic.
// Define a Verilog module named 'or_logic'
module or_logic(a, b, c);
    // Declare input ports 'a' and 'b'
    input a, b;

    // Declare output port 'c'
    output c;

    // Assign the result of OR operation (A | B) to the output 'c'
    // (Output 'c' will be the logical OR of inputs 'a' and 'b')
    assign c = a | b;
endmodule

