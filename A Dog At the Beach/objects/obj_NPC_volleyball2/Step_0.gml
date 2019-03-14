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


if (state == statePlayerNear && !endTextCycle) {
	if (keyboard_check_released(vk_space) and canSpace) {
		state = stateInteracting;
		if (!instance_exists(obj_dialogue) && !obj_char.carrying) {
			var instDialogue = instance_create_layer(x, y, "InstancesDialogue", obj_dialogue);
			instDialogue.text[0] = "Hello!! I'm Astley. That's my friend Rick!";
			instDialogue.text[1] = "Do you like volleyball? Here, swap in for me!";
			endTextCycle = true;
		}
	}
}

if (instance_exists(obj_ball)) {
	if (obj_ball.interactable) {
		endTextCycle = true;
	}
}

if (state == stateInteracting) {
	if (!instance_exists(obj_dialogue)) {
		state = stateWalkAway;
	}
}

if (state == stateWalkAway) {
	if (x < walkAwayXPos) {
		if (!place_free(x, y + 1)) {
			vspeed = -obj_char.jumpSpeed;
		}
		hspeed = 3;
		sprite_index = spr_dogIdol3;
		image_xscale = 1;
	}
	else {
		x = walkAwayXPos;
		sprite_index = spr_dogIdol3;
		image_xscale = -1;
		hspeed = 0;
		instVolleyballBall.interactable = true;
	}
}

if (place_free(x, y + 1)) {
	image_speed = 0;
	sprite_index = spr_dogJump3;
	if (vspeed < 0) {
		image_index = 0;
	}
	else {
		image_index = 1;
	}
}
else {
	if (abs(hspeed) < 1) {
		sprite_index = spr_dogIdol3;
	}
	else {
		sprite_index = spr_dogIdol3;
	}
	image_speed = 1;
}


var textPlusYMax = 20;
if (distance_to_object(obj_char) < 10 && !place_free(x, y + 1)
&& (obj_hud.interactTextInst < 0 || obj_hud.interactTextInst == self.id) && !endTextCycle) {
	interactTextPlusY += abs(textPlusYMax - interactTextPlusY) / 6;
	obj_hud.interactTextInst = self.id;
}
else {
	interactTextPlusY = 0;
	if (obj_hud.interactTextInst == self.id) {
		obj_hud.interactTextInst = -1;
	}
}
interactTextPlusY = clamp(interactTextPlusY, 0, textPlusYMax);


if (endTextCycle && obj_hud.interactTextInst == self.id) {
	obj_hud.interactTextInst = -1;
}


if (instance_exists(obj_dialogue)) {
	canSpace = false;
}
if (keyboard_check_released(vk_space) and !instance_exists(obj_dialogue) and !canSpace) {
	canSpace = true;
}