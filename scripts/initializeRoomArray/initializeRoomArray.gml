/// initializeRoomArray(skoodRows, allRows, cols)
var skoodRows = argument0;
var allRows = argument1;
var cols = argument2;


for(var i = 0; i < allRows; i++){
	for(var j = 0; j < cols; j++){		
		///test
		if(j<skoodRows){
			newObj = instance_create_depth(-64,-64,0,skood_obj)
			newObj.sprite_index = choose(sprite1,sprite11)
			newObj.x = i*global.xScaled
			newObj.y = j*global.yScaled
			newObj.image_xscale=global.xScale
			newObj.image_yscale=global.yScale
			newObj.trueX = i
			newObj.trueY = j
			if(j%2 == 0){
				newObj.x += global.xScaled/1.15
				newObj.staggerLeft = false;
			}
			else{
				newObj.x += global.xScaled/2
			}
			global.roomArray[i,j] = newObj
		}
		else{
			global.roomArray[i,j] = 0
		}
	}
}