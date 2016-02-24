#! /bin/bash
shader="share/SARndbox-1.6/Shaders/Fluids/SurfaceAddWaterColor-"$1".fs"
if [ -e $shader ] ; then
	cp share/SARndbox-1.6/Shaders/Fluids/SurfaceAddWaterColor-Water.fs share/SARndbox-1.6/Shaders/SurfaceAddWaterColor.fs	echo "Water, Lava, ToxicWaste, Grayscale"
else
	echo "Fluid shader not found."
	echo "Valid fluid options are:"
	echo "Water, Lava, ToxicWaste, Grayscale"