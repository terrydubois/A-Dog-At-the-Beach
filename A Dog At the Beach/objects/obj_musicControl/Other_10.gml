/// @description set up tracks
trackdog_add_track(snd_drumTrack1);
trackdog_add_track(snd_drumTrack2);
trackdog_add_track(snd_drumTrack3);
trackdog_add_track(snd_drumTrack4);
trackdog_add_track(snd_guitarTrack);

trackdog_set_all_track_volume(0);

alarm[0] = 1;

for (var i = 0; i < 5; i++) {
	trackVolume[i] = 0;
	trackVolumeDest[i] = 0;
}

track[0] = snd_drumTrack1;
track[1] = snd_drumTrack2;
track[2] = snd_drumTrack3;
track[3] = snd_drumTrack4;
track[4] = snd_guitarTrack;
//track[5] = snd_guitarTrack;