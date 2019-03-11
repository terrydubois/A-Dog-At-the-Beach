/// @description trackdog_any_track_is_soloed()
with(TrackManager)
    for(i=0; i<ds_list_size(tracks); i++)
    {
        var SOUND_INDEX = ds_list_find_value(tracks, i);
        if(trackdog_track_is_soloed(SOUND_INDEX))
            return true;
    }
return false;