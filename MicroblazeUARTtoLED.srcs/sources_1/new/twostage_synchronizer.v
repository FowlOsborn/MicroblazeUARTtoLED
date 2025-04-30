`timescale 1ns / 1ps

module twostage_synchronizer (
    //input  wire src_clk,      // Source clock domain
    input  wire src_signal,   // Asynchronous input signal
    input  wire dst_clk,      // Destination clock domain
    output wire dst_signal    // Synchronized output
);

    //--------------------------------------------------
    // Xilinx-specific attributes for synchronization
    //--------------------------------------------------
    (* ASYNC_REG = "TRUE" *) reg src_reg;          // Register in source domain
    (* ASYNC_REG = "TRUE" *) reg [1:0] sync_regs;  // 2-stage sync registers

    //--------------------------------------------------
    // Source domain register (optional but recommended)
    //--------------------------------------------------
    always @(posedge dst_clk) begin
        src_reg <= src_signal;
    end

    //--------------------------------------------------
    // Two-stage synchronizer in destination domain
    //--------------------------------------------------
    always @(posedge dst_clk) begin
        sync_regs <= {sync_regs[0], src_reg};  // Shift register
    end

    //--------------------------------------------------
    // Output the synchronized signal
    //--------------------------------------------------
    assign dst_signal = sync_regs[1];

endmodule