

// move when player moves
if (mouse_check_button(mb_left)) {
	motion_set(global.dir + 180, global.spd);
} else {
    speed = 0;
};

if(obj_player.player_is_idle){
	sprite_index = spr_item_idle;
} else{
	sprite_index = spr_item_test;
}

// give passive effects (speed)
//spawn at random places
// light up