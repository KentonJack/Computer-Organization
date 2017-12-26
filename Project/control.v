module control(op,regdst,regwr,alusrc,memwr,memtoreg,jump,branch,aluctr,rtype,extop);	//???????????????????????????????????????????????????
	input [5:0] 	op;
	reg [2:0] 	aluop;	
	output reg	regdst;
	output reg 	regwr;
	output reg	alusrc;
	output reg	memwr;
	output reg	memtoreg;
	output reg	jump;
	output reg 	extop;
	output reg	branch;
	output [2:0]	aluctr;
	output reg 	rtype;
	parameter 	r	= 6'b000000,
			ori	= 6'b001101,
			addiu	= 6'b001001,
			addi 	= 6'b001000,
			lw	= 6'b100011,
			sw	= 6'b101011,
			beq	= 6'b000100,
			gojump 	= 6'b000010;
	always @(*) begin					//??op??????????
		case(op)
			r: begin
				regdst = 1;
				rtype = 1;
				alusrc = 0;
				memtoreg = 0;
				memwr = 0;
				jump = 0;
				branch = 0;
				regwr = 1;
				aluop = 3'b001;
				extop = 0;
			end
			ori: begin
				regdst = 0;
				rtype = 0;
				alusrc = 1;
				memtoreg = 0;
				memwr = 0;
				jump = 0;
				branch = 0;
				regwr = 1;
				aluop = 3'b010;
				extop = 0;
			end
			addiu: begin
				regdst = 0;
				rtype = 0;
				alusrc = 1;
				memtoreg = 0;
				memwr = 0;
				jump = 0;
				branch = 0;
				regwr = 1;
				aluop = 3'b000;
				extop = 1;
			end
			addi: begin
				regdst = 0;
				rtype = 0;
				alusrc = 1;
				memtoreg = 0;
				memwr = 0;
				jump = 0;
				branch = 0;
				regwr = 1;
				aluop = 3'b000;
				extop = 1;
			end
			lw: begin
				regdst = 0;
				rtype = 0;
				alusrc = 1;
				memtoreg = 1;
				memwr = 0;
				jump = 0;
				branch = 0;
				regwr = 1;
				aluop = 3'b000;
				extop = 1;
			end
			sw: begin
				regdst = 0;
				rtype = 0;
				alusrc = 1;
				memtoreg = 0;
				memwr = 1;
				jump = 0;
				branch = 0;
				regwr = 0;
				aluop = 3'b000;
				extop = 1;
			end
			beq: begin
				regdst = 0;
				rtype = 0;
				alusrc = 0;
				memtoreg = 0;
				memwr = 0;
				jump = 0;
				branch = 1;
				regwr = 0;
				aluop = 3'b100;
				extop = 0;
			end
			gojump: begin
				regdst = 0;
				rtype = 0;
				alusrc = 0;
				memtoreg = 0;
				memwr = 0;
				jump = 1;
				branch = 0;
				regwr = 0;
				aluop = 3'b000;
				extop = 0;
			end
		endcase
	end
	
	aluctrl aluctrl2(aluop,op,rtype,aluctr);
	
endmodule
