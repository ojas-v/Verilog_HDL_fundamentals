module logical_operators();
	
	reg[2:0] my_val1 = 3'b1111;
	reg[3:0] my_val2 = 4'b0000;
	reg result;
	
	//Procedure used to continously monitor 'my_val1', 'my_val2' and 'result'
	initial begin
		$monitor("MON my_val1 = %b, my_val2 = %b, result = %b" , my_val1, my_val2, result);
	end
	
	// Procedure used to generate stimulus
	initial begin
		result = !my_val1; //Logical not
		#1; // wait sometime bw examples
		result = !my_val2; //Logical not
		
		#1;
		result = my_val1 && my_val2; //Logical and	
		
		#1;
		result = my_val1 || my_val2; // Logical OR
		
		#1;
		my_val1 = 3'bz0X; // Add some unknown bits
		result = !my_val1; //Logical not
		
		#1;
		result = my_val1 || my_val2;
		
		#1;
		result = my_val1 && my_val2;
		
		// Change the valuess of my_val1 and my_val2 and perform some logical operations
		// EX: my_val1 = 4'b0101
		// result = my_val && my_val2
		// $display(MON my_val1 = %b, my_val2 = %b, result = %b" , my_val1, my_val2, result);
	
	end
	
endmodule
	