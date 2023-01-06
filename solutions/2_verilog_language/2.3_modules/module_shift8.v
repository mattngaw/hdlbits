`default_nettype none

/*
 * module my_dff8 (input clk, input [7:0] d, output [7:0] q);
 */

module top_module ( 
    input wire clk, 
    input wire [7:0] d, 
    input wire [1:0] sel, 
    output wire [7:0] q 
);

    wire [7:0] q0, q1, q2;

    my_dff8 dff0 (clk, d, q0),
            dff1 (clk, q0, q1),
            dff2 (clk, q1, q2);

    always @ (d, q0, q1, q2, sel) begin
        case (sel)
            2'b00 : q = d;
            2'b01 : q = q0;
            2'b10 : q = q1;
            2'b11 : q = q2;
            default : q = 0;
        endcase
    end

endmodule