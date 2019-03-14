if (keyboard_check_released(vk_control)) {
	showControls = !showControls;
}

if (instance_exists(obj_char)) {
	if (!instance_exists(obj_title) && !obj_char.introWalk && !instance_exists(obj_dialogue) && controlsAlpha < 1) {
		controlsAlpha += 0.01;
	}
}
else {
	controlsAlpha = 0;
}

controlsAlpha = clamp(controlsAlpha, 0, 1);