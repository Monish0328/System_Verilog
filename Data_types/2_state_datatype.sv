module 2_state_datatype;

  bit    var_a;
  bit   (3:0)var_b;
  logic (3:0)x_val;

  initial begin
    $display("initial value var_a=%0b var_b=0x%0h",var_a,var_b);

    var_a=1;
    var_b=4'hf;
    $display("new values var_a=%0b,var_b=0x%0h",var_a,var_b);
  
    var_b=16'h481a;
    $display("trauncated value,var_b=0x%0h",var_b);

    var_b=4'b01zx;
    $display("var_b=%b",var_b);

  end

endmodule
