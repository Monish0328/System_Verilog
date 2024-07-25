module tb;
	string array [5] = '{"apple", "orange", "pear", "blueberry", "lemon"};
	
	initial begin
      for (int i = 0, j = array[i].len() - 1; i <  $size(array); i++, j--) begin
			array[i][j] = "0";
        $display ("array[%0d] = %s, %0dth index replaced by 0", i, array[i], j);
		end
	end
endmodule
