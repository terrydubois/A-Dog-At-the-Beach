scr_fadeToBlack(60);

gravity = 0.5;
gravity_direction = 270;

var textPlusYMax = 20;

if (dugUp) {
	if (yOffset > 0) {
		yOffset--;
	}
	else {
		yOffset = 0;
	}
	
	if (distance_to_object(obj_char) < 10 && !place_free(x, y + 1)
	&& (obj_hud.interactTextInst < 0 || obj_hud.interactTextInst == self.id)) {
		interactTextPlusY += abs(textPlusYMax - interactTextPlusY) / 6;
		obj_hud.interactTextInst = self.id;
	}
	else {
		interactTextPlusY = 0;
		if (obj_hud.interactTextInst == self.id) {
			obj_hud.interactTextInst = -1;
		}
	}
}

interactTextPlusY = clamp(interactTextPlusY, 0, textPlusYMax);

if (!dugUp && dugUpAmount <= 0) {
	vspeed = -10;
	dugUp = true;
	xOffset = 0;
	yOffset = 32;
}

if (carried) {
	var xDest = obj_char.x + (obj_char.facing * 27);
	var yDest = obj_char.y - 30;
	x = xDest;
	y = yDest;
	gravity = 0;
	
	if (!keyboard_check(vk_space)) {
		obj_char.carrying = false;
		carried = false;
		obj_hud.interactDelay = 30;
	}
}
