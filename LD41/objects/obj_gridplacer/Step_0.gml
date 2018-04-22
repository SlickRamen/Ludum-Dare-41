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

	
	if mouse_check_button(mb_left) and !collider and global.money >= cost{
		instance_create_layer(x,y,"Instances",object)
		global.money -= cost;
	}
}

if keyboard_check_pressed(vk_space){
	if enabled{
		enabled = false
		sprite_pause = sprite_create_from_surface(application_surface,0,0,view_wport[0],view_hport[0],false,false,0,0) 
		instance_deactivate_all(true)
		
	}else{
		enabled = true	
		if sprite_exists(sprite_pause){
			sprite_delete(sprite_pause)	
		}
		instance_activate_all()
	}
}