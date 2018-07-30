/// drawRoomGrid(scaleX, scaleY,defaultSize)
/*
var scaleX = argument0
var scaleY = argument1
var defaultSize = argument2
var scaledX = scaleX * defaultSize
var scaledY = scaleY * defaultSize
show_debug_message(array_height_2d(global.roomArray));
for(var i = 0; i < array_height_2d(global.roomArray); i++){
	for(var j = 0; j < array_length_2d(global.roomArray,1);j++){
		if(global.roomArray[i,j] != noone){
			newObj = instance_create_depth(-64,-64,0,skood_obj)
			if(j%2 == 0){
			//	instance_create_depth()(global.roomArray[i,j],0,i*scaledX+32,j*scaledY,scaleX,scaleY,0,c_white,1);
			}else{
			//	draw_sprite_ext(global.roomArray[i,j],0,i*scaledX-32,j*scaledY,scaleX,scaleY,0,c_white,1);
			}
		}
	}
}*/