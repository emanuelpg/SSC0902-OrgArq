module decoder1035(output out, input [15:0] inp);

    wire[15:0] notinp;

    generate
        for(genvar i = 0; i < 16; i++) begin
            not(notinp[i], inp[i]);
        end
    endgenerate

    and(out, inp[0], inp[1], notinp[2], inp[3], notinp[4], notinp[5], notinp[6], notinp[7],
    notinp[8], notinp[9], inp[10], notinp[11], notinp[12], notinp[13], notinp[14], notinp[15]);

endmodule