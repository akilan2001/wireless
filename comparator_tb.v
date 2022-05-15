`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2022 09:22:05
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
reg [3:0] A;
reg [3:0] B;
wire Less,Equal,Greater;
comparator uut(.A(A),.B(B),.Less(Less),.Equal(Equal),.Greater(Greater));
initial 
begin
A=4'b1000;
B=4'b0001;
#100;
A=4'b0101;
B=4'b1010;
#100;
A=4'b0001;
B=4'b0010;
#100;
A=4'b1111;
B=4'b1111;
#100;
end
endmodule
