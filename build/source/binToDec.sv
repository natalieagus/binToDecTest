/*
    This file was generated automatically by Alchitry Labs 2.0.13-PREVIEW.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/
module binToDec #(
    parameter DIGITS = 3'h4,
    parameter LEADING_ZEROS = 1'h0
  ) (
    input [($clog2(((4'ha) ** (DIGITS))))-1:0] value,
    output reg [(DIGITS * (4))-1:0] digits
  );
  
  
  reg [(32):0] R_5014b1c0_j, RR_5014b1c0_j;
  reg [(4):0] R_4878b8cf_i, RR_4878b8cf_i;
  reg [($bits(value))-1:0] L_5ec8b730_remainder;
  reg L_5ec8b730_blank;
  reg [($bits(value))-1:0] L_4c21a7be_scale;
  reg [($bits(value))-1:0] L_76886645_sub_value;
  
  
  always @* begin
    digits = {DIGITS{4'hb}};
    L_5ec8b730_remainder = value;
    L_5ec8b730_blank = !LEADING_ZEROS;
    if (value < ((4'ha) ** (DIGITS))) begin
      for (RR_5014b1c0_j = 0; RR_5014b1c0_j < DIGITS; RR_5014b1c0_j = RR_5014b1c0_j + 1) begin
        R_5014b1c0_j = (DIGITS - 1'h1) + RR_5014b1c0_j * (-2'sh1);
        L_4c21a7be_scale = ((4'ha) ** (R_5014b1c0_j));
        if (L_5ec8b730_remainder < L_4c21a7be_scale) begin
          if (R_5014b1c0_j != 1'h0 && L_5ec8b730_blank) begin
            digits[(R_5014b1c0_j)*(4)+(4) - 1 -:(4)] = 4'ha;
          end else begin
            digits[(R_5014b1c0_j)*(4)+(4) - 1 -:(4)] = 1'h0;
          end
        end else begin
          L_5ec8b730_blank = 1'h0;
          L_76886645_sub_value = 1'h0;
          for (RR_4878b8cf_i = 0; RR_4878b8cf_i < 4'h9; RR_4878b8cf_i = RR_4878b8cf_i + 1) begin
            R_4878b8cf_i = (4'h9) + RR_4878b8cf_i * (-2'sh1);
            if (L_5ec8b730_remainder < (R_4878b8cf_i + 1'h1) * L_4c21a7be_scale) begin
              digits[(R_5014b1c0_j)*(4)+(4) - 1 -:(4)] = R_4878b8cf_i;
              L_76886645_sub_value = R_4878b8cf_i * L_4c21a7be_scale;
            end
          end
          L_5ec8b730_remainder = L_5ec8b730_remainder - L_76886645_sub_value;
        end
      end
    end
  end
  
endmodule