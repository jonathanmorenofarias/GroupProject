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
// CREATED		"Sat Jun  4 00:35:26 2022"

module segment_spin(
	CLK,
	RES,
	LED
);


input wire	CLK;
input wire	RES;
output wire	[6:0] LED;

wire	[3:0] SYNTHESIZED_WIRE_0;





count_and_reset	b2v_inst(
	.clk(CLK),
	.reset(RES),
	
	.q(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst.N = 4;
	defparam	b2v_inst.RES = 6;


spin_state	b2v_inst1(
	.cur_state(SYNTHESIZED_WIRE_0),
	.DISP(LED));


endmodule
