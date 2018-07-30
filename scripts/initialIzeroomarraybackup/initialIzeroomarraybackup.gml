/// initializeRoomArray(skoodRows, allRows, cols)
/*
var skoodRows = argument0;
var allRows = argument1;
var cols = argument2;

for(var i = 0; i < allRows; i++){
	for(var j = 0; j < cols; j++){		
		///test
			newObj = instance_create_depth(-64,-64,0,skood_obj)
			if(j%2 == 0){
				newObj.x = i*scaledX+32
				newObj.y = j*scaledY
				newObj.image_xscale=scaleX
				newObj.image_yscale=scaleY
				global.roomArray[j,i] = newObj
			//	instance_create_depth()(global.roomArray[i,j],0,i*scaledX+32,j*scaledY,scaleX,scaleY,0,c_white,1);
			}else{
			//	draw_sprite_ext(global.roomArray[i,j],0,i*scaledX-32,j*scaledY,scaleX,scaleY,0,c_white,1);
			}
		}
		
		///original
		if(i < skoodRows){
			global.roomArray[j,i] = instance_create_depth(0,0,skood_obj,0)
		}
		else{
			global.roomArray[j,i] = noone
		}
	}
}
*/

