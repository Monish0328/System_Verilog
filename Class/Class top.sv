module tb_top;
  my packet pkt0,pkt1

  initial begin 
    pkt0=new(3'h2,2'h3);
    pkt0.display();

    pkt1=new();
    pkt1.display();
  end
endmodule
