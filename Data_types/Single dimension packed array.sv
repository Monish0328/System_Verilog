module sd_array;
  bit[7:0]  m_data;
  m_data=8'ha2;
  for (int i=0;i<(m_size));i++) begin
    $display ("m_data[%0d]=%0b",i,m_data[i])
  end
  end
endmodule
