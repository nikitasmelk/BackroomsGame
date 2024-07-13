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

distance = distance_to_object(obj_player);

// player proximity 
if(distance <= 50){
	current_sprite = idle_sprite;
	
	if(mouse_check_button_released(2)){

	//destory self
	//instance_destroy(self);
	if(findIndexInArray(global.objectives, obj_jukebox) != -1){
		removeObjective(obj_jukebox);
		global.counter += 1;
	}
	
	image_speed = 1;
	image_index = 1;

	//audio_play_sound(snd_jukebox_interact, 1, false);
	
		if(audio_is_playing(snd_NAR)){
			audio_pause_sound(snd_NAR);
		}else if(audio_is_paused(snd_NAR)) {
			audio_resume_sound(snd_NAR);
		}
	
	}
} else {
	current_sprite = base_sprite;
};

if(image_index == 4){
	image_speed = 0;
} 


if (distance <= min_distance) {
    volume = 0.7; // Full volume
} else if (distance >= max_distance) {
    volume = 0.02; // Minimum volume
} else {
    volume = 1 - ((distance - min_distance) / (max_distance - min_distance));
}

audio_sound_gain(snd_NAR, volume, 0); // Adjust gain instantly