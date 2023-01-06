/*
 * module mod_a ( output, output, input, input, input, input );
 */
 
module top_module (
    input  wire a, b, c, d,
    output wire out1, out2
);

    mod_a m1 (out1, out2, a, b, c, d);

endmodule