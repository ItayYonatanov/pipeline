module Add_unit(curr_ps,
        pc_plus_4);

    input [31:0] curr_ps;
    output [31:0] pc_plus_4;

    assign pc_plus_4 = curr_ps + 32'd4;

endmodule 