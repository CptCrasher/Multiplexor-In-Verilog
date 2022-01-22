
# Multiplexor (MUX)

This program is a 2-to-1 multiplexor (MUX) circuit coded in Verilog and compared 
to an expected oracale answer. This was created for an assignment in
my second year 'Computer Organization' course teaching me the basics of circuit
creation in Verilog.

### Output
When the program is compiled, it compares a circuit created MUX with an expected
logic created answer done using:` (a & b) | (!c & b) `

When compared, the 8 possible combinations of the inputs a, b and c are printed in a row by row basis along with the output z value
and depending on whether the z value is equivalent to the expected answer, a PASS or FAIL is written in the same row.


***Here is the output for program:***
![output](https://i.imgur.com/W77r3jf.png)



### Circuit Diagram
The following is a circuit diagram using logic gates of the MUX circuit:
![diagram](https://i.imgur.com/k3TdmMN.png)