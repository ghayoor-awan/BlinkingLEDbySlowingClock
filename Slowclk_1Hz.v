`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:25 09/13/2023 
// Design Name: 
// Module Name:    Slowclk_1Hz 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Slowclk_1Hz(
    input clk_in,
    output reg clk_out
);

    reg [25:0] count = 0;

    always @(posedge clk_in)
    begin
		count <= count + 1;
        if (count == 25000000)
        begin
            count <= 0;
            clk_out <= ~clk_out;
        end
     
    end

endmodule

