function generateChunk(x_start, y_start, room_array){ // generate chunk with a random room
	
	instance_create_layer(x_start, y_start, "Floor", obj_floor);
	instance_create_layer(x_start + irandom_range(0,960), y_start + irandom_range(0,960), "Items", obj_item_test);
	
	//check if objectives exist
	if(array_length_1d(global.objectives) > 0){
		
	//20% chance to spawn an interactive objective
	if (irandom(10) < 2){
		
		//select random objective
		objective_id = irandom(array_length_1d(global.objectives)-1);

		//if it already exists -- DONT SPAWN IT
		if(!instance_exists(global.objectives[objective_id])){
			instance_create_layer(x_start + irandom_range(0,960), y_start + irandom_range(0,960), "Items", global.objectives[objective_id]);
		}
		
	}
	}
	
	random_num = irandom_range(0,3);
	
	for (var i=0; i<array_length_1d(room_array) ;i++) {
		
		switch(random_num){
			case 0:
				x_coord = room_array[i, 0]; // normal room
				y_coord = room_array[i, 1];
			break;
			case 1:
				x_coord = room_array[i, 1]; // swap x and y values (flip diagonally)
				y_coord = room_array[i, 0];
			break;
			case 2:
				x_coord = 31 - room_array[i, 0]; // flip horizontally
				y_coord = room_array[i, 1];
			break;
			case 3:
				x_coord = room_array[i, 0]; // flip vertically
				y_coord = 31 - room_array[i, 1];
			break;
		}
		
		
		obj_name = room_array[i, 2];
		instance_create_layer(x_coord*32 + x_start, y_coord*32 + y_start, "Walls", obj_name);
	}
}