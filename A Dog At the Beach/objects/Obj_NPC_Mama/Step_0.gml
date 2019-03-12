var distToChar = point_distance(obj_char.x, obj_char.y, x, obj_sand.y);
var treeSize = ds_list_size(treeList)

if (treeSize > 0) {
	var treePos = ds_list_find_value(treeList, 0).x;
}
else { 
	exit;	
}

if (flying) {
	facing = -1;
	hspeed = -5;
	//sprite_index = spr_gullFly;
	image_speed = 1;
	if (x <= treePos) {
		hspeed = 0;
		//sprite_index = spr_gullIdle;
		//camera_set_view_speed(view_camera[0], 500, 500);
		flying = false;
	}
}

if(distToChar < 50 && keyboard_check_pressed(ord("X")) && !flying) {
	flying = true
	ds_list_delete(treeList, 0);
}