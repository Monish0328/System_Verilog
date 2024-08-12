class MyClass;

    static task myStaticTask();
        $display("This is a static task.");
        #10ns;
        $display("Static task completed.");
    endtask

  
    static task callStaticTask();
        myStaticTask();  
    endtask

endclass

module test;
    initial begin
        MyClass::myStaticTask();
        MyClass::callStaticTask();
    end
endmodule
