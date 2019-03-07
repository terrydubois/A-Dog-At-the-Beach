scr_fadeToBlack(0);

if (!instance_exists(obj_dialogue)) {
	if (keyboard_check(vk_left)) {
		if (x > sprite_width / 2) {
			hspeed = -4;
			facing = -1;
			sprite_index = spr_dogWalk;
		}
		else {
			hspeed = 0;
			facing = -1;
			sprite_index = spr_dogIdol;
		}
	}
	if (keyboard_check(vk_right)) {
		if (x < room_width - (sprite_width / 2)) {
			hspeed = 4;
			facing = 1;
			sprite_index = spr_dogWalk;
		}
		else {
			hspeed = 0;
			facing = 1;
			sprite_index = spr_dogIdol;
		}
	}
	
	if (keyboard_check_pressed(vk_up) && !place_free(x, y + 1)) {
		vspeed = -jumpSpeed;
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

//tailRot++;