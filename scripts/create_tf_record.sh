#!/bin/bash

path=~/workspace/tf_febric_detector
filename=$1

if [ -r "$path/$filename.txt" ]; then
	python $path/py/create_pascal_tf_record4raccoon.py \
		--data_dir=$path/images \
		--set=$path/$filename.txt \
		--output_path=$path/$filename.record \
		--label_map_path=$path/raccoon_label_map.pbtxt \
		--annotations_dir=$path/annotations
else
	if [ $filename == '' ]; then
		echo "Error: filename expected"
	else
		echo "Error: file $filename.txt not exist"
	fi
fi

