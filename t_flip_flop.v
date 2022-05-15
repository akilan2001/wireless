`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2022 14:57:22
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(
    input T,
    input Clk,
    output reg Q,
    output reg Qbar
    );
    initial 
    begin
    Q =0;
    Qbar =1;
    end
    always @(posedge Clk)
        begin
        if(T==1)
        begin
        Q <= ~Q;
        Qbar <= ~Qbar;
        end
        else 
        begin
        Q <= Q;
        Qbar <= Qbar;
        end        
        end
endmodule
