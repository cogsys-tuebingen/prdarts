#!/usr/bin/env bash

python3 "../train_search.py" \
  --tmp_data_dir="/tmp/prdarts/dataset/" \
  --save="/tmp/prdarts/search/" \
  --batch_size_min=24 \
  --num_morphs="3,   3,   3,   3,   3,   0,   0,   0,   0" \
  --grace_epochs="5,   5,   3,   3,   3,   3,   3,   3,   3" \
  --num_to_keep="6,   6,   6,   6,   6,   4,   3,   2,   1" \
  --epochs="15,  15,  10,  10,  10,  10,  10,  10,  10" \
  --try_load="true" \
  --report_freq=50 \
  --test="false" \
  --batch_multiples=8 \
  --batch_size_max=128 \
  --primitives=prdarts4 \
  --dropout_rate="0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0" \
  --add_layers="3,   3,   3,   3,   3,   3,   3,   3,   3" \
  --init_channels=16 \
  --add_width="0,   0,   0,   0,   0,   0,   0,   0,   0" \
  --seed=0 \
  --morph_restrictions=darts_like \
  --learning_rate_min=0.01 \
  "$@"
