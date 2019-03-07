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
	if (nearestBall.hspeed < 0) {
		if (nearestBall.x < x) {
			hspeed = -4;
		}
		else if (nearestBall.x > x) {
			hspeed = 4;
		}
	}
}

if (x > xOriginal + 50) {
	x = xOriginal + 50;
	hspeed = 0;
}
if (x < xOriginal - 100) {
	x = xOriginal - 100;
	hspeed = 0;
}