draw_sprite_ext(sprite_index, image_index, x , y , image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (distance_to_object(obj_char) < 10 && !instance_exists(obj_title) && !instance_exists(obj_dialogue)
&& obj_hud.interactTextInst == self.id) {
	
	
	if (keyboard_check(vk_space) && !obj_char.carrying && obj_hud.interactTextInst == self.id) {
		obj_char.carrying = true;
		carried = true;
	}
	
	if (!obj_char.carrying && !carried && vspeed == 0) {
		draw_set_font(fnt_interact);
		draw_set_color(c_white);
		draw_text(x, y - sprite_get_height(sprite_index) - interactTextPlusY, "Hold SPACE");
	}
}