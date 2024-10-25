class full_adder_env;
   
    generator gen;
    driver drv;
    monitor mon;
    scoreboard sb;

    
    full_adder_if vif;
    mailbox mail;

    
    function new();
        
        vif = new();
        mail = new();

        
        gen = new(mail, 8); 
        drv = new(vif, mail);
        mon = new(vif, mail);
        sb = new(mail);
    endfunction

   
    task run;
        fork
            gen.geneate();        
            drv.drive();          
            mon.monitor_signals();
            sb.check_results();  
        join
    endtask
endclass
