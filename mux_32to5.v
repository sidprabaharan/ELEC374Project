
`timescale 1ns/10ps

module mux_32_1 (		
		input wire [31:0] MuxIn_R0,
		input wire [31:0] MuxIn_R1,
		input wire [31:0] MuxIn_R2, 
		input wire [31:0] MuxIn_R3, 
		input wire [31:0] MuxIn_R4, 
		input wire [31:0] MuxIn_R5, 
		input wire [31:0] MuxIn_R6, 
		input wire [31:0] MuxIn_R7,								
		input wire [31:0] MuxIn_R8, 
		input wire [31:0] MuxIn_R9, 
		input wire [31:0] MuxIn_R10, 
		input wire [31:0] MuxIn_R11, 
		input wire [31:0] MuxIn_R12, 
		input wire [31:0] MuxIn_R13, 
		input wire [31:0] MuxIn_R14, 
		input wire [31:0] MuxIn_R15,
		input wire [31:0] MuxIn_HI, 
		input wire [31:0] MuxIn_LO, 
		input wire [31:0] MuxIn_ZHI, 
		input wire [31:0] MuxIn_ZLO, 
		input wire [31:0] MuxIn_PC, 
		input wire [31:0] MuxIn_MDR, 
		input wire [31:0] MuxIn_Port, 
		input wire [31:0] MuxIn_C,
		input wire [4:0] Select,
		output reg [31:0] MuxOut
		);
		
		always @ (*) begin
			case (Select)
				5'b00000: MuxOut <= MuxIn_R0;
				5'b00001: MuxOut <= MuxIn_R1;
				5'b00010: MuxOut <= MuxIn_R2;
				5'b00011: MuxOut <= MuxIn_R3;
				5'b00100: MuxOut <= MuxIn_R4;
				5'b00101: MuxOut <= MuxIn_R5;
				5'b00110: MuxOut <= MuxIn_R6;
				5'b00111: MuxOut <= MuxIn_R7;
				5'b01000: MuxOut <= MuxIn_R8;
				5'b01001: MuxOut <= MuxIn_R9;
				5'b01010: MuxOut <= MuxIn_R10;
				5'b01011: MuxOut <= MuxIn_R11;
				5'b01100: MuxOut <= MuxIn_R12;
				5'b01101: MuxOut <= MuxIn_R13;
				5'b01110: MuxOut <= MuxIn_R14;
				5'b01111: MuxOut <= MuxIn_R15;
				5'b10000: MuxOut <= MuxIn_HI;
				5'b10001: MuxOut <= MuxIn_LO;
				5'b10010: MuxOut <= MuxIn_ZHI;
				5'b10011: MuxOut <= MuxIn_ZLO;
				5'b10100: MuxOut <= MuxIn_PC;
				5'b10101: MuxOut <= MuxIn_MDR;
				5'b10110: MuxOut <= MuxIn_Port;
				5'b10111: MuxOut <= MuxIn_C;
				default: MuxOut <= 32'b0;
			endcase	
		end 		
endmodule 

						