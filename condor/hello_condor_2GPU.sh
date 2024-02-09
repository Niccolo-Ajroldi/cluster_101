#!/bin/bash

# add conda TODO: make it more portable!
source ~/miniconda3/etc/profile.d/conda.sh

# Activate conda environment TODO: should I use source activate alpe instead?
conda activate alpe

# Env vars
export HOME=/home/najroldi

# Execute pyton script
python -m torch.distributed.launch --nproc_per_node=2 $HOME/prove/hello_world.py 
# try with torchrun