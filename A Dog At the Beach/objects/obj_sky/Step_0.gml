mergeAmount = 1 - global.sunset;

mergeAmount = clamp(mergeAmount, 0, 1);

global.blendVal = 255 * global.sunset;
global.blendVal = clamp(global.blendVal, 0, 255);

y = obj_sun.y * 2;
y = clamp(y, obj_water.y, 999999);