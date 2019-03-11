//trackdog_unmute_track(sound_index)
var SOUND_INDEX = argument0;
with(TrackManager)
    ds_map_replace(trackMute, SOUND_INDEX, 0);