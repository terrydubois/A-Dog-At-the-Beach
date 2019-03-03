/// @description Insert description here
// You can write your code in this editor
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