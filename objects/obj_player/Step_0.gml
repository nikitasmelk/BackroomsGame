//if (mouse_check_button(mb_left)) {
//	motion_set(point_direction(x, y, mouse_x, mouse_y), 4);
//} else {
//    speed = 0;
//};

if(!isDead){

global.dir = point_direction(x, y, mouse_x, mouse_y);

// CHECK FOR COLLISION WITH WALLS AND STOP MOVING
dx = lengthdir_x(8, global.dir);
dy = lengthdir_y(8, global.dir);

if (place_meeting(x + dx, y + dy, obj_wall)) {
	global.spd = 0;
} else {
	global.spd = player_speed;
}

if (mouse_check_button(mb_left)) {
	layer_enable_fx("blur", true);
	
	//STOP BEING IDLE
	if(player_is_idle){
		sprite_index = spr_player_test;
		layer_enable_fx("Concentration", false);
		layer_enable_fx("Concentrate_2", false);
		player_is_idle = false;
		cursor_sprite = spr_cursor_default;
	}

	// FLIP THE SPRITE
	if(mouse_x > x){
		image_xscale = 1;
	} else {
		image_xscale = -1;
	}
	
	
	image_speed = 4; // ANIMATE
	idle_cooldown = 80; // RESET IDLE COOLDOWN
} else {
	layer_enable_fx("blur", false);
	image_speed = 0; // DONT ANIMATE
	image_index = 0;
}

idle_cooldown--;

if(idle_cooldown <= 0){
	//image_index = 0;
	sprite_index = spr_player_idle;
	layer_enable_fx("Concentration", true);
	layer_enable_fx("Concentrate_2", true);
	cursor_sprite = spr_cursor_idle;
	player_is_idle = true;
}

// Make sure player is not exceeding maximas
if(player_speed > max_speed){ player_speed = max_speed;}
if(player_speed < min_speed){ player_speed = min_speed;}

player_speed -= 0.02;
tyapka += 1;
fx_set_parameter(global._fx_timer, "g_Magnitude", tyapka);

if (distance_to_object(obj_interactive) <= 40){
	sprite_index = spr_player_idle;
	cursor_sprite = spr_cursor_idle_bigger;
	
} else if (!player_is_idle){
	sprite_index = spr_player_test;
	cursor_sprite = spr_cursor_default;
}
} else {
	image_speed = 1;
	sprite_index = spr_player_death;
}