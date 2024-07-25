module tb;
  int array [5][2] = '{'{1,2},'{3,4},'{5,6},'{7,8},'{9,10}};
  initial begin
    foreach md_array [i]
     foreach  md_array[j]
       $display("md_array[%0d][%0d]=%0d",i,j,md_array[i][j]);
  end
endmodule
    
  
