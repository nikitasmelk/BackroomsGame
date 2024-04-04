//move with the player
if (mouse_check_button(mb_left)) {
	motion_set(global.dir + 180, global.spd);
} else {
    speed = 0;
};

if(obj_player.player_is_idle){
	sprite_index = spr_buddy_idle;
} else {
	sprite_index = spr_buddy;
}