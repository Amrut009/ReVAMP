#! /bin/sh

echo "Read $1 using read_blif in ABC"

echo ""

echo "OPTIMIZATION COMMANDS - "

echo ""

echo "strash : dc2 and if works only on strashed network"

echo "" 

echo "collapse : To convert to BDD if required"

echo "" 

echo "dc2 : Gate Level Optimization"

echo "" 

echo "if -x -g : Depth Level Optimization"

echo "" 

echo "mfse -a : Area Level Optimization"

echo ""

echo "Multiple combination of optimization commands can be required to get proper desired optimization"

echo ""

echo "print_stats : To see statistics of the given network"

echo ""

echo "show : To see the visual representation of the circuit (Uses GSview and GraphViz)"

echo ""

echo "write_verilog : To write optimized network to verilog file"

read -p "Press ENTER to run ABC . . . . . . . " -n1 -s

echo ""

./abc/abc