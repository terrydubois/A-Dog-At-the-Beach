scr_fadeToBlack(0);

if (distance_to_object(obj_char) < 50) {
	if (state == stateNormal && textCycleDelay < 1) {
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
			
			switch (textCycle) {
				case 0:
					instDialogue.text[0] = "Hey there kid. Name's Harry. First time at the beach eh?";
					instDialogue.text[1] = "This here is Light Bridge Beach. Got the most pretty sunsets you've ever seen. Why don't you try looking 'round?";
					textCycle++;
					break;
				case 1:
					instDialogue.text[0] = "The tide's been bringin' in some beautiful shells lately. I don't know where they are though... Try digging by pressing Z.";
					instDialogue.text[1] = "Those shells ain't for keepin' though! More of a catch-and-release.";
					textCycle++;
					break;
				case 2:
					instDialogue.text[0] = "You came on the right day, that's for sure. Then again, it's rare to catch a bad day here at Light Bridge.";
					instDialogue.text[1] = "I got a lot of memories attached to this place. Good times, good times...";
					textCycle++;
					break;
				case 3:
					instDialogue.text[0] = "So where do you hail from anyway? I was talkin' to a Lab yesterday... her family drove over 200 miles to visit!";
					instDialogue.text[1] = "I'm a local, myself. These parts bring folks from all over. You hear a lot of stories.";
					textCycle = 0;
					break;
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


if (textCycleDelay > 0 && instance_number(obj_dialogue) < 1) {
	textCycleDelay--;
}