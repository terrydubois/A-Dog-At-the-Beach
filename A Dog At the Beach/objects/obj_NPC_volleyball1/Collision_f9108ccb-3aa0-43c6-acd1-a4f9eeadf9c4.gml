
if (obj_NPC_volleyball2.state == obj_NPC_volleyball2.stateNormal
|| obj_NPC_volleyball2.state == obj_NPC_volleyball2.statePlayerNear) {
	other.vspeed = -obj_char.jumpSpeed;
	other.hspeed = 2;
}
else if (obj_NPC_volleyball2.state == obj_NPC_volleyball2.stateWalkAway
	&& obj_NPC_volleyball2.x >= obj_NPC_volleyball2.walkAwayXPos) {
		
	if (!pushBall) {
		obj_ball.alarm[0] = 2;
		pushBall = true;
	}
	other.vspeed = -8;
	other.hspeed = 2;
	
	obj_musicControl.trackVolumeDest[0] = 1;
}