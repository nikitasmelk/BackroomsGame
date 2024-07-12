// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function findIndexInArray(arr, item){

    _array_length = array_length_1d(arr);
    for (var i = 0; i < _array_length; i++) {
        if (arr[i] == item) {
            return i; // Return the index if the item is found
        }
    }
    return -1; // Return -1 if the item is not found
}
