module addertest;
    
    full_adder_env env;

    
    initial begin
        
        env = new();

        
        env.run();

        $finish; 
    end
endmodule
