if (keyboard_check_pressed(vk_shift)) {
	showDevVars = !showDevVars;
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
	
	if (global.audioPlay[1] > 0) {
		if (audio_is_paused(global.soundMusic)) {
			audio_resume_sound(global.soundMusic)
		}
	    else {
	        if (!audio_is_playing(global.soundMusic)) {
				global.soundMusic = audio_play_sound(snd_waves, 0, true);
			}
		}
	}
	else {
		audio_pause_sound(global.soundMusic);
	}
	
	
}
else {
	if (audio_is_playing(global.soundWaves)) {
		audio_pause_all();
	}
}