module tb;
	des u0();
	
	initial begin
		u0.display();  
	end
endmodule

module des;
	initial begin
		display(); 	
	end

	task display();
		$display("Hello World");
	endtask
endmodule
