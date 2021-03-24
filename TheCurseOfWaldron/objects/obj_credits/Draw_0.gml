draw_set_halign(fa_center);
draw_set_color(c_white);
if (room == 2){
	for(i = 0; i < array_length(contributors); i++){
		if (i % 2 == 1){
			draw_set_font(fnt_small);	
		}else{
			draw_set_font(fnt_name);	
		}
		draw_text(x + 80, y + 70 + (50 * i), contributors[i]);
	}
	
}else if (room == 5 && instance_exists(obj_menuBtn)){
	if(instance_nearest(x, y, obj_menuBtn).btnIndex == 2){
	for(i = 0; i < array_length(contributors); i++){
		if (i % 2 == 1){
			draw_set_font(fnt_small);	
		}else{
			draw_set_font(fnt_name);	
		}
		draw_text(x - 200, y - 300 + (50 * i), contributors[i]);
	}
	}
}