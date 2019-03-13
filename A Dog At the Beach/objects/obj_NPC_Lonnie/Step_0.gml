if (obj_firepit.lit) {
	scr_fadeToBlack(50);
}
else {
	scr_fadeToBlack(0);
}



if (distance_to_object(obj_char) < 50) {
	if (state == stateNormal && textCycleDelay < 1 && !obj_char.carrying) {
		state = statePlayerNear;
	}
}
else {
	state = stateNormal;
}

if (!instance_exists(obj_stick)) {
	textCycleDelay = 0;
}



if (state == statePlayerNear) {
	if (keyboard_check_released(vk_space) and canSpace) {
		state = stateInteracting;
		if (!instance_exists(obj_dialogue) && !obj_char.carrying && !endTextCycle) {
			var instDialogue = instance_create_layer(x, y, "InstancesDialogue", obj_dialogue);
			
			if (!instance_exists(obj_stick)) {
				if (!obj_firepit.lit) {
					if (!endTextCycle) {
						instDialogue.text[0] = "Thanks for gathering all of that wood for us! We're gonna start the fire at sunset.";
						endTextCycle = true;
					}
				}
				else {
					if (!endTextCycle) {
						instDialogue.text[0] = "Thanks for gathering all of that wood for us! What a beautiful night for a bonfire, right?";
						endTextCycle = true;
					}
				}
			}
			else {
				switch (textCycle) {
					case 0:
						instDialogue.text[0] = "Hello! Me and Grant over there are trying to get a bonfire going. If you see any wood, would you mind bringing it to our firepit?";
						textCycle++;
						break;
					case 1:
						instDialogue.text[0] = "There's gotta be some wood on the beach. If you bring it to our firepit here, we can enjoy a little beach bonfire!";
						break;
					default:
						break;
				}
			}
			
			textCycleDelay = room_speed * 5;
		
		}
	}
}

if (state == stateInteracting) {
	if (!instance_exists(obj_dialogue)) {
		state = stateNormal;
	}
}

var textPlusYMax = 20;
if (distance_to_object(obj_char) < 10 && !place_free(x, y + 1)
&& (obj_hud.interactTextInst < 0 || obj_hud.interactTextInst == self.id) && textCycleDelay < 1) {
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

if (obj_hud.interactTextInst == self.id) {
	if (endTextCycle || textCycleDelay > 1) {
		obj_hud.interactTextInst = -1;
	}
}


if (instance_exists(obj_dialogue)) {
	canSpace = false;
}
if (keyboard_check_released(vk_space) and !instance_exists(obj_dialogue) and !canSpace) {
	canSpace = true;
}

if (textCycleDelay > 0 && instance_number(obj_dialogue) < 1) {
	textCycleDelay--;
}