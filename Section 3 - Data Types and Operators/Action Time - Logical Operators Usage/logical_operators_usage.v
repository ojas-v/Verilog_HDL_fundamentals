module logical_operators_usage();

	reg [2:0] my_val1 = 3'b111; // 3bit variable
	reg [3:0] my_val2 = 4'b0000; // 4 bit variable
	
	// Procedure used to generate stimulus
	initial begin
		#1; // wait some time bw examples
		if(!my_val1) begin  // check if my_val1 == 0
			// execute some code
			$display("Great! my_val1 = %b" , my_val1);
		end else begin
			$display(":( I expected my_val1 = 0 but my_val1 = %b", my_val1);
			//execute some code
		end
		
		#1;
		if(!my_val1) begin  // check if my_val2 == 0
			// execute some code
			$display("Great! my_val2 = %b" , my_val2);
		end else begin
			$display(":( I expected my_val1 = 0 but my_val2 = %b", my_val2);
			//execute some code
		end
		
		#1;
		if(my_val1 && (!my_val2)) begin // checks if my_val1 != 0 and my_val2 == 0
			$display("Great! my_val1 = %b, my_val2 = %b" , my_val1, my_val2);
		end else begin
			$display(":( i expected my_val1 != 0 and my_val2 = 0 but my_val1 = %b but my_val2 = %b" , my_val1, my_val2);
		end
		
		#1;
		while(my_val2 < 3) begin
			$display("While LOOP my_val1 = %d" , my_val2);
			my_val2 = my_val2+1;
		end
		
		// Change the value of my_val1/2 and with the if() and while statements
		// EX: my_val2 = 4'b0111;
		
	end
	
endmodule
		
	