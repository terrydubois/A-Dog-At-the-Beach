if (keyboard_check_pressed(vk_space)) {
	if (typeString == text[currentText]) {
		if (currentText < array_length_1d(text)) {
			currentText++;
		}
	}
}