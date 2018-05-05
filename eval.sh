#!/bin/bash

python ./eval.py --logtostderr \
    --pipeline_config_path=/home/daixinye/workspace/tf_febric_detector/ssd_mobilenet_v1_raccoon.config \
    --checkpoint_dir=/home/daixinye/workspace/tf_febric_detector/train \
    --eval_dir=/home/daixinye/workspace/tf_febric_detector/eval