module count_and_reset #(parameter N=8, parameter RES=9)
	(input logic clk,
	 input logic reset,
	 output logic[N-1:0] q,
	 output logic reset_occ
);
	
	wire[N-1:0] data;
	wire overflow;
	
	counter CNT(
		.clk (clk),
		.reset (reset | overflow),
		.d (data),
		.q (data)
	);
	defparam CNT.N = N;
	
	assign overflow = (data > RES);
	assign reset_occ = (data == 0);
	assign q = data;
	
endmodule