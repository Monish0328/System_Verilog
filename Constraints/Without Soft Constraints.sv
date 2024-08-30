class seq_item;
  rand bit [7:0] val;

  constraint val1_c {val inside{5,[10:15}};}
endclass

module constraint_example;
  seq_item item;
  initial begin
    item = new item();
    repeat (5) begin
    item.randomize();
      $display("before inline constraint : val = %od",item.val);
      item.randomize with { val inside {20:30}};};
      $display("after inline constraint : val = %od",item.val);

    end
  end
endmodule


