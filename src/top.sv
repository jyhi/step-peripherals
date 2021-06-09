// The top-level module for this project.
// SPDX-FileCopyrightText: 2021 Junde Yhi <junde@yhi.moe>
// SPDX-License-Identifier: CERN-OHL-P-2.0

module top (
  input  logic [3:0] buttons_in,
  output logic [3:0] buttons_out,
  input  logic [3:0] switches_in,
  output logic [3:0] switches_out,
  input  logic [7:0] leds_in,
  output logic [7:0] leds_out,
  input  logic [2:0] rgb_in   [1:0],
  output logic [2:0] rgb_out  [1:0],
  input  logic [3:0] disp_in  [1:0],
  output logic [7:0] disp_out [1:0],
  input  logic       disp_en  [1:0],
  input  logic       disp_dp  [1:0]
);

assign buttons_out = ~buttons_in;
assign switches_out = switches_in;
assign leds_out = leds_in;
assign rgb_out[0] = rgb_in[0];
assign rgb_out[1] = rgb_in[1];

sseg disp0 (.en(~disp_en[0]), .dp(~disp_dp[0]), .number(~disp_in[0]), .segments(disp_out[0]));
sseg disp1 (.en(~disp_en[1]), .dp(~disp_dp[1]), .number(~disp_in[1]), .segments(disp_out[1]));

endmodule
