var BGcolor;
BGcolor[0] = merge_color(colorBegin[0], colorMid[0], mergeAmount);
BGcolor[1] = merge_color(colorBegin[1], colorMid[1], mergeAmount);

draw_rectangle_color(0, 0, room_width, room_height, BGcolor[0], BGcolor[0], BGcolor[1], BGcolor[1], false);

draw_sprite_ext(spr_sun, 0, sunX, sunY, 1, 1, 0, c_white, 1);