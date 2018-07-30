/// decisionTree(skood, collider, lastIndex)

var skood = argument0
var collider = argument1
var lastIndex = argument2

show_debug_message("collide with index")
show_debug_message(collider.trueX)
if(collider.staggerLeft){
	show_debug_message("staggerLeft")
	if(collider.trueX == 0){
		show_debug_message("collide with index 0")
		return 0
	}
	
	if(skood.x < collider.x){
		show_debug_message("less than x")
		return (collider.trueX - 1)
	}
	show_debug_message("greater than equal to x")
	return collider.trueX
}
	show_debug_message("stagger right")
if(collider.trueX == lastIndex){
	show_debug_message("collide with last Index")
	return lastIndex
}
if(skood.x < collider.x){
	show_debug_message("less than x")
	return collider.trueX
}
show_debug_message("greater than equal to x")
return collider.trueX + 1