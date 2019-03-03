
if (keyboard_check(vk_left)) {
	
	hspeed = -4;
}
if (keyboard_check(vk_right)) {

	hspeed = 4;
}

if(!keyboard_check(vk_left) && !keyboard_check(vk_right)) {
	hspeed = scr_approach(hspeed, 0, deacc);
}
