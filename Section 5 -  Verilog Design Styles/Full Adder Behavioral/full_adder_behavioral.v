module full_adder_behavioral(
	input a, 
	input b,
	input carry_in, 
	// reg becaus eit is used in a always procedure
	output reg sum,
	output reg carry_out
	);
	
	// Behavioral style
	always @(*) begin
		{carry_out, sum} = a + b + carry_in;
	end
	
endmodule