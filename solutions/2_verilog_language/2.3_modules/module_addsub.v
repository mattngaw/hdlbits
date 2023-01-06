`default_nettype none

/*
 * module add16 (
 *     input [15:0] a, b,
 *     input cin,
 *     output [15:0] sum,
 *     output cout
 * );
 */

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire [31:0] b_;
    wire carry;

    assign b_ = b ^ {32{sub}};

    add16 add_lower (a[15:0], b_[15:0], sub, sum[15:0], carry);
    add16 add_upper (a[31:16], b_[31:16], carry, sum[31:16], );

endmodule
