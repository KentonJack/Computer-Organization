module dm_test();
	reg [11:2]	addr ;  // address bus
	reg	[31:0]	datain ;   // 32-bit input data
	reg	memwr ;    // memory write enable
	wire	[31:0]  dout ;  // 32-bit memory output


	reg clk, rst;

	initial begin
		clk = 0;
		rst = 1;
		#120 rst = 0;
	end
	always #100 clk = ~clk;

	initial begin
		
		#200 memwr = 1;
		addr = 10'b0000000001;
		datain = 32'b0000_0000_0000_0000_0000_0000_0000_0001;

		#200 memwr = 1;
		addr = 10'b0000000010;
		datain = 32'b0000_0000_0000_0000_0000_0000_0110_0111;

		#200 memwr = 0;
		addr = 10'b0000000001;	
		datain = 32'b0000_0000_0000_0000_0000_0000_0000_0011;

	end
	dm_4k dm(addr,datain,memwr,clk,dout);
endmodule
