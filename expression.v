module original_expr_structural (output F4, input A, B, C);
    wire A_n, C_n, term1, term2, term3;
    not (A_n, A);
    not (C_n, C);
    and (term1, A_n, C_n);
    and (term2, A, B, C);
    and (term3, A, C_n);
    or  (F4, term1, term2, term3);
endmodule

module simplified_expr_structural (output F4, input A, B, C);
    wire C_n, term2;
    not (C_n, C);
    and (term2, A, B, C);
    or  (F4, C_n, term2);
endmodule
