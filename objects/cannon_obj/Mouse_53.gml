/// @description Fire Snood Onclick
// You can write your code in this editor

if(mouse_y < y){
	var ins = instance_create_depth(x -64 + lengthdir_x(-128, image_angle+90), y + lengthdir_y(-128, image_angle+90),0,skood_obj);
	ins.image_xscale = global.xScale
	ins.image_yscale = global.yScale
	ins.direction = image_angle-90;
	ins.speed = 30;
	ins.fired = true
	global.skoodsTilWall--;
	if(global.skoodsTilWall <= 0){
		if(updateGrid() == 0){
			game_restart()
		}
		global.skoodsTilWall = 6;
	}
}