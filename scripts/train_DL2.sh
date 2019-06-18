#!/usr/bin/env bash

python3 "../train_cifar.py" \
  --tmp_data_dir="/tmp/prdarts/dataset/" \
  --save="/tmp/prdarts/train/" \
  --learning_rate=0.025 \
  --batch_size_min=32 \
  --epochs=600 \
  --auxiliary="true" \
  --batch_size_max=128 \
  --workers=4 \
  --batch_multiples=8 \
  --seed=0 \
  --arch=PR_DARTS_DL2 \
  --drop_path_prob=0.3 \
  --cutout=true \
  --cifar100=false \
  --init_channels=36 \
  --layers=20 \
  "$@"
