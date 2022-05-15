`timescale 1ns / 1ps


module decoder(
    input [2:0] input_data,
    output reg [7:0] output_data,
    integer i
    );
    
    always @(*)
    begin
    for(i=0;i<8;i=i+1)
    begin
    if(i== input_data)
    output_data[i]=1;
    else
    output_data[i]=0;
    end
    end
endmodule
