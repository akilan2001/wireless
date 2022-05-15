`timescale 1ns / 1ps

module decoder_tb(

    );
    reg [2:0] input_data;
wire [7:0] output_data;
decoder uut (
                            .input_data(input_data),.output_data(output_data)
                        );
                initial 
                begin
                
               input_data=5;
               #100;
               input_data=1;
               #100;
               input_data=0;
               #100;
               input_data=7;
               #100;
                end
endmodule
