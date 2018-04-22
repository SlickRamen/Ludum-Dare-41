/// @desc Set the Depth
event_inherited()
depth = -y

if (place_meeting(x+32,y,obj_road)) || (place_meeting(x-32,y,obj_road)) || (place_meeting(x,y-32,obj_road)) || (place_meeting(x,y+32,obj_road)) {
	on_grid = true;
} else {
	on_grid = false;
}

if (employees < 5) {
	
}