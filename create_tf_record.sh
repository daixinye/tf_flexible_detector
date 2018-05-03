#!/bin/bash

PATH="/home/workspace"
filename=$1

if [[ -r "$filename.txt" ]]; then
	python object_detection/dataset_tools/create_pascal_tf_record4raccoon.py \
		--data_dir=$PATH/images \
		--set=$PATH/$filename.txt \
		--output_path=$PATH/$filename.record \
		--label_map_path=$PATH/raccoon_label_map.pbtxt \
		--annotations_dir=$PATH/annotations
else
	if [[ $filename == '' ]]; then
		echo "Error: filename expected"
	else
		echo "Error: file $filename.txt not exist"
	fi
fi

