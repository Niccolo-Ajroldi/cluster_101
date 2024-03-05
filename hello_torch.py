
import torch

def print_cuda_info():

    if not torch.cuda.is_available():
        print("CUDA is not available")
        return
    
    print("CUDA is available")
    num_gpus = torch.cuda.device_count()
    print("Number of GPUs:", num_gpus)

    #if torch.distributed.get_rank() == 0:
    #    for i in range(num_gpus):
    #        gpu_info = torch.cuda.get_device_properties(i)
    #        print(f"GPU {i}:")
    #        print(f"  Name: {gpu_info.name}")
    #        print(f"  CUDA Capability: {gpu_info.major}.{gpu_info.minor}")
    #        print(f"  Total Memory: {gpu_info.total_memory / (1024 ** 3):.2f} GB")
    #        print(f"  CUDA Cores: {gpu_info.multi_processor_count * 64}")

if __name__ == "__main__":
    # Print CUDA information
    print("=================")
    print_cuda_info()
    print("=================")