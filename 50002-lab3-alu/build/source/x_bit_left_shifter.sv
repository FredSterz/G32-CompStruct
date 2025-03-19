/*
    This file was generated automatically by Alchitry Labs 2.0.29-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module x_bit_left_shifter #(
        parameter SHIFT = 4'h8
    ) (
        input wire [31:0] a,
        input wire shift,
        input wire pad,
        output reg [31:0] out
    );
    logic [31:0] R_5ddedefd_i;
    logic [31:0] RR_5ddedefd_i;
    logic [31:0] M_mux_2_s0;
    logic [31:0][1:0] M_mux_2_in;
    logic [31:0] M_mux_2_out;
    
    genvar idx_0_530149126;
    
    generate
        for (idx_0_530149126 = 0; idx_0_530149126 < 32; idx_0_530149126 = idx_0_530149126 + 1) begin: forLoop_idx_0_530149126
            mux_2 mux_2 (
                .s0(M_mux_2_s0[idx_0_530149126]),
                .in(M_mux_2_in[idx_0_530149126]),
                .out(M_mux_2_out[idx_0_530149126])
            );
        end
    endgenerate
    
    
    logic [31:0] shifted_bits;
    always @* begin
        shifted_bits = {a[5'h1f - SHIFT:1'h0], {SHIFT{pad}}};
        M_mux_2_s0 = {6'h20{shift}};
        for (RR_5ddedefd_i = 0; RR_5ddedefd_i < 6'h20; RR_5ddedefd_i = RR_5ddedefd_i + 1) begin
      R_5ddedefd_i = (1'h0) + RR_5ddedefd_i * (1'h1);
            M_mux_2_in[R_5ddedefd_i][1'h0] = a[R_5ddedefd_i];
            M_mux_2_in[R_5ddedefd_i][1'h1] = shifted_bits[R_5ddedefd_i];
        end
        out = M_mux_2_out;
    end
    
    
endmodule