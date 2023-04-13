
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module part2(

	//////////// SEG7 //////////
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW,

	//////////// GPIO, GPIO connect to GPIO Default //////////
	inout 		    [35:0]		GPIO
);



//=======================================================
//  REG/WIRE declarations
//=======================================================

	


//=======================================================
//  Structural coding
//=======================================================

	assign HEX5 = 8'b11111111;
	assign HEX4 = 8'b11111111;
	assign HEX3 = 8'b11111111;
	assign HEX2 = 8'b11111111;
	
	assign HEX1[0] = (SW[3]&SW[2]) | (SW[3]&SW[1]);
	assign HEX1[1] = 0;
	assign HEX1[2] = 0;
	assign HEX1[3] = (SW[3]&SW[2]) | (SW[3]&SW[1]);
	assign HEX1[4] = (SW[3]&SW[2]) | (SW[3]&SW[1]);
	assign HEX1[5] = (SW[3]&SW[2]) | (SW[3]&SW[1]);
	assign HEX1[6] = 1;
	
	assign HEX0[0] = (~SW[3]&~SW[2]&~SW[1]&SW[0]) |
						(~SW[3]&SW[2]&~SW[1]&~SW[0]) |
						(SW[3]&SW[2]&SW[1]&~SW[0]) |
						(SW[3]&~SW[2]&SW[1]&SW[0]);
	assign HEX0[1] = (~SW[3]&SW[2]&SW[1]&~SW[0]) |
						(~SW[3]&SW[2]&~SW[1]&SW[0]) |
						(SW[3]&SW[2]&SW[1]&SW[0]);
	assign HEX0[2] = (SW[3]&SW[2]&~SW[1]&~SW[0]) |
						(~SW[3]&~SW[2]&SW[1]&~SW[0]);
	assign HEX0[3] = (~SW[3]&~SW[2]&~SW[1]&SW[0]) |
						(~SW[3]&SW[2]&SW[1]&SW[0]) |
						(SW[3]&SW[2]&SW[1]&~SW[0]) |
						(SW[3]&~SW[2]&SW[1]&SW[0]) |
						(~SW[3]&SW[2]&~SW[1]&~SW[0]);
	assign HEX0[4] = SW[0] | (~SW[3]&SW[2]&~SW[1]) |
						(SW[3]&SW[2]&SW[1]);
	assign HEX0[5] = (SW[3]&SW[2]&~SW[1]) |
						(~SW[3]&~SW[2]&SW[0]) |
						(~SW[3]&~SW[2]&SW[1]) |
						(~SW[3]&SW[1]&SW[0]) |
						(~SW[2]&SW[1]&SW[0]);
	assign HEX0[6] = (~SW[3]&~SW[2]&~SW[1]) |
						(~SW[3]&SW[2]&SW[1]&SW[0]) |
						(SW[3]&~SW[2]&SW[1]);
	
endmodule
