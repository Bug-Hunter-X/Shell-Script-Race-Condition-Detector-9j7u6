#!/bin/bash

# This script demonstrates a race condition bug.

# Create two files
touch file1.txt
touch file2.txt

# Start two processes that write to the files concurrently
(echo "Process 1" > file1.txt & pid1=$!) 
(echo "Process 2" > file2.txt & pid2=$!)

# Wait for the processes to finish
wait $pid1 $pid2

# Check the contents of the files. The output may vary due to the race condition
cat file1.txt
cat file2.txt

# Clean up
rm file1.txt file2.txt