`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2022 17:07:46
// Design Name: 
// Module Name: fpa_tb
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


module fpa_tb(

    );
    
    reg [13:0] in;
        wire [31:0] out;
    fpa uut(.in(in),.out(out));
    initial 
    begin
    in=14'b00010101110110;    
    #100;
    in=14'b11010101110110;   
    end
    
endmodule
