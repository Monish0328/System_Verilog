module tb;
  
  initial display();
  
  initial begin
    #50 disable display.T_DISPLAY;
  end
  
  task display();
    begin : T_DISPLAY
      $display("[%0t] T_Task started", $time);
      #100;
      $display("[%0t] T_Task ended", $time);
    end
    
    begin : S_DISPLAY
      #10;
      $display("[%0t] S_Task started", $time);
      #20;
      $display("[%0t] S_Task ended", $time);
    end
  endtask
endmodule
