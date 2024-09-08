module four_bit_multiplier(
    input [3:0] a,
    input [3:0] b,
    output [7:0] product
);

    wire [3:0] pp0, pp1, pp2, pp3;
    wire [5:0] sum1, sum2;
    wire [7:0] sum3;

    // Generate partial products
    assign pp0 = a & {4{b[0]}};
    assign pp1 = a & {4{b[1]}};
    assign pp2 = a & {4{b[2]}};
    assign pp3 = a & {4{b[3]}};

    // Add partial products
    assign sum1 = pp0 + (pp1 << 1);
    assign sum2 = sum1 + (pp2 << 2);
    assign sum3 = sum2 + (pp3 << 3);

    // Final product
    assign product = sum3;

endmodule