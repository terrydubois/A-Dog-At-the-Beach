colorBegin[0] = make_color_hsv(122, 253, 217);
colorBegin[1] = make_color_hsv(170, 150, 217);

colorMid[0] = make_color_hsv(118, 253, 217);
colorMid[1] = make_color_hsv(215, 150, 217);

mergeAmount = 0;

global.blendVal = 255;


refl_start("WaterReflect", false);			//Starts the reflection in layer "Refl_layer" with camera enabled.

refl_water_object(obj_water);			//Adds obj_puddle as a water object.

refl_add_object(obj_sun, 10);