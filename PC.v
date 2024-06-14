module PC(curr_pc,
         nxt_pc,
         clk,
         reset);

    //define inputs and outputs
    output reg [31:0] curr_pc;
    output wire [31:0] nxt_pc;
    input clk;
    input reset;

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            curr_pc <= 32'd0; // Reset
        end
        else begin
            curr_pc <= nxt_pc; // Come from Mux_PC
        end
    end


endmodule 