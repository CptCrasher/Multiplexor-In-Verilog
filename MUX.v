module Mux;
  	//Defining registers, wire and variables
	reg a, b, c;
	wire z, notOutput, Aout1, Aout2;
    integer i, j, k, expect;
  
    //Creating the Multiplexor circuit
  	//Not gate result stored to notOuput
    not my_not(notOutput,c);
  	//And gates results stored to Aout1 and Aout2
 	and my_and(Aout1,a,notOutput);
  	and my_and2(Aout2,c,b);
  	//Or gate result stored to z
    or my_or(z,Aout1,Aout2);
    
  
  	//Loop to test every input of reg's a, b and c
    initial
    begin
        for(i=0; i<2; i=i+1)
            begin
                for(j=0; j<2; j=j+1)
                    begin            
                        for(k=0;k<2;k=k+1)
                            begin
                              // 8 Possible combinations of inputs using 3 for loops
                                a=i; b=j; c=k;
                              // Orcale (tells us the expected logic of the MUX with inputs
                                expect = (c&b) |(a & ~c);
                                #1 //Delay
                              	//Print input values and z value
                              	//Pass if z is equal to the expected, Fail otherwise
                                if(expect ===z)
                                    $display("PASS: a=%b b=%b c=%b z=%b",a,b,c,z);
                                else
                                    $display("FAIL: a=%b b=%b c=%b z=%b",a,b,c,z);
                            end
                    end
            end
            $finish;
    
    end
endmodule