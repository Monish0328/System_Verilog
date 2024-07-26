module Event_wait_order;
  event a,b,c;
  initial begin;
    
  #10 ->a;
  #10 ->b;
  #10 ->c;
  end
  initial begin
      wait order (a,b,c)
    $display("Events were excecuted on order");
    else
      $display("events are not excecuted on order");
  end
endmodule

  

    
