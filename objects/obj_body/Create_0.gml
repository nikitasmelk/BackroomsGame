// Get the distance between obj1 and obj2
distance = point_distance(x, y, obj_player.x, obj_player.y);

// Define the threshold distance below which obj1 should start moving away
threshold = 200; // You can adjust this value
//mov_speed = 1;

// Define the interval for changing direction and speed
change_interval = 2;
random_speed = 0.8 + random(0.8);
runaway_dir = 0;