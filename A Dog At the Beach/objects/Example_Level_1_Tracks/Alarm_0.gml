/// @description randomly change mixing
alarm[0] = 60 * 4;

trackdog_unsolo_all_tracks();

var MODE = choose(0,1,2,3);
switch(MODE)
{
    case 0:
    trackdog_set_track_volume(atari_beat_1, random(1));
    trackdog_set_track_volume(atari_beat_2, random(1));
    trackdog_set_track_volume(atari_beat_3, random(1));
    trackdog_set_track_volume(atari_beat_4, random(1));
    trackdog_set_track_volume(atari_beat_5, random(1));
    trackdog_set_track_volume(atari_beat_6, random(1));
    trackdog_set_track_volume(atari_beat_7, random(1));
    trackdog_set_track_volume(atari_beat_8, random(1));
    break;
    
    case 1:
    for(var i=0; i<ds_list_size(tracks); i++)
    {
        var TRACK = ds_list_find_value(tracks, i);
        if(trackdog_track_is_muted(TRACK))
            trackdog_unmute_track(TRACK);
        else if(random(100)<30)
            trackdog_mute_track(TRACK);
    }
    break;
    
    case 2:
    var SOUND_INDEX = ds_list_find_value(tracks, irandom(ds_list_size(tracks)));
    trackdog_unmute_track(SOUND_INDEX);
    trackdog_set_track_volume(SOUND_INDEX, 1);
    trackdog_solo_track(SOUND_INDEX);
    break;
    
    case 3:
    for(var i=0; i<ds_list_size(tracks); i++)
    {
        var TRACK = ds_list_find_value(tracks, i);
        var VOL = trackdog_get_track_volume(TRACK);
        trackdog_set_track_volume(TRACK, VOL + 0.3);
    }
    break;
}


