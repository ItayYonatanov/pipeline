module shift_left_2(
    imm_ext,
    imm_shift
);

    // Declare inputs and outputs
    output wire [31:0] imm_shift;
    input wire [31:0] imm_ext;

    assign imm_shift = {2'b00,imm_ext[31:2]};

endmodule