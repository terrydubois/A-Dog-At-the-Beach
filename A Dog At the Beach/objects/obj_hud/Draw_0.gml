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
	draw_text(debugTextX, 160, "instance_number(obj_sandParticle) = " + string(instance_number(obj_sandParticle)));
	draw_text(debugTextX, 180, "obj_char.x = " + string(obj_char.x));
	draw_text(debugTextX, 200, "obj_char.carrying = " + string(obj_char.carrying));
	draw_text(debugTextX, 220, "obj_hud.interactTextInst = " + string(interactTextInst));
	draw_text(debugTextX, 240, "obj_ball.vspeed = " + string(obj_ball.vspeed));
	draw_text(debugTextX, 260, "obj_hud.interactDelay = " + string(interactDelay));
}
else {
	draw_text(debugTextX, 20, "press SHIFT for dev vars");
}

// draw progress circles
var camWidth = camera_get_view_width(view_camera[0]);
var camX = camera_get_view_x(view_camera[0]);
for (var i = 0; i < 5; i++) {
	var circleX = camX + ((camWidth / 12) * 4) + ((camWidth / 12) * i);
	var circleY = obj_sand.y + 80;
	var imageIndex = 0;
	
	if (gameProgress > i) {
		imageIndex = 1;
	}
	draw_sprite_ext(spr_progressCircle, imageIndex, circleX, circleY, 1, 1, 0, c_white, obj_controls.controlsAlpha);
}