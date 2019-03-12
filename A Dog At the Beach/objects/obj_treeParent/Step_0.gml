scr_fadeToBlack(0);

if (shake > 0) {
	shake = scr_approach(shake, 0, shake / 6);
	 
	
	imageAngleDest = random_range(-shake, shake);
	
}

image_angle = scr_approach(image_angle, imageAngleDest, abs(image_angle - imageAngleDest) / 6);

time++;
if (time > 60) {
	time = 0;
}

if (distance_to_object(obj_char) < 32) {
	if (obj_char.sprite_index = spr_dogKick && shake == 0) {
		shake = 10;
	}
}