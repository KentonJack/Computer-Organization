module dm_4k(addr,datain,memwr,clk,dout);
	input	[11:2]	addr ;  // address bus
	input	[31:0]	datain ;   // 32-bit input data
	input	memwr ;    // memory write enable
	input	clk ;   // clock
	integer i;
	output	reg	[31:0]  dout ;  // 32-bit memory output

	reg			[31:0]	dm[1023:0] ;
	initial
	begin
		for(i = 0;i<1023;i = i + 1)
		dm[i] = 32'b0;
	end

	always @(posedge clk) begin
		if (memwr) begin		//????mem
			dm[addr[11:2]][31:0] <= datain[31:0];
		end
	end

	always @(addr) begin
		dout[31:0] <= dm[addr[11:2]][31:0];
	end
endmodule
