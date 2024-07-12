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
	removeObjective(obj_jukebox);
	//audio_play_sound(snd_jukebox_interact, 1, false);
	
		if(audio_is_playing(snd_backgroundBuzz)){
			audio_stop_sound(snd_backgroundBuzz);
		}else {
			audio_play_sound(snd_backgroundBuzz, 1, true);
		}
	
	}
} else {
	current_sprite = base_sprite;
};