if(gameProgress >= 5 && instance_exists(obj_sun)) {
	with(obj_sun) {
		sunSpeed = 0.020;
	}
}


if (keyboard_check_pressed(vk_shift)) {
	showDevVars = !showDevVars;
}


if (interactDelay > 0) {
	interactDelay--;
}
else {
	interactDelay = 0;
}

if (instance_number(obj_star) >= 60) {
	if (!endDialogue) {
		endDialogue = true;
		
		with (obj_dialogue) {
			instance_destroy();
		}
		
		var instDialogue = instance_create_layer(x, y, "InstancesDialogue", obj_dialogue);
		instDialogue.text[0] = "Sunny! It's time to go back home.";
	}
	else {
		if (!instance_exists(obj_dialogue)) {
			endFadeout = true;
		}
	}
}


if (audio_system_is_available()) {
    if (audio_is_paused(global.soundWaves)) {
		audio_resume_sound(global.soundWaves)
	}
    else {
        if (!audio_is_playing(global.soundWaves)) {
			global.soundWaves = audio_play_sound(snd_waves, 0, true);
		}
	}
}
else {
	if (audio_is_playing(global.soundWaves)) {
		audio_pause_all();
	}
}