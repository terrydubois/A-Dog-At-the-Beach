randomise();

var spawnX = argument0;

var inst = instance_create_layer(spawnX, random_range(sprite_get_height(spr_clouds) / 2, obj_water.y - (sprite_get_height(spr_clouds) / 2)), "InstanceCloud", obj_cloud);

inst.image_speed = 0;
inst.image_index = irandom(3);
inst.image_alpha = random_range(0.5, 1);