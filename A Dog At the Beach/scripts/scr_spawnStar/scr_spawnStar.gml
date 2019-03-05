var starX = random_range(100, room_width - 100);
var starY = random_range(10, obj_water.y - 10);

instance_create_layer(starX, starY, "InstanceWater", obj_star);