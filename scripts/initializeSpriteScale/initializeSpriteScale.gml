/// initializeSpriteScale(rows,cols,defaultScale,padding)

var rows = argument0
var cols = argument1
var defaultScale = argument2
var paddingX = argument3
var paddingY = argument4

var scale
scale[0] = (room_height-paddingY)/rows/defaultScale
scale[1] = (room_width-paddingX)/cols/defaultScale

return scale