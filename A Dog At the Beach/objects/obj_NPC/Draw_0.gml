draw_self();

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);

if (state == statePlayerNear) {
	draw_set_font(fnt_main);
	draw_text(x, y - sprite_get_height(sprite_index) - interactTextPlusY, "Press SPACE");
}

draw_set_font(fnt_debug);
draw_text(x - 20, y - 20, "state: " + string(state));