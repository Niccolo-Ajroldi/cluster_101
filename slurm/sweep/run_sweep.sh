#!/bin/bash

# add conda TODO: make it more portable!
source ~/miniconda3/etc/profile.d/conda.sh

# Activate conda environment
conda activate alpe

# Env vars
export MY_DIR=/u/najroldi/cluster_101/slurm/sweep

# Check if the number argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

# Saves number into a variable
job_idx=$1
echo "job_idx is $job_idx"

# Execute pyton script
python $MY_DIR/print_num.py $job_idx