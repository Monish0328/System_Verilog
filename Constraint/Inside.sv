`define START_RANGE 35
`define END_RANGE  45

class seq_item#(parameter int p1 = 10,p2 = 20)
  rand bit [7:0] value1;
  rand bit [7:0] value2;
  rand bit [7:0] value3;
  rand bit [7:0] value4;
  rand bit [7:0] value5;
  rand bit [7:0] value6;
  rand bit [7:0] value7;

  constraint value1_c {value1 inside {[10,20]};}
  constraint value2_c {value2 inside {[40,70,80]};}
  constraint value3_c {value3 inside {[10,20],21,23,[25,30],40,70,80};}
  constraint value4_c {!(value4 inside {[100,200]});}
  constraint value5_c {value5 inside [value1:value2];}
  constraint value6_c {value6 inside [`START_RANGE:`END_RANGE];}
  constraint value7_c {value7 inside [p1:p2];}
endclass

  module constraint_example;
    seq_item#(100,200)item; 

    initial begin
    item = new();
      repeat(3)begin
        item.randomize();
        $display("value1=%0d,value2=%0d,value3=%0d,value4=%0d,value5=%0d,value6=%0d,value7=%0d",item.value1,item.value2,item.value3,item.value4,item.value5,item.value6,item.value7);
      end
    end
  endmodule
