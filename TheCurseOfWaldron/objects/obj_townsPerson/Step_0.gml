switch (room){
case 7:	
	if (lvl == 2 && !moving){
		moving = true;
		
		
	
	}
		if (lvl == 2 && !talking){
			talking = true;
			scr_openTextFile("room1pt2.txt");
			
			
		}
		if (lvl == 2 && !instance_exists(obj_effect) && talking && !mapOpened){
			mapOpened = true;
			audio_play_sound(MapComesUp, 0, false);
			instance_create_layer(200 + camera_get_view_x(view_camera[0]), 50 + camera_get_view_y(view_camera[0]), "Text", obj_map);
			obj_player.talking = true;
		}
	
	break;
case 3:
	if (lvl == 3 && !talking){
		talking = true;
		scr_openTextFile("room2pt2.txt");	
	}
	if(talking && !instance_exists(obj_effect) && !mapOpened){
		mapOpened = true;
		audio_play_sound(MapComesUp, 0, false);
		instance_create_layer(200 + camera_get_view_x(view_camera[0]), 50 + camera_get_view_y(view_camera[0]), "Text", obj_map);
	}
	break;
case 6:
	if (lvl = 4 && !talking){
		talking = true;
		scr_openTextFile("room3pt2.txt");
	}

	if (lvl == 4 && talking && !instance_exists(obj_effect)&& !talkingToAstra){
		talkingToAstra = true;
		instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "Room", obj_mysticRoom);
		scr_openTextFile("room3pt3.txt");
		mapOpened = true;
	}
	if (mapOpened && !instance_exists(obj_effect) && !instance_exists(obj_map)){
		mapOpened = false;
			audio_play_sound(MapComesUp, 0, false);
			instance_create_layer(200 + camera_get_view_x(view_camera[0]), 50 + camera_get_view_y(view_camera[0]), "Text", obj_map);
			obj_player.talking = true;
	}
	
	break;
}