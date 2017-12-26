module alutest();
	reg [31:0] busa, busb;
	reg [2:0]aluctr;	
	wire zero;
	wire [31:0] result;
	initial begin
		//addu
		busa = 32'b1000_0000_0000_1111_0000_0000_0000_0000;
		busb = 32'b0000_0000_0000_0011_1100_0000_0000_0000;
		aluctr = 3'b000;

		//add
		#100 busa = 32'b0000_0000_0000_1111_0000_0000_0000_0000;
		busb = 32'b0000_0000_0000_0010_1100_0000_0000_0000;
		aluctr = 3'b001;
	end

	alu alu(busa,busb,aluctr,zero,result);
endmodule
