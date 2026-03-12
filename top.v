module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

wire [3:0] hold;

mux mux_inst(
    .A(sw[3:0]),
    .B(sw[7:4]),
    .C(sw[11:8]),
    .D(sw[15:12]),
    .sel({btnU, btnL}),
    .en(btnC),
    .out(hold)
);

demux demux_inst(
    .in(hold),
    .sel({btnR,btnD}),
    .en(btnC),
    .A(led[3:0]),
    .B(led[7:4]),
    .C(led[11:8]),
    .D(led[15:12])
);







endmodule