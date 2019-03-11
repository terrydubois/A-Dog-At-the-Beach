/// @description trackdog_set_all_track_volume(vol)
/// @param vol
var VOL = clamp(argument0,0,1);

with(TrackManager)
    for(var i=0; i<ds_list_size(tracks); i++)
    {
        var SOUND_INDEX = ds_list_find_value(tracks, i);
        trackdog_set_track_volume(SOUND_INDEX, VOL);
    }
