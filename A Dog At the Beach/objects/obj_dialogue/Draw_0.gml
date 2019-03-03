/// @description Draw Text Box

var rectMargin = 30;

X1 = camera_get_view_x(view_camera[0]) + rectMargin;
X2 = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - rectMargin;
Y1 = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) * 0.75);
Y2 = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - rectMargin;

draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(X1, Y1, X2, Y2, false);
	
var strHashed = string_hash_to_newline(typeString);

draw_set_color(c_black);
draw_text(X1 + 100, Y1 + 10, strHashed);