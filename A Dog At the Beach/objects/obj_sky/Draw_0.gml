draw_self();

var BGcolor;
BGcolor[0] = merge_color(colorBegin[0], colorMid[0], mergeAmount);
BGcolor[1] = merge_color(colorBegin[1], colorMid[1], mergeAmount);

var waterY = obj_water.y;
draw_set_alpha(1);

//draw_rectangle_color(0, 0, room_width, waterY, BGcolor[0], BGcolor[0], BGcolor[1], BGcolor[1], false);