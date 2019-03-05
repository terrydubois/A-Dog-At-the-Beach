scr_fadeToBlack(0);

if (distance_to_object(obj_char) < 50) {
	if (state == stateNormal) {
		state = statePlayerNear;
	}
}
else {
	state = stateNormal;
}


if (state == statePlayerNear) {
	if (keyboard_check_released(vk_space) and canSpace) {
		state = stateInteracting;
		if (!instance_exists(obj_dialogue)) {
			var instDialogue = instance_create_layer(x, y, "InstancesDialogue", obj_dialogue);
			instDialogue.text[0] = "Bark! Bark bark bark, bark bark bark bark bark!";
			instDialogue.text[1] = "Bark bark bark... Bark?";
		}
	}
}

if (state == stateInteracting) {
	if (!instance_exists(obj_dialogue)) {
		state = stateNormal;
	}
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