`default_nettype none

/*
 * module my_dff (input clk, input d, output q);
 */

module top_module (
    input wire clk, d,
    output wire q
);

    wire q0, q1;

    my_dff dff0 (clk, d, q0);
    my_dff dff1 (clk, q0, q1);
    my_dff dff2 (clk, q1, q);

endmodule