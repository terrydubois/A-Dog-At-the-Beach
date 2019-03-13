scr_fadeToBlack(0);

var distToChar = point_distance(obj_char.x, obj_char.y, x, obj_sand.y);

if (distToChar < 50) {
	if (state == stateNormal && !obj_char.carrying) {
		state = statePlayerNear;
	}
}
else {
	state = stateNormal;
}

if(distance_to_object(Obj_NPC_Mama) < 50) {
	mamaNear = true;
	if (obj_musicControl.trackVolumeDest[4] < 1) {
		obj_musicControl.trackVolumeDest[4] = 1;
	}
	//start musical track
}
else {
	mamaNear = false;	
}


if (state == statePlayerNear) {
	if (keyboard_check_released(vk_space) && canSpace && obj_hud.interactDelay < 1) {
		state = stateInteracting;
		if (!instance_exists(obj_dialogue) && !obj_char.carrying && !endTextCycle) {
			var instDialogue = instance_create_layer(x, y, "InstancesDialogue", obj_dialogue);
			
			if (mamaNear) {
				if (!endTextCycle) {
					instDialogue.text[0] = "Thank you so much my fluffy friend! Now I can enjoy the sunset with my mama.";
					endTextCycle = true;
				}
			}
			else {
				switch (textCycle) {
					case 0:
						instDialogue.text[0] = "Umm excuse me.., yeah up here. Could you help me?";
						instDialogue.text[1] = "I got stuck here trying to fly by myself, and lost sight of my mom. If you see her, could you lead her this way? ";
						textCycle++;
						break;
					case 1:
						instDialogue.text[0] = "My mom told me to be careful, but I got my terrible listening from her, haha. ";
						instDialogue.text[1] = "Sometimes I have to shake the tree to get her attention, which is tough for a little birdie like me!";
						break;
					default:
						break;
				}
			}
			
		}
	}
}

if (state == stateInteracting) {
	if (!instance_exists(obj_dialogue)) {
		state = stateNormal;
	}
}



var textPlusYMax = 20;
if (distToChar < 30
&& ((obj_hud.interactTextInst < 0 ) || obj_hud.interactTextInst == self.id)) {
	interactTextPlusY += abs(textPlusYMax - interactTextPlusY) / 6;
	obj_hud.interactTextInst = self.id;
}
else {
	interactTextPlusY = 0;
	if (obj_hud.interactTextInst == self.id) {
		obj_hud.interactTextInst = -1;
	}
}
interactTextPlusY = clamp(interactTextPlusY, 0, textPlusYMax);

if (obj_hud.interactTextInst == self.id) {
	if (endTextCycle) {
		obj_hud.interactTextInst = -1;
	}
}



if (instance_exists(obj_dialogue)) {
	canSpace = false;
}
if (keyboard_check_released(vk_space) and !instance_exists(obj_dialogue) and !canSpace) {
	canSpace = true;
}
