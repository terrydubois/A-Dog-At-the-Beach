if (typeString == text[currentText]) {

	if (keyboard_check_pressed(vk_space)) {

		
		if (currentText < array_length_1d(text)) {
			currentText++;
			typeString = "";
		}
		else {
			instance_destroy();
		}

	}

}