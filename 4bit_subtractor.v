module four_bit_subtractor(
    input a3, a2, a1, a0,
    input b3, b2, b1, b0,
    input bin,
    output diff3, diff2, diff1, diff0,
    output bout
);

    wire borrow1, borrow2, borrow3;

    full_subtractor fs0(
        .a(a0),
        .b(b0),
        .bin(bin),
        .diff(diff0),
        .bout(borrow1)
    );

    full_subtractor fs1(
        .a(a1),
        .b(b1),
        .bin(borrow1),
        .diff(diff1),
        .bout(borrow2)
    );

    full_subtractor fs2(
        .a(a2),
        .b(b2),
        .bin(borrow2),
        .diff(diff2),
        .bout(borrow3)
    );

    full_subtractor fs3(
        .a(a3),
        .b(b3),
        .bin(borrow3),
        .diff(diff3),
        .bout(bout)
    );

endmodule

// Full Subtractor module
module full_subtractor(
    input a,
    input b,
    input bin,
    output diff,
    output bout
);

    assign diff = a ^ b ^ bin;
    assign bout = (~a & b) | (bin & (~a | b));

endmodule