var plusAlpha = 0.13;
if (global.sunset < 0.13) {
	plusAlpha = global.sunset;
}

x = obj_sun.x;

image_alpha = global.sunset + plusAlpha;
image_alpha = clamp(image_alpha, 0, 0.75);