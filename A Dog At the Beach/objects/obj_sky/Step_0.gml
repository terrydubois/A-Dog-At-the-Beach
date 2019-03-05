mergeAmount = 1 - global.sunset;

mergeAmount = clamp(mergeAmount, 0, 1);

global.blendVal = 255 * global.sunset;
global.blendVal = clamp(global.blendVal, 0, 255);

y = obj_sun.y * 7;
y = clamp(y, obj_water.y, 999999);

stars = (obj_sun.y > 363);

if (stars and instance_number(obj_star) < 1) {
	scr_spawnStar();
	alarm[0] = 60;
}