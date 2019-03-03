mergeAmount = 1 - global.sunset;

mergeAmount = clamp(mergeAmount, 0, 1);

global.blendVal = 255 * global.sunset;
global.blendVal = clamp(global.blendVal, 0, 255);