scr_fadeToBlack(0);

if (!instance_exists(obj_dialogue) && !instance_exists(obj_title) && !introWalk) {
	if (keyboard_check(vk_left) && !keyboard_check(ord("Z")) && !keyboard_check(ord("X"))) {
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
	if (keyboard_check(vk_right) && !keyboard_check(ord("Z")) && !keyboard_check(ord("X"))) {
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

if(!keyboard_check(vk_left) && !keyboard_check(vk_right) && !introWalk) {
	hspeed = scr_approach(hspeed, 0, deAcc);
	if (!keyboard_check(ord("Z")) && !keyboard_check(ord("X"))) {
		sprite_index = spr_dogIdol;
	}
}

if (keyboard_check(ord("Z")) && !keyboard_check(ord("X")) && !place_free(x, y + 1)
&& !instance_exists(obj_dialogue) && !instance_exists(obj_title) && !introWalk) {
	sprite_index = spr_dogDig;
	hspeed = scr_approach(hspeed, 0, deAcc);
	instance_create_layer(x + (facing * (sprite_width / 3)), y, "InstancesForeground", obj_sandParticle);
}

if (keyboard_check(ord("X")) && !keyboard_check(ord("Z")) && !place_free(x, y + 1)
&& !instance_exists(obj_dialogue) && !instance_exists(obj_title) && !introWalk && canKick) {
	if (kickTime < 1) {
		canKick = false;
		kickTime = 10;
		hspeed = scr_approach(hspeed, 0, deAcc);
		//instance_create_layer(x + (facing * (sprite_width / 3)), y, "InstancesForeground", obj_sandParticle);
	}
}

if keyboard_check_released(ord("X")) {
	canKick = true;
}

if (!introWalk) {
	if (place_free(x, y + 1)) {
		image_speed = 0;
		sprite_index = spr_dogJump;
		if (vspeed < 0) {
			image_index = 0;
		}
		else {
			image_index = 1;
		}
	}
	else {
		image_speed = 1;
		
		if (kickTime > 0) {
			sprite_index = spr_dogKick;
		}
		else {
			sprite_index = spr_dogIdol;
		}
	}
}

if (kickTime > 0) {
	kickTime--;
}
else {
	kickTime = 0;
}


if (tailClockwise) {
	tailRot++;
}
else {
	tailRot--;
}

gravity = 0.5;
gravity_direction = 270;

if (instance_exists(obj_dialogue) && !place_free(x, y + 1) && !introWalk) {
	sprite_index = spr_dogIdol;
}

if (introWalk) {
	facing = -1;
	hspeed = -4;
	sprite_index = spr_dogWalk;
	image_speed = 1;
	var camPos = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
	if (x <= camPos) {
		hspeed = 0;
		sprite_index = spr_dogIdol;
		camera_set_view_speed(view_camera[0], 500, 500);
		introWalk = false;
	}
}



//tailRot++;';