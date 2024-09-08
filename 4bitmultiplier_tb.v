`timescale 1ns / 1ps

module four_bit_multiplier_tb;

    // Inputs
    reg [3:0] a;
    reg [3:0] b;

    // Outputs
    wire [7:0] product;

    // Instantiate the Unit Under Test (UUT)
    four_bit_multiplier uut (
        .a(a),
        .b(b),
        .product(product)
    );

    integer i, j;
    reg [7:0] expected_product;

    initial begin
        // Initialize Inputs
        a = 0;
        b = 0;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Add stimulus here
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                a = i;
                b = j;
                #10; // Wait for 10 ns
                
                expected_product = a * b;
                if (product !== expected_product) begin
                  $display("a=%b, b=%b, product=%b (expected %d)", 
                             a, b, product, expected_product);
                end else begin
                  $display(" a=%b, b=%b, product=%b", 
                             a, b, product);
                end
            end
        end
        
        $finish;
    end
      
endmodule