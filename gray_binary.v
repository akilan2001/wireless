`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2022 12:45:05
// Design Name: 
// Module Name: gray_binary
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


module gray_binary(
    input [3:0] gray,
    output reg [3:0] binary,
    integer i
    );
    
    always @(*)
    begin
    binary[3]=gray[3];
    for(i=2;i>=0;i=i-1)
    begin
    if(!gray[i])
    binary[i]=binary[i+1];
    else
    binary[i]=!binary[i+1];
    end
    end
    
endmodule
