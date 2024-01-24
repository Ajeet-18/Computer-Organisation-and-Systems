//This is for Xnor logic.
// Define a Verilog module named 'xnor_logic'
module xnor_logic(a, b, c);
    // Declare input ports 'a' and 'b'
    input a, b;

    // Declare output port 'c'
    output c;

    // Assign the result of XNOR operation ~(A ^ B) to the output 'c'
    // (Output 'c' will be the logical XNOR of inputs 'a' and 'b')
    assign c = ~(a ^ b);
endmodule
