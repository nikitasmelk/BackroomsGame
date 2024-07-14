
// Increment the elapsed time by the delta time
if(global.elapsed_time > 0){
	global.elapsed_time -= delta_time / 1000000; // Convert microseconds to seconds
} else {
	global.elapsed_time = 0;
}


// Trigger Game Over Once
if(global.elapsed_time <= 0 and !obj_player.isDead){
	
	global.spd = 0;
	obj_player.isDead = true;
	alarm[0] = 1.5 * room_speed; // Set alarm to 1.5 seconds to close game
}

//QUIT GAME
if (keyboard_check_pressed(ord("Q"))){
	game_end();
}