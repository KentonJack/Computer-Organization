module alu(busa,busb,aluctr,zero,result);
  input [31:0] busa, busb;
  input [2:0] aluctr;
  output zero;
  //slt
  reg zero1;
  reg [31:0] zeroSlt;	

  //sltu
  reg zero2;
  reg [31:0] zeroSltu;

  output reg [31:0] result;
  initial begin
        result = 0;
  end
  assign zero = (result? 0 : 1);
  always @(busa or busb or aluctr) begin
    case(aluctr)
      3'b000: result = busa + busb;
      3'b001: result = busa + busb;
      3'b010: result = busb | busa;
      3'b011: result = busa | busb;
      3'b100: result = busa - busb;
      3'b101: result = busa - busb;
      3'b111: begin 					//slt
		zero1 = busa[31] - busb[31];
		if(zero1) 				//?????
			begin 
				result = busa[31]?1:0;			//???????????
			end
		else							//?????
			begin 
				zeroSlt = busa - busb;
				result = zeroSlt[31]?1:0;	
			end
	end
      3'b110: begin
		zero2 = busa[31] - busb[31];
		if(zero2) 				//?????
			begin 
				result = busa[31]?0:1;			//??1??
			end
		else							//?????
			begin 
				zeroSltu = busa - busb;
				result = zeroSltu[31]?1:0;	
			end
	end
      default: result = 0;
    endcase
  end
endmodule

