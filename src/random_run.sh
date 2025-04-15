#!/bin/bash

# List of binaries (full paths or relative names)
test_binary=./output/lab001

binaries=(
  ./output/lab001
  ./output/lab002
  ./output/lab003
  ./output/lab004
  ./output/lab005
  ./output/lab006
  ./output/lab007
  ./output/lab008
  ./output/lab013
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
rm -f lab??? *.data
make

# echo "Running: $chosen_binary"
echo "Running random lab"
exec "$chosen_binary"

