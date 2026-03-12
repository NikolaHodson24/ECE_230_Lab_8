
module demux(
    input [3:0] in, 
    input [1:0] sel, 
    input en,
    output [3:0]A,[3:0]B,[3:0]C,[3:0]D
    );
    
    assign A = (en == 1 && sel == 0) ? in : 0;
    assign B = (en == 1 && sel == 1) ? in : 0;
    assign C = (en == 1 && sel == 2) ? in : 0;
    assign D = (en == 1 && sel == 3) ? in : 0;
    
endmodule
