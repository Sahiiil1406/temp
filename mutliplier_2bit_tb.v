
`timescale 1ns / 1ps

module two_bit_multiplier_tb;

    reg [1:0] a, b;
    wire [3:0] product;
    
    // Instantiate the Unit Under Test (UUT)
    two_bit_multiplier uut (
        .a(a),
        .b(b),
        .product(product)
    );
    
    initial begin
        // Initialize inputs
        a = 0;
        b = 0;
        
        #100;
        
     
        for (int i = 0; i < 4; i = i + 1) begin
            for (int j = 0; j < 4; j = j + 1) begin
                a = i;
                b = j;
                #10; 
                if (product !== a * b) begin
                    $display("Error: a=%d, b=%d, product=%d (expected %d)", a, b, product, a * b);
                end else begin
                  $display("Correct: a=%b, b=%b, product=%b", a, b, product);
                end
            end
        end
        
        // End simulation
        $finish;
    end

endmodule