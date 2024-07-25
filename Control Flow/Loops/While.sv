module tb;
  initial begin
    int cnt=0;
    while (cnt>5)begin
      $display("cnt= %d",cnt);
      cnt++
    end
  end
endmodule
