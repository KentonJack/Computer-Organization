
module aluctrl_test();
	reg [2:0]	aluop;
	reg [5:0]	func;
	reg 	rtype;
	wire[2:0]aluctr;//???????
	
	initial begin
		aluop = 3'b100;
		func = 6'b100011;
		rtype= 0;
		
		#100 aluop = 3'b000;
		func = 6'b100000;
		rtype=1;

	end


	aluctrl aluctrl(aluop,func,rtype,aluctr);
endmodule