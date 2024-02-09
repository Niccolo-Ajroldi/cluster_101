#!/bin/bash

# add conda TODO: make it more portable!
source ~/miniconda3/etc/profile.d/conda.sh

# Activate conda environment TODO: should I use source activate alpe instead?
conda activate alpe

# Env vars
export HOME=/home/najroldi
export DIR=/home/najroldi/prove/condor/sweep

# Check if the number argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi
# Saves the number into a variable
job_idx=$1
echo "my variable is $job_idx"

# Execute pyton script
python $DIR/print_num.py $job_idx