module gates_tb;
  
  reg A, B; wire AND, OR, NOT, NAND, NOR, XOR, XNOR;
  gates test(A, B, AND, OR, NOT, NAND, NOR, XOR, XNOR);

  initial
  begin
    A = 1'b0; B = 1'b0;
    #10 A = 1'b1;
    #10 B = 1'b1;
    #10 A = 1'b0;
    #10 $finish;
  end
  initial
  begin
    $dumpfile("gates.vcd");
    $dumpvars(0, gates_tb);
    $display("----Truth Table----");
    $display("-----------------------------------------------------------");
    $display("| Time | A | B | AND | OR | NOT | NAND | NOR | XOR | XNOR |");
    $display("-----------------------------------------------------------");
    $monitor("| %4d | %1b | %1b |  %1b  |  %1b |  %1b  |   %1b  |  %1b  |  %1b  |   %1b  |", $time, A, B, AND, OR, NOT, NAND, NOR, XOR, XNOR);
  end
  
endmodule
