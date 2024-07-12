//create the guide for the object


personal_guide = (instance_create_layer(x,y,"Guide", obj_guide));
personal_guide.parent_id = self;

{
    parent_id = other;
}

current_sprite = spr_item_test;