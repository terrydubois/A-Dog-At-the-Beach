draw_sprite_ext(sprite_index, image_index, x + xOffset, y + yOffset, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (distance_to_object(obj_char) < playerDigDist) && !instance_exists(obj_title) {
	
	if (obj_hud.showDevVars) {
		draw_set_color(c_red);
		draw_set_alpha(1);
		draw_circle(x, y, 15, true);
	
		draw_set_font(fnt_debug);
		draw_set_color(c_white);
		draw_text(x, y, "dugUp: " + string(dugUp));
	}
	
	if (!dugUp && keyboard_check(ord("Z"))) {
		dugUpAmount--;
		xOffset = random_range(-2, 2);
		yOffset = random_range(30, 34);
	}
	
	if (dugUp && keyboard_check(vk_space) && !obj_char.carrying) {
		obj_char.carrying = true;
		carried = true;
	}
	
	if (dugUp && !obj_char.carrying && !carried && vspeed == 0) {
		draw_set_font(fnt_main);
		draw_set_color(c_white);
		draw_text(x, y - sprite_get_height(sprite_index) - interactTextPlusY, "Hold SPACE");
	}
}