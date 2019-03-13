scr_fadeToBlack(60);

gravity = 0.5;
gravity_direction = 270;

if (dugUp) {
	if (yOffset > 0) {
		yOffset--;
	}
	else {
		yOffset = 0;
	}
	
	var textPlusYMax = 20;
	if (distance_to_object(obj_char) < 10 && !place_free(x, y + 1) && !instance_exists(obj_dialogue)
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
	interactTextPlusY = clamp(interactTextPlusY, 0, textPlusYMax);
}

if (!dugUp && dugUpAmount <= 0) {
	vspeed = -10;
	dugUp = true;
	xOffset = 0;
	yOffset = 32;
}

if (carried || carriedSara) {
	var xDest;
	var yDest;
	
	if (carriedSara) {
		obj_musicControl.trackVolumeDest[1] = 1;
		
		var facing = 1;
		if (obj_NPC_searcher.image_xscale < 0) {
			facing = -1;
		}
		xDest = obj_NPC_searcher.x + (facing * 27);
		yDest = obj_NPC_searcher.y - 30;
	}
	else {
		xDest = obj_char.x + (obj_char.facing * 27);
		yDest = obj_char.y - 30;
	}
	x = xDest;
	y = yDest;
	gravity = 0;
	
	image_angle = 0;
	
	if (!keyboard_check(vk_space) && !carriedSara) {
		obj_char.carrying = false;
		carried = false;
		obj_hud.interactDelay = 30;
	}
}
else {
	image_angle = 90;
	
	if (dugUp && distance_to_object(obj_NPC_searcher) < 16) {
		carriedSara = true;
	}
}