draw_self();

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);

if (state == statePlayerNear && !endTextCycle && obj_hud.interactTextInst == self.id) {
	draw_set_font(fnt_interact);
	draw_text(x, y - interactTextPlusY, "Press SPACE"); //- sprite_get_height(sprite_index)
}