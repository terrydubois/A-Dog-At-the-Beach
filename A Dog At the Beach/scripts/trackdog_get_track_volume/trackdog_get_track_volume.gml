/// @description trackdog_get_track_volume(sound_index)
/// @param sound_index
var SOUND_INDEX = argument0;

with(TrackManager)
    return ds_map_find_value(trackSetVol, SOUND_INDEX);

return -1;