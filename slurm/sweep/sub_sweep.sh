#!/bin/bash

#SBATCH --job-name=sweep
#SBATCH --time=00:05:00
#SBATCH --requeue

## Job array
#SBATCH --array=1-2

## Different log name: %A_%a instead of %j
#SBATCH --error=~/cluster_101/slurm/log/%x_%A_%a.err
#SBATCH --output=~/cluster_101/slurm/log/%x_%A_%a.err

## Each job will run 1 task
#SBATCH --ntasks 1

## Compute requests
#SBATCH --cpus-per-task=1
#SBATCH --mem=1000

job_index=$SLURM_ARRAY_TASK_ID
n_jobs=$SLURM_ARRAY_TASK_MAX

export OMP_NUM_THREADS=${SLURM_CPUS_PER_TASK}

# Run executable via srun
srun ~/cluster_101/slurm/run.sh $job_index