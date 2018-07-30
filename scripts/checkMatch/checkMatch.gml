///checkMatch(skood, visitedDS, target)

var skood = argument0
var visitedDS = argument1
var target = argument2

if(ds_map_exists(visitedDS, skood) || skood.sprite_index != target){
	return
}
ds_map_add(visitedDS, skood, 1)
skood.sprite_index = sprite6

//show_debug_message(skood.staggerLeft)
if(skood.staggerLeft){
	if(skood.trueX > 0){
	
		//Check Left
		checkMatch(global.roomArray[skood.trueX - 1,skood.trueY], visitedDS, target)	
		
		 if(skood.trueX < array_length_2d(global.roomArray,0) - 2){
			//Check Right
			checkMatch(global.roomArray[skood.trueX - 1, skood.trueY], visitedDS, target)
		 }
		
		if(skood.trueY < array_height_2d(global.roomArray)-4){
			//Check Below
			checkMatch(global.roomArray[skood.trueX, skood.trueY + 1], visitedDS, target)

			//Check Below Left
			checkMatch(global.roomArray[skood.trueX - 1, skood.trueY + 1], visitedDS, target)
		}
		if(skood.trueY > 0){
			//Check above
			checkMatch(global.roomArray[skood.trueX, skood.trueY - 1], visitedDS, target)
		
			//Check above left
			checkMatch(global.roomArray[skood.trueX - 1, skood.trueY - 1],visitedDS, target)
		}
	}
	else{
		if(skood.trueY > 0){
			//Check Above
			checkMatch(global.roomArray[0, skood.trueY - 1],visitedDS, target)
		}
		if(skood.trueY < array_height_2d(global.roomArray) - 4){
			checkMatch(global.roomArray[0, skood.trueY + 1],visitedDS, target)
		}
		if(skood.trueX < array_length_2d(global.roomArray,0) - 2){
			checkMatch(global.roomArray[1, skood.trueY],visitedDS, target)
		}
	}
}
else{
	if(skood.trueX < array_length_2d(global.roomArray,0)-2){
	
		//Check Right
		checkMatch(global.roomArray[skood.trueX + 1,skood.trueY], visitedDS, target)	
		
		 if(skood.trueX > 0){
			//Check Left
			checkMatch(global.roomArray[skood.trueX - 1, skood.trueY], visitedDS, target)
		 }
		
		if(skood.trueY < array_height_2d(global.roomArray)-4){
			//Check Below
			checkMatch(global.roomArray[skood.trueX, skood.trueY + 1], visitedDS, target)

			//Check Below Right
			checkMatch(global.roomArray[skood.trueX + 1, skood.trueY + 1], visitedDS, target)
		}
		if(skood.trueY > 0){
			//Check above
			checkMatch(global.roomArray[skood.trueX, skood.trueY - 1], visitedDS, target)
		
			//Check above right
			checkMatch(global.roomArray[skood.trueX + 1, skood.trueY - 1],visitedDS, target)
		}
	}
	else{
		if(skood.trueY > 0){
			//Check Above
			checkMatch(global.roomArray[skood.trueX, skood.trueY - 1],visitedDS, target)
		}
		//Check Below
		if(skood.trueY < array_height_2d(global.roomArray) - 4){
			checkMatch(global.roomArray[skood.trueX, skood.trueY + 1],visitedDS, target)
		}
		//Check Left
		if(skood.trueX > 0){
			checkMatch(global.roomArray[skood.trueX - 1, skood.trueY],visitedDS, target)
		}
	}
}