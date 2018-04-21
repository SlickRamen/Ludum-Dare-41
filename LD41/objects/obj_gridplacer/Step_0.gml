/// @desc Move with the mouse

x = floor(mouse_x/grid_square_size)*grid_square_size
y = floor(mouse_y/grid_square_size)*grid_square_size
if enabled{
//Visual 
collider = place_meeting(x,y,obj_collider)

depth = -y - 10
rotval = clamp(rotval,0,360)
	rotval += 2
	if rotval >= 360{
		rotval = 0
	}
	
	if keyboard_check_pressed(ord("1")){
		object = (obj_building)
		cost = global.house_cost;
	}else if keyboard_check_pressed(ord("2")){
		object = (obj_road)
		cost = global.road_cost;
	}else if keyboard_check_pressed(ord("3")){
		object = (obj_electricity)
		cost = global.waterfaccost;
	}
	else if keyboard_check_pressed(ord("4")){
		object = (obj_water)
		cost = global.electfaccost;
	}
	
	
	if mouse_check_button(mb_left) and !collider and global.money >= cost{
		instance_create_layer(x,y,"Instances",object)
		global.money -= cost;
	}
}

if keyboard_check_pressed(vk_space){
	if enabled{
		enabled = false
	}else{
		enabled = true	
	}
}