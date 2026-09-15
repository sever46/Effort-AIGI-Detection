#!/bin/bash

set -o pipefail

mkdir -p logs
LOG="logs/train_log_$(date '+%Y%m%d_%H%M%S').txt"

python3 training/train.py \
    --detector_path ./training/config/detector/effort.yaml \
    --train_dataset FaceForensics++ \
    --test_dataset Celeb-DF-v2 DFDC DFDCP \
    | tee "$LOG"

