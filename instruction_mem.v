module instruction_mem(
    curr_pc,
    fetch_inst,
    clk
);
    // Declare inputs and outputs
    input wire [31:0] curr_pc;
    input wire clk;
    output reg [31:0] fetch_inst;

    // Declare an array to hold the instructions
    reg [31:0] inst_memory [0:255]; // 256 instructions, each 32-bit wide


    // Initialize the instruction memory with some example instructions

    initial begin
        inst_memory[0] = 32'h00000000;
        inst_memory[1] = 32'h00000001;
        inst_memory[2] = 32'h00000002; //...
    end

    // Fetch the instruction based on the provided address
    always @(posedge clk) begin
        fetch_inst <= inst_memory[curr_pc[31:2]]; // Address divided by 4 to get the word index
    end


endmodule