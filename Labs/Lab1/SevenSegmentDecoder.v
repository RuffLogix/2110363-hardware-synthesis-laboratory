`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 12/23/2024 04:17:24 AM
// Design Name: Exercise1
// Module Name: SevenSegmentDecoder
// Project Name: Exercise1
// Target Devices: Basys3
// Tool Versions: 2023.2
// Description: Decoder for 7-segment display
//////////////////////////////////////////////////////////////////////////////////


module SevenSegmentDecoder (
    input  wire [3:0] DataIn,
    output reg [7:0] Segments
);
  always @(DataIn) begin
    case(DataIn)
      4'b0000: Segments = 8'b00000011;
      4'b0001: Segments = 8'b10011111;
      4'b0010: Segments = 8'b00100101;
      4'b0011: Segments = 8'b00001101;
      4'b0100: Segments = 8'b10011001;
      4'b0101: Segments = 8'b01001001;
      4'b0110: Segments = 8'b01000001;
      4'b0111: Segments = 8'b00011111;
      4'b1000: Segments = 8'b00000001;
      4'b1001: Segments = 8'b00001001;
      4'b1010: Segments = 8'b00010001;
      4'b1011: Segments = 8'b11000001;
      4'b1100: Segments = 8'b01100011;
      4'b1101: Segments = 8'b10000101;
      4'b1110: Segments = 8'b01100001;
      4'b1111: Segments = 8'b01110001;
      default: Segments = 8'b11111111;
    endcase
  end
endmodule
