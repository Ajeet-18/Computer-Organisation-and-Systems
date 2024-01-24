//This is for NOR logic.
// Define a Verilog module named 'nor_logic'
module nor_logic(a, b, c);
    // Declare input ports 'a' and 'b'
    input a, b;

    // Declare output port 'c'
    output c;

    // Assign the result of NOR operation ~(A | B) to the output 'c'
    // (Output 'c' will be the NOR of inputs 'a' and 'b')
    assign c = ~(a | b);
endmodule