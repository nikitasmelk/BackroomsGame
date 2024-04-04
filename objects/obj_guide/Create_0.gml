//guides the player to the object (hints glowing light)

// variable parent_id is passed from parent
dir = 0;
dist = 0;
vport = room_get_viewport(Room1, 0); // viewport 0 of the room
px = obj_player.x;
py = obj_player.y;
vpw = vport[3]/2;
vph = vport[4]/2;

// knows the x and y of the object
// stays at corner of screen if far away
// only visible in observing state