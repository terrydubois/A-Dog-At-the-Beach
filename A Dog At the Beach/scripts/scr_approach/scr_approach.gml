var val = argument0;
var valDest = argument1;
var approachRate = argument2;

if (val < valDest) {
	val += approachRate;
}
else if (val > valDest) {
	val -= approachRate;
}

return val;