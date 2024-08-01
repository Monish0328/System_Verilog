class address_range;
  bit[31:0]s_adder;
  bit[31:0]e_adder;
endclass

class packet;
  bit[31:0]addr;
  bit[31:0]data;
  address rangr ad_r;
  
  packet pkt_1;
  packet pkt_2;
  pkt_1 = new ( );
  pkt_2 = pkt_1;

  function new();
    ad_r = new();
  endfunction
endclass
  
