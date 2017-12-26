
module regtest();
	reg clk, rst;
	reg [31:0] pc_next;
	wire [31:0] pc_now;
	initial begin
		clk = 0;
		rst = 1;
		#120 rst = 0;
	end

	always 
	begin 
		#100 clk = ~clk;
		pc_next = pc_now + 4;
	end
	registers registers(clk, regwr, rreg1, rreg2, wreg, wdata, rdata1, rdata2);	//
endmodule


