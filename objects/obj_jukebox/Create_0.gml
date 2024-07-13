//create the guide for the object

personal_guide = (instance_create_layer(x,y,"Guide", obj_guide));
personal_guide.sprite_index = spr_guide_green;
personal_guide.parent_id = self;

{
    parent_id = other;
}

current_sprite = spr_jukebox;
base_sprite = current_sprite;
idle_sprite = spr_jukebox;

image_speed = 0;
