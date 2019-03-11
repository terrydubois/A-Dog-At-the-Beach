/// @description apply trackSetVol values
for(var i=0; i<ds_list_size(tracks); i++)
{
    var SOUND_INDEX = ds_list_find_value(tracks, i);
    var VOLUME = ds_map_find_value(trackActualVol, SOUND_INDEX);
    var LEVEL = ds_map_find_value(trackSetVol, SOUND_INDEX);
    
    VOLUME += (LEVEL - VOLUME) * 0.05;
    ds_map_replace(trackActualVol,SOUND_INDEX,VOLUME);
    
    var SOUND_ID = ds_map_find_value(trackIds, SOUND_INDEX);
    
    if(trackdog_track_is_muted(SOUND_INDEX))
        VOLUME = 0;
    else if(trackdog_any_track_is_soloed() 
     and not trackdog_track_is_soloed(SOUND_INDEX))
        VOLUME = 0;
    
    audio_sound_gain(SOUND_ID, VOLUME, 0);
}

