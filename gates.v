module gates(A, B, AND, OR, NOT, NAND, NOR, XOR, XNOR);
    
    input A, B;
    output AND, OR, NOT, NAND, NOR, XOR, XNOR;
    and (AND, A, B);
    or (OR, A, B);
    not (NOT, A);
    nand (NAND, A, B);
    nor (NOR, A, B);
    xor(XOR, A, B);
    xnor (XNOR, A, B);   

endmodule


