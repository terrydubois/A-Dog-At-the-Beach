if (typePos >= string_length(text[currentText])) {

	if (keyboard_check_released(vk_space)) {
		
		if (currentText < array_length_1d(text) - 1) {
			currentText++;
			typeString = "";
			typePos = 1;
			alarm[0] = typeRate;
		}
		else {
			instance_destroy();
		}

	}

}