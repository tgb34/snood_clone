/// @description Insert description here
// You can write your code in this editor

for(i=0; i<Xtiles*sprite_width; i+= sprite_width){
    for(j=0; j<=Ytiles*sprite_height; j+=sprite_height){
        draw_sprite(wall_spr, 0, i, j-78);	
    }
}