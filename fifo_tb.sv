`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2023 11:28:23
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb();
parameter n = 36;

logic clk, reset, WE, RE;
logic [n-1:0]write_data;
logic [n-1:0]read_data;
logic full;
logic empty;
logic half_full;


top_fifo dut(.clk(clk), .reset(reset), .WE(WE), .RE(RE), .write_data(write_data), .read_data(read_data), .full(full), .empty(empty), .half_full(half_full));


initial begin
clk = 0;
reset = 1'b0;
#3;
reset = 1'b1;
WE = 1'b1;
RE = 1'b0;
write_data = {16'b0000_0000_0000_0000};
#3 
write_data = {16'b0000_0000_0000_0001};
#3 
write_data = {16'b0000_0000_0000_0010};
#3 
write_data = {32'b0000_0000_0000_0011}; 
#3 
write_data = {32'b0000_0000_0000_0000};
#3 
write_data = {16'b0000_0000_0000_0000};
#3 
write_data = {32'b0000_0000_0000_0001};
#3 
write_data = {32'b0000_0000_0000_0010};
#3 
write_data = {32'b0000_0000_0000_0011}; 
#3 
write_data = {32'b0000_0000_0000_0000};
#3 
write_data = {16'b0000_0000_0000_0000};
#3 
write_data = {32'b0000_0000_0000_0001};
#3 
write_data = {32'b0000_0000_0000_0010};
#3 
write_data = {32'b0000_0000_0000_0011}; 
#3 
write_data = {32'b0000_0000_0000_0000};
#3
write_data = {16'b0000_0000_0000_0000};
#3 
write_data = {16'b0000_0000_0000_0001};
#3 
write_data = {16'b0000_0000_0000_0010};
#3 
write_data = {32'b0000_0000_0000_0011}; 
#3 
write_data = {32'b0000_0000_0000_0000};
#3 
write_data = {16'b0000_0000_0000_0000};
#3 
write_data = {32'b0000_0000_0000_0001};
#3 
write_data = {32'b0000_0000_0000_0010};
#3 
write_data = {32'b0000_0000_0000_0011}; 
#3 
write_data = {32'b0000_0000_0000_0000};
#3 
write_data = {16'b0000_0000_0000_0000};
#3 
write_data = {32'b0000_0000_0000_0001};
#3 
write_data = {32'b0000_0000_0000_0010};
#3 
write_data = {32'b0000_0000_0000_0011}; 
#3 
write_data = {32'b0000_0000_0000_0000};
#3 
write_data = {32'b0000_0000_0000_0111};
#3
write_data = {32'b0000_0000_0000_0000};
#6
WE = 1'b0; RE = 1'b1;
#96;




end
always #1.5 clk = ~clk;
endmodule
