#!/bin/bash

root=~/workspace/tf_flexible_detector
index=$1

python ../py/export_inference_graph.py \
    --pipeline_config_path=$root/ssd_mobilenet_v1.config \
    --trained_checkpoint_prefix=$root/train/model.ckpt-$1 \
    --output_directory=$root/output