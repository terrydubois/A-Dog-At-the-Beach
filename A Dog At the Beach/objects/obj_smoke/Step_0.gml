gravity = 0.2;
gravity_direction = 90;

image_alpha -= 0.015;

if (y < -sprite_height || x > room_width + sprite_width || image_alpha <= 0) {
	instance_destroy();
}