/// @description trackdog_track_is_soloed(SOUND_INDEX)
/// @param SOUND_INDEX
var SOUND_INDEX = argument0;

with(TrackManager)
    return ds_map_find_value(trackSolo, SOUND_INDEX);

return -1;