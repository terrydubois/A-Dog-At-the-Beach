scr_fadeToBlack(0);

gravity = 0.5;
gravity_direction = 270;

if (distance_to_object(obj_ball) < 15 && !place_free(x, y + 1)) {
	if (obj_NPC_volleyball2.state == obj_NPC_volleyball2.stateNormal
	|| obj_NPC_volleyball2.state == obj_NPC_volleyball2.statePlayerNear) {
		vspeed = -obj_char.jumpSpeed;
	}
	else if (obj_NPC_volleyball2.state == obj_NPC_volleyball2.stateWalkAway
	&& obj_NPC_volleyball2.x >= obj_NPC_volleyball2.walkAwayXPos) {
		vspeed = -obj_char.jumpSpeed;
	}
}



if (obj_NPC_volleyball2.state == obj_NPC_volleyball2.stateWalkAway
&& obj_NPC_volleyball2.x >= obj_NPC_volleyball2.walkAwayXPos) {
	
	var nearestBall = instance_nearest(x, y, obj_ball);
	/*
	if (nearestBall.x < xOriginal) {
		x = nearestBall.x;
	}
	*/
	
	if (nearestBall.hspeed < 0) {
		if (nearestBall.x < x - 4) {
			hspeed = -4;
		}
		else if (nearestBall.x > x + 4) {
			hspeed = 4;
		}
	}
	
}
/*
var nearestBall = instance_nearest(x, y, obj_ball);
if (nearestBall.x < xOriginal) {
	x = nearestBall.x;
}
*/

if (x > xOriginal + 50) {
	x = xOriginal + 50;
	hspeed = 0;
}
if (x < xOriginal - 100) {
	x = xOriginal - 100;
	hspeed = 0;
}

if (abs(hspeed) < 0.1) {
	sprite_index = spr_dogIdol2;
}
else {
	sprite_index = spr_dogIdol2;
}


if (place_free(x, y + 1)) {
	image_speed = 0;
	sprite_index = spr_dogJump2;
	if (vspeed < 0) {
		image_index = 0;
	}
	else {
		image_index = 1;
	}
}
else {
	image_speed = 1;
}