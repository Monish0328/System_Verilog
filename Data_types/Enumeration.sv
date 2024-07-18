
module Enumeration;
  typedef enum {true,false}e_true_false;
  initial begin 
    e_true_false answer;
    answer=true;
    $display("answer=%s",answer.name);
  end
endmodule
