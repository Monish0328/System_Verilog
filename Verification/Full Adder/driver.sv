class driver;
    virtual full_adder_if vif;
    mailbox mail;

    
    function new(virtual full_adder_if vif, mailbox mail);
        this.vif = vif;
        this.mail = mail;
    endfunction

    
    task drive;
        transaction pkt;
        forever begin
            mail.get(pkt);
            vif.A = pkt.A;
            vif.B = pkt.B;
            vif.Cin = pkt.Cin;
            #5;
        end
    endtask
endclass
