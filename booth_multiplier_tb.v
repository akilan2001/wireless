`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2022 10:56:30
// Design Name: 
// Module Name: booth_multiplier_tb
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


module booth_multiplier_tb();
wire [7:0] Out;
reg [3:0] Md;
reg [3:0] Mr;
booth_multiplier uut(.Md(Md),.Mr(Mr),.Out(Out));

initial 
begin
Md=4'b0001;
Mr=4'b0101;
#100;
Md=4'b0111;
Mr=4'b0010;
#100;
Md=4'b1000;
Mr=4'b0111;
end
endmodule
