module TOP(clk,reset,crnt_instrn,zro_flag,carry_flag,return_addr,current_state,pc);
	input clk;
	input reset;
	input [31:0]crnt_instrn;
	input zro_flag,carry_flag,neg_flag;
	input [7:0]return_addr;
	output [2:0]current_state;
	output [7:0]pc;
	
	wire incrmnt_pc,ld_brnch_addr,ld_rtn_addr;
	wire [2:]currentstate;
	
	FSM I_FSM (
			.clk(clk),
			.reset(reset),
			.currentstate(currentstate)
	);
	DECODE I_DECODE(
					.zro_flag(zro_flag),
					.carry_flag(neg_flag),
					.currentstate(currentstate),
					.crnt_instrn(crnt_instrn),
					.incrmnt_pc(incrmnt_pc),
					.ld_brnch_addr(ld_brnch_addr),
					.ld_rtn_addr(ld_rtn_addr)
					
	);
	COUT I_COUNT(
		.reset(reset),
		.clk(clk),
		.incrmnt_pc(incrmnt_pc),
		.ld_brnch_addr(ld_rtn_aar),
		.imm_addr(crnt_instrn[7:0]),//imm_addr?
		.return_addr(return_addr),
		.pc(pc)		
	);
		
		assign current_state+currentstate;
	
endmodule