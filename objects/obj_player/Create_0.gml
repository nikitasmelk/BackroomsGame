// PLAYER VARIABLES
x = room_width/2;
y = room_height/2;

global._fx_timer = fx_create("_filter_screenshake");
fx_set_parameter(global._fx_timer, "g_Magnitude", 80);
//layer_set_fx("Instances", _fx_tint);

player_speed = 8;
max_speed = 10;
min_speed = 3;
idle_cooldown = 500;
player_is_idle = false;
tyapka = 0
isDead = false;