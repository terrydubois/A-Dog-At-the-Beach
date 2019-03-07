x = (room_width / 2) - (((room_width / 2) - camera_get_view_x(view_camera[0])) / 4);

if (keyboard_check(ord("W")) and y > -sprite_height / 2) {
	y -= 2;
}
if (keyboard_check(ord("S")) and y < obj_water.y + sprite_height) {
	y += 2; 
}

if (keyboard_check_pressed(ord("Q"))) {
	sunsetAuto = !sunsetAuto;
}
if (sunsetAuto) {
	y += 0.02;
}
y = clamp(y, -(sprite_height / 2), (obj_water.y + sprite_height));

global.sunset = y / (obj_water.y + 50);
global.sunset = 1 - global.sunset;
global.sunset = clamp(global.sunset, 0, 1);