/// @description Draw Text Box

if(isTalking) {
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_rectangle(X1, Y1, X2, Y2, false);

	draw_set_color(c_black);
	draw_text(X1 + 100, Y1 + 10, "What's up dog?");
}