
import torch

def print_cuda_info():

    if not torch.cuda.is_available():
        print("CUDA is not available")
        return
    
    print("CUDA is available")
    num_gpus = torch.cuda.device_count()
    print("Number of GPUs:", num_gpus)
    
if __name__ == "__main__":
    # Print CUDA information
    print_cuda_info()
