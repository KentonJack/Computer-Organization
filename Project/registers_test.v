module registers_test();
	reg clk, rst;

	initial begin
		clk = 1;
		rst = 1;
		#120 rst = 0;
	end
	always #100 clk = ~clk;

	reg	regwr;
	reg	[4:0]	rreg1, rreg2, wreg;
	reg	[31:0]	wdata;
	wire	[31:0]	rdata1, rdata2;
	
	initial begin
		regwr=1;
		rreg1=5'b00001;
		rreg2=5'b00010;
		wreg=5'b10100;
		wdata=32'b0000_0000_0000_0000_0000_0000_0000_1111;

		#200 regwr=1;
		rreg1=5'b00001;
		rreg2=5'b00010;
		wreg=5'b00011;
		wdata=32'b0000_0000_0000_1111_0000_0000_0000_0000;
			
		#200 regwr=0;
		rreg1=5'b10100;
		rreg2=5'b00011;
		wreg=5'b10100;
		wdata=32'b0000_0000_0000_0000_0000_0000_0000_0000;
	end


	registers register(clk,regwr,rreg1,rreg2,wreg,wdata,rdata1,rdata2);
endmodule
