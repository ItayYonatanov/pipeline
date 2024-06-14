module Add_unit(curr_pc,
        pc_plus_4);


    //define inputs and outputs
    input [31:0] curr_pc;
    output [31:0] pc_plus_4;
    
    assign pc_plus_4 = curr_pc + 32'd4; // Add 4 to the current program counter

endmodule 