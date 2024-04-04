//MOVE ALL WALLS
obj_top_detect.y += 1024;
y += 1024;
obj_right_detect.y += 1024;
obj_left_detect.y += 1024;

// DELETE OLD CHUNKS
y_temp = -room_height/4 - 6;

instance_create_layer(0 + obj_distance_tracker.x, y_temp, "Detection", obj_destroy);
instance_create_layer(room_width/3 + obj_distance_tracker.x, y_temp, "Detection", obj_destroy);
instance_create_layer(2*room_width/3 + obj_distance_tracker.x, y_temp, "Detection", obj_destroy);

// GENERATE NEW CHUNKS
tracker_lengthy = room_height + obj_distance_tracker.y;

generateChunk(obj_distance_tracker.x, tracker_lengthy, global.array_of_rooms[irandom(array_length_1d(global.array_of_rooms) - 1)]);
generateChunk(room_width/3 + obj_distance_tracker.x, tracker_lengthy, global.array_of_rooms[irandom(array_length_1d(global.array_of_rooms) - 1)]);
generateChunk(2*room_width/3 + obj_distance_tracker.x, tracker_lengthy, global.array_of_rooms[irandom(array_length_1d(global.array_of_rooms) - 1)]);


obj_distance_tracker.y = -room_height/4 + 1024;

