

// move when player moves
if (mouse_check_button(mb_left)) {
	motion_set(global.dir + 180, global.spd);
} else {
    speed = 0;
};

// player idle state 
if(obj_player.player_is_idle){
	sprite_index = spr_item_idle;
} else{
	sprite_index = current_sprite;
};

// player proximity 
if(distance_to_object(obj_player) <= 50){
	current_sprite = spr_item_idle;
	
	if(mouse_check_button_released(2)){
	
	//create left-over
	instance_create_layer(x,y, "Instances", obj_body);
	//instance_create_layer(x,y, "Instances", obj_path_explorer);

	//do smthing to the player
	obj_player.player_speed *= 2;
	obj_player.tyapka = 0
	//global.counter += 1;
	//global.elapsed_time +=  20;
	//instance_create_layer(global.counter*5, 10, "Items", obj_counter);

	//destory self
	instance_destroy(self);
	}
} else {
	current_sprite = spr_item_test;
};


// give passive effects (speed)
//spawn at random places
// light up