//scr_fadeToBlack(100);

image_alpha = global.sunset + 0.25;
image_alpha = clamp(image_alpha, 0, 1);

hspeed = 0.25;

if (x > room_width + sprite_width) {
	instance_destroy();
}