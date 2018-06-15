#!/bin/bash
root=~/workspace/tf_flexible_detector
config_name="ssd_mobilenet_v1.config"
train_dir="train"

python ../py/train.py --logtostderr \
    --pipeline_config_path=$root/$config_name \
    --train_dir=$root/$train_dir