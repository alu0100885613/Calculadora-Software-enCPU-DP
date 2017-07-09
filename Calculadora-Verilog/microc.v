module microc(input wire clk, reset, s_inc, s_inm, we3, s_jal, enable_jal, dec_enable, s_sps, s_epe, input wire [2:0] op, output wire z, output wire [5:0] opcode, input wire [7:0] Pe0, Pe2, Pe3 , output wire [7:0] ps0,ps1,ps2,ps3,output wire [9:0]PC_out,input wire [2:0] Pe1);
//Aquí se implementa el camino de datos a seguir.
//El opcode es de 6 bits porque el opcode mayor es de 6 bits. 

   wire [9:0] PC_in, sum_out, jal_out, jal_toPC , jalsum_out;
   wire [15:0] mem_out;
   wire [7:0] rd1_out, rd2_out, alu_out, wd3, sal_sps, sal_mux4, sal_epe,wire_modified;
   wire z_alu_out,saldec0,saldec1,saldec2,saldec3;
   reg [7:0] Pe1_modify;
   
   
   //Instancias y uniones.
   
   //PRIMERA PARTE DEL CAMINO DE DATOS: PC-SUMADOR-MUX.
   registro #(10) PC(clk, reset, jal_toPC, PC_out); //El PC tiene 10 bits (No 8-->WIDTH 8).
   registro_jal #(10) reg_jal(clk, reset, enable_jal , PC_out, jal_out);
   sum sumadorJAL(jal_out, 10'b1, jalsum_out);
   mux2 # (10) mux_jal(PC_in, jalsum_out, s_jal, jal_toPC);
   sum sumadorPC(PC_out, 10'b1, sum_out);
   mux2 #(10) muxPC(mem_out[15:6], sum_out, s_inc, PC_in);
   
   
   //SEGUNDA PARTE DEL CAMINO DE DATOS: MEMORIA DE INSTRUCCIONES.
   memprog memory(clk, PC_out, mem_out[15:0]); //La salida del PC es la entrada de la memoria. 
   
   //TERCERA PARTE DEL CAMINO DE DATOS: BANCO DE  REGISTROS-ALU-MUX.
   //En el banco de registros entra la salida de la memoria dividida en tres partes: Los bits de 4 a 7, de 8a 11 y de 12 a 15.
   regfile banco(clk, we3, mem_out[7:4], mem_out[11:8], mem_out[15:12], sal_epe, rd1_out, rd2_out); //Representa el banco de registros del camino de datos. 
   alu alu0(rd1_out, rd2_out, op, alu_out, z); //Unidad Aritmético-Lógica.
   mux2 muxREG(alu_out,mem_out[11:4] , s_inm, wd3); //Entrada wd3 del banco de registros. (test)
   
   assign opcode = mem_out [5:0]; //El opcode son los últimos seis bits (En algunas los últimos cuatro bits).
   
   always @(Pe1)
   begin 
   Pe1_modify = { 5'b0, Pe1};
   end
   
   //TERCERA PARTE DEL CAMINO DE DATOS: E/S
      //SALIDA
       mux2 # (8) sps(mem_out[15:8],rd2_out,s_sps,sal_sps);		//s_sps
       dec2_4 decodificador(mem_out[6],mem_out[7],dec_enable,saldec0,saldec1,saldec2,saldec3);		//dec_enable
       registro_jal #(8) port_sal0(clk, reset, saldec0 , sal_sps , ps0);
       registro_jal #(8) port_sal1(clk, reset, saldec1 , sal_sps  ,ps1);
       registro_jal #(8) port_sal2(clk, reset, saldec2 , sal_sps  ,ps2);
       registro_jal #(8) port_sal3(clk, reset, saldec3 , sal_sps  ,ps3);
      
      //ENTRADA
      mux4_1 #(8) EntPort(Pe0, Pe1, wire_modified, Pe3, mem_out[7:6],sal_mux4);
      mux2 #(8) epe(wd3,sal_mux4, s_epe, sal_epe);
      
endmodule