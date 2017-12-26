module aluctrl(aluop,func,rtype,aluctr);
	input [2:0]	aluop;
	input [5:0]	func;
	input 	rtype;
	output[2:0]aluctr;//???????

	/*always @(*) begin
		case (rtype)
			1'b0 : begin
				aluctr <= aluop;
			end
			1'b1 : begin
				aluctr[2] = ~func[2] & func[1];
				aluctr[1] = func[3] & ~func[2] & func[1];
				aluctr[0] = ~func[3] & ~func[2] & ~func[1] & ~func[0]  + ~func[2] & func[1] & ~func[0];
			end
		endcase
	end*/
	assign aluctr[2]=rtype?(!func[2] & func[1]):aluop[2];
	assign aluctr[1]=rtype?(func[3] & !func[2] & func[1]):aluop[1];
	assign aluctr[0]=rtype?((!func[3] & !func[2] & !func[1] & !func[0])  |( !func[2] & func[1] & !func[0])):aluop[0];
endmodule
