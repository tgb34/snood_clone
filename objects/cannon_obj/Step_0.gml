/// @description Follow Mouse
// You can write your code in this editor

if(mouse_y <= y){
	image_angle = point_direction(x,y,mouse_x,mouse_y)+90;
}
else if(mouse_x < x){
	image_angle = -90;
}
else{
	image_angle = 90;
}
