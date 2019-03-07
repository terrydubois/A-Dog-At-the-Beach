var textX = argument0;
var textY = argument1;
var textStr = argument2;


draw_set_color(c_white);
for (var i = 1; i < 2; i++) {
	draw_text(textX + i, textY + i, textStr);
}


draw_set_color(c_black);
draw_text(textX, textY, textStr);