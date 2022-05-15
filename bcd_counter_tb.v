`timescale 1ns / 1ps


module bcd_counter_tb(

    );
    wire [3:0] count;
    reg clk;
    bcd_counter uut(.clk(clk),.count(count));
    initial 
    begin
    clk=1;
    forever #10 clk=~clk;
    end
    
    initial 
    begin
    #2000 $stop;
    end
endmodule
