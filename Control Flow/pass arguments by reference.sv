module pass_by_reference;
  int a, b;
  
  initial begin
    a = 5;
    b = 10;
    $display("Before calling function: a = %0d, b = %0d", a, b);
    modify_by_ref(a, b); 
    $display("After calling function: a = %0d, b = %0d", a, b);
  end
  function void modify_by_ref(ref int x, ref int y);
    x = x + 10;  
    y = y * 2;  
  endfunction
endmodule
