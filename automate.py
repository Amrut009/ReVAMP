"""
Automated Toolchain

@author: Amrut Rajkarne

Update: 23rd June 2017
"""

# Library to pass python variables to shell script
from subprocess import check_call
from os import environ

# Write script for installing yosys / abc / aiger if not present already

"""
Task-1 - Frontend: The toolchain should support Boolean functions and combinational circuits in multiple
formats.
"""

# Read file from user input (Will not work with Python3)
# For Python3 change raw_input to input
filename = raw_input("Give input file : ")
extension = filename.split(".")[-1]
filename = filename.split(".")[0]

# Get extension of file to call yosys or aigertoblif conversion
print("Opening file - " + filename + "." + extension)


# Task Input 1b - read verilog module in ABC is not robust. For reading verilog, Yosys should be used
# and written in blif/aiger format

# Call shell script automate.sh and pass the python variable
# Shell script converts input file (verilog or aiger) to blif file using yosys or aigertoblif tool
check_call(["/bin/bash", "ConvertFomart.sh", filename, extension])

"""
Task-2
Logic Synthesis: The logic synthesis phase allows technology independent optimization of the circuits
using various intermediate data-structures and techniques.
"""

# Output filename after conversion
outfilename = "./files/" + filename + ".blif"

print(outfilename)
check_call(["/bin/bash", "LogicSynthesis.sh", outfilename])



