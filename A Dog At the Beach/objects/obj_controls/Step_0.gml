if (keyboard_check_released(vk_control)) {
	showControls = !showControls;
}

if (!instance_exists(obj_title) && !obj_char.introWalk && controlsAlpha < 1) {
	controlsAlpha += 0.01;
}

controlsAlpha = clamp(controlsAlpha, 0, 1);