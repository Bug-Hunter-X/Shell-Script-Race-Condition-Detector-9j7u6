# Race Condition in Shell Script

This repository demonstrates a race condition bug in a shell script.

## Bug Description
The script launches two processes that concurrently write to different files.  Due to the unpredictable nature of process scheduling, the final content of the files might be unexpected or incomplete. This is a classic example of a race condition.

## Bug Reproduction
1. Clone the repository.
2. Run the `bug.sh` script.
3. Observe the output. It may vary on different systems or runs due to the race condition.

## Solution
The solution involves using proper synchronization mechanisms (e.g., locking) to ensure that only one process accesses the files at a time.  This prevents data corruption or unexpected behavior.