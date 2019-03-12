for (var i = 0; i < 6; i++) {
	if (trackVolume[i] < trackVolumeDest[i]) {
		trackVolume[i] += 0.02;
	}
	trackVolume[i] = clamp(trackVolume[i], 0, 1);
	
	trackdog_set_track_volume(track[i], trackVolume[i]);
}