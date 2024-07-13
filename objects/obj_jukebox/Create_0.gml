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

max_distance = 600; 
min_distance = 50;
volume = 0;

audio_play_sound(snd_NAR, 1, true);
