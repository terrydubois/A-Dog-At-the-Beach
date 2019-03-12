if (flying) {
	facing = -1;
	hspeed = -5;
	//sprite_index = spr_gullFly;
	image_speed = 1;
	if (x <= camPos) {
		hspeed = 0;
		sprite_index = spr_dogIdol;
		camera_set_view_speed(view_camera[0], 500, 500);
		introWalk = false;
	}
}