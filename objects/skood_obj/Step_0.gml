/// @description Insert description here
// You can write your code in this editor
if(fired == true){
	var ins;
	ins = instance_place(x,y,collidable_obj)

	if(ins != noone){
		script9(self,ins)
	}
	
	if(x - sprite_width/2 <=0 || x + sprite_width/2 >= room_width){
		hspeed = -hspeed
	}
}