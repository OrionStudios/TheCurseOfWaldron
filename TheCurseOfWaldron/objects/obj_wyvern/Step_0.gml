event_inherited();



if (instance_exists(obj_player)){ //if player exists
	if (obj_player.vspeed != 0){//if player is movng up or down
		
		
		
		if (moving){ //if wyvern is not moving
			vspeed = -obj_player.vspeed;			
		}
		if (!startingToMove){
			startingToMove = true;
			alarm[3] = 40;	
		}
		
	}else{
		startingToMove = false;
		moving = false;
		vspeed = 0;
	}
}

if(place_meeting(x, y + vspeed, obj_wall)){
	while(!place_meeting(x, y+sign(vspeed), obj_wall)){
		y = y + sign(vspeed);
	}
vspeed = 0;	
}
y = y + vspeed;

