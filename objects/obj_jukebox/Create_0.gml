/// @description Insert description here
// You can write your code in this editor

//create the guide for the object


personal_guide = (instance_create_layer(x,y,"Guide", obj_guide));
personal_guide.parent_id = self;

{
    parent_id = other;
}

current_sprite = spr_mathewmatikstest;
base_sprite = current_sprite;
idle_sprite = spr_item_idle;
