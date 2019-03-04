var offset = argument0;
var blendWithOffset = offset + global.blendVal;
blendWithOffset = clamp(blendWithOffset, 0, 255);

image_blend = make_color_rgb(blendWithOffset, blendWithOffset, blendWithOffset);