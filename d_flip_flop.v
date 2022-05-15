`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2022 14:25:01
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(
    input D,
    input Clk,
    output reg Q,
    output reg Qbar
    );
    always @(posedge Clk)
    begin
    if(D==1)
    begin
    Q<=1;
    Qbar<=0;
    end
    else
    begin
    Q<=0;
    Qbar<=1;
    end
    end
endmodule
