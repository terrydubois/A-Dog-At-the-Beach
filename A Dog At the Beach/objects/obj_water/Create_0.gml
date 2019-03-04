

for (var i = 0; i < 3; i++) {
	var currentCrestX = i * 140;
	
	while (currentCrestX < room_width) {
		
		var currentCrestY = obj_water.y + 70 + (i * 70);
		instance_create_layer(currentCrestX, currentCrestY, "InstancesWaterCrest", obj_waterCrest);
		currentCrestX += 200;
	}
}