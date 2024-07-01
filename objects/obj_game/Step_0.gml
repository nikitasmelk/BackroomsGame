
// Increment the elapsed time by the delta time
global.elapsed_time -= delta_time / 1000000; // Convert microseconds to seconds

if(global.elapsed_time <= 0){
	game_end();
}