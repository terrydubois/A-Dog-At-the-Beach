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
	if (keyboard_check_pressed(vk_space)) {
		
		state = stateInteracting;
		if (!instance_exists(obj_dialogue)) {
			var instDialogue = instance_create_layer(x, y, "InstancesDialogue", obj_dialogue);
			instDialogue.text[0] = "this is a piece of test dialogue heyyyyy more like diadog wait no i dont wanna kill dogs i freaking love those little woofers bark me up baby! please please please more testing";
			instDialogue.text[1] = "check it ooooout we got more text hot off the presses aayyy here it is we got the hottest fuckin fucko fucky text you've ever read";
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