module cpu(input wire clk, reset, input wire [7:0] Pe0, Pe1, Pe2, Pe3,output wire [7:0] ps0, ps1, ps2, ps3,output wire[9:0]PC_out);	

    wire s_inc, s_inm, we3, s_jal, enable_jal,dec_enable,s_sps, z, s_epe;
    wire [2:0] op;
    wire [5:0] opcode;
    

    microc camino(clk, reset, s_inc, s_inm, we3, s_jal, enable_jal,dec_enable,s_sps, s_epe, op, z, opcode, Pe0, Pe2, Pe3,ps0,ps1,ps2,ps3,PC_out,Pe1);
    uc uc0(clk, reset, z, opcode, s_inc, s_inm, we3, s_jal, enable_jal,dec_enable,s_sps, s_epe, op);
    

endmodule
