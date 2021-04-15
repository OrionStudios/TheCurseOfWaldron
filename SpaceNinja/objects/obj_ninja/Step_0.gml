key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

var move = key_right - key_left;//Right = 1, Left = -1, Still = 0

hsp = move * walksp;

vsp = vsp + grv//jump speed with gravity
if (instance_place(x, y, obj_ladder)){
	
	if (keyboard_check(vk_up) || keyboard_check(vk_down)){
		climbing = true;
		vspeed = 0;
		gravity = 0;
		//sprite_index = spr_climbing;
	}

}else{
	climbing = false;
	//sprite_index = spr_player;
}

if(climbing){
		
	if (keyboard_check(vk_up)){//if holding up
		vsp = climb_speed;
		y -= climb_speed;//go up
	}

	if (keyboard_check(vk_down) && !place_meeting(x, y + climb_speed, obj_platform)){//if holding down
		if(!place_meeting(x, y + sign(vsp), obj_platform) && !place_meeting(x, y + sign(vsp), obj_box)){//if not 1 pixel from ground
			y += sign(climb_speed);//move 1 pixel towards ground
		}
		y += climb_speed;//go down
	}
	
		if(place_meeting(x + hsp, y, obj_platform) || place_meeting(x + hsp, y, obj_box)){//if platform or box is within move distance
		while(!place_meeting(x + sign(hsp), y, obj_platform) && !place_meeting(x + sign(hsp), y, obj_box)){//while platform and box arent 1 pixel away
			x += sign(hsp);//move forward 1 pixel
		}
		hsp = 0;//ninja within 1 pixel of platform or box so stop moving
	}
	x += hsp;//if not near anything move normally
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	if(!instance_place(x, y + climb_speed, obj_platform)){//if touching ladder and not on ground
		climbing = true;
	}else{//if touching ladder but on ground
		climbing = false;	
	}
	
	
	
	
	
	
	

	
	
	
	
	
}

if (!climbing){
	if ((place_meeting(x, y + 1, obj_platform) || place_meeting(x, y + 1, obj_box))&& key_jump){//if touching platform or crate and pressed jump
		vsp = -11;
	}
	
	if(place_meeting(x + hsp, y, obj_platform) || place_meeting(x + hsp, y, obj_box)){//if platform or box is within move distance
		while(!place_meeting(x + sign(hsp), y, obj_platform) && !place_meeting(x + sign(hsp), y, obj_box)){//while platform and box arent 1 pixel away
			x += sign(hsp);//move forward 1 pixel
		}
		hsp = 0;//ninja within 1 pixel of platform or box so stop moving
	}
	x += hsp;//if not near anything move normally
	
	if (move != 0){//if moving
		image_xscale = move;//set image xscale
	}
	
	if(place_meeting(x, y + vsp, obj_platform) || place_meeting(x, y + vsp, obj_box)){//if platform or box is within jump distance
		while(!place_meeting(x, y + sign(vsp), obj_platform) && !place_meeting(x, y + sign(vsp), obj_box)){//if not 1 pixel from ground
			y += sign(vsp);//move 1 pixel towards ground
		}
		vsp = 0;//ninja 1 pixel above ground so stop moving
	}
	y += vsp;//not n
}





