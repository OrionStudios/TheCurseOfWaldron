/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("N")) && room != 4){
room_goto_next();
}else if(keyboard_check_pressed(ord("N")) && room == 4){
room_goto(6)
}else if (keyboard_check_pressed(ord("R"))){
game_restart();
}