module Unsigned_integer
  short int  unsigned var_a;
        int  unsigned var_b;
  long  int  unsigned var_c;


  initial begin
    $display("sizes var_a=%0d var_b=%0d var_c=%0d",$bits(var_a),$bits(var_b),$bits(var_c));
    #1 var_a = 'h7FFFF;
       var_b = 'h7FFFF_FFFF;
       var_c = 'h7FFFF_FFFF_FFFF_FFFF;
    
    #1 var_a += 1;
       var_b += 1;
       var_c += 1;
  end
  inital
  $display("var_a=%0d var_b=%0d var_c=%0d",var_a,var_b,var_c);
endmodule
    
