module da_copy;
int array[];
int id[];

initial begin 
 array = new[5];
 array ='{1,2,3,4,5};
  id = array;
  
  $display("id = %p",id);
  
  id=new [id.size() +1](id);
  id[id.size()-1]=6;
  
  $display("new id =%p",id);
  $display("array.size()=%0d,id.size()=%0d",array.size(),id.size());
 
  end
  endmodule
  
