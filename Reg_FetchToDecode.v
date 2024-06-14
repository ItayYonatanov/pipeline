module Reg_FetchToDecode(
    curr_pc,
    clk,
    fetch_inst,
    curr_pc_Decode,
    fetch_inst_Decode
);
    // Declare inputs and outputs
    input wire [31:0] curr_pc;
    input wire clk;
    input wire [31:0] fetch_inst;
    output reg [31:0] curr_pc_Decode;
    output reg [31:0] fetch_inst_Decode;


    // Store for next stages
    always @(posedge clk) begin
        curr_pc_Decode <= curr_pc;
        fetch_inst_Decode <= fetch_inst;
    end

endmodule