if (lit) {
	scr_fadeToBlack(255);
}
else {
	scr_fadeToBlack(0);
}

if (!instance_exists(obj_stick) && !lit && global.sunset <= 0.27) {
	lit = true;
}

if (lit) {
	sprite_index = spr_firepitLit;
	image_speed = 0.75;
}