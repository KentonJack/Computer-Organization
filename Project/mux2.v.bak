module mux2 #(parameter w = 32) (bus1,bus2,alusrc,results);
	input [w-1:0] bus1,bus2;
	input alusrc;
	output [w-1:0] results;
	assign results = (~alusrc) ? bus1 : bus2;
endmodule

