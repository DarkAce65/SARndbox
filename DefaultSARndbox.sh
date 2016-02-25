#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" # Get shell directory

# Ensure that an empty pipe will be available
$PIPE_PATH=$DIR"/Control.fifo"
if [ -e $PIPE_PATH ]
	then
		rm $PIPE_PATH
fi
mkfifo $PIPE_PATH

# Initialize with water
SHADER_PATH=$DIR"share/SARndbox-1.6/Shaders"
cp $SHADER_PATH"/Fluids/SurfaceAddWaterColor-Water.fs" $SHADER_PATH"/SurfaceAddWaterColor.fs"

# Keep a terminal open with SARndbox running
xfce4-terminal --hold --working-directory $DIR --command "./bin/SARndbox -fpv -ws 4.0 30 -rs 1.0 -cp Control.fifo"