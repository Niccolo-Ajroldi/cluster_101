
# CONDOR
To find out which Machines have GPUs installed you can run:
```
condor_status -constraint 'PartitionableSlot && TotalGpus > 0' -af:h Machine TotalGPUs TotalCpus CUDADeviceName TotalMemory CUDAGlobalMemoryMb CUDACapability
```

### Interactive jobs:
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
[A good example](https://research.cs.wisc.edu/htcondor/tutorials/intl-grid-school-3/submit_first.html)

# TODO:
- better hello_torch
- add a small training example
