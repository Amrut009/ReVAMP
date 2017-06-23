#! /bin/sh

# Checking for correct parameters
echo "Parameters are $2 and $1"
inputfile="./files/$1.$2"

# Converting from Verilog to Blif file format using Yosys
if [ "$2" = "v" ]
	then
		outfile="./files/$1.blif"
		echo "$outfile"
		./yosys/yosys -o $outfile -S $inputfile
fi;

# Converting from Aiger to Blif file format using aigtoblif tool
if [ "$2" = "aig" ]
	then
		outfile="./files/$1.blif"
		./aiger/aigtoblif $inputfile $outfile
fi;

export OUTVAR="$outfile"





