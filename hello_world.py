
import os
import torch

def print_cuda_info():

    if not torch.cuda.is_available():
        print("CUDA is not available")
        return
    
    print("CUDA is available")
    num_gpus = torch.cuda.device_count()
    print("Number of GPUs:", num_gpus)

    # Set environment variables
    os.environ['RANK'] = torch.distributed.get_rank()
    os.environ['WORLD_SIZE'] = str(num_gpus)
    os.environ['MASTER_ADDR'] = 'localhost'  # Address of the master node (can be changed if using distributed setup)
    os.environ['MASTER_PORT'] = '12345'  # Port number for communication (can be changed if needed)

    torch.distributed.init_process_group(backend="nccl")

    if torch.distributed.get_rank() == 0:
        for i in range(num_gpus):
            gpu_info = torch.cuda.get_device_properties(i)
            print(f"GPU {i}:")
            print(f"  Name: {gpu_info.name}")
            print(f"  CUDA Capability: {gpu_info.major}.{gpu_info.minor}")
            print(f"  Total Memory: {gpu_info.total_memory / (1024 ** 3):.2f} GB")
            print(f"  CUDA Cores: {gpu_info.multi_processor_count * 64}")

    # Check if Distributed Data Parallel (DDP) is available
    if torch.distributed.is_available():
        print("Distributed Data Parallel (DDP) is available.")
    else:
        print("Distributed Data Parallel (DDP) is not available.")
    
    torch.distributed.destroy_process_group()

if __name__ == "__main__":
    # Print CUDA information
    print("=================")
    print_cuda_info()
    print("=================")