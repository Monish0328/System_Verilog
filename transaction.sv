class transaction;
    logic A, B, Cin;
    logic Sum, Cout;
    
    
    function new(logic A = 0, logic B = 0, logic Cin = 0, logic Sum = 'x, logic Cout = 'x);
        this.A = A;
        this.B = B;
        this.Cin = Cin;
        this.Sum = Sum;
        this.Cout = Cout;
    endfunction
endclass
