module aluctr(aluop,func,rtype,aluctr);
	input [2:0]	aluop;
	input [5:0]	func;
	input 	rtype;
	output	reg  [2:0]	aluctr;//???????

	always @(*) begin
		case (rtype)
			1'b0 : begin
				aluctr <= aluop;
			end
			1'b1 : begin
				aluctr[2] = ~func[2] & func[1];
				aluctr[1] = func[3] & ~func[2] & func[1];
				aluctr[0] = func[3] & ~func[2] & ~func[1] + ~func[3] + func[2] + func[1];
			end
		endcase
	end
endmodule
