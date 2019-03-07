colorBegin[0] = make_color_hsv(122, 253, 217);
colorBegin[1] = make_color_hsv(170, 150, 217);

colorMid[0] = make_color_hsv(118, 253, 217);
colorMid[1] = make_color_hsv(215, 150, 217);

mergeAmount = 0;

global.blendVal = 255;

audio_play_sound(snd_waves, 10, true);

y = obj_water.y;

stars = false;

alarm[1] = 1800;
scr_spawnCloud(-sprite_get_width(spr_clouds));
scr_spawnCloud(room_width / 2);
scr_spawnCloud(room_width * 0.75);
//scr_spawnCloud(room_width - sprite_get_width(spr_clouds) * 3);