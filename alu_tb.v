`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 00:05:18
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] sel;

wire [7:0] Y;

alu uut (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y)
);

initial begin

    A = 8'd10;
    B = 8'd5;

    sel = 3'b000; #10; // Add
    sel = 3'b001; #10; // Sub
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT
    sel = 3'b110; #10; // Left Shift
    sel = 3'b111; #10; // Right Shift

    $finish;

end

endmodule
