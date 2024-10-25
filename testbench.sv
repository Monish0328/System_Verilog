module tb_full_adder;
    
    full_adder_if vif();

    
    mailbox mail;

    
    full_adder dut (
        .A(vif.A),
        .B(vif.B),
        .Cin(vif.Cin),
        .Sum(vif.Sum),
        .Cout(vif.Cout)
    );

  
    generator gen(mail, 8);
    driver drv(vif, mail);
    monitor mon(vif, mail);
    scoreboard sb(mail);

    
    initial begin
       
        fork
            gen.generate();        
            drv.drive();          
            mon.monitor_signals(); 
            sb.check_results();   
        join

        $finish; 
    end
endmodule

