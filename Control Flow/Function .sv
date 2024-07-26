module function_example;
  initial begin
    int s=sum(3,4);
    $display("sum(3,4)=%0d",s);
    $display("sum(5,9)=%0d",sum(5,9));
    $display("mul(3,1)=%0d",mul(3,1));
  end

  function byte sum (int x, int y);
    sum = x+y;
  endfunction
  function byte mul(int x,  y);
    return x*y;
  endfunction
endmodule
