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

//tailRot++;