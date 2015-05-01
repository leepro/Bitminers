`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:43:00 03/31/2015 
// Design Name: 
// Module Name:    char_mem 
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
module char_mem(
	input wire [7:0] data,
	input wire [3:0] key2,
	output [7:0] vga
    );
	 
	 reg [7:0] lettera [0:16][0:15];
	 reg [5:0] key1;
	 
	 always @ (*) begin
			case (data)
				
				
				8'h10: begin key1 = 16; end // space
				8'h1: begin key1 = 1; end
				8'h2: begin key1 = 2; end
				8'h3: begin key1 = 3; end
				8'h4: begin key1 = 4; end
				8'h5: begin key1 = 5; end
				8'h6: begin key1 = 6; end
				8'h7: begin key1 = 7; end
				8'h8: begin key1 = 8; end
				8'h9: begin key1 = 9; end
				8'h0: begin key1 = 0; end
				8'ha: begin key1 = 10; end //a
				8'hb: begin key1 = 11; end //b
				8'hc: begin key1 = 12; end //c
				8'hd: begin key1 = 13; end
				8'he: begin key1 = 14; end
				8'hf: begin key1 = 15; end
				
				default : key1 = 16;
			endcase
	 end
	 
initial begin
   //code x30
   lettera[0][0]=8'b00000000;//", -- 0
   lettera[0][1]=8'b00000000;//", -- 1
   lettera[0][2]=8'b01111100;//", -- 2  *****
   lettera[0][3]=8'b11000110;//", -- 3 **   **
   lettera[0][4]=8'b11000110;//", -- 4 **   **
   lettera[0][5]=8'b11001110;//", -- 5 **  ***
   lettera[0][6]=8'b11011110;//", -- 6 ** ****
   lettera[0][7]=8'b11110110;//", -- 7 **** **
   lettera[0][8]=8'b11100110;//", -- 8 ***  **
   lettera[0][9]=8'b11000110;//", -- 9 **   **
   lettera[0][10]=8'b11000110;//", -- a **   **
   lettera[0][11]=8'b01111100;//", -- b  *****
   lettera[0][12]=8'b00000000;//", -- c
   lettera[0][13]=8'b00000000;//", -- d
   lettera[0][14]=8'b00000000;//", -- e
   lettera[0][15]=8'b00000000;//", -- f
   //code x31
   lettera[1][0]=8'b00000000;//", -- 0
   lettera[1][1]=8'b00000000;//", -- 1
   lettera[1][2]=8'b00011000;//", -- 2
   lettera[1][3]=8'b00111000;//", -- 3
   lettera[1][4]=8'b01111000;//", -- 4    **
   lettera[1][5]=8'b00011000;//", -- 5   ***
   lettera[1][6]=8'b00011000;//", -- 6  ****
   lettera[1][7]=8'b00011000;//", -- 7    **
   lettera[1][8]=8'b00011000;//", -- 8    **
   lettera[1][9]=8'b00011000;//", -- 9    **
   lettera[1][10]=8'b00011000;//", -- a    **
   lettera[1][11]=8'b01111110;//", -- b    **
   lettera[1][12]=8'b00000000;//", -- c    **
   lettera[1][13]=8'b00000000;//", -- d  ******
   lettera[1][14]=8'b00000000;//", -- e
   lettera[1][15]=8'b00000000;//", -- f
   // code x32
   lettera[2][0]=8'b00000000;//", -- 0
   lettera[2][1]=8'b00000000;//", -- 1
   lettera[2][2]=8'b01111100;//", -- 2  *****
   lettera[2][3]=8'b11000110;//", -- 3 **   **
   lettera[2][4]=8'b00000110;//", -- 4      **
   lettera[2][5]=8'b00001100;//", -- 5     **
   lettera[2][6]=8'b00011000;//", -- 6    **
   lettera[2][7]=8'b00110000;//", -- 7   **
   lettera[2][8]=8'b01100000;//", -- 8  **
   lettera[2][9]=8'b11000000;//", -- 9 **
   lettera[2][10]=8'b11000110;//", -- a **   **
   lettera[2][11]=8'b11111110;//", -- b *******
   lettera[2][12]=8'b00000000;//", -- c
   lettera[2][13]=8'b00000000;//", -- d
   lettera[2][14]=8'b00000000;//", -- e
   lettera[2][15]=8'b00000000;//", -- f
   // code x33
   lettera[3][0]=8'b00000000;//", -- 0
   lettera[3][1]=8'b00000000;//", -- 1
   lettera[3][2]=8'b01111100;//", -- 2  *****
   lettera[3][3]=8'b11000110;//", -- 3 **   **
   lettera[3][4]=8'b00000110;//", -- 4      **
   lettera[3][5]=8'b00000110;//", -- 5      **
   lettera[3][6]=8'b00111100;//", -- 6   ****
   lettera[3][7]=8'b00000110;//", -- 7      **
   lettera[3][8]=8'b00000110;//", -- 8      **
   lettera[3][9]=8'b00000110;//", -- 9      **
   lettera[3][10]=8'b11000110;//", -- a **   **
   lettera[3][11]=8'b01111100;//", -- b  *****
   lettera[3][12]=8'b00000000;//", -- c
   lettera[3][13]=8'b00000000;//", -- d
   lettera[3][14]=8'b00000000;//", -- e
   lettera[3][15]=8'b00000000;//", -- f
   // code x34
   lettera[4][0]=8'b00000000;//", -- 0
   lettera[4][1]=8'b00000000;//", -- 1
   lettera[4][2]=8'b00001100;//", -- 2     **
   lettera[4][3]=8'b00011100;//", -- 3    ***
   lettera[4][4]=8'b00111100;//", -- 4   ****
   lettera[4][5]=8'b01101100;//", -- 5  ** **
   lettera[4][6]=8'b11001100;//", -- 6 **  **
   lettera[4][7]=8'b11111110;//", -- 7 *******
   lettera[4][8]=8'b00001100;//", -- 8     **
   lettera[4][9]=8'b00001100;//", -- 9     **
   lettera[4][10]=8'b00001100;//", -- a     **
   lettera[4][11]=8'b00011110;//", -- b    ****
   lettera[4][12]=8'b00000000;//", -- c
   lettera[4][13]=8'b00000000;//", -- d
   lettera[4][14]=8'b00000000;//", -- e
   lettera[4][15]=8'b00000000;//", -- f
   // code x35
   lettera[5][0]=8'b00000000;//", -- 0
   lettera[5][1]=8'b00000000;//", -- 1
   lettera[5][2]=8'b11111110;//", -- 2 *******
   lettera[5][3]=8'b11000000;//", -- 3 **
   lettera[5][4]=8'b11000000;//", -- 4 **
   lettera[5][5]=8'b11000000;//", -- 5 **
   lettera[5][6]=8'b11111100;//", -- 6 ******
   lettera[5][7]=8'b00000110;//", -- 7      **
   lettera[5][8]=8'b00000110;//", -- 8      **
   lettera[5][9]=8'b00000110;//", -- 9      **
   lettera[5][10]=8'b11000110;//", -- a **   **
   lettera[5][11]=8'b01111100;//", -- b  *****
   lettera[5][12]=8'b00000000;//", -- c
   lettera[5][13]=8'b00000000;//", -- d
   lettera[5][14]=8'b00000000;//", -- e
   lettera[5][15]=8'b00000000;//", -- f
   // code x36
   lettera[6][0]=8'b00000000;//", -- 0
   lettera[6][1]=8'b00000000;//", -- 1
   lettera[6][2]=8'b00111000;//", -- 2   ***
   lettera[6][3]=8'b01100000;//", -- 3  **
   lettera[6][4]=8'b11000000;//", -- 4 **
   lettera[6][5]=8'b11000000;//", -- 5 **
   lettera[6][6]=8'b11111100;//", -- 6 ******
   lettera[6][7]=8'b11000110;//", -- 7 **   **
   lettera[6][8]=8'b11000110;//", -- 8 **   **
   lettera[6][9]=8'b11000110;//", -- 9 **   **
   lettera[6][10]=8'b11000110;//", -- a **   **
   lettera[6][11]=8'b01111100;//", -- b  *****
   lettera[6][12]=8'b00000000;//", -- c
   lettera[6][13]=8'b00000000;//", -- d
   lettera[6][14]=8'b00000000;//", -- e
   lettera[6][15]=8'b00000000;//", -- f
   // code x37
   lettera[7][0]=8'b00000000;//", -- 0
   lettera[7][1]=8'b00000000;//", -- 1
   lettera[7][2]=8'b11111110;//", -- 2 *******
   lettera[7][3]=8'b11000110;//", -- 3 **   **
   lettera[7][4]=8'b00000110;//", -- 4      **
   lettera[7][5]=8'b00000110;//", -- 5      **
   lettera[7][6]=8'b00001100;//", -- 6     **
   lettera[7][7]=8'b00011000;//", -- 7    **
   lettera[7][8]=8'b00110000;//", -- 8   **
   lettera[7][9]=8'b00110000;//", -- 9   **
   lettera[7][10]=8'b00110000;//", -- a   **
   lettera[7][11]=8'b00110000;//", -- b   **
   lettera[7][12]=8'b00000000;//", -- c
   lettera[7][13]=8'b00000000;//", -- d
   lettera[7][14]=8'b00000000;//", -- e
   lettera[7][15]=8'b00000000;//", -- f
   // code x38
   lettera[8][0]=8'b00000000;//", -- 0
   lettera[8][1]=8'b00000000;//", -- 1
   lettera[8][2]=8'b01111100;//", -- 2  *****
   lettera[8][3]=8'b11000110;//", -- 3 **   **
   lettera[8][4]=8'b11000110;//", -- 4 **   **
   lettera[8][5]=8'b11000110;//", -- 5 **   **
   lettera[8][6]=8'b01111100;//", -- 6  *****
   lettera[8][7]=8'b11000110;//", -- 7 **   **
   lettera[8][8]=8'b11000110;//", -- 8 **   **
   lettera[8][9]=8'b11000110;//", -- 9 **   **
   lettera[8][10]=8'b11000110;//", -- a **   **
   lettera[8][11]=8'b01111100;//", -- b  *****
   lettera[8][12]=8'b00000000;//", -- c
   lettera[8][13]=8'b00000000;//", -- d
   lettera[8][14]=8'b00000000;//", -- e
   lettera[8][15]=8'b00000000;//", -- f
   // code x39
   lettera[9][0]=8'b00000000;//", -- 0
   lettera[9][1]=8'b00000000;//", -- 1
   lettera[9][2]=8'b01111100;//", -- 2  *****
   lettera[9][3]=8'b11000110;//", -- 3 **   **
   lettera[9][4]=8'b11000110;//", -- 4 **   **
   lettera[9][5]=8'b11000110;//", -- 5 **   **
   lettera[9][6]=8'b01111110;//", -- 6  ******
   lettera[9][7]=8'b00000110;//", -- 7      **
   lettera[9][8]=8'b00000110;//", -- 8      **
   lettera[9][9]=8'b00000110;//", -- 9      **
   lettera[9][10]=8'b00001100;//", -- a     **
   lettera[9][11]=8'b01111000;//", -- b  ****
   lettera[9][12]=8'b00000000;//", -- c
   lettera[9][13]=8'b00000000;//", -- d
   lettera[9][14]=8'b00000000;//", -- e
   lettera[9][15]=8'b00000000;//", -- f
	//// code x61
    lettera[10][0]=8'b00000000;  
    lettera[10][1]=8'b00000000;  
    lettera[10][2]=8'b00000000;  
    lettera[10][3]=8'b00000000;  
    lettera[10][4]=8'b00000000;  
    lettera[10][5]=8'b01111000;        
    lettera[10][6]=8'b00001100;         
    lettera[10][7]=8'b01111100;         
    lettera[10][8]=8'b11001100;         
    lettera[10][9]=8'b11001100;         
    lettera[10][10]=8'b11001100;         
    lettera[10][11]=8'b01110110;          
    lettera[10][12]=8'b00000000;  
    lettera[10][13]=8'b00000000;  
    lettera[10][14]=8'b00000000;  
    lettera[10][15]=8'b00000000;  
//   // code x62
    lettera[11][0]=8'b00000000;  
    lettera[11][1]=8'b00000000;  
    lettera[11][2]=8'b11100000;       
    lettera[11][3]=8'b01100000;       
    lettera[11][4]=8'b01100000;       
    lettera[11][5]=8'b01111000;         
    lettera[11][6]=8'b01101100;          
    lettera[11][7]=8'b01100110;           
    lettera[11][8]=8'b01100110;           
    lettera[11][9]=8'b01100110;           
    lettera[11][10]=8'b01100110;           
    lettera[11][11]=8'b01111100;          
    lettera[11][12]=8'b00000000;  
    lettera[11][13]=8'b00000000;  
    lettera[11][14]=8'b00000000;  
    lettera[11][15]=8'b00000000;  
//   // code x63//
    lettera[12][0]=8'b00000000;  
    lettera[12][1]=8'b00000000;  
    lettera[12][2]=8'b00000000;  
    lettera[12][3]=8'b00000000;  
    lettera[12][4]=8'b00000000;  
    lettera[12][5]=8'b01111100;         
    lettera[12][6]=8'b11000110;          
    lettera[12][7]=8'b11000000;     
    lettera[12][8]=8'b11000000;     
    lettera[12][9]=8'b11000000;     
    lettera[12][10]=8'b11000110;          
    lettera[12][11]=8'b01111100;         
    lettera[12][12]=8'b00000000;  
    lettera[12][13]=8'b00000000;  
    lettera[12][14]=8'b00000000;  
    lettera[12][15]=8'b00000000;  
   // code x64
    lettera[13][0]=8'b00000000;  
    lettera[13][1]=8'b00000000;  
    lettera[13][2]=8'b00011100;         
    lettera[13][3]=8'b00001100;         
    lettera[13][4]=8'b00001100;         
    lettera[13][5]=8'b00111100;         
    lettera[13][6]=8'b01101100;         
    lettera[13][7]=8'b11001100;         
    lettera[13][8]=8'b11001100;         
    lettera[13][9]=8'b11001100;         
    lettera[13][10]=8'b11001100;         
    lettera[13][11]=8'b01110110;          
    lettera[13][12]=8'b00000000;  
    lettera[13][13]=8'b00000000;  
    lettera[13][14]=8'b00000000;  
    lettera[13][15]=8'b00000000;  
   // code x65
    lettera[14][0]=8'b00000000;  
    lettera[14][1]=8'b00000000;  
    lettera[14][2]=8'b00000000;  
    lettera[14][3]=8'b00000000;  
    lettera[14][4]=8'b00000000;  
    lettera[14][5]=8'b01111100;         
    lettera[14][6]=8'b11000110;          
    lettera[14][7]=8'b11111110;          
    lettera[14][8]=8'b11000000;     
    lettera[14][9]=8'b11000000;     
    lettera[14][10]=8'b11000110;          
    lettera[14][11]=8'b01111100;         
    lettera[14][12]=8'b00000000;  
    lettera[14][13]=8'b00000000;  
    lettera[14][14]=8'b00000000;  
    lettera[14][15]=8'b00000000;  
   // code x66
    lettera[15][0]=8'b00000000;  
    lettera[15][1]=8'b00000000;  
    lettera[15][2]=8'b00111000;        
    lettera[15][3]=8'b01101100;         
    lettera[15][4]=8'b01100100;         
    lettera[15][5]=8'b01100000;      
    lettera[15][6]=8'b11110000;       
    lettera[15][7]=8'b01100000;      
    lettera[15][8]=8'b01100000;      
    lettera[15][9]=8'b01100000;      
    lettera[15][10]=8'b01100000;      
    lettera[15][11]=8'b11110000;       
    lettera[15][12]=8'b00000000;  
    lettera[15][13]=8'b00000000;  
    lettera[15][14]=8'b00000000;  
    lettera[15][15]=8'b00000000;  
   // code x67
 
   
	 // space 
	 lettera[16][0]=8'b00000000;  
    lettera[16][1]=8'b00000000;  
    lettera[16][2]=8'b00000000;  
    lettera[16][3]=8'b00000000;  
    lettera[16][4]=8'b00000000;  
    lettera[16][5]=8'b00000000;          
    lettera[16][6]=8'b00000000;         
    lettera[16][7]=8'b00000000;        
    lettera[16][8]=8'b00000000;       
    lettera[16][9]=8'b00000000;      
    lettera[16][10]=8'b00000000;          
    lettera[16][11]=8'b00000000;          
    lettera[16][12]=8'b00000000;  
    lettera[16][13]=8'b00000000;  
    lettera[16][14]=8'b00000000;  
    lettera[16][15]=8'b00000000; 
	
	end
	
	assign vga = lettera[key1][key2];

endmodule