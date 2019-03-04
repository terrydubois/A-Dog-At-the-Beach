scr_fadeToBlack(50);

hspeed = 0.5;
image_alpha = 1 - global.sunset;

if (x > room_width + sprite_width) {
	x = -sprite_width;
}