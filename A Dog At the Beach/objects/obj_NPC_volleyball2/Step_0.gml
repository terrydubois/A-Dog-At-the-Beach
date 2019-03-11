scr_fadeToBlack(0);

gravity = 0.5;
gravity_direction = 270;

//if (state == stateNormal || state == statePlayerNear) {
	if (distance_to_object(obj_ball) < 15 && !place_free(x, y + 1)) {
		vspeed = -obj_char.jumpSpeed;
	}
//}







if (distance_to_object(obj_char) < 50) {
	if (state == stateNormal && !obj_char.carrying) {
		state = statePlayerNear;
	}
}
else {
	if (state != stateWalkAway) {
		state = stateNormal;
	}
}


if (state == statePlayerNear) {
	if (keyboard_check_released(vk_space) and canSpace) {
		state = stateInteracting;
		if (!instance_exists(obj_dialogue) && !obj_char.carrying) {
			var instDialogue = instance_create_layer(x, y, "InstancesDialogue", obj_dialogue);
			instDialogue.text[0] = "Hello!! I'm Astley. That's my friend Rick!";
			instDialogue.text[1] = "Do you like volleyball? Here, swap in for me!";
		}
	}
}

if (state == stateInteracting) {
	if (!instance_exists(obj_dialogue)) {
		state = stateWalkAway;
	}
}

if (state == stateWalkAway) {
	if (x < walkAwayXPos) {
		hspeed = 3;
		sprite_index = spr_dogWalk;
		image_xscale = 1;
	}
	else {
		x = walkAwayXPos;
		sprite_index = spr_dogIdol;
		image_xscale = -1;
		hspeed = 0;
		instVolleyballBall.interactable = true;
	}
}

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
	if (abs(hspeed) < 1) {
		sprite_index = spr_dogIdol;
	}
	else {
		sprite_index = spr_dogWalk;
	}
	image_speed = 1;
}



var textPlusYMax = 20;
if (state == statePlayerNear) {
	interactTextPlusY += abs(textPlusYMax - interactTextPlusY) / 6;
}
else {
	interactTextPlusY = 0;
}
interactTextPlusY = clamp(interactTextPlusY, 0, textPlusYMax);

if (instance_exists(obj_dialogue)) {
	canSpace = false;
}
if (keyboard_check_released(vk_space) and !instance_exists(obj_dialogue) and !canSpace) {
	canSpace = true;
}