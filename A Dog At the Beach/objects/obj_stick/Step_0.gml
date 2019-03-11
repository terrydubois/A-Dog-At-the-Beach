scr_fadeToBlack(0);

gravity = 0.5;
gravity_direction = 270;

	
	var textPlusYMax = 20;
	if (distance_to_object(obj_char) < 10 && !place_free(x, y + 1)) {
		interactTextPlusY += abs(textPlusYMax - interactTextPlusY) / 6;
	}
	else {
		interactTextPlusY = 0;
	}
	interactTextPlusY = clamp(interactTextPlusY, 0, textPlusYMax);


if (carried) {
	var xDest = obj_char.x + (obj_char.facing * 27);
	var yDest = obj_char.y - 30;
	x = xDest;
	y = yDest;
	gravity = 0;
	
	if (!keyboard_check(vk_space)) {
		obj_char.carrying = false;
		carried = false;
	}
}
