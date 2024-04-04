/// @description Insert description here
// You can write your code in this editor

timer -= 1

if (timer < 0){
	instance_destroy(self);
}

if (mouse_check_button(mb_left)) {
	motion_set(global.dir + 180, global.spd);
} else {
    speed = 0;
};