var tracksWithVolume = 0;

for (var i = 0; i < 5; i++) {
	
	if (obj_hud.endDialogue) {
		trackVolumeDest[i] = 0;
	}
	
	if (trackVolume[i] < trackVolumeDest[i]) {
		trackVolume[i] += 0.02;
	}
	if (trackVolume[i] > trackVolumeDest[i]) {
		trackVolume[i] -= 0.01;
	}
	
	trackVolume[i] = clamp(trackVolume[i], 0, 1);
	
	trackdog_set_track_volume(track[i], trackVolume[i]);
	
	if (trackVolume[i] >= 0.5) {
		tracksWithVolume++;
	}
}

if (obj_hud.gameProgress < tracksWithVolume) {
	obj_hud.gameProgress = tracksWithVolume;
}