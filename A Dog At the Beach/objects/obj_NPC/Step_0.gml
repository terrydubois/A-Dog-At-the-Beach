scr_fadeToBlack();

if(distance_to_object(obj_char) < 50) {
	with(obj_dialogue) {
		isTalking = true;
	}
}
else { 
	with(obj_dialogue) {
		isTalking = false;	
	}
}