//move with the player
if (mouse_check_button(mb_left)) {
	motion_set(global.dir + 180, global.spd);
} else {
    speed = 0;
};

if(obj_player.player_is_idle){
	sprite_index = spr_buddy_idle;
} else {
	sprite_index = current_sprite;
}


// Get the distance between obj_player and obj
distance = point_distance(x, y, obj_player.x, obj_player.y);

// Check if the distance is below the threshold
if (distance < threshold) {
    // Calculate the direction away from the other object
    runaway_dir = point_direction(obj_player.x, obj_player.y, x, y);

    // Move away with a random speed
    random_speed = 0.8 + random(0.8);

    // Change direction and speed at random intervals
    if (current_time mod change_interval == 0) {
        runaway_dir = runaway_dir + irandom_range(-50, 50); // Randomize the direction slightly
    }
	
	// CHECK FOR COLLISION WITH WALLS AND STOP MOVING
	dx = lengthdir_x(8, global.dir + 180);
	dy = lengthdir_y(8, global.dir + 180);

	if (place_meeting(x + dx, y + dy, obj_wall)) {
		// no motion add
	} else {
		motion_add(runaway_dir, random_speed);
	}
}

if (distance < 50){
	current_sprite = spr_buddy_idle;
	
	if(mouse_check_button_released(2)){
	
	////create left-over
	//instance_create_layer(x,y, "Instances", obj_body);
	instance_create_layer(x,y, "Instances", obj_path_explorer);

	//do smthing to the player
	obj_player.player_speed *= 2;
	obj_player.tyapka = 0
	global.counter += 1;
	global.elapsed_time +=  20;
	instance_create_layer(global.counter*5, 10, "Items", obj_counter);

	//destory self
	instance_destroy(self);
	}
}  else {
	current_sprite = spr_buddy;
};




