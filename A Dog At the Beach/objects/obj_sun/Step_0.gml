x = room_width / 2;

if (keyboard_check(ord("W")) and y > -sprite_height / 2) {
	y -= 4;
}
if (keyboard_check(ord("S")) and y < obj_water.y + sprite_height) {
	y += 4; 
}

global.sunset = y / (obj_water.y + 50);
global.sunset = 1 - global.sunset;
global.sunset = clamp(global.sunset, 0, 1);