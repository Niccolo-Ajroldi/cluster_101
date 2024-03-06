#!/bin/bash

# add conda TODO: make it portable!
source ~/miniconda3/etc/profile.d/conda.sh

# Activate conda environment
conda activate alpe

# Env vars
export MY_DIR=/home/najroldi/cluster_101
export CUDA_VISIBLE_DEVICES=0,1
export OMP_NUM_THREAD=4

# Print GPUs info
nvidia-smi

# Execute distributed python script
num_gpu=2
torchrun --nproc_per_node=$num_gpu \
    "$MY_DIR/hello_torch.py"