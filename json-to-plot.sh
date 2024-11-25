#!/bin/bash

# Run the first script
./json-to-dat.sh

# Check if the first script executed successfully
if [ $? -ne 0 ]; then
    echo "json-to-dat.sh failed"
    exit 1
fi

# Run the second script
./dat-to-plot.sh

# Check if the second script executed successfully
if [ $? -ne 0 ]; then
    echo "dat-to-plot.sh failed"
    exit 1
fi

echo "Both scripts executed successfully"
