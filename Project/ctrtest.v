
module ctrtest();
	reg [5:0] op;
	wire regdst;			
	wire regwr;			
	wire memwr;			
	wire alusrc;			
	wire memtoreg;			
	wire jump;			
	wire branch;		
	wire rtype;			
	wire extop;		
	wire [2:0] aluop;	
	initial begin
		op = 6'b000000;			//r
		#100 op = 6'b001101;		//ori
		#100 op = 6'b001001;		//addiu
		#100 op = 6'b100011;		//lw
		#100 op = 6'b101011;		//sw
		#100 op = 6'b000100;		//beq
		#100 op = 6'b000010;		//jump
	end
	control control(op,regdst,regwr,alusrc,memwr,memtoreg,jump,branch,aluop,rtype,extop);
endmodule



