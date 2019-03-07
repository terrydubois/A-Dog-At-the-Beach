if (obj_NPC_volleyball2.state == obj_NPC_volleyball2.stateNormal
|| obj_NPC_volleyball2.state == obj_NPC_volleyball2.statePlayerNear) {
	other.vspeed = -obj_char.jumpSpeed;
	other.hspeed = 2;
}
else if (obj_NPC_volleyball2.state == obj_NPC_volleyball2.stateWalkAway
	&& obj_NPC_volleyball2.x >= obj_NPC_volleyball2.walkAwayXPos) {
	other.vspeed = -obj_char.jumpSpeed;
	other.hspeed = 2;
}