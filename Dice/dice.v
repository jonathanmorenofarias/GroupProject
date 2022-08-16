// Copyright (C) 2021  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"
// CREATED		"Mon Jun  6 21:57:56 2022"

module dice(
	CLK,
	ROLL_NOT,
	TEST_CNG_NOT,
	SW_ENABLE,
	Seg0,
	Seg1,
	Seg2,
	Seg3,
	Seg4,
	Seg5
);


input wire	CLK;
input wire	ROLL_NOT;
input wire	TEST_CNG_NOT;
input wire	[5:0] SW_ENABLE;
output wire	[6:0] Seg0;
output wire	[6:0] Seg1;
output wire	[6:0] Seg2;
output wire	[6:0] Seg3;
output wire	[6:0] Seg4;
output wire	[6:0] Seg5;

wire	[6:0] NUM0;
wire	[6:0] NUM1;
wire	[6:0] NUM2;
wire	[6:0] NUM3;
wire	[6:0] NUM4;
wire	[6:0] NUM5;
wire	RES;
wire	ROLL;
wire	[6:0] SPIN;
wire	SPIN_CLK;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[6:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[6:0] SYNTHESIZED_WIRE_5;
wire	[6:0] SYNTHESIZED_WIRE_6;
wire	[6:0] SYNTHESIZED_WIRE_7;
wire	[6:0] SYNTHESIZED_WIRE_8;
wire	[6:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_32;
wire	[0:6] SYNTHESIZED_WIRE_33;
wire	[6:0] SYNTHESIZED_WIRE_17;
wire	[6:0] SYNTHESIZED_WIRE_19;
wire	[6:0] SYNTHESIZED_WIRE_21;
wire	[6:0] SYNTHESIZED_WIRE_23;
wire	[6:0] SYNTHESIZED_WIRE_25;
wire	[6:0] SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_1 = 0;
assign	SYNTHESIZED_WIRE_2 = 0;
assign	SYNTHESIZED_WIRE_4 = 0;
assign	SYNTHESIZED_WIRE_33 = 1;




rand_10	b2v_inst(
	.clk(CLK),
	.RAND(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst.hashsize = 32;
	defparam	b2v_inst.seed = 3;


rand_10	b2v_inst10(
	.clk(SYNTHESIZED_WIRE_31),
	.RAND(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst10.hashsize = 32;
	defparam	b2v_inst10.seed = 11;


count_and_reset	b2v_inst11(
	.clk(CLK),
	.reset(SYNTHESIZED_WIRE_1),
	.reset_occ(SYNTHESIZED_WIRE_31)
	);
	defparam	b2v_inst11.N = 2;
	defparam	b2v_inst11.RES = 3;



segment_spin	b2v_inst13(
	.CLK(SPIN_CLK),
	.RES(SYNTHESIZED_WIRE_2),
	.LED(SPIN));


assign	ROLL =  ~ROLL_NOT;


variable_dff	b2v_inst19(
	.clk(ROLL),
	.res(RES),
	.data(SYNTHESIZED_WIRE_3),
	.out(NUM0));
	defparam	b2v_inst19.N = 7;


count_and_reset	b2v_inst2(
	.clk(CLK),
	.reset(SYNTHESIZED_WIRE_4),
	.reset_occ(SPIN_CLK)
	);
	defparam	b2v_inst2.N = 24;
	defparam	b2v_inst2.RES = 8000000;


variable_dff	b2v_inst20(
	.clk(ROLL),
	.res(RES),
	.data(SYNTHESIZED_WIRE_5),
	.out(NUM1));
	defparam	b2v_inst20.N = 7;


variable_dff	b2v_inst21(
	.clk(ROLL),
	.res(RES),
	.data(SYNTHESIZED_WIRE_6),
	.out(NUM2));
	defparam	b2v_inst21.N = 7;


variable_dff	b2v_inst22(
	.clk(ROLL),
	.res(RES),
	.data(SYNTHESIZED_WIRE_7),
	.out(NUM3));
	defparam	b2v_inst22.N = 7;


variable_dff	b2v_inst23(
	.clk(ROLL),
	.res(RES),
	.data(SYNTHESIZED_WIRE_8),
	.out(NUM4));
	defparam	b2v_inst23.N = 7;


variable_dff	b2v_inst24(
	.clk(ROLL),
	.res(RES),
	.data(SYNTHESIZED_WIRE_9),
	.out(NUM5));
	defparam	b2v_inst24.N = 7;


busmux_0	b2v_inst26(
	.sel(SYNTHESIZED_WIRE_32),
	.dataa(SPIN),
	.datab(NUM0),
	.result(SYNTHESIZED_WIRE_27));


busmux_1	b2v_inst27(
	.sel(SYNTHESIZED_WIRE_32),
	.dataa(SPIN),
	.datab(NUM1),
	.result(SYNTHESIZED_WIRE_25));


busmux_2	b2v_inst28(
	.sel(SYNTHESIZED_WIRE_32),
	.dataa(SPIN),
	.datab(NUM2),
	.result(SYNTHESIZED_WIRE_23));


busmux_3	b2v_inst29(
	.sel(SYNTHESIZED_WIRE_32),
	.dataa(SPIN),
	.datab(NUM3),
	.result(SYNTHESIZED_WIRE_21));



busmux_4	b2v_inst30(
	.sel(SYNTHESIZED_WIRE_32),
	.dataa(SPIN),
	.datab(NUM4),
	.result(SYNTHESIZED_WIRE_19));


busmux_5	b2v_inst31(
	.sel(SYNTHESIZED_WIRE_32),
	.dataa(SPIN),
	.datab(NUM5),
	.result(SYNTHESIZED_WIRE_17));


busmux_6	b2v_inst33(
	.sel(SW_ENABLE[5]),
	.dataa(SYNTHESIZED_WIRE_33),
	.datab(SYNTHESIZED_WIRE_17),
	.result(Seg5));


busmux_7	b2v_inst34(
	.sel(SW_ENABLE[4]),
	.dataa(SYNTHESIZED_WIRE_33),
	.datab(SYNTHESIZED_WIRE_19),
	.result(Seg4));


busmux_8	b2v_inst35(
	.sel(SW_ENABLE[3]),
	.dataa(SYNTHESIZED_WIRE_33),
	.datab(SYNTHESIZED_WIRE_21),
	.result(Seg3));


busmux_9	b2v_inst36(
	.sel(SW_ENABLE[2]),
	.dataa(SYNTHESIZED_WIRE_33),
	.datab(SYNTHESIZED_WIRE_23),
	.result(Seg2));


busmux_10	b2v_inst37(
	.sel(SW_ENABLE[1]),
	.dataa(SYNTHESIZED_WIRE_33),
	.datab(SYNTHESIZED_WIRE_25),
	.result(Seg1));


busmux_11	b2v_inst38(
	.sel(SW_ENABLE[0]),
	.dataa(SYNTHESIZED_WIRE_33),
	.datab(SYNTHESIZED_WIRE_27),
	.result(Seg0));



dice_state	b2v_inst5(
	.roll(ROLL),
	.reset(RES),
	.num_enb(SYNTHESIZED_WIRE_32));


rand_10	b2v_inst6(
	.clk(CLK),
	.RAND(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst6.hashsize = 32;
	defparam	b2v_inst6.seed = 7;


rand_10	b2v_inst7(
	.clk(SYNTHESIZED_WIRE_31),
	.RAND(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst7.hashsize = 32;
	defparam	b2v_inst7.seed = 5;


rand_10	b2v_inst8(
	.clk(SYNTHESIZED_WIRE_31),
	.RAND(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst8.hashsize = 32;
	defparam	b2v_inst8.seed = 7;


rand_10	b2v_inst9(
	.clk(SYNTHESIZED_WIRE_31),
	.RAND(SYNTHESIZED_WIRE_8));
	defparam	b2v_inst9.hashsize = 32;
	defparam	b2v_inst9.seed = 13;

assign	RES = TEST_CNG_NOT;

endmodule

module busmux_0(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule

module busmux_1(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule

module busmux_10(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule

module busmux_11(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule

module busmux_2(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule

module busmux_3(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule

module busmux_4(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule

module busmux_5(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule

module busmux_6(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule

module busmux_7(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule

module busmux_8(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule

module busmux_9(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [6:0] dataa;
input [6:0] datab;
output [6:0] result;

endmodule
