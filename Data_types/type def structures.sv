module td_struct;
typedef  struct{
    String fruit;
    int    count;
    byte   expiry;
  } st_fruit;

  initial begin

    st_fruit.fruit1='{"peach",5,10};
    st_fruit.fruit2;
    $display("fruit1=%p  fruit2=%p",fruit1,fruit2);
    
    fruit1=fruit2;
    $display("fruit1=%p fruit2=%p",fruit1,fruit2);

    fruit1.fruit="Orange";
    $display("fruit1=%p  fruit2=%p",Fruit1,fruit2);

  end
endmodule
  
