module forever_example;  
  int count;
  initial begin
    forever begin 
      $display("Value of count = %0d", count);
      count++;
      #5;
    end
  end
  
  initial begin
    #30;
    $finish;
  end
endmodule
