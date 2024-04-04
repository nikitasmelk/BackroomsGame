//MOVE ALL WALLS
obj_top_detect.x -= 1024;
x -= 1024;
obj_right_detect.x -= 1024;
obj_bot_detect.x -= 1024;

// DELETE OLD CHUNKS
temp_x = 2*room_width/3 + 6 + obj_distance_tracker.x;
instance_create_layer(temp_x, obj_distance_tracker.y, "Detection", obj_destroy);
instance_create_layer(temp_x, room_height/3 + obj_distance_tracker.y, "Detection", obj_destroy);
instance_create_layer(temp_x, 2*room_height/3 + obj_distance_tracker.y, "Detection", obj_destroy);

// GENERATE NEW CHUNKS
tracker_lengthx = -(room_width/3 - obj_distance_tracker.x);

generateChunk(tracker_lengthx, obj_distance_tracker.y, global.array_of_rooms[irandom(array_length_1d(global.array_of_rooms) - 1)]);
generateChunk(tracker_lengthx, room_height/3 + obj_distance_tracker.y, global.array_of_rooms[irandom(array_length_1d(global.array_of_rooms) - 1)]);
generateChunk(tracker_lengthx, 2*room_height/3 + obj_distance_tracker.y, global.array_of_rooms[irandom(array_length_1d(global.array_of_rooms) - 1)]);

//RESET TRACKER
obj_distance_tracker.x =  tracker_lengthx;
