`default_nettype none

/*
 * module add16 (
 *     input[15:0] a, b, 
 *     input cin,
 *     output[15:0] sum,
 *     output cout
 * );
 */

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] upper, lower;
    wire carry;

    add16 add_upper (a[31:16], b[31:16], carry, upper, ),
          add_lower (a[15:0], b[15:0], 1'b0, lower, carry);

    assign sum = {upper, lower};

endmodule


module add1 ( input a, input b, input cin, output sum, output cout );

    wire halfsum;

    assign halfsum = a ^ b;
    assign sum = halfsum ^ cin;
    assign cout = (halfsum & cin) | (a & b);

endmodule
