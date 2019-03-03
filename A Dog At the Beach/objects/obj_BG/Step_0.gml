mergeAmount += 0.0004;

mergeAmount = clamp(mergeAmount, 0, 1);

global.blendVal -= 0.02;
global.blendVal = clamp(global.blendVal, 0, 255);