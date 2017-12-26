module mux3(bus1,bus2,bus3,alusrc,results);
	input [31:0] bus1,bus2,bus3;
	input [1:0] alusrc;
	output [31:0] results;
	wire [31:0] temp;
	mux2 #(32) mux23 (bus1,bus2,alusrc[0],temp);
	mux2 #(32) mux24 (temp,bus3,alusrc[1],results);
endmodule

