#!/bin/bash

python ./export_inference_graph.py \
    --pipeline_config_path=/home/daixinye/workspace/tf_febric_detector/ssd_mobilenet_v1_raccoon.config \
    --trained_checkpoint_prefix=/home/daixinye/workspace/tf_febric_detector/train/model.ckpt-6352 \
    --output_directory=/home/daixinye/workspace/tf_febric_detector/train