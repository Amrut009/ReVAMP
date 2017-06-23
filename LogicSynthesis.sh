#! /bin/sh

# Checking for correct parameters
echo "Parameters are $1"

# Reading blif with ABC Logic Synthesis
echo "Input file -"
./abc/abc -c "read_blif $1; print_stats"

# dc2 and if work only with strashed networks
echo "Input file after strash -"
./abc/abc -c "read_blif $1; print_stats; strash; print_stats"

echo "Input file after strash (1st Combination) -"
./abc/abc -c "read_blif $1; print_stats; strash; print_stats; dc2; print_stats"

echo "Input file after strash (2nd Combination) -"
./abc/abc -c "read_blif $1; print_stats; strash; print_stats; if -x -g; print_stats"

echo "Input file after strash (3rd Combination) -"
./abc/abc -c "read_blif $1; print_stats; strash; print_stats; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; print_stats"

echo "Input file after strash (4th Combination) -"
./abc/abc -c "read_blif $1; print_stats; strash; print_stats; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; dc2; if -x -g; print_stats"

echo "Input file after strash (5th Combination) -"
./abc/abc -c "read_blif $1; print_stats; strash; print_stats; dc2; dc2; print_stats"

echo "Input file after strash (6th Combination) -"
./abc/abc -c "read_blif $1; print_stats; strash; print_stats; if -x -g; if -x -g; print_stats"

echo "Input file after strash (7th Combination) -"
./abc/abc -c "read_blif $1; print_stats; strash; print_stats; dc2; dc2; if -x -g; dc2; dc2; if -x -g; dc2; dc2; if -x -g; dc2; dc2; if -x -g; dc2; dc2; if -x -g; print_stats"

echo "Input file after strash (8th Combination) -"
./abc/abc -c "read_blif $1; print_stats; strash; print_stats; dc2; dc2; if -x -g; dc2; dc2; if -x -g; dc2; dc2; if -x -g; dc2; dc2; if -x -g; dc2; dc2; if -x -g; print_stats"

# Other commands - balance, rr, collapse and others. Find all combinations