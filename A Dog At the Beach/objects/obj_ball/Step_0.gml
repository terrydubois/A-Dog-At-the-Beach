/// @description Insert description here
// You can write your code in this editor

scr_fadeToBlack(0);

gravity = 0.25;
gravity_direction = 270;

if (interactable) {
	if (place_meeting(x + 3, y, obj_char) and obj_char.facing == -1) {
		hspeed = -2;
		vspeed = -obj_char.jumpSpeed;
	}
	else if (place_meeting(x - 3, y, obj_char) and obj_char.facing == 1) {
		hspeed = 2;
		vspeed = -obj_char.jumpSpeed;
	}
}

if (!place_free(x, y + 1)) {
	hspeed = scr_approach(hspeed, 0, abs(hspeed / 8));
}

if (x < 0) {
	hspeed = 5;
}
else if (x > room_width) {
	hspeed = -5;
}

if (x > xMax) {
	hspeed = 0;
}
else if (x < xMin) {
	hspeed = 0;
}