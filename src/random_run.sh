#!/bin/bash

# List of binaries (full paths or relative names)
test_binary=./lab001

binaries=(
  ./lab001
  ./lab002
  ./lab003
  ./lab004
  ./lab005
  ./lab006
  ./lab007
  ./lab008
  ./lab009
  ./lab010
  ./lab011
  ./lab012
  ./lab013
)

test_mode=false

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        -t|--test)
            test_mode=true
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
    shift
done

# Pick a random index
random_index=$((RANDOM % ${#binaries[@]}))

# Get the binary to run
if [ "$test_mode" = true ]; then
  echo "Running in Test Mode"
  chosen_binary=$test_binary
else
  echo "Running in Prod Mode"
  chosen_binary=${binaries[$random_index]}
fi




# Script Logic
echo "Building"

# echo "Running: $chosen_binary"
echo "Running random lab"
exec "$chosen_binary"

