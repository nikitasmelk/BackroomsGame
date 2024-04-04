/// @description Insert description here
// You can write your code in this editor
if(obj_player.player_is_idle){
	draw_set_color(c_red);
for (var i=1; i<global.counter+1 ;i++) {
	draw_line_width(i*7 + irandom_range(-1,1), 10 + irandom_range(-2,2), i*7 + irandom_range(-1,1), 20 + irandom_range(0,2), 2 )
}
}

