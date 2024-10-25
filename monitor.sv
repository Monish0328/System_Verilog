class monitor;
    virtual full_adder_if vif;
    mailbox mail;

    
    function new(virtual full_adder_if vif, mailbox mail);
        this.vif = vif;
        this.mail = mail;
    endfunction

    
    task monitor_signals;
        transaction pkt;
        forever begin
            pkt = new(vif.A, vif.B, vif.Cin, vif.Sum, vif.Cout);
            mail.put(pkt);
            #5;
        end
    endtask
endclass
