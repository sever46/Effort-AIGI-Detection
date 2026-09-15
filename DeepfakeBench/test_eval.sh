#!/bin/bash

WEIGHTS="/ramdisk/ckpt_best.pth"

set -o pipefail

mkdir -p logs
LOG="logs/test32_log_$(date '+%Y%m%d_%H%M%S').txt"

python3 training/test.py \
    --detector_path ./training/config/detector/effort_test32.yaml \
    --test_dataset Celeb-DF-v2 DFDC DFDCP \
    --weights_path "$WEIGHTS" \
    | tee "$LOG"


