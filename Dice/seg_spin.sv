module seg_spin(
	input logic raw_clk,
	output logic[6:0] DISP
);

wire res_raw;
wire res_cnt;
wire clk;
logic[25:0] raw_state;
logic[2:0] cur_state;

counter raw_cnt(
	.clk (raw_clk),
	.reset (res_raw),
	.d(raw_state),
	.q(raw_state)
);
defparam cnt.N = 25;

assign clk = (raw_state > 25000000) ? 1 : 0;
assign res_raw = clk;
assign res_cnt = (cur_state > 5) ? 1 : 0;

counter cnt(
	.clk (clk),
	.reset (res_cnt),
	.d(cur_state),
	.q(cur_state)
);
defparam cnt.N = 3;

always_ff @(posedge clk) begin
	case(cur_state)
		0: DISP = 7'b1000001;
		1: DISP = 7'b0100001;
		2: DISP = 7'b0010001;
		3: DISP = 7'b0001001;
		4: DISP = 7'b0000101;
		5: DISP = 7'b0000011;
	endcase
end

endmodule