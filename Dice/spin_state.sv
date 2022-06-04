module spin_state(
	input logic[3:0] cur_state,
	output logic[6:0] DISP
);

	always@(*) begin
		case(cur_state)
			0: DISP <= 7'b1000001;
			1: DISP <= 7'b1000010;
			2: DISP <= 7'b1000100;
			3: DISP <= 7'b1001000;
			4: DISP <= 7'b1010000;
			5: DISP <= 7'b1100000;
			default: DISP <= 7'b0000000;
	endcase
	end
endmodule