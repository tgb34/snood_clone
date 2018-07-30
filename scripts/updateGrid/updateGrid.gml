/// updateGrid();

for(var i = array_height_2d(global.roomArray)-1; i >= 0 ; i--){
	for(var j = array_length_2d(global.roomArray,0)-1; j >= 1 ;j--){	
		var upRow = global.roomArray[i,j-1]
		with(upRow){
			if(upRow != noone){
				if(upRow.object_index == skood_obj.object_index){
					
					if(j == array_length_2d(global.roomArray,0)-1){
						return 0
					}
					var oX = upRow.trueX
					var oY = upRow.trueY
					global.roomArray[i,j] = instance_copy(true)
					global.roomArray[i,j].trueY = oY + 1;
					global.roomArray[i,j].trueX = oX
					show_debug_message(global.roomArray[i,j].trueX)
					global.roomArray[i,j].y += global.roomArray[i,j].sprite_height
					instance_destroy(upRow)
				}
			}
		}
	}
}

return 1