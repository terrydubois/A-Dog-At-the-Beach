scr_fadeToBlack();

if (!instance_exists(obj_dialogue)) {
	if (keyboard_check(vk_left)) {
		hspeed = -4;
		facing = -1;
		sprite_index = spr_dogWalk;
	}
	if (keyboard_check(vk_right)) {
		hspeed = 4;
		facing = 1;
		sprite_index = spr_dogWalk;
	}
}
else {
	hspeed = 0;
}

if(!keyboard_check(vk_left) && !keyboard_check(vk_right)) {
	hspeed = scr_approach(hspeed, 0, deAcc);	
	sprite_index = spr_dogIdol;
}

gravity = 0.5;
gravity_direction = 270;

if (keyboard_check_pressed(vk_up) && !place_free(x, y + 1)) {
	vspeed = -12;
}

//tailRot++;