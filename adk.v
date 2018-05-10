////////////////////////////////////////////////////////////////////////
//  Verilog library for ASIC Design Kit (ADK)                         //
//                                                                    //
//  v3.0                                                              //
//                                                                    //
////////////////////////////////////////////////////////////////////////

//%BEGIN and02

`celldefine
module and02 (A0, A1, Y);
	input A0, A1;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (Y, A0, A1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END and02

//%BEGIN and03

`celldefine
module and03 (A0, A1, A2, Y);
	input A0, A1, A2;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (Y, A0, A1, A2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
	endspecify
endmodule
`endcelldefine

//%END and03

//%BEGIN and04

`celldefine
module and04 (A0, A1, A2, A3, Y);
	input A0, A1, A2, A3;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (Y, A0, A1, A2, A3);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
	endspecify
endmodule
`endcelldefine

//%END and04

//%BEGIN ao21

`celldefine
module ao21 (A0, A1, B0, Y);
	input A0, A1, B0;
	output Y;

	wire int_res_0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1);
	or (Y, int_res_0, B0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_B0_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(B0 => Y) = tpd_B0_Y;
	endspecify
endmodule
`endcelldefine

//%END ao21

//%BEGIN ao22

`celldefine
module ao22 (A0, A1, B0, B1, Y);
	input A0, A1, B0, B1;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1);
	and (int_res_1, B0, B1);
	or (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
	endspecify
endmodule
`endcelldefine

//%END ao22

//%BEGIN ao221

`celldefine
module ao221 (A0, A1, B0, B1, C0, Y);
	input A0, A1, B0, B1, C0;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1);
	and (int_res_1, B0, B1);
	or (Y, int_res_0, int_res_1, C0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_C0_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(C0 => Y) = tpd_C0_Y;
	endspecify
endmodule
`endcelldefine

//%END ao221

//%BEGIN ao32

`celldefine
module ao32 (A0, A1, A2, B0, B1, Y);
	input A0, A1, A2, B0, B1;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1, A2);
	and (int_res_1, B0, B1);
	or (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
	endspecify
endmodule
`endcelldefine

//%END ao32

//%BEGIN aoi21

`celldefine
module aoi21 (A0, A1, B0, Y);
	input A0, A1, B0;
	output Y;

	wire int_res_0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1);
	nor (Y, int_res_0, B0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_B0_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(B0 => Y) = tpd_B0_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi21

//%BEGIN aoi22

`celldefine
module aoi22 (A0, A1, B0, B1, Y);
	input A0, A1, B0, B1;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1);
	and (int_res_1, B0, B1);
	nor (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi22

//%BEGIN aoi221

`celldefine
module aoi221 (A0, A1, B0, B1, C0, Y);
	input A0, A1, B0, B1, C0;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1);
	and (int_res_1, B0, B1);
	nor (Y, int_res_0, int_res_1, C0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_C0_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(C0 => Y) = tpd_C0_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi221

//%BEGIN aoi222

`celldefine
module aoi222 (A0, A1, B0, B1, C0, C1, Y);
	input A0, A1, B0, B1, C0, C1;
	output Y;

	wire int_res_0, int_res_1, int_res_2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1);
	and (int_res_1, B0, B1);
	and (int_res_2, C0, C1);
	nor (Y, int_res_0, int_res_1, int_res_2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_C0_Y = 0;
		specparam tpd_C1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(C0 => Y) = tpd_C0_Y;
		(C1 => Y) = tpd_C1_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi222

//%BEGIN aoi32

`celldefine
module aoi32 (A0, A1, A2, B0, B1, Y);
	input A0, A1, A2, B0, B1;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1, A2);
	and (int_res_1, B0, B1);
	nor (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi32

//%BEGIN aoi321

`celldefine
module aoi321 (A0, A1, A2, B0, B1, C0, Y);
	input A0, A1, A2, B0, B1, C0;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1, A2);
	and (int_res_1, B0, B1);
	nor (Y, int_res_0, int_res_1, C0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_C0_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(C0 => Y) = tpd_C0_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi321

//%BEGIN aoi322

`celldefine
module aoi322 (A0, A1, A2, B0, B1, C0, C1, Y);
	input A0, A1, A2, B0, B1, C0, C1;
	output Y;

	wire int_res_0, int_res_1, int_res_2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1, A2);
	and (int_res_1, B0, B1);
	and (int_res_2, C0, C1);
	nor (Y, int_res_0, int_res_1, int_res_2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_C0_Y = 0;
		specparam tpd_C1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(C0 => Y) = tpd_C0_Y;
		(C1 => Y) = tpd_C1_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi322

//%BEGIN aoi33

`celldefine
module aoi33 (A0, A1, A2, B0, B1, B2, Y);
	input A0, A1, A2, B0, B1, B2;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1, A2);
	and (int_res_1, B0, B1, B2);
	nor (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_B2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(B2 => Y) = tpd_B2_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi33

//%BEGIN aoi332

`celldefine
module aoi332 (A0, A1, A2, B0, B1, B2, C0, C1, 
		Y);
	input A0, A1, A2, B0, B1, B2, C0, C1;
	output Y;

	wire int_res_0, int_res_1, int_res_2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1, A2);
	and (int_res_1, B0, B1, B2);
	and (int_res_2, C0, C1);
	nor (Y, int_res_0, int_res_1, int_res_2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_B2_Y = 0;
		specparam tpd_C0_Y = 0;
		specparam tpd_C1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(B2 => Y) = tpd_B2_Y;
		(C0 => Y) = tpd_C0_Y;
		(C1 => Y) = tpd_C1_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi332

//%BEGIN aoi333

`celldefine
module aoi333 (A0, A1, A2, B0, B1, B2, C0, C1, 
		C2, Y);
	input A0, A1, A2, B0, B1, B2, C0, C1, 
		C2;
	output Y;

	wire int_res_0, int_res_1, int_res_2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1, A2);
	and (int_res_1, B0, B1, B2);
	and (int_res_2, C0, C1, C2);
	nor (Y, int_res_0, int_res_1, int_res_2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_B2_Y = 0;
		specparam tpd_C0_Y = 0;
		specparam tpd_C1_Y = 0;
		specparam tpd_C2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(B2 => Y) = tpd_B2_Y;
		(C0 => Y) = tpd_C0_Y;
		(C1 => Y) = tpd_C1_Y;
		(C2 => Y) = tpd_C2_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi333

//%BEGIN aoi422

`celldefine
module aoi422 (A0, A1, A2, A3, B0, B1, C0, C1, 
		Y);
	input A0, A1, A2, A3, B0, B1, C0, C1;
	output Y;

	wire int_res_0, int_res_1, int_res_2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1, A2, A3);
	and (int_res_1, B0, B1);
	and (int_res_2, C0, C1);
	nor (Y, int_res_0, int_res_1, int_res_2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_C0_Y = 0;
		specparam tpd_C1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(C0 => Y) = tpd_C0_Y;
		(C1 => Y) = tpd_C1_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi422

//%BEGIN aoi43

`celldefine
module aoi43 (A0, A1, A2, A3, B0, B1, B2, Y);
	input A0, A1, A2, A3, B0, B1, B2;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1, A2, A3);
	and (int_res_1, B0, B1, B2);
	nor (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_B2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(B2 => Y) = tpd_B2_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi43

//%BEGIN aoi44

`celldefine
module aoi44 (A0, A1, A2, A3, B0, B1, B2, B3, 
		Y);
	input A0, A1, A2, A3, B0, B1, B2, B3;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	and (int_res_0, A0, A1, A2, A3);
	and (int_res_1, B0, B1, B2, B3);
	nor (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_B2_Y = 0;
		specparam tpd_B3_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(B2 => Y) = tpd_B2_Y;
		(B3 => Y) = tpd_B3_Y;
	endspecify
endmodule
`endcelldefine

//%END aoi44

//%BEGIN buf02

`celldefine
module buf02 (A, Y);
	input A;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	buf (Y, A);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;

		(A => Y) = tpd_A_Y;
	endspecify
endmodule
`endcelldefine

//%END buf02

//%BEGIN buf04

`celldefine
module buf04 (A, Y);
	input A;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	buf (Y, A);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;

		(A => Y) = tpd_A_Y;
	endspecify
endmodule
`endcelldefine

//%END buf04

//%BEGIN buf08

`celldefine
module buf08 (A, Y);
	input A;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	buf (Y, A);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;

		(A => Y) = tpd_A_Y;
	endspecify
endmodule
`endcelldefine

//%END buf08

//%BEGIN buf12

`celldefine
module buf12 (A, Y);
	input A;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	buf (Y, A);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;

		(A => Y) = tpd_A_Y;
	endspecify
endmodule
`endcelldefine

//%END buf12

//%BEGIN buf16

`celldefine
module buf16 (A, Y);
	input A;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	buf (Y, A);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;

		(A => Y) = tpd_A_Y;
	endspecify
endmodule
`endcelldefine

//%END buf16

//%BEGIN dff

`celldefine
module dff (D, CLK, Q, QB);
	input D, CLK;
	output Q, QB;

	reg viol_0;
	wire dummy_0, int_res_0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	dff_err (dummy_0, CLK, D);
	dff_p (Q, viol_0, CLK, 
		D, dummy_0);
	dff_p (int_res_0, viol_0, CLK, 
		D, dummy_0);
	not (QB, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam tpw_CLK_posedge = 0;
		specparam tpw_CLK_negedge = 0;

		(posedge CLK => (Q+:D)) = tpd_CLK_Q_posedge;
		(posedge CLK => (QB-:D)) = tpd_CLK_QB_posedge;
		$setup (posedge D, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D,
			thold_D_CLK_noedge_posedge, viol_0);
		$width (posedge CLK, tpw_CLK_posedge,
			0, viol_0);
		$width (negedge CLK, tpw_CLK_negedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END dff

primitive dff_err (q, clk, d);
	output q;
	reg q;
	input clk, d;

	table
		(0x) ? : ? : 0;
		(1x) ? : ? : 1;
	endtable
endprimitive

primitive dff_p (q, v, clk, d, dummy);
	output q;
	reg q;
	input v, clk, d, dummy;

	table
		*  ?   ? ? : ? : x;
		? (x1) 0 0 : ? : 0;
		? (x1) 1 0 : ? : 1;
		? (x1) 0 1 : 0 : 0;
		? (x1) 1 1 : 1 : 1;
		? (x1) ? x : ? : -;
		? (bx) 0 ? : 0 : -;
		? (bx) 1 ? : 1 : -;
		? (x0) b ? : ? : -;
		? (x0) ? x : ? : -;
		? (01) 0 ? : ? : 0;
		? (01) 1 ? : ? : 1;
		? (10) ? ? : ? : -;
		?  b   * ? : ? : -;
		?  ?   ? * : ? : -;
	endtable
endprimitive

//%BEGIN dffr

`celldefine
module dffr (D, CLK, R, Q, QB);
	input D, CLK, R;
	output Q, QB;

	reg viol_0;
	wire dummy_0, int_res_0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	dff_r_err (dummy_0, CLK, D, R);
	dff_r (Q, viol_0, CLK, 
		D, R, dummy_0);
	dff_r (int_res_0, viol_0, CLK, 
		D, R, dummy_0);
	not (QB, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_R_Q_posedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_R_QB_posedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam trecovery_R_CLK_negedge_posedge = 0;
		specparam tremoval_R_CLK_negedge_posedge = 0;
		specparam tpw_CLK_R_EQ_0_posedge = 0;
		specparam tpw_CLK_R_EQ_0_negedge = 0;
		specparam tpw_R_posedge = 0;

		(posedge CLK => (Q+:D)) = tpd_CLK_Q_posedge;
		(posedge R => (Q:D)) = tpd_R_Q_posedge;
		(posedge CLK => (QB-:D)) = tpd_CLK_QB_posedge;
		(posedge R => (QB:D)) = tpd_R_QB_posedge;
		$setup (posedge D &&& (R == 0), posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D &&& (R == 0), posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D &&& (R == 0),
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D &&& (R == 0),
			thold_D_CLK_noedge_posedge, viol_0);
		$recovery (negedge R, posedge CLK,
			trecovery_R_CLK_negedge_posedge, viol_0);
		$hold (posedge CLK, negedge R,
			tremoval_R_CLK_negedge_posedge, viol_0);
		$width (posedge CLK &&& (R == 0), tpw_CLK_R_EQ_0_posedge,
			0, viol_0);
		$width (negedge CLK &&& (R == 0), tpw_CLK_R_EQ_0_negedge,
			0, viol_0);
		$width (posedge R, tpw_R_posedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END dffr

primitive dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;

	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive

primitive dff_r (q, v, clk, d, r, dummy);
	output q;
	reg q;
	input v, clk, d, r, dummy;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive

//%BEGIN dffs

`celldefine
module dffs (D, CLK, S, Q, QB);
	input D, CLK, S;
	output Q, QB;

	reg viol_0;
	wire int_res_0, dummy_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (int_res_0, S);
	dff_s_err (dummy_0, CLK, D, int_res_0);
	dff_s (Q, viol_0, CLK, 
		D, int_res_0, dummy_0);
	dff_s (int_res_1, viol_0, CLK, 
		D, int_res_0, dummy_0);
	not (QB, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_S_Q_negedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_S_QB_negedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam trecovery_S_CLK_posedge_posedge = 0;
		specparam tremoval_S_CLK_posedge_posedge = 0;
		specparam tpw_CLK_S_EQ_1_posedge = 0;
		specparam tpw_CLK_S_EQ_1_negedge = 0;
		specparam tpw_S_negedge = 0;

		(posedge CLK => (Q+:D)) = tpd_CLK_Q_posedge;
		(negedge S => (Q:D)) = tpd_S_Q_negedge;
		(posedge CLK => (QB-:D)) = tpd_CLK_QB_posedge;
		(negedge S => (QB:D)) = tpd_S_QB_negedge;
		$setup (posedge D &&& (S == 1), posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D &&& (S == 1), posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D &&& (S == 1),
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D &&& (S == 1),
			thold_D_CLK_noedge_posedge, viol_0);
		$recovery (posedge S, posedge CLK,
			trecovery_S_CLK_posedge_posedge, viol_0);
		$hold (posedge CLK, posedge S,
			tremoval_S_CLK_posedge_posedge, viol_0);
		$width (posedge CLK &&& (S == 1), tpw_CLK_S_EQ_1_posedge,
			0, viol_0);
		$width (negedge CLK &&& (S == 1), tpw_CLK_S_EQ_1_negedge,
			0, viol_0);
		$width (negedge S, tpw_S_negedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END dffs

primitive dff_s_err (q, clk, d, s);
	output q;
	reg q;
	input clk, d, s;

	table
		 ?   1 (0x) : ? : -;
		 ?   1 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 1  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 1  x   : ? : 1;
	endtable
endprimitive

primitive dff_s (q, v, clk, d, s, dummy);
	output q;
	reg q;
	input v, clk, d, s, dummy;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 1;
		?  b   ? (1?) ? : 1 : -;
		?  x   1 (1?) ? : 1 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 1 : -;
		? (x1) 0  0   0 : ? : 0;
		? (x1) 1  ?   0 : ? : 1;
		? (x1) 1  ?   1 : 1 : 1;
		? (x1) 0  0   1 : 0 : 0;
		? (x1) ?  ?   x : ? : -;
		? (bx) 1  ?   ? : 1 : -;
		? (bx) 0  0   ? : 0 : -;
		? (x0) 1  ?   ? : ? : -;
		? (x0) 0  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 1  ?   ? : ? : 1;
		? (01) 0  0   ? : ? : 0;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive

//%BEGIN dffs_ni

`celldefine
module dffs_ni (D, CLK, S, Q, QB);
	input D, CLK, S;
	output Q, QB;

	reg viol_0;
	wire dummy_0, int_res_0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	dff_s_err (dummy_0, CLK, D, S);
	dff_s (Q, viol_0, CLK, 
		D, int_res_0, dummy_0);
	dff_s (int_res_0, viol_0, CLK, 
		D, S, dummy_0);
	not (QB, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_S_Q_negedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_S_QB_negedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam trecovery_S_CLK_posedge_posedge = 0;
		specparam tremoval_S_CLK_posedge_posedge = 0;
		specparam tpw_CLK_S_EQ_1_posedge = 0;
		specparam tpw_CLK_S_EQ_1_negedge = 0;
		specparam tpw_S_negedge = 0;

		(posedge CLK => (Q+:D)) = tpd_CLK_Q_posedge;
		(negedge S => (Q:D)) = tpd_S_Q_negedge;
		(posedge CLK => (QB-:D)) = tpd_CLK_QB_posedge;
		(negedge S => (QB:D)) = tpd_S_QB_negedge;
		$setup (posedge D &&& (S == 1), posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D &&& (S == 1), posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D &&& (S == 1),
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D &&& (S == 1),
			thold_D_CLK_noedge_posedge, viol_0);
		$recovery (posedge S, posedge CLK,
			trecovery_S_CLK_posedge_posedge, viol_0);
		$hold (posedge CLK, posedge S,
			tremoval_S_CLK_posedge_posedge, viol_0);
		$width (posedge CLK &&& (S == 1), tpw_CLK_S_EQ_1_posedge,
			0, viol_0);
		$width (negedge CLK &&& (S == 1), tpw_CLK_S_EQ_1_negedge,
			0, viol_0);
		$width (negedge S, tpw_S_negedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END dffs_ni



//%BEGIN dffsr

`celldefine
module dffsr (D, CLK, S, R, Q, QB);
	input D, CLK, S, R;
	output Q, QB;

	reg viol_0;
	wire int_res_0, dummy_0, int_res_1, 
		int_res_2, cond0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (int_res_0, S);
	dff_sr_err (dummy_0, CLK, D, int_res_0, R);
	dff_sr_1 (Q, viol_0, CLK, 
		D, int_res_0, R, dummy_0);
	dff_sr_1 (int_res_1, viol_0, CLK, 
		D, int_res_0, R, dummy_0);
	not (QB, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	not (int_res_2, R);
	and (cond0, S, int_res_2);
	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_S_Q_negedge = 0;
		specparam tpd_R_Q_posedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_S_QB_negedge = 0;
		specparam tpd_R_QB_posedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam trecovery_S_CLK_R_EQ_0_posedge_posedge = 0;
		specparam trecovery_R_CLK_S_EQ_1_negedge_posedge = 0;
		specparam tremoval_S_CLK_R_EQ_0_posedge_posedge = 0;
		specparam tremoval_R_CLK_S_EQ_1_negedge_posedge = 0;
		specparam tpw_CLK_cond0_posedge = 0;
		specparam tpw_CLK_cond0_negedge = 0;
		specparam tpw_S_R_EQ_0_negedge = 0;
		specparam tpw_R_S_EQ_1_posedge = 0;

		(posedge CLK => (Q+:D)) = tpd_CLK_Q_posedge;
		(negedge S => (Q:D)) = tpd_S_Q_negedge;
		(posedge R => (Q:D)) = tpd_R_Q_posedge;
		(posedge CLK => (QB-:D)) = tpd_CLK_QB_posedge;
		(negedge S => (QB:D)) = tpd_S_QB_negedge;
		(posedge R => (QB:D)) = tpd_R_QB_posedge;
		$setup (posedge D &&& cond0, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D &&& cond0, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D &&& cond0,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D &&& cond0,
			thold_D_CLK_noedge_posedge, viol_0);
		$recovery (posedge S &&& (R == 0), posedge CLK,
			trecovery_S_CLK_R_EQ_0_posedge_posedge, viol_0);
		$recovery (negedge R &&& (S == 1), posedge CLK,
			trecovery_R_CLK_S_EQ_1_negedge_posedge, viol_0);
		$hold (posedge CLK, posedge S &&& (R == 0),
			tremoval_S_CLK_R_EQ_0_posedge_posedge, viol_0);
		$hold (posedge CLK, negedge R &&& (S == 1),
			tremoval_R_CLK_S_EQ_1_negedge_posedge, viol_0);
		$width (posedge CLK &&& cond0, tpw_CLK_cond0_posedge,
			0, viol_0);
		$width (negedge CLK &&& cond0, tpw_CLK_cond0_negedge,
			0, viol_0);
		$width (negedge S &&& (R == 0), tpw_S_R_EQ_0_negedge,
			0, viol_0);
		$width (posedge R &&& (S == 1), tpw_R_S_EQ_1_posedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END dffsr

primitive dff_sr_err (q, clk, d, s, r);
	output q;
	reg q;
	input clk, d, s, r;

	table
		 ?   1 (0x)  ?   : ? : -;
		 ?   1 (x0)  ?   : ? : -;
		 ?   0  ?   (0x) : ? : -;
		 ?   0  ?   (x0) : ? : -;
		(0x) ?  0    0   : ? : 0;
		(0x) 1  x    0   : ? : 0;
		(0x) 0  0    x   : ? : 0;
		(1x) ?  0    0   : ? : 1;
		(1x) 1  x    0   : ? : 1;
		(1x) 0  0    x   : ? : 1;
	endtable
endprimitive

primitive dff_sr_1 (q, v, clk, d, s, r, dummy);
	output q;
	reg q;
	input v, clk, d, s, r, dummy;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   0   1   ? : ? : 0;
		?  ?   ?   1   ?   ? : ? : 1;
		?  b   ? (1?)  0   ? : 1 : -;
		?  x   1 (1?)  0   ? : 1 : -;
		?  ?   ? (10)  0   ? : ? : -;
		?  ?   ? (x0)  0   ? : ? : -;
		?  ?   ? (0x)  0   ? : 1 : -;
		?  b   ?  0   (1?) ? : 0 : -;
		?  x   0  0   (1?) ? : 0 : -;
		?  ?   ?  0   (10) ? : ? : -;
		?  ?   ?  0   (x0) ? : ? : -;
		?  ?   ?  0   (0x) ? : 0 : -;
		? (x1) 0  0    ?   0 : ? : 0;
		? (x1) 1  ?    0   0 : ? : 1;
		? (x1) 0  0    ?   1 : 0 : 0;
		? (x1) 1  ?    0   1 : 1 : 1;
		? (x1) ?  ?    0   x : ? : -;
		? (x1) ?  0    ?   x : ? : -;
		? (1x) 0  0    ?   ? : 0 : -;
		? (1x) 1  ?    0   ? : 1 : -;
		? (x0) 0  0    ?   ? : ? : -;
		? (x0) 1  ?    0   ? : ? : -;
		? (x0) ?  0    0   x : ? : -;
		? (0x) 0  0    ?   ? : 0 : -;
		? (0x) 1  ?    0   ? : 1 : -;
		? (01) 0  0    ?   ? : ? : 0;
		? (01) 1  ?    0   ? : ? : 1;
		? (10) ?  0    ?   ? : ? : -;
		? (10) ?  ?    0   ? : ? : -;
		?  b   *  0    ?   ? : ? : -;
		?  b   *  ?    0   ? : ? : -;
		?  ?   ?  ?    ?   * : ? : -;
	endtable
endprimitive

//%BEGIN dffsr_ni

`celldefine
module dffsr_ni (D, CLK, S, R, Q, QB);
	input D, CLK, S, R;
	output Q, QB;

	reg viol_0;
	wire dummy_0, int_res_0, int_res_1,
		int_res_2, cond0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	dff_sr_err (dummy_0, CLK, D, S, R);
	dff_sr_1 (Q, viol_0, CLK, 
		D, S, R, dummy_0);
	dff_sr_1 (int_res_0, viol_0, CLK, 
		D, S, R, dummy_0);
	not (QB, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	not (int_res_1, S);
	not (int_res_2, R);
	and (cond0, int_res_1, int_res_2);
	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_S_Q_negedge = 0;
		specparam tpd_R_Q_posedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_S_QB_negedge = 0;
		specparam tpd_R_QB_posedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam trecovery_S_CLK_R_EQ_0_posedge_posedge = 0;
		specparam trecovery_R_CLK_S_EQ_1_negedge_posedge = 0;
		specparam tremoval_S_CLK_R_EQ_0_posedge_posedge = 0;
		specparam tremoval_R_CLK_S_EQ_1_negedge_posedge = 0;
		specparam tpw_CLK_cond0_posedge = 0;
		specparam tpw_CLK_cond0_negedge = 0;
		specparam tpw_S_R_EQ_0_negedge = 0;
		specparam tpw_R_S_EQ_1_posedge = 0;

		(posedge CLK => (Q+:D)) = tpd_CLK_Q_posedge;
		(negedge S => (Q:D)) = tpd_S_Q_negedge;
		(posedge R => (Q:D)) = tpd_R_Q_posedge;
		(posedge CLK => (QB-:D)) = tpd_CLK_QB_posedge;
		(negedge S => (QB:D)) = tpd_S_QB_negedge;
		(posedge R => (QB:D)) = tpd_R_QB_posedge;
		$setup (posedge D &&& cond0, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D &&& cond0, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D &&& cond0,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D &&& cond0,
			thold_D_CLK_noedge_posedge, viol_0);
		$recovery (posedge S &&& (R == 0), posedge CLK,
			trecovery_S_CLK_R_EQ_0_posedge_posedge, viol_0);
		$recovery (negedge R &&& (S == 1), posedge CLK,
			trecovery_R_CLK_S_EQ_1_negedge_posedge, viol_0);
		$hold (posedge CLK, posedge S &&& (R == 0),
			tremoval_S_CLK_R_EQ_0_posedge_posedge, viol_0);
		$hold (posedge CLK, negedge R &&& (S == 1),
			tremoval_R_CLK_S_EQ_1_negedge_posedge, viol_0);
		$width (posedge CLK &&& cond0, tpw_CLK_cond0_posedge,
			0, viol_0);
		$width (negedge CLK &&& cond0, tpw_CLK_cond0_negedge,
			0, viol_0);
		$width (negedge S &&& (R == 0), tpw_S_R_EQ_0_negedge,
			0, viol_0);
		$width (posedge R &&& (S == 1), tpw_R_S_EQ_1_posedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END dffsr_ni



//%BEGIN fadd1

`celldefine
module fadd1 (A, B, CI, S, CO);
	input A, B, CI;
	output S, CO;

	wire int_res_0, int_res_1, int_res_2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	xor (S, A, B, CI);
	and (int_res_0, A, B);
	and (int_res_1, A, CI);
	and (int_res_2, B, CI);
	or (CO, int_res_0, int_res_1, int_res_2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_S = 0;
		specparam tpd_B_S = 0;
		specparam tpd_CI_S = 0;
		specparam tpd_A_CO = 0;
		specparam tpd_B_CO = 0;
		specparam tpd_CI_CO = 0;

		(A => S) = tpd_A_S;
		(B => S) = tpd_B_S;
		(CI => S) = tpd_CI_S;
		(A => CO) = tpd_A_CO;
		(B => CO) = tpd_B_CO;
		(CI => CO) = tpd_CI_CO;
	endspecify
endmodule
`endcelldefine

//%END fadd1

//%BEGIN hadd1

`celldefine
module hadd1 (A, B, S, CO);
	input A, B;
	output S, CO;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	xor (S, A, B);
	and (CO, A, B);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_S = 0;
		specparam tpd_B_S = 0;
		specparam tpd_A_CO = 0;
		specparam tpd_B_CO = 0;

		(A => S) = tpd_A_S;
		(B => S) = tpd_B_S;
		(A => CO) = tpd_A_CO;
		(B => CO) = tpd_B_CO;
	endspecify
endmodule
`endcelldefine

//%END hadd1

//%BEGIN inv01

`celldefine
module inv01 (A, Y);
	input A;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (Y, A);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;

		(A => Y) = tpd_A_Y;
	endspecify
endmodule
`endcelldefine

//%END inv01

//%BEGIN inv02

`celldefine
module inv02 (A, Y);
	input A;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (Y, A);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;

		(A => Y) = tpd_A_Y;
	endspecify
endmodule
`endcelldefine

//%END inv02

//%BEGIN inv04

`celldefine
module inv04 (A, Y);
	input A;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (Y, A);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;

		(A => Y) = tpd_A_Y;
	endspecify
endmodule
`endcelldefine

//%END inv04

//%BEGIN inv08

`celldefine
module inv08 (A, Y);
	input A;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (Y, A);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;

		(A => Y) = tpd_A_Y;
	endspecify
endmodule
`endcelldefine

//%END inv08

//%BEGIN inv12

`celldefine
module inv12 (A, Y);
	input A;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (Y, A);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;

		(A => Y) = tpd_A_Y;
	endspecify
endmodule
`endcelldefine

//%END inv12

//%BEGIN inv16

`celldefine
module inv16 (A, Y);
	input A;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (Y, A);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;

		(A => Y) = tpd_A_Y;
	endspecify
endmodule
`endcelldefine

//%END inv16

//%BEGIN latch

`celldefine
module latch (D, CLK, Q);
	input D, CLK;
	output Q;

	reg viol_0;
	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	latch_p (Q, viol_0, CLK, 
		D);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_D_Q = 0;
		specparam tpw_CLK_posedge = 0;
		specparam tsetup_D_CLK_noedge_negedge = 0; //added
		specparam thold_D_CLK_noedge_negedge = 0;  //added
	
		(posedge CLK => (Q+:D)) = tpd_CLK_Q_posedge;
		(D => Q) = tpd_D_Q;

		$setup (posedge D, negedge CLK,                //beg added
			tsetup_D_CLK_noedge_negedge, viol_0);
		$setup (negedge D, negedge CLK,
			tsetup_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, posedge D,
			thold_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, negedge D,
			thold_D_CLK_noedge_negedge, viol_0);  
		$width (posedge CLK, tpw_CLK_posedge,
			0, viol_0);                            //end added
	

	endspecify
endmodule
`endcelldefine

//%END latch

primitive latch_p (q, v, clk, d);
	output q;
	reg q;
	input v, clk, d;

	table
		* ? ? : ? : x;
		? 1 0 : ? : 0;
		? 1 1 : ? : 1;
		? x 0 : 0 : -;
		? x 1 : 1 : -;
		? 0 ? : ? : -;
	endtable
endprimitive

//%BEGIN latchr

`celldefine
module latchr (D, CLK, R, QB);
	input D, CLK, R;
	output QB;

	reg viol_0;
	wire int_res_0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	latch_r (int_res_0, viol_0, CLK, 
		D, R);
	not (QB, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_D_QB = 0;
		specparam tpd_R_QB_posedge = 0;
		specparam tsetup_D_CLK_noedge_negedge = 0;
		specparam thold_D_CLK_noedge_negedge = 0;
		specparam trecovery_R_CLK_noedge_negedge = 0;
		specparam tremoval_R_CLK_noedge_negedge = 0;
		specparam tpw_CLK_R_EQ_0_posedge = 0;
		specparam tpw_R_posedge = 0;

		(posedge CLK => (QB-:D)) = tpd_CLK_QB_posedge;
		(D => QB) = tpd_D_QB;
		(posedge R => (QB:D)) = tpd_R_QB_posedge;
		$setup (posedge D &&& (R == 0), negedge CLK,
			tsetup_D_CLK_noedge_negedge, viol_0);
		$setup (negedge D &&& (R == 0), negedge CLK,
			tsetup_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, posedge D &&& (R == 0),
			thold_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, negedge D &&& (R == 0),
			thold_D_CLK_noedge_negedge, viol_0);
		$recovery (negedge R, negedge CLK,
			trecovery_R_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, negedge R,
			tremoval_R_CLK_noedge_negedge, viol_0);
		$width (posedge CLK &&& (R == 0), tpw_CLK_R_EQ_0_posedge,
			0, viol_0);
		$width (posedge R, tpw_R_posedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END latchr

primitive latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive

//%BEGIN latchs

`celldefine
module latchs (D, CLK, S, QB);
	input D, CLK, S;
	output QB;

	reg viol_0;
	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (int_res_0, S);
	latch_s (int_res_1, viol_0, CLK, 
		D, int_res_0);
	not (QB, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_D_QB = 0;
		specparam tpd_S_QB_negedge = 0;
		specparam tpw_CLK_posedge = 0;

		specparam tsetup_D_CLK_noedge_negedge = 0;
		specparam thold_D_CLK_noedge_negedge = 0;
		specparam trecovery_S_CLK_noedge_posedge = 0;
		specparam tremoval_S_CLK_noedge_negedge = 0;
		specparam tpw_S_negedge = 0;
		

		(posedge CLK => (QB-:D)) = tpd_CLK_QB_posedge;
		(D => QB) = tpd_D_QB;
		(negedge S => (QB:D)) = tpd_S_QB_negedge;

		$setup (posedge D &&& (S == 1), negedge CLK,
			tsetup_D_CLK_noedge_negedge, viol_0);
		$setup (negedge D &&& (S == 1), negedge CLK,
			tsetup_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, posedge D &&& (S == 1),
			thold_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, negedge D &&& (S == 1),
			thold_D_CLK_noedge_negedge, viol_0);
		$recovery (negedge S, negedge CLK,
			trecovery_S_CLK_noedge_posedge, viol_0);
		$hold (negedge CLK, negedge S,
			tremoval_S_CLK_noedge_negedge, viol_0);
		$width (posedge CLK &&& (S == 1), tpw_CLK_posedge,
			0, viol_0);
		$width (posedge S, tpw_S_negedge,
		0, viol_0);

	endspecify
endmodule
`endcelldefine

//%END latchs

primitive latch_s (q, v, clk, d, s);
	output q;
	reg q;
	input v, clk, d, s;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 1;
		? 0 ? 0 : ? : -;
		? 0 ? x : 1 : -;
		? 1 1 0 : ? : 1;
		? 1 1 x : ? : 1;
		? 1 0 0 : ? : 0;
		? x 1 0 : 1 : -;
		? x 1 x : 1 : -;
		? x 0 0 : 0 : -;
	endtable
endprimitive

//%BEGIN latchs_ni

`celldefine
module latchs_ni (D, CLK, S, QB);
	input D, CLK, S;
	output QB;

	reg viol_0;
	wire int_res_0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	latch_s (int_res_0, viol_0, CLK, 
		D, S);
	not (QB, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_D_QB = 0;
		specparam tpd_S_QB_negedge = 0;
		specparam tpw_CLK_posedge = 0;

		specparam tsetup_D_CLK_noedge_negedge = 0;
		specparam thold_D_CLK_noedge_negedge = 0;
		specparam trecovery_S_CLK_noedge_posedge = 0;
		specparam tremoval_S_CLK_noedge_negedge = 0;
		specparam tpw_S_negedge = 0;
		

		(posedge CLK => (QB-:D)) = tpd_CLK_QB_posedge;
		(D => QB) = tpd_D_QB;
		(negedge S => (QB:D)) = tpd_S_QB_negedge;

		$setup (posedge D &&& (S == 1), negedge CLK,
			tsetup_D_CLK_noedge_negedge, viol_0);
		$setup (negedge D &&& (S == 1), negedge CLK,
			tsetup_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, posedge D &&& (S == 1),
			thold_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, negedge D &&& (S == 1),
			thold_D_CLK_noedge_negedge, viol_0);
		$recovery (negedge S, negedge CLK,
			trecovery_S_CLK_noedge_posedge, viol_0);
		$hold (negedge CLK, negedge S,
			tremoval_S_CLK_noedge_negedge, viol_0);
		$width (posedge CLK &&& (S == 1), tpw_CLK_posedge,
			0, viol_0);
		$width (posedge S, tpw_S_negedge,
		0, viol_0);

	endspecify
endmodule
`endcelldefine

//%END latchs_ni


//%BEGIN latchsr

`celldefine
module latchsr (D, CLK, S, R, QB);
	input D, CLK, S, R;
	output QB;

	reg viol_0;
	wire int_res_0, int_res_1, int_res_2, 
		cond0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (int_res_0, S);
	latch_sr_1 (int_res_1, viol_0, CLK, 
		D, int_res_0, R);
	not (QB, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	not (int_res_2, R);
	and (cond0, S, int_res_2);
	specify
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_D_QB = 0;
		specparam tpd_S_QB_negedge = 0;
		specparam tpd_R_QB_posedge = 0;
		specparam tsetup_D_CLK_noedge_negedge = 0;
		specparam thold_D_CLK_noedge_negedge = 0;
		specparam trecovery_S_CLK_R_EQ_0_posedge_negedge = 0;
		specparam trecovery_R_CLK_S_EQ_1_negedge_negedge = 0;
		specparam tremoval_S_CLK_R_EQ_0_posedge_negedge = 0;
		specparam tremoval_R_CLK_S_EQ_1_negedge_negedge = 0;
		specparam tpw_CLK_cond0_posedge = 0;
		specparam tpw_S_R_EQ_0_negedge = 0;
		specparam tpw_R_S_EQ_1_posedge = 0;

		(posedge CLK => (QB-:D)) = tpd_CLK_QB_posedge;
		(D => QB) = tpd_D_QB;
		(negedge S => (QB:D)) = tpd_S_QB_negedge;
		(posedge R => (QB:D)) = tpd_R_QB_posedge;
		$setup (posedge D &&& cond0, negedge CLK,
			tsetup_D_CLK_noedge_negedge, viol_0);
		$setup (negedge D &&& cond0, negedge CLK,
			tsetup_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, posedge D &&& cond0,
			thold_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, negedge D &&& cond0,
			thold_D_CLK_noedge_negedge, viol_0);
		$recovery (posedge S &&& (R == 0), negedge CLK,
			trecovery_S_CLK_R_EQ_0_posedge_negedge, viol_0);
		$recovery (negedge R &&& (S == 1), negedge CLK,
			trecovery_R_CLK_S_EQ_1_negedge_negedge, viol_0);
		$hold (negedge CLK, posedge S &&& (R == 0),
			tremoval_S_CLK_R_EQ_0_posedge_negedge, viol_0);
		$hold (negedge CLK, negedge R &&& (S == 1),
			tremoval_R_CLK_S_EQ_1_negedge_negedge, viol_0);
		$width (posedge CLK &&& cond0, tpw_CLK_cond0_posedge,
			0, viol_0);
		$width (negedge S &&& (R == 0), tpw_S_R_EQ_0_negedge,
			0, viol_0);
		$width (posedge R &&& (S == 1), tpw_R_S_EQ_1_posedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END latchsr

primitive latch_sr_1 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? ? ? 0 1 : ? : 0;
		? ? ? 1 ? : ? : 1;
		? 0 ? 0 0 : ? : -;
		? 0 ? x 0 : 1 : -;
		? 0 ? 0 x : 0 : -;
		? 1 0 0 0 : ? : 0;
		? 1 0 0 x : ? : 0;
		? 1 1 x 0 : ? : 1;
		? 1 1 0 0 : ? : 1;
		? x 0 0 0 : 0 : -;
		? x 0 0 x : 0 : -;
		? x 1 0 0 : 1 : -;
		? x 1 x 0 : 1 : -;
	endtable
endprimitive

//%BEGIN latchsr_ni

`celldefine
module latchsr_ni (D, CLK, S, R, QB);
	input D, CLK, S, R;
	output QB;

	reg viol_0;
	wire int_res_0, int_res_1, int_res_2,
		cond0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	latch_sr_1 (int_res_0, viol_0, CLK, 
		D, S, R);
	not (QB, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	not (int_res_1, S);
	not (int_res_2, R);
	and (cond0, int_res_1, int_res_2);
	specify
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_D_QB = 0;
		specparam tpd_S_QB_negedge = 0;
		specparam tpd_R_QB_posedge = 0;
		specparam tsetup_D_CLK_noedge_negedge = 0;
		specparam thold_D_CLK_noedge_negedge = 0;
		specparam trecovery_S_CLK_R_EQ_0_posedge_negedge = 0;
		specparam trecovery_R_CLK_S_EQ_1_negedge_negedge = 0;
		specparam tremoval_S_CLK_R_EQ_0_posedge_negedge = 0;
		specparam tremoval_R_CLK_S_EQ_1_negedge_negedge = 0;
		specparam tpw_CLK_cond0_posedge = 0;
		specparam tpw_S_R_EQ_0_negedge = 0;
		specparam tpw_R_S_EQ_1_posedge = 0;

		(posedge CLK => (QB-:D)) = tpd_CLK_QB_posedge;
		(D => QB) = tpd_D_QB;
		(negedge S => (QB:D)) = tpd_S_QB_negedge;
		(posedge R => (QB:D)) = tpd_R_QB_posedge;
		$setup (posedge D &&& cond0, negedge CLK,
			tsetup_D_CLK_noedge_negedge, viol_0);
		$setup (negedge D &&& cond0, negedge CLK,
			tsetup_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, posedge D &&& cond0,
			thold_D_CLK_noedge_negedge, viol_0);
		$hold (negedge CLK, negedge D &&& cond0,
			thold_D_CLK_noedge_negedge, viol_0);
		$recovery (posedge S &&& (R == 0), negedge CLK,
			trecovery_S_CLK_R_EQ_0_posedge_negedge, viol_0);
		$recovery (negedge R &&& (S == 1), negedge CLK,
			trecovery_R_CLK_S_EQ_1_negedge_negedge, viol_0);
		$hold (negedge CLK, posedge S &&& (R == 0),
			tremoval_S_CLK_R_EQ_0_posedge_negedge, viol_0);
		$hold (negedge CLK, negedge R &&& (S == 1),
			tremoval_R_CLK_S_EQ_1_negedge_negedge, viol_0);
		$width (posedge CLK &&& cond0, tpw_CLK_cond0_posedge,
			0, viol_0);
		$width (negedge S &&& (R == 0), tpw_S_R_EQ_0_negedge,
			0, viol_0);
		$width (posedge R &&& (S == 1), tpw_R_S_EQ_1_posedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END latchsr_ni


//%BEGIN mux21

`celldefine
module mux21 (A0, A1, S0, Y);
	input A0, A1, S0;
	output Y;

	wire int_res_mux1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	mux2 (int_res_mux1, A1, A0, S0);
	not (Y, int_res_mux1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_S0_Y = 0;
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(S0 => Y) = tpd_S0_Y;
		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END mux21

primitive mux2 (q, i1, i0, s0);
	input i1, i0, s0;
	output q;

	table
		  ?  0  0 : 0;
		  ?  1  0 : 1;
		  0  ?  1 : 0;
		  1  ?  1 : 1;
		  0  0  ? : 0;
		  1  1  ? : 1;
	endtable
endprimitive

//%BEGIN mux21_ni

`celldefine
module mux21_ni (A0, A1, S0, Y);
	input A0, A1, S0;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	mux2 (Y, A1, A0, S0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_S0_Y = 0;
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(S0 => Y) = tpd_S0_Y;
		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END mux21_ni


//%BEGIN nand02

`celldefine
module nand02 (A0, A1, Y);
	input A0, A1;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nand (Y, A0, A1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END nand02

//%BEGIN nand02_2x

`celldefine
module nand02_2x (A0, A1, Y);
	input A0, A1;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nand (Y, A0, A1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END nand02_2x

//%BEGIN nand03

`celldefine
module nand03 (A0, A1, A2, Y);
	input A0, A1, A2;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nand (Y, A0, A1, A2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
	endspecify
endmodule
`endcelldefine

//%END nand03

//%BEGIN nand03_2x

`celldefine
module nand03_2x (A0, A1, A2, Y);
	input A0, A1, A2;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nand (Y, A0, A1, A2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
	endspecify
endmodule
`endcelldefine

//%END nand03_2x

//%BEGIN nand04

`celldefine
module nand04 (A0, A1, A2, A3, Y);
	input A0, A1, A2, A3;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nand (Y, A0, A1, A2, A3);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
	endspecify
endmodule
`endcelldefine

//%END nand04

//%BEGIN nand04_2x

`celldefine
module nand04_2x (A0, A1, A2, A3, Y);
	input A0, A1, A2, A3;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nand (Y, A0, A1, A2, A3);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
	endspecify
endmodule
`endcelldefine

//%END nand04_2x

//%BEGIN nor02

`celldefine
module nor02 (A0, A1, Y);
	input A0, A1;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nor (Y, A0, A1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END nor02

//%BEGIN nor02_2x

`celldefine
module nor02_2x (A0, A1, Y);
	input A0, A1;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nor (Y, A0, A1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END nor02_2x

//%BEGIN nor02ii

`celldefine
module nor02ii (A0, A1, Y);
	input A0, A1;
	output Y;

	wire int_res_0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (int_res_0, A1);
	nor (Y, A0, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END nor02ii

//%BEGIN nor03

`celldefine
module nor03 (A0, A1, A2, Y);
	input A0, A1, A2;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nor (Y, A0, A1, A2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
	endspecify
endmodule
`endcelldefine

//%END nor03

//%BEGIN nor03_2x

`celldefine
module nor03_2x (A0, A1, A2, Y);
	input A0, A1, A2;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nor (Y, A0, A1, A2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
	endspecify
endmodule
`endcelldefine

//%END nor03_2x

//%BEGIN nor04

`celldefine
module nor04 (A0, A1, A2, A3, Y);
	input A0, A1, A2, A3;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nor (Y, A0, A1, A2, A3);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
	endspecify
endmodule
`endcelldefine

//%END nor04

//%BEGIN nor04_2x

`celldefine
module nor04_2x (A0, A1, A2, A3, Y);
	input A0, A1, A2, A3;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	nor (Y, A0, A1, A2, A3);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
	endspecify
endmodule
`endcelldefine

//%END nor04_2x

//%BEGIN oai21

`celldefine
module oai21 (A0, A1, B0, Y);
	input A0, A1, B0;
	output Y;

	wire int_res_0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1);
	nand (Y, int_res_0, B0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_B0_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(B0 => Y) = tpd_B0_Y;
	endspecify
endmodule
`endcelldefine

//%END oai21

//%BEGIN oai22

`celldefine
module oai22 (A0, A1, B0, B1, Y);
	input A0, A1, B0, B1;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1);
	or (int_res_1, B0, B1);
	nand (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
	endspecify
endmodule
`endcelldefine

//%END oai22

//%BEGIN oai221

`celldefine
module oai221 (A0, A1, B0, B1, C0, Y);
	input A0, A1, B0, B1, C0;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1);
	or (int_res_1, B0, B1);
	nand (Y, int_res_0, int_res_1, C0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_C0_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(C0 => Y) = tpd_C0_Y;
	endspecify
endmodule
`endcelldefine

//%END oai221

//%BEGIN oai222

`celldefine
module oai222 (A0, A1, B0, B1, C0, C1, Y);
	input A0, A1, B0, B1, C0, C1;
	output Y;

	wire int_res_0, int_res_1, int_res_2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1);
	or (int_res_1, B0, B1);
	or (int_res_2, C0, C1);
	nand (Y, int_res_0, int_res_1, int_res_2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_C0_Y = 0;
		specparam tpd_C1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(C0 => Y) = tpd_C0_Y;
		(C1 => Y) = tpd_C1_Y;
	endspecify
endmodule
`endcelldefine

//%END oai222

//%BEGIN oai32

`celldefine
module oai32 (A0, A1, A2, B0, B1, Y);
	input A0, A1, A2, B0, B1;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1, A2);
	or (int_res_1, B0, B1);
	nand (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
	endspecify
endmodule
`endcelldefine

//%END oai32

//%BEGIN oai321

`celldefine
module oai321 (A0, A1, A2, B0, B1, C0, Y);
	input A0, A1, A2, B0, B1, C0;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1, A2);
	or (int_res_1, B0, B1);
	nand (Y, int_res_0, int_res_1, C0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_C0_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(C0 => Y) = tpd_C0_Y;
	endspecify
endmodule
`endcelldefine

//%END oai321

//%BEGIN oai322

`celldefine
module oai322 (A0, A1, A2, B0, B1, C0, C1, Y);
	input A0, A1, A2, B0, B1, C0, C1;
	output Y;

	wire int_res_0, int_res_1, int_res_2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1, A2);
	or (int_res_1, B0, B1);
	or (int_res_2, C0, C1);
	nand (Y, int_res_0, int_res_1, int_res_2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_C0_Y = 0;
		specparam tpd_C1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(C0 => Y) = tpd_C0_Y;
		(C1 => Y) = tpd_C1_Y;
	endspecify
endmodule
`endcelldefine

//%END oai322

//%BEGIN oai33

`celldefine
module oai33 (A0, A1, A2, B0, B1, B2, Y);
	input A0, A1, A2, B0, B1, B2;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1, A2);
	or (int_res_1, B0, B1, B2);
	nand (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_B2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(B2 => Y) = tpd_B2_Y;
	endspecify
endmodule
`endcelldefine

//%END oai33

//%BEGIN oai332

`celldefine
module oai332 (A0, A1, A2, B0, B1, B2, C0, C1, 
		Y);
	input A0, A1, A2, B0, B1, B2, C0, C1;
	output Y;

	wire int_res_0, int_res_1, int_res_2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1, A2);
	or (int_res_1, B0, B1, B2);
	or (int_res_2, C0, C1);
	nand (Y, int_res_0, int_res_1, int_res_2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_B2_Y = 0;
		specparam tpd_C0_Y = 0;
		specparam tpd_C1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(B2 => Y) = tpd_B2_Y;
		(C0 => Y) = tpd_C0_Y;
		(C1 => Y) = tpd_C1_Y;
	endspecify
endmodule
`endcelldefine

//%END oai332

//%BEGIN oai333

`celldefine
module oai333 (A0, A1, A2, B0, B1, B2, C0, C1, 
		C2, Y);
	input A0, A1, A2, B0, B1, B2, C0, C1, 
		C2;
	output Y;

	wire int_res_0, int_res_1, int_res_2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1, A2);
	or (int_res_1, B0, B1, B2);
	or (int_res_2, C0, C1, C2);
	nand (Y, int_res_0, int_res_1, int_res_2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_B2_Y = 0;
		specparam tpd_C0_Y = 0;
		specparam tpd_C1_Y = 0;
		specparam tpd_C2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(B2 => Y) = tpd_B2_Y;
		(C0 => Y) = tpd_C0_Y;
		(C1 => Y) = tpd_C1_Y;
		(C2 => Y) = tpd_C2_Y;
	endspecify
endmodule
`endcelldefine

//%END oai333

//%BEGIN oai422

`celldefine
module oai422 (A0, A1, A2, A3, B0, B1, C0, C1, 
		Y);
	input A0, A1, A2, A3, B0, B1, C0, C1;
	output Y;

	wire int_res_0, int_res_1, int_res_2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1, A2, A3);
	or (int_res_1, B0, B1);
	or (int_res_2, C0, C1);
	nand (Y, int_res_0, int_res_1, int_res_2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_C0_Y = 0;
		specparam tpd_C1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(C0 => Y) = tpd_C0_Y;
		(C1 => Y) = tpd_C1_Y;
	endspecify
endmodule
`endcelldefine

//%END oai422

//%BEGIN oai43

`celldefine
module oai43 (A0, A1, A2, A3, B0, B1, B2, Y);
	input A0, A1, A2, A3, B0, B1, B2;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1, A2, A3);
	or (int_res_1, B0, B1, B2);
	nand (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_B2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(B2 => Y) = tpd_B2_Y;
	endspecify
endmodule
`endcelldefine

//%END oai43

//%BEGIN oai44

`celldefine
module oai44 (A0, A1, A2, A3, B0, B1, B2, B3, 
		Y);
	input A0, A1, A2, A3, B0, B1, B2, B3;
	output Y;

	wire int_res_0, int_res_1;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (int_res_0, A0, A1, A2, A3);
	or (int_res_1, B0, B1, B2, B3);
	nand (Y, int_res_0, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;
		specparam tpd_B0_Y = 0;
		specparam tpd_B1_Y = 0;
		specparam tpd_B2_Y = 0;
		specparam tpd_B3_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
		(B0 => Y) = tpd_B0_Y;
		(B1 => Y) = tpd_B1_Y;
		(B2 => Y) = tpd_B2_Y;
		(B3 => Y) = tpd_B3_Y;
	endspecify
endmodule
`endcelldefine

//%END oai44

//%BEGIN or02

`celldefine
module or02 (A0, A1, Y);
	input A0, A1;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (Y, A0, A1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END or02

//%BEGIN or03

`celldefine
module or03 (A0, A1, A2, Y);
	input A0, A1, A2;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (Y, A0, A1, A2);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
	endspecify
endmodule
`endcelldefine

//%END or03

//%BEGIN or04

`celldefine
module or04 (A0, A1, A2, A3, Y);
	input A0, A1, A2, A3;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	or (Y, A0, A1, A2, A3);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;
		specparam tpd_A2_Y = 0;
		specparam tpd_A3_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
		(A2 => Y) = tpd_A2_Y;
		(A3 => Y) = tpd_A3_Y;
	endspecify
endmodule
`endcelldefine

//%END or04

//%BEGIN sff

`celldefine
module sff (D, SI, SE, CLK, Q, QB);
	input D, SI, SE, CLK;
	output Q, QB;

	reg viol_0;
	wire int_res__D, dummy_0, int_res_0, 
		int_res_1, int_res_2, int_res_3, int_res_4, 
		cond0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	mux2 (int_res__D, SI, D, SE);
	dff_err (dummy_0, CLK, int_res__D);
	dff_p (Q, viol_0, CLK, 
		int_res__D, dummy_0);
	dff_p (int_res_0, viol_0, CLK, 
		int_res__D, dummy_0);
	not (QB, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	not (int_res_1, D);
	and (int_res_2, SI, int_res_1);
	not (int_res_3, SI);
	and (int_res_4, int_res_3, D);
	or (cond0, int_res_2, int_res_4);
	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tsetup_SE_CLK_noedge_posedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam tsetup_SI_CLK_noedge_posedge = 0;
		specparam thold_SE_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam thold_SI_CLK_noedge_posedge = 0;
		specparam tpw_CLK_posedge = 0;
		specparam tpw_CLK_negedge = 0;

		(posedge CLK => (Q+:int_res__D)) = tpd_CLK_Q_posedge;
		(posedge CLK => (QB-:int_res__D)) = tpd_CLK_QB_posedge;
		$setup (posedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (negedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (posedge D &&& (SE == 0), posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D &&& (SE == 0), posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (posedge SI &&& (SE == 1), posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$setup (negedge SI &&& (SE == 1), posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D &&& (SE == 0),
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D &&& (SE == 0),
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SI &&& (SE == 1),
			thold_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SI &&& (SE == 1),
			thold_SI_CLK_noedge_posedge, viol_0);
		$width (posedge CLK, tpw_CLK_posedge,
			0, viol_0);
		$width (negedge CLK, tpw_CLK_negedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END sff




//%BEGIN sffr

`celldefine
module sffr (D, SI, SE, CLK, R, Q, QB);
	input D, SI, SE, CLK, R;
	output Q, QB;

	reg viol_0;
	wire int_res__D, int_res_0, dummy_0, 
		int_res_1, int_res_2, int_res_3, int_res_4, 
		int_res_5, cond0, int_res_6, cond1, 
		cond2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	mux2 (int_res__D, SI, D, SE);
	not (int_res_0, R);
	dff_r_err (dummy_0, CLK, int_res__D, int_res_0);
	dff_r (Q, viol_0, CLK, 
		int_res__D, int_res_0, dummy_0);
	dff_r (int_res_1, viol_0, CLK, 
		int_res__D, int_res_0, dummy_0);
	not (QB, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	not (int_res_2, D);
	and (int_res_3, SI, int_res_2, R);
	not (int_res_4, SI);
	and (int_res_5, int_res_4, D, R);
	or (cond0, int_res_3, int_res_5);
	not (int_res_6, SE);
	and (cond1, int_res_6, R);
	and (cond2, SE, R);
	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_R_Q_negedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_R_QB_negedge = 0;
		specparam tsetup_SE_CLK_noedge_posedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam tsetup_SI_CLK_noedge_posedge = 0;
		specparam thold_SE_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam thold_SI_CLK_noedge_posedge = 0;
		specparam trecovery_R_CLK_posedge_posedge = 0;
		specparam tremoval_R_CLK_posedge_posedge = 0;
		specparam tpw_CLK_R_EQ_1_posedge = 0;
		specparam tpw_CLK_R_EQ_1_negedge = 0;
		specparam tpw_R_negedge = 0;

		(posedge CLK => (Q+:int_res__D)) = tpd_CLK_Q_posedge;
		(negedge R => (Q:int_res__D)) = tpd_R_Q_negedge;
		(posedge CLK => (QB-:int_res__D)) = tpd_CLK_QB_posedge;
		(negedge R => (QB:int_res__D)) = tpd_R_QB_negedge;
		$setup (posedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (negedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (posedge D &&& cond1, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D &&& cond1, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (posedge SI &&& cond2, posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$setup (negedge SI &&& cond2, posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D &&& cond1,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D &&& cond1,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SI &&& cond2,
			thold_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SI &&& cond2,
			thold_SI_CLK_noedge_posedge, viol_0);
		$recovery (posedge R, posedge CLK,
			trecovery_R_CLK_posedge_posedge, viol_0);
		$hold (posedge CLK, posedge R,
			tremoval_R_CLK_posedge_posedge, viol_0);
		$width (posedge CLK &&& (R == 1), tpw_CLK_R_EQ_1_posedge,
			0, viol_0);
		$width (negedge CLK &&& (R == 1), tpw_CLK_R_EQ_1_negedge,
			0, viol_0);
		$width (negedge R, tpw_R_negedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END sffr




//%BEGIN sffr_ni

`celldefine
module sffr_ni (D, SI, SE, CLK, R, Q, QB);
	input D, SI, SE, CLK, R;
	output Q, QB;

	reg viol_0;
	wire int_res__D, dummy_0, int_res_0,
		int_res_1, int_res_2, int_res_3, int_res_4, 
		int_res_5, int_res_6, cond0, int_res_7, 
		int_res_8, cond1, int_res_9, cond2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	mux2 (int_res__D, SI, D, SE);
	dff_r_err (dummy_0, CLK, int_res__D, R);
	dff_r (Q, viol_0, CLK, 
		int_res__D, R, dummy_0);
	dff_r (int_res_0, viol_0, CLK, 
		int_res__D, R, dummy_0);
	not (QB, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	not (int_res_1, D);
	not (int_res_2, R);
	and (int_res_3, SI, int_res_1, int_res_2);
	not (int_res_4, SI);
	not (int_res_5, R);
	and (int_res_6, int_res_4, D, int_res_5);
	or (cond0, int_res_3, int_res_6);
	not (int_res_7, SE);
	not (int_res_8, R);
	and (cond1, int_res_7, int_res_8);
	not (int_res_9, R);
	and (cond2, SE, int_res_9);
	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_R_Q_negedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_R_QB_negedge = 0;
		specparam tsetup_SE_CLK_noedge_posedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam tsetup_SI_CLK_noedge_posedge = 0;
		specparam thold_SE_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam thold_SI_CLK_noedge_posedge = 0;
		specparam trecovery_R_CLK_posedge_posedge = 0;
		specparam tremoval_R_CLK_posedge_posedge = 0;
		specparam tpw_CLK_R_EQ_1_posedge = 0;
		specparam tpw_CLK_R_EQ_1_negedge = 0;
		specparam tpw_R_negedge = 0;

		(posedge CLK => (Q+:int_res__D)) = tpd_CLK_Q_posedge;
		(negedge R => (Q:int_res__D)) = tpd_R_Q_negedge;
		(posedge CLK => (QB-:int_res__D)) = tpd_CLK_QB_posedge;
		(negedge R => (QB:int_res__D)) = tpd_R_QB_negedge;
		$setup (posedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (negedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (posedge D &&& cond1, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D &&& cond1, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (posedge SI &&& cond2, posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$setup (negedge SI &&& cond2, posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D &&& cond1,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D &&& cond1,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SI &&& cond2,
			thold_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SI &&& cond2,
			thold_SI_CLK_noedge_posedge, viol_0);
		$recovery (posedge R, posedge CLK,
			trecovery_R_CLK_posedge_posedge, viol_0);
		$hold (posedge CLK, posedge R,
			tremoval_R_CLK_posedge_posedge, viol_0);
		$width (posedge CLK &&& (R == 1), tpw_CLK_R_EQ_1_posedge,
			0, viol_0);
		$width (negedge CLK &&& (R == 1), tpw_CLK_R_EQ_1_negedge,
			0, viol_0);
		$width (negedge R, tpw_R_negedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END sffr_ni




//%BEGIN sffs

`celldefine
module sffs (D, SI, SE, CLK, S, Q, QB);
	input D, SI, SE, CLK, S;
	output Q, QB;

	reg viol_0;
	wire int_res__D, dummy_0, int_res_0, 
		int_res_1, int_res_2, int_res_3, int_res_4, 
		int_res_5, int_res_6, cond0, int_res_7, 
		int_res_8, cond1, int_res_9, cond2;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	mux2 (int_res__D, SI, D, SE);
	dff_s_err (dummy_0, CLK, int_res__D, S);
	dff_s (Q, viol_0, CLK, 
		int_res__D, S, dummy_0);
	dff_s (int_res_0, viol_0, CLK, 
		int_res__D, S, dummy_0);
	not (QB, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	not (int_res_1, D);
	not (int_res_2, S);
	and (int_res_3, SI, int_res_1, int_res_2);
	not (int_res_4, SI);
	not (int_res_5, S);
	and (int_res_6, int_res_4, D, int_res_5);
	or (cond0, int_res_3, int_res_6);
	not (int_res_7, SE);
	not (int_res_8, S);
	and (cond1, int_res_7, int_res_8);
	not (int_res_9, S);
	and (cond2, SE, int_res_9);
	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_S_Q_posedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_S_QB_posedge = 0;
		specparam tsetup_SE_CLK_noedge_posedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam tsetup_SI_CLK_noedge_posedge = 0;
		specparam thold_SE_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam thold_SI_CLK_noedge_posedge = 0;
		specparam trecovery_S_CLK_negedge_posedge = 0;
		specparam tremoval_S_CLK_negedge_posedge = 0;
		specparam tpw_CLK_S_EQ_0_posedge = 0;
		specparam tpw_CLK_S_EQ_0_negedge = 0;
		specparam tpw_S_posedge = 0;

		(posedge CLK => (Q+:int_res__D)) = tpd_CLK_Q_posedge;
		(posedge S => (Q:int_res__D)) = tpd_S_Q_posedge;
		(posedge CLK => (QB-:int_res__D)) = tpd_CLK_QB_posedge;
		(posedge S => (QB:int_res__D)) = tpd_S_QB_posedge;
		$setup (posedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (negedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (posedge D &&& cond1, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D &&& cond1, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (posedge SI &&& cond2, posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$setup (negedge SI &&& cond2, posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D &&& cond1,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D &&& cond1,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SI &&& cond2,
			thold_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SI &&& cond2,
			thold_SI_CLK_noedge_posedge, viol_0);
		$recovery (negedge S, posedge CLK,
			trecovery_S_CLK_negedge_posedge, viol_0);
		$hold (posedge CLK, negedge S,
			tremoval_S_CLK_negedge_posedge, viol_0);
		$width (posedge CLK &&& (S == 0), tpw_CLK_S_EQ_0_posedge,
			0, viol_0);
		$width (negedge CLK &&& (S == 0), tpw_CLK_S_EQ_0_negedge,
			0, viol_0);
		$width (posedge S, tpw_S_posedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END sffs




//%BEGIN sffsr

`celldefine
module sffsr (D, SI, SE, CLK, S, R, Q, QB);
	input D, SI, SE, CLK, S, R;
	output Q, QB;

	reg viol_0;
	wire int_res__D, int_res_0, dummy_0, 
		int_res_1, int_res_2, int_res_3, int_res_4, 
		int_res_5, int_res_6, int_res_7, cond0, 
		int_res_8, int_res_9, cond1, int_res_10, 
		cond2, int_res_11, cond3;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	mux2 (int_res__D, SI, D, SE);
	not (int_res_0, R);
	dff_sr_err (dummy_0, CLK, int_res__D, S, int_res_0);
	dff_sr_0 (Q, viol_0, CLK, 
		int_res__D, S, int_res_0, dummy_0);
	dff_sr_0 (int_res_1, viol_0, CLK, 
		int_res__D, S, int_res_0, dummy_0);
	not (QB, int_res_1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	not (int_res_2, D);
	not (int_res_3, S);
	and (int_res_4, SI, int_res_2, int_res_3, R);
	not (int_res_5, SI);
	not (int_res_6, S);
	and (int_res_7, int_res_5, D, int_res_6, R);
	or (cond0, int_res_4, int_res_7);
	not (int_res_8, SE);
	not (int_res_9, S);
	and (cond1, int_res_8, int_res_9, R);
	not (int_res_10, S);
	and (cond2, SE, int_res_10, R);
	not (int_res_11, S);
	and (cond3, int_res_11, R);
	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_S_Q_posedge = 0;
		specparam tpd_R_Q_negedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_S_QB_posedge = 0;
		specparam tpd_R_QB_negedge = 0;
		specparam tsetup_SE_CLK_noedge_posedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam tsetup_SI_CLK_noedge_posedge = 0;
		specparam thold_SE_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam thold_SI_CLK_noedge_posedge = 0;
		specparam trecovery_S_CLK_noedge_posedge = 0;
		specparam trecovery_R_CLK_noedge_posedge = 0;
		specparam tremoval_S_CLK_noedge_posedge = 0;
		specparam tremoval_R_CLK_noedge_posedge = 0;
		specparam tpw_CLK_cond3_posedge = 0;
		specparam tpw_CLK_cond3_negedge = 0;
		specparam tpw_S_R_EQ_1_posedge = 0;
		specparam tpw_R_S_EQ_0_negedge = 0;

		(posedge CLK => (Q+:int_res__D)) = tpd_CLK_Q_posedge;
		(posedge S => (Q:int_res__D)) = tpd_S_Q_posedge;
		(negedge R => (Q:int_res__D)) = tpd_R_Q_negedge;
		(posedge CLK => (QB-:int_res__D)) = tpd_CLK_QB_posedge;
		(posedge S => (QB:int_res__D)) = tpd_S_QB_posedge;
		(negedge R => (QB:int_res__D)) = tpd_R_QB_negedge;
		$setup (posedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (negedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (posedge D &&& cond1, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D &&& cond1, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (posedge SI &&& cond2, posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$setup (negedge SI &&& cond2, posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D &&& cond1,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D &&& cond1,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SI &&& cond2,
			thold_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SI &&& cond2,
			thold_SI_CLK_noedge_posedge, viol_0);
		$recovery (negedge S &&& (R == 1), posedge CLK,
			trecovery_S_CLK_noedge_posedge, viol_0);
		$recovery (posedge R &&& (S == 0), posedge CLK,
			trecovery_R_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge S &&& (R == 1),
			tremoval_S_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge R &&& (S == 0),
			tremoval_R_CLK_noedge_posedge, viol_0);
		$width (posedge CLK &&& cond3, tpw_CLK_cond3_posedge,
			0, viol_0);
		$width (negedge CLK &&& cond3, tpw_CLK_cond3_negedge,
			0, viol_0);
		$width (posedge S &&& (R == 1), tpw_S_R_EQ_1_posedge,
			0, viol_0);
		$width (negedge R &&& (S == 0), tpw_R_S_EQ_0_negedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END sffsr



primitive dff_sr_0 (q, v, clk, d, s, r, dummy);
	output q;
	reg q;
	input v, clk, d, s, r, dummy;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   ?   1   ? : ? : 0;
		?  ?   ?   1   0   ? : ? : 1;
		?  b   ? (1?)  0   ? : 1 : -;
		?  x   1 (1?)  0   ? : 1 : -;
		?  ?   ? (10)  0   ? : ? : -;
		?  ?   ? (x0)  0   ? : ? : -;
		?  ?   ? (0x)  0   ? : 1 : -;
		?  b   ?  0   (1?) ? : 0 : -;
		?  x   0  0   (1?) ? : 0 : -;
		?  ?   ?  0   (10) ? : ? : -;
		?  ?   ?  0   (x0) ? : ? : -;
		?  ?   ?  0   (0x) ? : 0 : -;
		? (x1) 0  0    ?   0 : ? : 0;
		? (x1) 1  ?    0   0 : ? : 1;
		? (x1) 0  0    ?   1 : 0 : 0;
		? (x1) 1  ?    0   1 : 1 : 1;
		? (x1) ?  ?    0   x : ? : -;
		? (x1) ?  0    ?   x : ? : -;
		? (1x) 0  0    ?   ? : 0 : -;
		? (1x) 1  ?    0   ? : 1 : -;
		? (x0) 0  0    ?   ? : ? : -;
		? (x0) 1  ?    0   ? : ? : -;
		? (x0) ?  0    0   x : ? : -;
		? (0x) 0  0    ?   ? : 0 : -;
		? (0x) 1  ?    0   ? : 1 : -;
		? (01) 0  0    ?   ? : ? : 0;
		? (01) 1  ?    0   ? : ? : 1;
		? (10) ?  0    ?   ? : ? : -;
		? (10) ?  ?    0   ? : ? : -;
		?  b   *  0    ?   ? : ? : -;
		?  b   *  ?    0   ? : ? : -;
		?  ?   ?  ?    ?   * : ? : -;
	endtable
endprimitive

//%BEGIN sffsr_ni

`celldefine
module sffsr_ni (D, SI, SE, CLK, S, R, Q, QB);
	input D, SI, SE, CLK, S, R;
	output Q, QB;

	reg viol_0;
	wire int_res__D, dummy_0, int_res_0, 
		int_res_1, int_res_2, int_res_3, int_res_4, 
		int_res_5, int_res_6, int_res_7, int_res_8,
		cond0, int_res_9, int_res_10, int_res_11,
		cond1, int_res_12, int_res_13, cond2, 
		int_res_14, int_res_15, cond3;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	mux2 (int_res__D, SI, D, SE);
	dff_sr_err (dummy_0, CLK, int_res__D, S, R);
	dff_sr_0 (Q, viol_0, CLK, 
		int_res__D, S, R, dummy_0);
	dff_sr_0 (int_res_0, viol_0, CLK, 
		int_res__D, S, R, dummy_0);
	not (QB, int_res_0);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	not (int_res_1, D);
	not (int_res_2, S);
	not (int_res_3, R);
	and (int_res_4, SI, int_res_1, int_res_2, int_res_3);
	not (int_res_5, SI);
	not (int_res_6, S);
	not (int_res_7, R);
	and (int_res_8, int_res_5, D, int_res_6, int_res_7);
	or (cond0, int_res_4, int_res_8);
	not (int_res_9, SE);
	not (int_res_10, S);
	not (int_res_11, R);
	and (cond1, int_res_9, int_res_10, int_res_11);
	not (int_res_12, S);
	not (int_res_13, R);
	and (cond2, SE, int_res_12, int_res_13);
	not (int_res_14, S);
	not (int_res_15, R);
	and (cond3, int_res_14, int_res_15);
	specify
		specparam tpd_CLK_Q_posedge = 0;
		specparam tpd_S_Q_posedge = 0;
		specparam tpd_R_Q_negedge = 0;
		specparam tpd_CLK_QB_posedge = 0;
		specparam tpd_S_QB_posedge = 0;
		specparam tpd_R_QB_negedge = 0;
		specparam tsetup_SE_CLK_noedge_posedge = 0;
		specparam tsetup_D_CLK_noedge_posedge = 0;
		specparam tsetup_SI_CLK_noedge_posedge = 0;
		specparam thold_SE_CLK_noedge_posedge = 0;
		specparam thold_D_CLK_noedge_posedge = 0;
		specparam thold_SI_CLK_noedge_posedge = 0;
		specparam trecovery_S_CLK_noedge_posedge = 0;
		specparam trecovery_R_CLK_noedge_posedge = 0;
		specparam tremoval_S_CLK_noedge_posedge = 0;
		specparam tremoval_R_CLK_noedge_posedge = 0;
		specparam tpw_CLK_cond3_posedge = 0;
		specparam tpw_CLK_cond3_negedge = 0;
		specparam tpw_S_R_EQ_1_posedge = 0;
		specparam tpw_R_S_EQ_0_negedge = 0;

		(posedge CLK => (Q+:int_res__D)) = tpd_CLK_Q_posedge;
		(posedge S => (Q:int_res__D)) = tpd_S_Q_posedge;
		(negedge R => (Q:int_res__D)) = tpd_R_Q_negedge;
		(posedge CLK => (QB-:int_res__D)) = tpd_CLK_QB_posedge;
		(posedge S => (QB:int_res__D)) = tpd_S_QB_posedge;
		(negedge R => (QB:int_res__D)) = tpd_R_QB_negedge;
		$setup (posedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (negedge SE &&& cond0, posedge CLK,
			tsetup_SE_CLK_noedge_posedge, viol_0);
		$setup (posedge D &&& cond1, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (negedge D &&& cond1, posedge CLK,
			tsetup_D_CLK_noedge_posedge, viol_0);
		$setup (posedge SI &&& cond2, posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$setup (negedge SI &&& cond2, posedge CLK,
			tsetup_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SE &&& cond0,
			thold_SE_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge D &&& cond1,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge D &&& cond1,
			thold_D_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge SI &&& cond2,
			thold_SI_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge SI &&& cond2,
			thold_SI_CLK_noedge_posedge, viol_0);
		$recovery (negedge S &&& (R == 1), posedge CLK,
			trecovery_S_CLK_noedge_posedge, viol_0);
		$recovery (posedge R &&& (S == 0), posedge CLK,
			trecovery_R_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, negedge S &&& (R == 1),
			tremoval_S_CLK_noedge_posedge, viol_0);
		$hold (posedge CLK, posedge R &&& (S == 0),
			tremoval_R_CLK_noedge_posedge, viol_0);
		$width (posedge CLK &&& cond3, tpw_CLK_cond3_posedge,
			0, viol_0);
		$width (negedge CLK &&& cond3, tpw_CLK_cond3_negedge,
			0, viol_0);
		$width (posedge S &&& (R == 1), tpw_S_R_EQ_1_posedge,
			0, viol_0);
		$width (negedge R &&& (S == 0), tpw_R_S_EQ_0_negedge,
			0, viol_0);
	endspecify
endmodule
`endcelldefine

//%END sffsr_ni



//%BEGIN tri01

`celldefine
module tri01 (A, E, Y);
	input A, E;
	output Y;

	wire int_res_0;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	not (int_res_0, A);
	bufif1 (Y, int_res_0, E);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;
		specparam tpd_E_Y_posedge = 0;

		(A => Y) = tpd_A_Y;
		(posedge E => (Y:1)) = tpd_E_Y_posedge;
	endspecify
endmodule
`endcelldefine

//%END tri01

//%BEGIN trib04

`celldefine
module trib04 (A, E, Y);
	input A, E;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	bufif1 (Y, A, E);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;
		specparam tpd_E_Y_posedge = 0;

		(A => Y) = tpd_A_Y;
		(posedge E => (Y:1)) = tpd_E_Y_posedge;
	endspecify
endmodule
`endcelldefine

//%END trib04

//%BEGIN trib08

`celldefine
module trib08 (A, E, Y);
	input A, E;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	bufif1 (Y, A, E);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A_Y = 0;
		specparam tpd_E_Y_posedge = 0;

		(A => Y) = tpd_A_Y;
		(posedge E => (Y:1)) = tpd_E_Y_posedge;
	endspecify
endmodule
`endcelldefine

//%END trib08

//%BEGIN xnor2

`celldefine
module xnor2 (A0, A1, Y);
	input A0, A1;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	xnor (Y, A0, A1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END xnor2

//%BEGIN xnor2_2x

`celldefine
module xnor2_2x (A0, A1, Y);
	input A0, A1;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	xnor (Y, A0, A1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END xnor2_2x

//%BEGIN xor2

`celldefine
module xor2 (A0, A1, Y);
	input A0, A1;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	xor (Y, A0, A1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END xor2

//%BEGIN xor2_2x

`celldefine
module xor2_2x (A0, A1, Y);
	input A0, A1;
	output Y;

	/////////////////////////////////////
	//          FUNCTIONALITY          //
	/////////////////////////////////////

	xor (Y, A0, A1);

	/////////////////////////////////////
	//             TIMING              //
	/////////////////////////////////////

	specify
		specparam tpd_A0_Y = 0;
		specparam tpd_A1_Y = 0;

		(A0 => Y) = tpd_A0_Y;
		(A1 => Y) = tpd_A1_Y;
	endspecify
endmodule
`endcelldefine

//%END xor2_2x
