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
    output [31:0] sum
);

    wire [15:0] lower, upper0, upper1;
    wire sel;

    add16 add_lower (a[15:0], b[15:0], 1'b0, lower, sel);
    add16 add_upper0 (a[31:16], b[31:16], 1'b0, upper0, );
    add16 add_upper1 (a[31:16], b[31:16], 1'b1, upper1, );

    always @ (lower, upper0, upper1, sel) begin
        case (sel)
            1'b0 : sum = {upper0, lower};
            1'b1 : sum = {upper1, lower};
        endcase
    end

endmodule
