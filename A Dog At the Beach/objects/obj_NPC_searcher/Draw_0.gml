draw_self();

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);

if (state == statePlayerNear && instance_number(obj_dialogue) < 1 && !endTextCycle
&& obj_hud.interactTextInst == self.id && obj_hud.interactDelay < 1) {
	draw_set_font(fnt_interact);
	draw_text(x, y - sprite_get_height(sprite_index) - interactTextPlusY, "Press SPACE");
}

if (obj_hud.showDevVars) {
	draw_set_font(fnt_debug);
	draw_text(x - 20, y - 20, "state: " + string(state));
}