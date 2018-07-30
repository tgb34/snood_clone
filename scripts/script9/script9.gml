/// addToGrid(skood, other)

var skood = argument0
var collide = argument1

var skoodX = skood.x
var skoodY = skood.y

var lastIndex = array_length_2d(global.roomArray,1)

var pos = script10(skood,collide,lastIndex)

with(skood){
	
	global.roomArray[pos,collide.trueY + 1] = instance_create_depth(pos*global.xScaled,(collide.trueY + 1)*global.yScaled,0,skood_obj)
	newSkood = global.roomArray[pos,collide.trueY + 1]
	newSkood.image_xscale = global.xScale
	newSkood.image_yscale = global.yScale
	newSkood.fired = false
	newSkood.trueX = pos
	newSkood.trueY = collide.trueY + 1

	if(collide.staggerLeft){
		newSkood.staggerLeft = false
		newSkood.x += global.xScaled/1.15
	}
	else{
		newSkood.x += global.xScaled/2
	}
	var hm = ds_map_create()
	checkMatch(newSkood, hm, newSkood.sprite_index)
	show_debug_message(ds_map_size(hm))
	speed = 0
	instance_destroy(skood)
}