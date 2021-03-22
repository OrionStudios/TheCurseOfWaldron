draw_set_font(fnt_main);

if(instance_exists(obj_player))
{
	//draw healthbar based off players health
	//draw_healthbar(8, 8, 256, 32, obj_player.hp, $FFFFFFFF & $FFFFFF, c_red,c_red, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));
	for (var i = 0; i < obj_player.hp; i++){

		draw_sprite(spr_health, 0, (20 + 30 * i), 15); //draws number of hearts player has
	}
	for (var i = 0; i < lives; i++){
		//draws number of lives player has
		draw_sprite(spr_life, 0, (35 + 45 * i), 75);	
	}

}

if (showXP){
	draw_healthbar(8, 100, 256, 124, xp, $FFFFFFFF & $FFFFFF, c_blue,c_blue, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));
	if (zoomXP){
		if (!zooming){
			zooming = true;
			alarm[1] = 200;
		}
		draw_set_font(fnt_big);
	}
		
		draw_text(8, 350, lvl);
		draw_set_color(c_white);
		draw_text(10, 200, xp);
		draw_text(5, 220, "XP");
		draw_text(70, 200, overallXP);
		draw_text(40, 220, "Overall");
		draw_text(8, 130, obj_scoreboard.xpLabel);
	
}
if (global.game_over) {//display gameover message if player has died
	draw_set_halign(fa_center)
	draw_text(room_width / 2, room_height / 2, "Game Over! Press R to restart.")
}



draw_set_font(fnt_big);
draw_set_color(c_black);
switch (tip){
	case 0: 
		break;
	case 1: 
		
		
		draw_text_ext(600, 400, "Use your WASD keys to move around and begin your journey", 50, 1000);
		if (!tipShowing){
			
			alarm[0] = 500;
			tipShowing = true;
		}
		break;
	case 2:
		
		
		draw_text_ext(600, 400, "Use your mouse's left click to activate your magic.", 50, 1000);
		if (!tipShowing){
			
			alarm[0] = 500;
			tipShowing = true;
		}
		break;
	case 3:
		draw_text_ext(600, 400, "Left click on the target to direct your magic there.", 50, 1000);
		
		showXP = true;
		if (!tipShowing){
			
			alarm[0] = 500;
			tipShowing = true;
			
		}
		break;
	
}
//if (room == 3 && showTip ){
//	draw_text(800, 500, "Use your WASD keys to move around and begin your journey");
//	if (!tipShowing){
//		alarm[0] = 500;
//		tipShowing = true;
//	}
//}else if(obj_grandpa.training && showTip){
//	draw_text(800, 500, "Use your mouse’s left click to activate your magic.");
	
//		if (!tipShowing){
//		alarm[0] = 500;
//		tipShowing = true;
//	}
//}

