/*
    This file was generated automatically by Alchitry Labs 2.0.12-PREVIEW.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/
/*
  Parameters:
      DIGITS = signed {00000000000000000000000000000100} : 4
      DIV = signed {00000000000000000000000000010000} : 16
*/
module MI_multiSevenSeg_70303e7f (
    input P_clk,
    input P_rst,
    input [15:0] P_values,
    output reg [6:0] P_seg,
    output reg [3:0] P_sel
  );
  localparam P_DIGITS = 32'h4;
  localparam P_DIV = 32'h10;
  localparam DIGIT_BITS = 2'h2;
  
  
  
  wire [1:0] M_ctr_value;
  MI_counter_2756ca9f ctr (
    .P_clk(P_clk),
    .P_rst(P_rst),
    .P_value(M_ctr_value)
  );
  reg [3:0] M_segDec_char;
  wire [6:0] M_segDec_segs;
  MI_sevenSeg segDec (
    .P_char(M_segDec_char),
    .P_segs(M_segDec_segs)
  );
  reg [1:0] M_digit_dec_in;
  wire [3:0] M_digit_dec_out;
  MI_decoder_f702a396 digit_dec (
    .P_in(M_digit_dec_in),
    .P_out(M_digit_dec_out)
  );
  
  always @* begin
    M_segDec_char = P_values[(M_ctr_value)*4+3-:4];
    P_seg = M_segDec_segs;
    M_digit_dec_in = M_ctr_value;
    P_sel = M_digit_dec_out;
  end
  
endmodule