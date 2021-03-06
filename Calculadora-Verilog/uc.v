module uc(input wire clk, reset, z, input wire [5:0] opcode, output reg s_inc, s_inm, we3, s_jal,enable_jal,dec_enable,s_sps, s_epe, output wire [2:0] op);
//Aquí se implementan las instrucciones. 
    
    reg zer;			//trato de z como wire/reg
    assign op = opcode [2:0]; //En la alu se usan estos bits para determinar la operación que se va a realizar. 
    
    always @(*) begin
        if(z & opcode[3]==1'b0)
        begin
	        zer=1'b1;
        end
    
        else if(!z & opcode[3]==1'b0)
        begin
	        zer=1'b0;
        end
		  
		  else
		  begin 
				if(zer == 1'b1)
					begin
						zer = 1'b1;
					end
				else
					begin
						zer = 1'b0;
					end
		  end
    end  
    

    always @(*)
    
    if (reset == 1'b1) //Cuando se resetea, todas las señales se ponen a cero. 
    begin
	 s_epe <= 1'b0;
	 s_sps <= 1'b0;
		  dec_enable <= 1'b0;
        we3 <= 1'b0;	
        s_jal <= 1'b0;
        s_inm <= 1'b0;	  
        s_inc <= 1'b1;	
        enable_jal <= 1'b0;
    end
    
    else 
    
    begin casex (opcode)
    
    //Instrucciones de la ALU:
        6'bxx0xxx:
            begin
				s_sps <= 1'b0;
				dec_enable <= 1'b0;
                //Se activa la señal de escritura.
                we3 <= 1'b1;
                s_jal <= 1'b0;
                //Se activa la señal que incrementa el PC.
                s_epe <= 1'b0;
                s_inc <= 1'b1;
                //Solo funcionará cuando tenga s_inm a 0.
                s_inm <= 1'b0;
                enable_jal <= 1'b0;
            end


    //Instrucciones de carga de un valor inmediato de una constante s_epe: Opcode de 4 bits + inmediato de 8 bits + registro de 4 bits.
        6'bxx1000:

            begin
				
				s_sps <= 1'b0;
				dec_enable <= 1'b0;
                //Se activa la señal de escritura.
                we3 <= 1'b1;
                s_epe <= 1'b0;
                s_jal <= 1'b0;
                //Se activa la señal que incrementa el PC.
                s_inc <= 1'b1;
                //Se activa la señal que coge el valor inmediato.
                s_inm <= 1'b1;
                enable_jal <= 1'b0;
            end

    //Instrucciones de salto: Opcode de seis bits + (Si s_inc=0 NuevoPC, sino se incrementa (PC-previo+1)).
    //SALTO ABSOLUTO INCONDICIONAL.
        6'b001001:

            begin
				s_epe <= 1'b0;
				s_sps <= 1'b0;
				dec_enable <= 1'b0;
              //Se desactiva la señal de escritura para que no guarde nada en memoria, ya que no se usa esa parte del camino de datos. 
                we3 <= 1'b0;
                s_jal <= 1'b0;
                enable_jal <= 1'b0;
                //El PC no se incrementa en una unidad.
                s_inc <= 1'b0;
					 s_inm <= 1'b0;
            end
    
    //Instrucciones de salto: Opcode de seis bits + (Si s_inc=0 NuevoPC, sino se incrementa (PC-previo+1)).
    //SALTO CONDICIONAL (Si zero o no zero - z).
    //SI Z==1 ENTONCES SALTAMOS
        6'b101001:
            begin
				s_epe <= 1'b0;
				s_sps <= 1'b0;
				dec_enable <= 1'b0;
                //Se desactiva la señal de escritura para que no guarde nada en memoria, ya que no se usa esa parte del camino de datos. 
                we3 <= 1'b0;
					 s_inm <= 1'b0;
                s_jal <= 1'b0;
                enable_jal <= 1'b0;
                if(zer==1'b1)
                    s_inc <= 1'b0;  //Si zero==1 entonces salto.
                else
                    s_inc <= 1'b1; //Si no zero==1 entonces PC+1.
            end
    
    
    //Instrucciones de salto: Opcode de seis bits + (Si s_inc=0 NuevoPC, sino se incrementa (PC-previo+1)).
    //SALTO CONDICIONAL (Si zero o no zero -z).
    //SI Z==0 ENTONCES SALTAMOS
    6'b011001:
        begin
		  s_epe <= 1'b0;
		  s_sps <= 1'b0;
				dec_enable <= 1'b0;
            //Se activa la señal de escritura.
            we3 <= 1'b0;
				s_inm <= 1'b0;
            s_jal <= 1'b0;
            enable_jal <= 1'b0;
            if(zer==1'b0)
		        s_inc <= 1'b0;  //Si zero==0 entonces salto.
            else
                s_inc <= 1'b1; //Si no zero==0 entonces PC+1.
            end
            
            //HAY QUE AÑADIR DOS MUX PARA PODER REALIZAR ESTA OPERACION.
            //NECESITAMOS SEÑALES DE CONTROL PARA SELECCIONAR EL INMEDIATO QUE LE SUMAMOS.
            //NECESITAMOS OTRA SEÑAL PARA SABER SI USAMOS EL PC O EL REGISTRO.
            //T O D O ELLO EN LA ALU. 
        
        //JAL
     6'b111001:
      begin
		s_epe <= 1'b0;
		s_sps <= 1'b0;
		dec_enable <= 1'b0;
	  s_jal <= 1'b0;
	  we3 <= 1'b0;
	  s_inm <= 1'b0;
	  enable_jal <= 1'b1;
	  s_inc <= 1'b0;
      end
      
      // JR
      6'b001010:
       begin
		 s_epe <= 1'b0;
		 s_sps <= 1'b0;
		 s_inm <= 1'b0;
		 s_inc <= 1'b0;
       s_jal <= 1'b1;
       we3 <= 1'b0;
       enable_jal <= 1'b0;
		dec_enable <= 1'b0;
       end
       
       
       // E/S SALIDA REGISTRO
       6'b011010:
       begin
		 s_epe <= 1'b0;
	  s_sps <= 1'b1;
	  dec_enable <= 1'b1;
	  we3 <= 1'b0;
	  s_jal <= 1'b0;
	  s_inc <= 1'b1;
	  s_inm <= 1'b0;
	  enable_jal <= 1'b0;
       end
       
       // E/S SALIDA INMEDIATO
       6'b101010:
       begin
          s_epe <= 1'b0;
	  s_sps <= 1'b0;
	  dec_enable <= 1'b1;
	  we3 <= 1'b0;
	  s_inm <= 1'b0;
	  s_jal <= 1'b0;
	  s_inc <= 1'b1;
	  enable_jal <= 1'b0;
       end
      
      
      // E/S ENTRADA
      6'b111010:
      begin
		s_sps <= 1'b0;
	dec_enable <= 1'b0;
	s_epe <= 1'b1;
	we3 <= 1'b1;
	s_inc <= 1'b1;
	s_jal <= 1'b0;
	s_inm <= 1'b0;
	enable_jal <= 1'b0;
      end
            
  6'b111111:
	  begin
	  	s_epe <= 1'b0;
	  s_sps <= 1'b0;
	  dec_enable <= 1'b0;
	  we3<= 1'b0;
	  s_inm <= 1'b0;
	  s_inc <= 1'b1;
	  s_jal <= 1'b0;
	  enable_jal <= 1'b0;
	  end
       
	default: 
	  begin
	  s_epe <= 1'b0;
	  s_sps <= 1'b0;
	  dec_enable <= 1'b0;
	    we3 <= 1'b0;		
	    s_inm <= 1'b0;			  
	    s_inc <= 1'b1;
	    s_jal <= 1'b0;
	    enable_jal <= 1'b0;
	  end
       
       endcase
       
       end
    
endmodule
