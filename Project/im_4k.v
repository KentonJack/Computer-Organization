module im_4k(addr,im);
    input [11:2] addr;
    output [31:0] im;
    reg[31:0] ims[1023:0];
    initial
    begin
        $readmemh("F:/modelsim/examples/project/common/code.txt",ims);
    end
    assign im = ims[addr[11:2]][31:0];//total 1024     
endmodule
