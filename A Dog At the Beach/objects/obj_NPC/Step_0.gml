scr_fadeToBlack();

if (distance_to_object(obj_char) < 50) {
	
	if (!instance_exists(obj_dialogue)) {
		var instDialogue = instance_create_layer(x, y, "InstancesDialogue", obj_dialogue);
		instDialogue.text[0] = "this is a piece of test dialogue heyyyyy more like diadog wait no i dont wanna kill dogs i freaking love those little woofers bark me up baby! please please please more testing";
	}
}
else { 
	with(obj_dialogue) {
		isTalking = false;	
	}
}