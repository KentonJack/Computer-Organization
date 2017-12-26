module ext_test();
	reg [15:0] imm;
	reg extop;
	wire [31:0] result;
	
	initial begin
		imm = 16'b1000_0000_0000_1111;
		extop = 1;
		
		#100 imm = 16'b0000_0000_0000_1111;
		extop = 0;
	end



	ext ext(imm,extop,result);		
endmodule	
