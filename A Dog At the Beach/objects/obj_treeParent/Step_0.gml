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