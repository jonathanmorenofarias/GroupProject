module hash #(parameter N=4, parameter hashsize=32, parameter seed=1) (
	input logic clk,
	output logic[N-1:0] RAND
);

	wire[hashsize:0] data;

	counter CNT(
		.clk (clk),
		.reset (0),
		.d (data),
		.q (data)
	);
	defparam CNT.N = hashsize;

	assign RAND = (data + seed - 37 + data + data + seed + 357);
	
endmodule