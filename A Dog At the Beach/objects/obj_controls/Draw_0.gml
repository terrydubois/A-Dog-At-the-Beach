draw_set_font(fnt_debug);
draw_set_color(c_white);
draw_set_alpha(controlsAlpha);

var controlsTextX = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 20;
draw_set_font(fnt_main);

if (!instance_exists(obj_dialogue) && !instance_exists(obj_title)) {

	if (showControls) {
		draw_set_halign(fa_right);
		scr_drawTextShadow(controlsTextX, obj_sand.y + 10, "Left/Right Arrow Keys: move");
		scr_drawTextShadow(controlsTextX, obj_sand.y + 40, "Up Arrow Key: jump");
		scr_drawTextShadow(controlsTextX, obj_sand.y + 70, "CTRL: hide controls");
	
		controlsTextX = camera_get_view_x(view_camera[0]) + 20;
		draw_set_halign(fa_left);
		scr_drawTextShadow(controlsTextX, obj_sand.y + 10, "Space: interact");
		scr_drawTextShadow(controlsTextX, obj_sand.y + 40, "Z: Dig");
		scr_drawTextShadow(controlsTextX, obj_sand.y + 70, "X: Kick");
	}
	else {
		draw_set_halign(fa_right);
		scr_drawTextShadow(controlsTextX, obj_sand.y + 20, "Press CTRL for controls");
	}
}