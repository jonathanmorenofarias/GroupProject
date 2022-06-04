module dice_state (
	input logic roll,
	input logic reset,
	output logic num_enb
);

always_ff @(posedge roll, negedge reset) begin
	if (!reset) begin
		num_enb <= 0;
	end else if (roll) begin
		num_enb <= 1;
	end
end

endmodule