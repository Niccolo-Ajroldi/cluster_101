
# cluster_101
Some minimal examples on how to submit job in a SLURM-based or CONDOR-based computing clusters.


## CONDOR
To find out which Machines have GPUs installed you can run:
```
condor_status -constraint 'PartitionableSlot && TotalGpus > 0' -af:h Machine TotalGPUs TotalCpus CUDADeviceName TotalMemory CUDAGlobalMemoryMb CUDACapability
```

### Interactive job
```
condor_submit_bid 25 -i
condor_submit_bid 25 -i -append request_cpus=2 -append request_memory=4096
condor_submit_bid 25 -i -append request_cpus=4 -append request_gpus=8 -append request_memory=4096
```

### Launch a job via submission fle
```
condor_submit_bid 25 hello_condor.sub
```

### Sweeps
```
condor_submit_bid 25 condor_sweep.sh
```
[A good example](https://services.ncl.ac.uk/media/sites/servicesites/itserviceold/communicationcollaborationandresearch/condor/Worked_Condor_Example_Simple_C_Add.pdf)
[Another example](https://research.cs.wisc.edu/htcondor/tutorials/intl-grid-school-3/submit_first.html)


## SLURM
Get infos about cluster nodes:
```
sinfo -o "%20N %10c %10m %20f %20G %10P"
sinfo -o "%20N %10c %10m %20f %20G %10P" | sort | uniq -c
```

### Interactive job
```
srun --partition=gpu --gres=gpu:1 --time=00:15:00 --cpus-per-task=4 --pty bash
```

### Launch a job via submission fle
```
sbatch hello_slurm.sh
```

### Sweeps
```
sbatch slurm_sweep.sh
```
[A good example](https://rcpedia.stanford.edu/topicGuides/jobArrayPythonExample.html)

# TODO:
- add a small training example
- add SLURM :white_check_mark:
- lighter conda env
- conda sourcing
- better path def/expansion
