if (keyboard_check(vk_left)) {
	x -= 4;
	facing = -1;
}
if (keyboard_check(vk_right)) {
	x += 4;
	facing = 1;
}