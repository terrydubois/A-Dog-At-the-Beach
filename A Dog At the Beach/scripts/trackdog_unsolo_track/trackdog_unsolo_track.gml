//trackdog_unsolo_track(sound_index)
var SOUND_INDEX = argument0;
with(TrackManager)
    ds_map_replace(trackSolo, SOUND_INDEX, 0);