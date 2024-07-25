module tb;
  initial begin
     int int=0;
     do begin
      $display("cnt=%d",cnt);
      cnt++;
     end while (cnt<5);
  end
endmodule
  
