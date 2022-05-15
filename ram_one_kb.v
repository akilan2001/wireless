`timescale 1ns / 1ps

module ram_one_kb(
input clk,
input read,
input write,
input CS,
input rst,
input [6:0] address,
input  [7:0] write_data,
output reg [7:0] read_data=8'b00000000,
integer i
    );
 reg [7:0] memory [127:0];

    always @(posedge clk)
    begin
    if(rst)
    begin
    for(i=0;i<128;i=i+1)
    memory[i] =8'b00000000;
    read_data=8'b00000000;
    end
    else if(CS & write & !read)
    memory[address]  =write_data;
    else if(CS & read & !write)
    read_data =memory[address];
    else
    read_data =read_data;
   end
   

endmodule

