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

# Run executable via srun
srun ~/cluster_101/slurm/run.sh

## or directly execute a python script
# python ~/cluster_101/hello_torch.py
# torchnrun ~/cluster_101/hello_torch.py