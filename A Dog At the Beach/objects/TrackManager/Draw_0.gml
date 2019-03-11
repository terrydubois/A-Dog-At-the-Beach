/// @description draw mixer

var i, X, Y, C, H;
var W = 400;
var H = 140;
var Y = room_height/2 + 32;
var METER_WIDTH = 7;

var METER_FILL = make_color_hsv(120,240,160);
var METER_OUTLINE = c_black;
var MUTE_FILL = c_red;

for(i=0; i<ds_list_size(tracks); i++)
{
    var SOUND_INDEX = ds_list_find_value(tracks,i);
    X = room_width/2 -W*0.5 + (i+0.5)/ds_list_size(tracks) * W;
    
    //C = merge_colour(background_color, c_black, 0.6);
    //draw_rectangle_colour(0,0,room_width,room_height,background_colour,background_colour,C,C,0);
    
    C = METER_OUTLINE;
    draw_rectangle_color(X-METER_WIDTH,Y-H,X+METER_WIDTH,Y,C,C,C,C,1);
    
    var TOP = Y-(H*ds_map_find_value(trackActualVol,SOUND_INDEX));
    C = METER_FILL;
    if(trackdog_any_track_is_soloed())
        C = MUTE_FILL;
    if(trackdog_track_is_muted(SOUND_INDEX))
        C = MUTE_FILL;
    if(trackdog_track_is_soloed(SOUND_INDEX))
        C = METER_FILL;
    draw_rectangle_color(X-METER_WIDTH,TOP,X+METER_WIDTH,Y,C,C,C,C,0);
    
    draw_set_halign(fa_right);
    draw_set_valign(fa_middle);
    draw_text_ext_transformed_color(X,Y+25, string_hash_to_newline(audio_get_name(SOUND_INDEX)),-1,200,1,1,45,C,C,C,C,1);
    
    
    TOP = Y-(H*ds_map_find_value(trackSetVol,SOUND_INDEX));
    C = METER_OUTLINE;
    draw_rectangle_color(X-METER_WIDTH,TOP-2,X+METER_WIDTH,TOP+2,C,C,C,C,0);
    
    if(trackdog_track_is_muted(SOUND_INDEX))
    {
        C = MUTE_FILL;
        draw_set_halign(fa_center);
        draw_text_colour(X - 7,Y + 13,string_hash_to_newline("M"),C,C,C,C,1);
    }
    
    if(trackdog_track_is_soloed(SOUND_INDEX))
    {
        C = METER_FILL;
        draw_set_halign(fa_center);
        draw_text_colour(X + 7,Y + 13,string_hash_to_newline("S"),C,C,C,C,1);
    }
}

