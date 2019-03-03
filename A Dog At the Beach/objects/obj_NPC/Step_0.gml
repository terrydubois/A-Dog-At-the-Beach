scr_fadeToBlack();

if (distance_to_object(obj_char) < 50) {
	
	if (!instance_exists(obj_dialogue)) {
		var instDialogue = instance_create_layer(x, y, "InstancesDialogue", obj_dialogue);
		instDialogue.text[0] = "boooooy howdy you sure are a littel bioy in the bnoys arent iii";
	}
}
else { 
	with(obj_dialogue) {
		isTalking = false;	
	}
}