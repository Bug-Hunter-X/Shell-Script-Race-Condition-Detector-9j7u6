#!/bin/bash

# This script demonstrates a solution to the race condition bug using a lock file.

# Create two files
touch file1.txt
touch file2.txt

# Create a lock file
lock_file="my.lock"

# Process 1
(flock $lock_file; echo "Process 1" > file1.txt) &

# Process 2
(flock $lock_file; echo "Process 2" > file2.txt) &

# Wait for the processes to finish
wait

# Check the contents of the files. The output is now predictable.
cat file1.txt
cat file2.txt

# Clean up
rm file1.txt file2.txt $lock_file