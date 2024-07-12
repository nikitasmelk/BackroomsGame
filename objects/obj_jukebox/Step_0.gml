// move when player moves
if (mouse_check_button(mb_left)) {
	motion_set(global.dir + 180, global.spd);
} else {
    speed = 0;
};

// player idle state 
if(obj_player.player_is_idle){
	sprite_index = idle_sprite;
} else{
	sprite_index = current_sprite;
};

// player proximity 
if(distance_to_object(obj_player) <= 50){
	current_sprite = idle_sprite;
	
	if(mouse_check_button_released(2)){

	//destory self
	//instance_destroy(self);
	}
} else {
	current_sprite = base_sprite;
};