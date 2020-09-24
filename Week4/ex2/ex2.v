module ex2(
		output[7:0]	HEX0,
		output[7:0]	HEX1,
		output[7:0]	HEX2,
		output[7:0]	HEX3,
		output[7:0]	HEX4,
		output[7:0]	HEX5,
		
		input [1:0] KEY
);

		
assign HEX0[6] = ~KEY[0],
HEX0[7] = ~KEY[0];
						
assign HEX1[0] = ~KEY[0],
HEX1[3] = ~KEY[0],
HEX1[4] = ~KEY[0],
HEX1[5] = ~KEY[0],
HEX1[6] = ~KEY[0];
						
assign HEX2[0] = ~KEY[0],
HEX2[3] = ~KEY[0],
HEX2[4] = ~KEY[0],
HEX2[5] = ~KEY[0],
HEX2[6] = ~KEY[0],
HEX2[7] = ~KEY[0];
							
assign HEX3[1] = ~KEY[0],
HEX3[4] = ~KEY[0];
						
assign HEX4[6] = ~KEY[0],
HEX4[7] = ~KEY[0];
			
assign HEX5[0] = ~KEY[0];

endmodule 