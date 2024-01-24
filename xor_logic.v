//This is for XOR logic.
// Define a Verilog module named 'xor_logic'
module xor_logic(a, b, c);
    // Declare input ports 'a' and 'b'
    input a, b;

    // Declare output port 'c'
    output c;

    // Assign the result of XOR operation (A ^ B) to the output 'c'
    // (Output 'c' will be the logical XOR of inputs 'a' and 'b')
    assign c = a ^ b;
endmodule