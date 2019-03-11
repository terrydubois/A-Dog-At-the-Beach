//trackdog_unsolo_all_tracks()
with(TrackManager)
    for(i=0; i<ds_list_size(tracks); i++)
    {
        var SOUND_INDEX = ds_list_find_value(tracks, i);
        trackdog_unsolo_track(SOUND_INDEX);
    }