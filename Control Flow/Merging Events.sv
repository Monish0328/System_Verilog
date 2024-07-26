module merging_events;
event event_a,event_b;

initial begin 
   fork
     begin 
       wait(event_a.triggered);
       $display("[%0t] thread1 : wait for event_a is over",$time);
     end
     begin
       wait(event_b.triggered);
       $display("[%0t] thread2 : wait for event_b is over",$time);
     end
     #20->event_a;
     #30->event_b;
     begin
       #10 event_b = event_a;
     end
                
                
   join
 end
endmodule
