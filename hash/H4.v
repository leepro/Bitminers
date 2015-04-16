`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:26 04/07/2015 
// Design Name: 
// Module Name:    H4 
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
module H4(input [1:0] Block, input clk, input [31:0] d, output reg [31:0] H4_out, H4 );

reg source; 
initial
begin
H4_out = 32'ha54ff53a;
H4 = 32'ha54ff53a;
end

always @ (posedge clk)
begin
	
	if (Block == 0)			
	begin
			H4_out = 32'ha54ff53a;
			H4 = 32'ha54ff53a;
			source =0;
		end
	else
		begin
		if(Block ==1 && source == 0)
		begin
			H4_out = d + H4_out;
			H4 = 32'ha54ff53a;
			source = ~source;
		end
		else
		if(Block ==2 && source ==1)
				begin
					H4_out = d + H4_out;
					H4 = 32'ha54ff53a;
					source = ~source;
				end
		end
		
end

endmodule
