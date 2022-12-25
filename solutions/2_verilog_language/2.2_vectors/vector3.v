`default_nettype none

module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z 
);

    wire [31:0] g;

    assign g = {a, b, c, d, e, f, 2'b11};
    assign {w, x, y, z} = g;

endmodule