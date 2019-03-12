draw_self();

var pressSpaceX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);

draw_set_alpha(image_alpha);
draw_set_font(fnt_main);
draw_set_halign(fa_center);
scr_drawTextShadow(pressSpaceX, obj_sand.y + 20, "Press SPACE");