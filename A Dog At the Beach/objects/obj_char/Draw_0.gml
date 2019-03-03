draw_set_color(1);
draw_set_alpha(1);

//draw_circle(x, y, 10, false);

// draw tail
draw_sprite_ext(spr_dogTail, 0, x - (25 * facing), y - 32, facing, 1, tailRot, image_blend, 1);

// draw self
draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, image_blend, 1);