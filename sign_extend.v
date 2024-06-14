module sign_extend(
    immediate,
    imm_ext
);
    
    
    // Declare inputs and outputs
    input wire [15:0] immediate;
    output wire [31:0] imm_ext;


    // Assign statement for sign extension, if immediate[15] = 1 add ones, else add zeros
    assign imm_ext = immediate[15] ? {{16{1'b1}},immediate } : {{16{1'b0}},immediate };

endmodule