/*
    This file was generated automatically by Alchitry Labs 2.0.29-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alu (
        input wire [31:0] a,
        input wire [31:0] b,
        input wire [5:0] alufn_signal,
        output reg [31:0] out,
        output reg z,
        output reg v,
        output reg n
    );
    logic [31:0] R_5f07ac67_i;
    logic [31:0] RR_5f07ac67_i;
    logic [31:0] R_08d7e03b_i;
    logic [31:0] RR_08d7e03b_i;
    localparam _MP_SIZE_1442800526 = 6'h20;
    logic [31:0] M_adder_a;
    logic [31:0] M_adder_b;
    logic [5:0] M_adder_alufn_signal;
    logic [31:0] M_adder_out;
    logic M_adder_z;
    logic M_adder_v;
    logic M_adder_n;
    
    adder #(
        .SIZE(_MP_SIZE_1442800526)
    ) adder (
        .a(M_adder_a),
        .b(M_adder_b),
        .alufn_signal(M_adder_alufn_signal),
        .out(M_adder_out),
        .z(M_adder_z),
        .v(M_adder_v),
        .n(M_adder_n)
    );
    
    
    logic M_compare_z;
    logic M_compare_v;
    logic M_compare_n;
    logic [5:0] M_compare_alufn_signal;
    logic M_compare_cmp;
    
    compare compare (
        .z(M_compare_z),
        .v(M_compare_v),
        .n(M_compare_n),
        .alufn_signal(M_compare_alufn_signal),
        .cmp(M_compare_cmp)
    );
    
    
    logic [31:0] cmp;
    localparam _MP_SIZE_1293950779 = 6'h20;
    logic [31:0] M_boolean_a;
    logic [31:0] M_boolean_b;
    logic [5:0] M_boolean_alufn_signal;
    logic [31:0] M_boolean_bool;
    
    boolean #(
        .SIZE(_MP_SIZE_1293950779)
    ) boolean (
        .a(M_boolean_a),
        .b(M_boolean_b),
        .alufn_signal(M_boolean_alufn_signal),
        .bool(M_boolean_bool)
    );
    
    
    logic [31:0] M_shifter_a;
    logic [4:0] M_shifter_b;
    logic [5:0] M_shifter_alufn_signal;
    logic [31:0] M_shifter_shift;
    
    compact_shifter shifter (
        .a(M_shifter_a),
        .b(M_shifter_b),
        .alufn_signal(M_shifter_alufn_signal),
        .shift(M_shifter_shift)
    );
    
    
    logic [31:0] M_multiplier_a;
    logic [31:0] M_multiplier_b;
    logic [31:0] M_multiplier_mul;
    
    multiplier multiplier (
        .a(M_multiplier_a),
        .b(M_multiplier_b),
        .mul(M_multiplier_mul)
    );
    
    
    logic [31:0] M_mux_2_s0;
    logic [31:0][1:0] M_mux_2_in;
    logic [31:0] M_mux_2_out;
    
    genvar idx_0_1984035170;
    
    generate
        for (idx_0_1984035170 = 0; idx_0_1984035170 < 32; idx_0_1984035170 = idx_0_1984035170 + 1) begin: forLoop_idx_0_1984035170
            mux_2 mux_2 (
                .s0(M_mux_2_s0[idx_0_1984035170]),
                .in(M_mux_2_in[idx_0_1984035170]),
                .out(M_mux_2_out[idx_0_1984035170])
            );
        end
    endgenerate
    
    
    logic [31:0] M_mux_4_s0;
    logic [31:0] M_mux_4_s1;
    logic [31:0][3:0] M_mux_4_in;
    logic [31:0] M_mux_4_out;
    
    genvar idx_0_527755138;
    
    generate
        for (idx_0_527755138 = 0; idx_0_527755138 < 32; idx_0_527755138 = idx_0_527755138 + 1) begin: forLoop_idx_0_527755138
            mux_4 mux_4 (
                .s0(M_mux_4_s0[idx_0_527755138]),
                .s1(M_mux_4_s1[idx_0_527755138]),
                .in(M_mux_4_in[idx_0_527755138]),
                .out(M_mux_4_out[idx_0_527755138])
            );
        end
    endgenerate
    
    
    always @* begin
        M_adder_a = a;
        M_adder_b = b;
        M_adder_alufn_signal = alufn_signal;
        z = M_adder_z;
        v = M_adder_v;
        n = M_adder_n;
        M_compare_z = M_adder_z;
        M_compare_v = M_adder_v;
        M_compare_n = M_adder_n;
        M_compare_alufn_signal = alufn_signal;
        cmp = {31'h0, M_compare_cmp};
        M_boolean_a = a;
        M_boolean_b = b;
        M_boolean_alufn_signal = alufn_signal;
        M_shifter_a = a;
        M_shifter_b = b[3'h4:1'h0];
        M_shifter_alufn_signal = alufn_signal;
        M_multiplier_a = a;
        M_multiplier_b = b;
        for (RR_5f07ac67_i = 0; RR_5f07ac67_i < 6'h20; RR_5f07ac67_i = RR_5f07ac67_i + 1) begin
      R_5f07ac67_i = (1'h0) + RR_5f07ac67_i * (1'h1);
            M_mux_2_in[R_5f07ac67_i][1'h0] = M_adder_out[R_5f07ac67_i];
            M_mux_2_in[R_5f07ac67_i][1'h1] = M_multiplier_mul[R_5f07ac67_i];
            M_mux_2_s0[R_5f07ac67_i] = alufn_signal[1'h1];
        end
        for (RR_08d7e03b_i = 0; RR_08d7e03b_i < 6'h20; RR_08d7e03b_i = RR_08d7e03b_i + 1) begin
      R_08d7e03b_i = (1'h0) + RR_08d7e03b_i * (1'h1);
            M_mux_4_in[R_08d7e03b_i][1'h0] = M_mux_2_out[R_08d7e03b_i];
            M_mux_4_in[R_08d7e03b_i][1'h1] = M_boolean_bool[R_08d7e03b_i];
            M_mux_4_in[R_08d7e03b_i][2'h2] = M_shifter_shift[R_08d7e03b_i];
            M_mux_4_in[R_08d7e03b_i][2'h3] = cmp[R_08d7e03b_i];
            M_mux_4_s0[R_08d7e03b_i] = alufn_signal[3'h4];
            M_mux_4_s1[R_08d7e03b_i] = alufn_signal[3'h5];
            out[R_08d7e03b_i] = M_mux_4_out[R_08d7e03b_i];
        end
    end
    
    
endmodule