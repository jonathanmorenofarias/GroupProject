module rand_10 #(parameter hashsize = 32, parameter seed = 1) ( 
	input logic clk,
	output logic[0:6] RAND
);

wire[3:0] hash_num;

hash genNum(
	.clk (clk),
	.RAND (hash_num)
);
defparam genNum.hashsize = hashsize;
defparam genNum.seed = seed;

sevenseg segment(
	.data (hash_num % 10),
	.segments (RAND)
);

endmodule