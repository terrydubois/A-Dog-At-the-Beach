scr_fadeToBlack(0);

if (distance_to_object(obj_char) < 50) {
	if (state == stateNormal && textCycleDelay < 1 && !obj_char.carrying) {
		state = statePlayerNear;
	}
}
else {
	state = stateNormal;
}

var allShellsFound = true;
if (instance_exists(obj_seashell)) {
	for (var i = 0; i < instance_number(obj_seashell); i++) {
		var currentShell = instance_find(obj_seashell, i);
		if (distance_to_object(currentShell) > 50 || obj_char.carrying) {
			allShellsFound = false;
		}
	}
}

if (allShellsFound) {
	with (obj_seashell) {
		instance_destroy();
	}
	
	textCycleDelay = 0;
	obj_musicControl.trackVolumeDest[3] = 1;
	
	if (obj_castle.y > obj_sand.y + 5) {
		obj_castle.y -= random_range(0.5, 2);
		obj_castle.x = obj_castle.xstart + random_range(-2, 2);
	}
	else {
		obj_castle.x = obj_castle.xstart;
		obj_castle.y = obj_sand.y + 5;
	}
}


if (state == statePlayerNear) {
	if (keyboard_check_released(vk_space) and canSpace) {
		state = stateInteracting;
		if (!instance_exists(obj_dialogue) && !obj_char.carrying && !endTextCycle) {
			var instDialogue = instance_create_layer(x, y, "InstancesDialogue", obj_dialogue);
			
			if (allShellsFound) {
				if (!endTextCycle) {
					instDialogue.text[0] = "Ahhh can you believe it? My artwork is complete! Thank you for your help... not bad for a tourist!";
					endTextCycle = true;
				}
			}
			else {
				switch (textCycle) {
					case 0:
						instDialogue.text[0] = "Hey there kid. Name's Harry. First time at the beach eh?";
						instDialogue.text[1] = "This here is Light Bridge Beach. Why don't you go explore and then come back here in a second... I might have a job for ya.";
						textCycle++;
						break;
					case 1:
						instDialogue.text[0] = "The tide's been bringin' in some beautiful shells lately. Try finding them and digging them up by holding Z!";
						instDialogue.text[1] = "Bring those seashells to me once you find them. I need them for an art piece I'm workin' on!";
						textCycle++;
						break;
					case 2:
						instDialogue.text[0] = "I'm still looking those seashells kid... Bring 'em over to me if you can. And don't forget you can dig by holding Z!";
						break;
					default:
						break;
				}
			}
			
			textCycleDelay = room_speed * 30;
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