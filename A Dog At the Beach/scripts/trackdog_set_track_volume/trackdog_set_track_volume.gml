/// @description trackdog_set_track_volume(sound_index, vol)
/// @param sound_index
/// @param  vol
var SOUND_INDEX = argument0;
var VOL = clamp(argument1,0,1);

with(TrackManager)
    ds_map_replace(trackSetVol, SOUND_INDEX, VOL);