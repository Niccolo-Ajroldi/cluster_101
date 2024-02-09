#!/bin/bash

# add conda TODO: make it more portable!
source ~/miniconda3/etc/profile.d/conda.sh

# Activate conda environment TODO: should I use source activate alpe instead?
conda activate alpe

# Env vars
export HOME=/home/najroldi
export CUDA_VISIBLE_DEVICES=0,1

# Execute pyton script
torchrun --nproc_per_node=2 $HOME/prove/hello_torch.py 