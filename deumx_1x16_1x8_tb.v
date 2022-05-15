`timescale 1ns / 1ps


module deumx_1x16_1x8_tb(

    );
    reg data_in_16;
       reg [3:0] select_4;
       wire [15:0] data_out_16;
        demux_1x16_1x8 uut(.data_in_16(data_in_16),.select_4(select_4),.data_out_16(data_out_16));
        
        initial 
        begin 
         data_in_16=1;
         select_4=4'b1001;
         #100;
          data_in_16=0;
         select_4=4'b1111;
         #100;
         select_4=4'b0001;
         #100;
          data_in_16=1;
          select_4=4'b0100;
         #100;
        end 
endmodule
