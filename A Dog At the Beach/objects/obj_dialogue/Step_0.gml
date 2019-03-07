if (typePos >= string_length(text[currentText])) {

	if (keyboard_check_pressed(vk_space) and canSpace) {
		
		if (currentText < array_length_1d(text) - 1) {
			currentText++;
			typeString = "";
			typePos = 1;
			typeLinePos = 0;
			alarm[0] = typeRate;
		}
		else {
			instance_destroy();
		}

	}
	
	typeRate = 2;
	pressSpaceText = "Press SPACE";
}
else {
	if (keyboard_check(vk_space)) {
		typeRate = 1;
		canSpace = false;
	}
	else {
		typeRate = 2;
	}
	pressSpaceText = "";
}

if (keyboard_check_released(vk_space) and !canSpace) {
	canSpace = true;
}