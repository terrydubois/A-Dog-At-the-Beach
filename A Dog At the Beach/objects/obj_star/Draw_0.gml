image_alpha += random_range(-0.01, 0.01);
image_alpha = clamp(image_alpha, 0, 1);

draw_set_color(c_white);
draw_set_alpha(image_alpha);

draw_circle(x, y, radius, false);