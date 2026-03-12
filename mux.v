
module mux(
    input [3:0] A,[3:0] B,[3:0] C,[3:0] D, 
    input [1:0] sel, 
    input en,
    output [3:0]out
    );
    
    assign out = en ? (sel==0 ? A:
                       sel==1 ? B:
                       sel==2 ? C:
                       sel==3 ? D : 0) : 0;
    
endmodule
