`timescale 1ns / 1ps

module ram_tb();
reg clk,read,write,CS,rst;
reg [6:0] address;
reg [7:0] write_data;
wire [7:0] read_data;

ram_one_kb uut(.clk(clk),.read(read),.write(write),.CS(CS),.rst(rst),.address(address),.write_data(write_data),.read_data(read_data));
initial 
begin
clk=0;
CS=1;
rst=0;
forever #10 clk=~clk;
end

initial 
begin 
 write=1; read= 0;
 address=7'b0000001; write_data=8'b00000011;
 #20; 
 address=7'b0000010; write_data=8'b00000110;
 #20; 
 address=7'b0000011; write_data=8'b10000110;
 #20; 
 address=7'b0000111; write_data=8'b10100111;
 #20;
 write_data=8'b00000000;
 
 read=1;write=0;
 address=7'b0000001;
 #20;
 address=7'b0000111;
 #20;
 address=7'b0000011;
 #20;
 rst=1;
 #20;
 $finish;
 
end 


endmodule
