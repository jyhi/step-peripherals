// A 7-segment display decoder.
// SPDX-FileCopyrightText: 2021 Junde Yhi <junde@yhi.moe>
// SPDX-License-Identifier: CERN-OHL-P-2.0

module sseg (
  input logic en,
  input logic dp,
  input logic [3:0] number,
  output logic [7:0] segments
);

logic [6:0] _seg_number;
assign segments[6:0] = _seg_number;
assign segments[7] = dp;

always_comb begin
  if (en) begin
    unique case(number)
      4'h0: _seg_number = 7'b0111111;
      4'h1: _seg_number = 7'b0000110;
      4'h2: _seg_number = 7'b1011011;
      4'h3: _seg_number = 7'b1001111;
      4'h4: _seg_number = 7'b1100110;
      4'h5: _seg_number = 7'b1101101;
      4'h6: _seg_number = 7'b1111101;
      4'h7: _seg_number = 7'b0000111;
      4'h8: _seg_number = 7'b1111111;
      4'h9: _seg_number = 7'b1101111;
      4'hA: _seg_number = 7'b1110111;
      4'hB: _seg_number = 7'b1111100;
      4'hC: _seg_number = 7'b0111001;
      4'hD: _seg_number = 7'b1011110;
      4'hE: _seg_number = 7'b1111001;
      4'hF: _seg_number = 7'b1110001;
      default: _seg_number = 7'b0000000;
    endcase
  end
  else begin
    _seg_number = 7'b0000000;
  end
end

endmodule
