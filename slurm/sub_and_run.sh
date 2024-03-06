#!/bin/bash

#SBATCH --job-name=hello_slurm
#SBATCH --time=00:05:00
#SBATCH --requeue

## Logs
#SBATCH --error=/u/najroldi/cluster_101/slurm/log/%x_%j.err
#SBATCH --output=/u/najroldi/cluster_101/slurm/log/%x_%j.out

## Each job will run 1 task
#SBATCH --ntasks 1

## Compute requests
#SBATCH --cpus-per-task=1
#SBATCH --mem=1000

# add conda TODO: make it more portable!
source ~/miniconda3/etc/profile.d/conda.sh

# Activate conda environment
conda activate alpe

# Env vars
export MY_DIR=~/cluster_101

# or directly execute a python script
python ~/cluster_101/hello_torch.py