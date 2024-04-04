// IF object outside of view port horizontally
	dir = point_direction(px, py, parent_id.x, parent_id.y);
	visible = true;

if (parent_id.y > (py + vph) or parent_id.y < (py - vph)){ 
	dist = vph/cos(degtorad(dir + 90));
	dist = abs(dist);
	x = px + lengthdir_x(dist, dir);
	y = py + lengthdir_y(dist, dir);
	
} else if(parent_id.x > (px + vpw) or parent_id.x < (px - vpw)){
	dist = vpw/cos(degtorad(dir));
	dist = abs(dist);
	x = px + lengthdir_x(dist, dir);
	y = py + lengthdir_y(dist, dir);
	
// OR vertically
} else {
	x = parent_id.x;
	y = parent_id.y;
	visible = false;
}

image_angle = point_direction(x, y, obj_player.x, obj_player.y) + 90;

// 250/distance

scale = 400 / point_distance(obj_player.x, obj_player.y, parent_id.x, parent_id.y);
if(scale < 0.6) { scale = 0.6};
image_xscale = scale + random_range(0, 0.1); // 2000 // 150
image_yscale = scale + random_range(0, 0.1); // 2000 // 150


if(!obj_player.player_is_idle){
	visible = false;
}

//if(point_distance(obj_player.x, obj_player.y, parent_id.x, parent_id.y) < vph){
//	visible = false;
//} else{
//	visible = true;
//}
