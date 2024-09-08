
module two_bit_multiplier(
    input [1:0] a,
    input [1:0] b,
    output [3:0] product
);

    wire [3:0] partial_products [1:0];
    
  
    assign partial_products[0] = b[0] ? {2'b00, a} : 4'b0000;
    assign partial_products[1] = b[1] ? {1'b0, a, 1'b0} : 4'b0000;
    
    assign product = partial_products[0] + partial_products[1];

endmodule