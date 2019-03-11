/// @description clean up
for(var i=0; i<ds_list_size(tracks); i++)
{
    var SOUND_INDEX = ds_list_find_value(tracks,i);
    var SOUND_ID = ds_map_find_value(trackIds, SOUND_INDEX);
    audio_stop_sound(SOUND_ID);
}

ds_list_destroy(tracks);

ds_map_destroy(trackIds);
ds_map_destroy(trackActualVol);
ds_map_destroy(trackSetVol);
ds_map_destroy(trackSolo);
ds_map_destroy(trackMute);

