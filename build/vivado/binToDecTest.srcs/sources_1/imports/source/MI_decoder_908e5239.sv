/*
    This file was generated automatically by Alchitry Labs 2.0.12-PREVIEW.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/
/*
  Parameters:
      WIDTH = signed {00000000000000000000000000000010} : 2
*/
module MI_decoder_908e5239 (
    input [1:0] P_in,
    output reg [3:0] P_out
  );
  localparam P_WIDTH = 32'sh2;
  
  
  
  
  always @* begin
    P_out = 1'h0;
    P_out[(P_in)] = 1'h1;
  end
  
endmodule