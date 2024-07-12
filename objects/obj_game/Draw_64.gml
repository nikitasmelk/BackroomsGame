// Kill tracker lines draw 
if(obj_player.player_is_idle){
	//draw_set_color(c_green);
	draw_set_color(c_red);
for (var i=1; i<global.counter+1 ;i++) {
	draw_line_width(i*7 + irandom_range(-1,1), 10 + irandom_range(-2,2), i*7 + irandom_range(-1,1), 20 + irandom_range(0,2), 2 )
	
	//make a cross instead of a line?
	//draw_line_width(i*7 - 5 + irandom_range(-1,1), 15 + irandom_range(-2,2), i*7 + 5 + irandom_range(-1,1), 15 + irandom_range(0,2), 2 )
}

// Draw the timer on the screen
draw_set_font(Font2); // Set the font to the default font (or any font you prefer)

// Format the elapsed time to display seconds
var seconds = string_format(global.elapsed_time, 0, 2); // Format to 2 decimal places

// Draw the text at the desired position (e.g., top-left corner)
draw_text(10 + irandom_range(-1, 1), 40  + irandom_range(-1, 1), seconds);

}


//draw_text(100, 100, instance_exists(obj_jukebox));




