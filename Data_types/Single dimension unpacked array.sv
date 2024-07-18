module sd_uarray;
	byte 	stack [8]; 		
	
	initial begin
		
		foreach (stack[i]) begin
			stack[i] = $random;
			$display ("Assign 0x%0h to index %0d", stack[i], i);
		end
	
		$display ("stack = %p", stack);
	end
endmodule
