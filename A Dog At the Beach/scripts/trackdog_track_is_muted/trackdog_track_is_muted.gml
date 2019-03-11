/// @description trackdog_track_is_muted(SOUND_INDEX)
/// @param SOUND_INDEX
var SOUND_INDEX = argument0;

with(TrackManager)
    return ds_map_find_value(trackMute, SOUND_INDEX);

return -1;