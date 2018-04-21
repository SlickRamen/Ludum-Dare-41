/// @desc Move with the mouse
x = floor(mouse_x/16)*16
y = floor(mouse_y/16)*16

//Visual 
collider = place_meeting(x,y,obj_collider)
depth = -y
rotval = clamp(rotval,0,360)
	rotval += 2
	if rotval >= 360{
		rotval = 0
	}
	
	if keyboard_check_pressed(ord("1")){
		object = (obj_furnace)
	}else if keyboard_check_pressed(ord("2")){
		object = (obj_tree)
	}
	
	if mouse_check_button(mb_left) and !collider{
		instance_create_layer(x,y,"Instances",object)
	}
