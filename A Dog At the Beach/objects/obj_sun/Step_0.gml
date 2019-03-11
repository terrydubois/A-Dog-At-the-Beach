x = (room_width / 2) - (((room_width / 2) - camera_get_view_x(view_camera[0])) / 4);

if (keyboard_check(ord("W")) && y > -sprite_height / 2 && obj_hud.showDevVars) {
	y -= 2;
}
if (keyboard_check(ord("S")) && y < obj_water.y + sprite_height && obj_hud.showDevVars) {
	y += 2; 
}

if (keyboard_check_pressed(ord("Q")) && obj_hud.showDevVars) {
	sunsetAuto = !sunsetAuto;
}
if (sunsetAuto && !instance_exists(obj_title)) {
	y += 0.02;
}
y = clamp(y, -(sprite_height / 2), (obj_water.y + sprite_height));

global.sunset = y / (obj_water.y + 50);
global.sunset = 1 - global.sunset;
global.sunset = clamp(global.sunset, 0, 1);