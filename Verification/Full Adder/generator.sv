class generator;
    mailbox mail;
    int num_tests;

    
    function new(mailbox mail, int num_tests = 8);
        this.mail = mail;
        this.num_tests = num_tests;
    endfunction

   
    task generate;
        transaction pkt;
        repeat(num_tests) begin
            pkt = new();
            pkt.A = $random % 2;
            pkt.B = $random % 2;
            pkt.Cin = $random % 2;
            mail.put(pkt);
            #10;
        end
    endtask
endclass
