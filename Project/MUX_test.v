module MUX_test();
	reg [31:0] busa, busb;
	reg alusrc;	
	wire [31:0] result;
	initial begin
		busa = 32'b1000_0000_0000_1111_0000_0000_0000_0000;
		busb = 32'b0000_0000_0000_0011_1100_0000_0000_0000;
		alusrc = 1;
		
		#100 busa = 32'b0000_0000_0000_1111_0000_0000_0000_0000;
		busb = 32'b0000_0000_0000_0010_1100_0000_0000_0000;
		alusrc = 0;
	end

	mux2 #(32) mux2(busa,busb,alusrc,result);
endmodule