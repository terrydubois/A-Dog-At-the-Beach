if (lit) {
	scr_fadeToBlack(255);
	
	if (random(10) > 4) {
		var smokeX = x + random_range(-13, 13);
		var smokeY = obj_firelight.y + random_range(-5, 5);
		instance_create_layer(smokeX, smokeY, "InstancesWaterReflect", obj_smoke);
	}
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