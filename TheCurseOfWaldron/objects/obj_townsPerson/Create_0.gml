moving = false;
talking = false;
mapOpened = false;
switch (room){
case 5:	
		
		
	scr_openTextFile("room1.txt");
	if (lvl == 2){
		scr_openTextFile("room1pt2.txt");
	}
	
	
	break;
case 2:
	scr_openTextFile("room2.txt");
	break;
case 4:
	scr_openTextFile("room3.txt");
	break;
}