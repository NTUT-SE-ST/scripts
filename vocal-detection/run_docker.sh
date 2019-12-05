#!/bin/bash
# Launch an experiment using the docker gpu image

cmd_line="$@"

echo "Executing in the docker (gpu image):"
echo $cmd_line

docker run --gpus all -it --rm --network host --ipc=host \
 --mount src=$(pwd),target=/root/code/,type=bind \
 ntutselab/vocal-detection:latest \
 bash -c "cd /root/code/ && $cmd_line"
