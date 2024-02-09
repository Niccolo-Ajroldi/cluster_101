#!/bin/bash

# Activate Conda environment
source activate alpe

# Make kraken available here
source ~/kraken/useful_shell_aliases.sh

# Enable alias expansion 
# (necessary to be able to use useful_shell_aliases here,
# e.g.s when running the script as an executable with "./launch_with_kraken.sh")
shopt -s expand_aliases

# Launch jobs with kraken
# use explicit absolute paths here!
# ~/.. $HOME/.. are not supported in the launch call
launch /home/najroldi/prove/kraken/hello_kraken.sh \
    --name hello_kraken \
    --bid 25 \
    --gpus 0 \
    --cpus 1
