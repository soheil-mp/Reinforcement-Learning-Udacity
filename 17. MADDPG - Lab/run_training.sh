#!/bin/bash

# run training with rendering enabled
# also performs cleanup
./clean.sh
python main.py
echo "also gif files are saved in model_dir/*.gif"
echo "execute ./run_tensorboard.sh to view results"
