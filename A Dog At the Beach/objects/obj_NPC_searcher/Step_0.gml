scr_fadeToBlack(0);

if (distance_to_object(obj_char) < 50) {
	if (state == stateNormal && !obj_char.carrying) {
		state = statePlayerNear;
	}
}
else {
	state = stateNormal;
}

if (state == stateInteracting) {
	if (!instance_exists(obj_dialogue)) {
		state = stateNormal;
	}
}

var textPlusYMax = 20;
var textPlusYDiff = abs(interactTextPlusY - textPlusYMax);

if (state == statePlayerNear) {
	if (keyboard_check_released(vk_space) && canSpace && obj_hud.interactDelay < 1) {
		state = stateInteracting;
		if (!instance_exists(obj_dialogue) && !obj_char.carrying && !endTextCycle) {
			var instDialogue = instance_create_layer(x, y, "InstancesDialogue", obj_dialogue);
			
			if (obj_locket.carriedSara) {
				if (!endTextCycle) {
					instDialogue.text[0] = "Thank you so much for finding my locket! It really means a lot to me.";
					endTextCycle = true;
				}
			}
			else {
				switch (textCycle) {
					case 0:
						instDialogue.text[0] = "Oh hey... I'm Sara. I'm searching for a special locket... I lost it in the sand!";
						instDialogue.text[1] = "I know it's here somewhere... let me know if you see anything!";
						textCycle++;
						break;
					case 1:
						instDialogue.text[0] = "I still haven't found my locket! Please let me know if it turns up.";
						break;
					default:
						break;
				}
			}
			
		}
	}
}



if (distance_to_object(obj_char) < 10 && !place_free(x, y + 1)
&& (obj_hud.interactTextInst < 0 || obj_hud.interactTextInst == self.id)) {
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















if (walking) {
	hspeed = image_xscale * 2;
}
else {
	hspeed = 0;
}

if (state == stateInteracting || instance_exists(obj_title)) {
	hspeed = 0;
}

if (x > room_width - (sprite_width / 2)) {
	image_xscale = -1;
	if (hspeed > 0) {
		hspeed = -hspeed;
	}
}
else if (x < - (sprite_width / 2)) {
	image_xscale = 1;
	if (hspeed < 0) {
		hspeed = -hspeed;
	}
}

if (hspeed == 0) {
	sprite_index = spr_dogIdol;
}
else {
	sprite_index = spr_dogWalk;
}