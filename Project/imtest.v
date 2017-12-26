module imtest();
	reg [11:2] addr;
	wire [31:0] im;
	initial begin
		addr = 10'b0000000000;
		#100 addr = 10'b0000000001;
		#100 addr = 10'b0000000010;
		#100 addr = 10'b0000000011;
		#100 addr = 10'b0000000100;
		#100 addr = 10'b0000000101;
		#100 addr = 10'b0000000110;
		#100 addr = 10'b0000000111;
		#100 addr = 10'b0000001000;
		#100 addr = 10'b0000001001;
	end
	im_4k im_4k(addr,im);
endmodule
