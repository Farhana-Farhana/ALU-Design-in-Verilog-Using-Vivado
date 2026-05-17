`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 00:02:33
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu(
    input [7:0] A,
    input [7:0] B,
    input [2:0] sel,
    output reg [7:0] Y
);

always @(*) begin
    case(sel)

        3'b000: Y = A + B;       // Addition
        3'b001: Y = A - B;       // Subtraction
        3'b010: Y = A & B;       // AND
        3'b011: Y = A | B;       // OR
        3'b100: Y = A ^ B;       // XOR
        3'b101: Y = ~A;          // NOT
        3'b110: Y = A << 1;      // Left Shift
        3'b111: Y = A >> 1;      // Right Shift

        default: Y = 8'b00000000;

    endcase
end

endmodule
