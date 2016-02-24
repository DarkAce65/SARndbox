#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NEW_FLUID=$DIR"/share/SARndbox-2.3/Shaders/Fluids/SurfaceAddWaterColor-"$1".fs"
SHADER=$DIR"/share/SARndbox-2.3/Shaders/SurfaceAddWaterColor.fs"
if [ -e $shader ] ; then
	cp $NEW_FLUID $SHADER
else
	echo "Fluid shader not found."
	echo "Valid fluid options are:"
	echo "Water, Lava, ToxicWaste, Grayscale"
fi
