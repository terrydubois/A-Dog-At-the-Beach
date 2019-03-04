scr_fadeToBlack(50);

hspeed = 0.5;
image_alpha = 1 - global.sunset;
image_alpha = clamp(image_alpha, 0.3, 1);

if (x > room_width + sprite_width) {
	x = -sprite_width;
}