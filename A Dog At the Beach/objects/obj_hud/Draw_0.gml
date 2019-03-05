// draw debug variables
draw_set_font(fnt_debug);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
var debugTextX = camera_get_view_x(view_camera[0]) + 20;

if (showDevVars) {
	draw_text(debugTextX, 20, "global.sunset = " + string(global.sunset));
	draw_text(debugTextX, 40, "obj_sun.sunsetAuto = " + string(obj_sun.sunsetAuto));
	draw_text(debugTextX, 60, "audio_system_is_available() = " + string(audio_system_is_available()));
	draw_text(debugTextX, 80, "obj_sun.y = " + string(obj_sun.y));
	draw_text(debugTextX, 100, "obj_sky.y = " + string(obj_sky.y));
	draw_text(debugTextX, 120, "obj_sky.stars = " + string(obj_sky.stars));
	draw_text(debugTextX, 140, "instance_number(obj_star) = " + string(instance_number(obj_star)));
}
else {
	draw_text(debugTextX, 20, "press SHIFT for dev vars");
}