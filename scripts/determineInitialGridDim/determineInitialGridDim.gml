/// determineInitialGridDim(hm,difficulty)

var difficultyMap = argument0
var difficulty = argument1

var scales
scales[0] = "";scales[1] = "";scales[2] = "";
var afterComma = 0

var value = ds_map_find_value(difficultyMap,difficulty)

for (var i = 1; i <= string_length(value); i++){
	if(string_char_at(value, i) == ","){
		scales[afterComma] = floor(real(scales[afterComma]))
		afterComma++;
	}
	else{
		scales[afterComma] += string_char_at(value,i)
	}
}

scales[afterComma] = floor(real(scales[afterComma]))
return scales