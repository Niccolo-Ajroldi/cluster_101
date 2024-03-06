#!/bin/bash

# add conda TODO: make it more portable!
source ~/miniconda3/etc/profile.d/conda.sh

# Activate conda environment
conda activate alpe

# Env vars
export MY_DIR=~/cluster_101

# Execute python script
python "$MY_DIR/hello_torch.py"