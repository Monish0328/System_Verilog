 typedef struct packed
  {
    bit [3:0] mode;
    bit [2:0] cnfg;
    bit [] en;
  }st_ctrl;

  module p_struct;
    st_ctrl ctrl_reg;

    initial begin 
      ctrl_reg ='{4'ha,3'h5,1};
      $display ("ctrl_reg= %p",ctrl_reg);

      ctrl_reg.mode=4'h3;
      $display ("ctrl_reg= %p",ctrl_reg);
      
      ctrl_reg=8'hfa;
       $display ("ctrl_reg= %p",ctrl_reg)

    end
  endmodule
