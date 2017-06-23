"""
Automated Toolchain

@author: Amrut Rajkarne

Update: 23rd June 2017
"""

# Library to pass python variables to shell script
import subprocess
from os import environ
import sys

# Write script for installing yosys / abc / aiger if not present already
"""
INSTALLATION PART - Using automake or cmake : <PENDING>
"""

"""
Task-1 - Frontend: The toolchain should support Boolean functions and combinational circuits in multiple formats
"""

# Read file from user input (Will not work with Python3)
# For Python3 change raw_input to input
print("")
filename = raw_input("Give input file : ")
print("")
extension = filename.split(".")[-1]
filename = filename.split(".")[0]

# Get extension of file to call yosys or aigertoblif conversion
print("Opening file - " + filename + "." + extension)

# Task Input 1b - read verilog module in ABC is not robust. For reading verilog, Yosys should be used
# and written in blif/aiger format

# Call shell script automate.sh and pass the python variable
# Shell script converts input file (verilog or aiger) to blif file using yosys or aigertoblif tool
if extension != "blif":
	print("")
	print("Input file not blif format")
	raw_input("Press Enter to convert . . .")
	print("")
	cmd = ["/bin/bash", "ConvertFormat.sh", filename, extension]
	subprocess.Popen(cmd).wait()

	### 
	# Resolve if shell script has any errors
	###

	# proc = subprocess.Popen(cmd, stdout=subprocess.STDOUT, stderr=subprocess.PIPE)
	# (stdout, stderr) = proc.communicate()
	# proc.wait()
	# if stderr:
	# 	print "Shell script to convert file having errors. ABORTING PROGRAM . . . ."
	# 	sys.exit()
else:
	print("Input file in blif format. Move to the next stage")

print("")
print("")
raw_input("Press ENTER to proceed to Logic Synthesis")
print("")
print("")

"""
Task-2
Logic Synthesis: The logic synthesis phase allows technology independent optimization of the circuits using various intermediate data-structures and techniques.
"""

# Output filename after conversion
outfilename = "./files/" + filename + ".blif"

###
# User should be able to use an interative abc shell for performing logic synthesis
# A list of commands could be mentioned that would do the necessary optimization task
###