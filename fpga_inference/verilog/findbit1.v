/*
 ***@Author: NGUYEN TRUNG HIEU
 ***@Date:   Oct 24th, 2018
*/

/*
 ***@Used: find bit 1 in input string 
 ***@Return: Z: position of the first bit 1
 ***         flagzero: 1 if there is no bit 1
*/
module findbit1(flagzero,Z,Y);
output	flagzero;
output	[4:0]Z;
input	[24:0]Y;

assign	flagzero=~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[20]&~Y[19]&~Y[18]&~Y[17]
                &~Y[16]&~Y[15]&~Y[14]&~Y[13]&~Y[12]&~Y[11]&~Y[10]&~Y[9]
		&~Y[8]&~Y[7]&~Y[6]&~Y[5]&~Y[4]&~Y[3]&~Y[2]&~Y[1]&~Y[0];

assign 	Z[0]=(~Y[24]&Y[23])
            |(~Y[24]&~Y[22]&Y[21])
            |(~Y[24]&~Y[22]&~Y[20]&Y[19])
	    |(~Y[24]&~Y[22]&~Y[20]&~Y[18]&Y[17])
            |(~Y[24]&~Y[22]&~Y[20]&~Y[18]&~Y[16]&Y[15])
            |(~Y[24]&~Y[22]&~Y[20]&~Y[18]&~Y[16]&~Y[14]&Y[13])
            |(~Y[24]&~Y[22]&~Y[20]&~Y[18]&~Y[16]&~Y[14]&~Y[12]&Y[11])
            |(~Y[24]&~Y[22]&~Y[20]&~Y[18]&~Y[16]&~Y[14]&~Y[12]&~Y[10]&Y[9])
            |(~Y[24]&~Y[22]&~Y[20]&~Y[18]&~Y[16]&~Y[14]&~Y[12]&~Y[10]&~Y[8]&Y[7])
            |(~Y[24]&~Y[22]&~Y[20]&~Y[18]&~Y[16]&~Y[14]&~Y[12]&~Y[10]&~Y[8]&~Y[6]&Y[5])
            |(~Y[24]&~Y[22]&~Y[20]&~Y[18]&~Y[16]&~Y[14]&~Y[12]&~Y[10]&~Y[8]&~Y[6]&~Y[4]&Y[3])
            |(~Y[24]&~Y[22]&~Y[20]&~Y[18]&~Y[16]&~Y[14]&~Y[12]&~Y[10]&~Y[8]&~Y[6]&~Y[4]&~Y[2]&Y[1]);

assign	Z[1]=(~Y[24]&~Y[23]&Y[22])
            |(~Y[24]&~Y[23]&Y[21])
	    |(~Y[24]&~Y[23]&~Y[20]&~Y[19]&Y[18])
            |(~Y[24]&~Y[23]&~Y[20]&~Y[19]&Y[17])
	    |(~Y[24]&~Y[23]&~Y[20]&~Y[19]&~Y[16]&~Y[15]&Y[14])
            |(~Y[24]&~Y[23]&~Y[20]&~Y[19]&~Y[16]&~Y[15]&Y[13])
	    |(~Y[24]&~Y[23]&~Y[20]&~Y[19]&~Y[16]&~Y[15]&~Y[12]&~Y[11]&Y[10])
	    |(~Y[24]&~Y[23]&~Y[20]&~Y[19]&~Y[16]&~Y[15]&~Y[12]&~Y[11]&Y[9])
	    |(~Y[24]&~Y[23]&~Y[20]&~Y[19]&~Y[16]&~Y[15]&~Y[12]&~Y[11]&~Y[8]&~Y[7]&Y[6])
	    |(~Y[24]&~Y[23]&~Y[20]&~Y[19]&~Y[16]&~Y[15]&~Y[12]&~Y[11]&~Y[8]&~Y[7]&Y[5])
            |(~Y[24]&~Y[23]&~Y[20]&~Y[19]&~Y[16]&~Y[15]&~Y[12]&~Y[11]&~Y[8]&~Y[7]&~Y[4]&~Y[3]&Y[2])
	    |(~Y[24]&~Y[23]&~Y[20]&~Y[19]&~Y[16]&~Y[15]&~Y[12]&~Y[11]&~Y[8]&~Y[7]&~Y[4]&~Y[3]&Y[1]);

assign	Z[2]=(~Y[24]&~Y[23]&~Y[22]&~Y[21]&Y[20])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&Y[19])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&Y[18])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&Y[17])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[16]&~Y[15]&~Y[14]&~Y[13]&Y[12])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[16]&~Y[15]&~Y[14]&~Y[13]&Y[11])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[16]&~Y[15]&~Y[14]&~Y[13]&Y[10])
	    |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[16]&~Y[15]&~Y[14]&~Y[13]&Y[9])
	    |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[16]&~Y[15]&~Y[14]&~Y[13]&~Y[8]&~Y[7]&~Y[6]&~Y[5]&Y[4])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[16]&~Y[15]&~Y[14]&~Y[13]&~Y[8]&~Y[7]&~Y[6]&~Y[5]&Y[3])
	    |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[16]&~Y[15]&~Y[14]&~Y[13]&~Y[8]&~Y[7]&~Y[6]&~Y[5]&Y[2]) 
	    |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[16]&~Y[15]&~Y[14]&~Y[13]&~Y[8]&~Y[7]&~Y[6]&~Y[5]&Y[1]);

assign	Z[3]=(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[20]&~Y[19]&~Y[18]&~Y[17]&Y[16])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[20]&~Y[19]&~Y[18]&~Y[17]&Y[15])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[20]&~Y[19]&~Y[18]&~Y[17]&Y[14])
	    |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[20]&~Y[19]&~Y[18]&~Y[17]&Y[13])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[20]&~Y[19]&~Y[18]&~Y[17]&Y[12])
	    |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[20]&~Y[19]&~Y[18]&~Y[17]&Y[11])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[20]&~Y[19]&~Y[18]&~Y[17]&Y[10])
            |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[20]&~Y[19]&~Y[18]&~Y[17]&Y[9])
	    |(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[20]&~Y[19]&~Y[18]&~Y[17]&~Y[8]&~Y[7]&~Y[6]&~Y[5]&~Y[4]&~Y[3]&~Y[2]&~Y[1]&Y[0]);

assign	Z[4]=(~Y[24]&~Y[23]&~Y[22]&~Y[21]&~Y[20]&~Y[19]&~Y[18]&~Y[17]&~Y[16]&~Y[15]&~Y[14]&~Y[13]&~Y[12]&~Y[11]&~Y[10]&~Y[9])&(Y[8]|Y[7]|Y[6]|Y[5]|Y[4]|Y[3]|Y[2]|Y[1]|Y[0]);

endmodule
