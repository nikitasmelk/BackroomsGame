//coliide with player


//create left-over
instance_create_layer(x,y, "Instances", obj_body);
instance_create_layer(x,y, "Instances", obj_path_explorer);

//do smthing to the player
other.player_speed *= 2;
other.tyapka = 0
global.counter += 1;
global.elapsed_time +=  20;
instance_create_layer(global.counter*5, 10, "Items", obj_counter);

//destory self
instance_destroy(self);


