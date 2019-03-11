/// @description trackdog_add_track(sound_index)
/// @param sound_index
var SOUND_INDEX = argument0;

with(TrackManager)
{
    ds_list_add(tracks, SOUND_INDEX);
    ds_map_add(trackIds, SOUND_INDEX, audio_play_sound(SOUND_INDEX,1,true));
    ds_map_add(trackSetVol, SOUND_INDEX, 0);
    ds_map_add(trackActualVol, SOUND_INDEX, 0);
    ds_map_add(trackSolo, SOUND_INDEX, 0);
    ds_map_add(trackMute, SOUND_INDEX, 0);
}