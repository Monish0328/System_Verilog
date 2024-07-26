module value;
  initial begin
      int a,res;
    a=$urandom_range(1,10);
    $display("before calling function:a=%0d,res=%0d",a,res);
    res=fn(a);
    $display("after calling function:a=%0d,res=%0d",a,res);
  end

  function  calculate (int res(int a));
    input int a;
    a=a+5;
    return a*10;
  endfunction
endmodule

  
  
