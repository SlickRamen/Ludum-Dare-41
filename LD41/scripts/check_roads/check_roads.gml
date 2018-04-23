///@arg road

var _road = argument0;

var _left = instance_place(x-32,y,obj_road);
var _right = instance_place(x+32,y,obj_road);
var _up = instance_place(x,y-32,obj_road);
var _down = instance_place(x,y+32,obj_road);

if (_left != noone) {
	_left.connect_right = true;
	_road.connect_left = true;
	with (_left) {
		if (connect_up) || (connect_down) {
			image_index = 2;
		} else {
			image_index = 1;
		}
	}
}

if (_right != noone) {
	_right.connect_left = true;
	_road.connect_right = true;
	with (_right) {
		if (connect_up) || (connect_down) {
			image_index = 2;
		} else {
			image_index = 1;
		}
	}
}

if (_up != noone) {
	_up.connect_down = true;
	_road.connect_up = true;
	with (_up) {
		if (connect_left) || (connect_right) {
			image_index = 2;
		} else {
			image_index = 0;
		}
	}
}

if (_down != noone) {
	_down.connect_up = true;
	_road.connect_down = true;
	with (_down) {
		if (connect_left) || (connect_right) {
			image_index = 2;
		} else {
			image_index = 0;
		}
	}
}

with (_road) {
	if (_down == noone) and (_up == noone) and (_left == noone) and (_right == noone) {
		image_index = 2;
		exit;
	}
	if (connect_up) || (connect_down) {
		if (connect_left) || (connect_right) {
			image_index = 2;	
		} else {
			image_index = 0;	
		}
	} else {
		image_index = 1;	
	}
}