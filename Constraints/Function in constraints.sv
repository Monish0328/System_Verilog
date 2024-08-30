class seq_item;
  rand bit [5:0] value;
  rand bit sel;
  constraint value_c {value == get.values(sel);}

  function bit [5:0] value get values(bit sel)
    return (sel ? 'h10 :'h20);
  endfunction
endclass

module constraint_example;
  seq_item = item;

  initial begin 
      item = new();
    repeat (3) begin 
      item.randomize();
      $display ("constraint value = %0h",item_value);
    end
    $display ("on function call : value = %oh",item.get_value(1));
  end
endmodule
