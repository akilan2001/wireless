`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2022 09:41:04
// Design Name: 
// Module Name: demux_8_1
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


module demux_8_1(
    input s0,
    input s1,
    input s2,
    input in,
    output reg [7:0]  out
    );
    always @(*) 
    begin
    out[7:0]=8'b00000000;
    case({s2,s1,s0})
    3'b000:out[0]=in;
    3'b001:out[1]=in;
    3'b010:out[2]=in;
    3'b011:out[3]=in;
    3'b100:out[4]=in;
    3'b101:out[5]=in;
    3'b110:out[6]=in;
    3'b111:out[7]=in;
    endcase
    end
endmodule
