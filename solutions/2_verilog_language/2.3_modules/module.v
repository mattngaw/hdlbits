/*
 * module mod_a ( input in1, input in2, output out );
 */

module top_module (
    input  wire a, b, 
    output wire out
);

    mod_a m1 (a, b, out);

endmodule