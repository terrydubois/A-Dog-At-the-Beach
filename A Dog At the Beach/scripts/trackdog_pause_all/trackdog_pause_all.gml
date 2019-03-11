/// @description trackdog_pause_all()
with(TrackManager)
    for(i=0; i<ds_list_size(tracks); i++)
    {
        var SOUND_INDEX = ds_list_find_value(tracks, i);
        var SOUND_ID = ds_map_find_value(trackIds, SOUND_INDEX);
        audio_pause_sound(SOUND_ID);
    }