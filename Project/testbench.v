module testbench();
	reg clk, rst;

	initial begin
		clk = 0;
		rst = 1;
		#120 rst = 0;
	end

	always #100 clk = ~clk;

	cpu cpu(clk, rst);
endmodule
