`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2022 12:32:25
// Design Name: 
// Module Name: binary_gcd
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


module binary_gcd(
    input [3:0] binary,
    output reg [3:0] gcd,
    integer i
    );
    always @(*)
    begin
    for(i=0;i<3;i=i+1)
    begin
    gcd[i]=(!binary[i]&binary[i+1]) | (binary[i] & !binary[i+1]);
    end
    gcd[3]=binary[3];
    end
    
endmodule
