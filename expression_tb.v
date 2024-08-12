module expression_tb;
    reg A, B, C;
    wire original, simplified;

    // Instantiate the modules
    original_expr_structural original1 (original, A, B, C);
    simplified_expr_structural simplified1 (simplified, A, B, C);

    initial begin
        $dumpfile("expression.vcd");
        $dumpvars(0, expression_tb);
        $display("-------------------------------------");
        $display("| A | B | C | Original | Simplified |");
        $display("-------------------------------------");
        $monitor("| %b | %b | %b |    %b     |      %b     |", A, B, C, original, simplified);
        // Test all combinations of inputs
        for (integer i = 0; i < 8; i = i + 1) begin
            {A, B, C} = i;
            #10;
        end
        $finish;
    end
endmodule

