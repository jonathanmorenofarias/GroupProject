module variable_dff #(parameter N=7) (
	input logic[N-1:0] data,
	input logic clk,
	input logic res,
	output reg[N-1:0] out
);

	always_ff@(posedge clk, negedge res) begin
		if(!res) out <= 0;
		else out <= data;
	end

endmodule