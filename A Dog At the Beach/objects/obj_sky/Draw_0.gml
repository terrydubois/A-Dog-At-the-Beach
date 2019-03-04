draw_self();

var BGcolor;
BGcolor[0] = merge_color(colorBegin[0], colorMid[0], mergeAmount);
BGcolor[1] = merge_color(colorBegin[1], colorMid[1], mergeAmount);

var waterY = obj_water.y;
draw_set_alpha(1);

//draw_rectangle_color(0, 0, room_width, waterY, BGcolor[0], BGcolor[0], BGcolor[1], BGcolor[1], false);



draw_set_font(fnt_debug);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
var debugTextX = camera_get_view_x(view_camera[0]) + 20;

draw_text(debugTextX, 20, "global.sunset = " + string(global.sunset));
draw_text(debugTextX, 40, "audio_system_is_available() = " + string(audio_system_is_available()));
draw_text(debugTextX, 60, "obj_sky.y = " + string(y));