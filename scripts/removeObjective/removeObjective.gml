// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function removeObjective(objective_name){
	temp_array = [];
	objective_id = findIndexInArray(global.objectives, objective_name);
		
		//copy array without spawned objective
		for (var i=0; i<array_length_1d(global.objectives)-1 ;i++) {
			
			    if (i != objective_id) {
				 array_push(temp_array, global.objectives[i]);
			 }
		}
		
		global.objectives = temp_array;
}