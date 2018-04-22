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
		if object != obj_road {
			instance_create_layer(x,y,"Instances",object)
			global.money -= cost;
		} else {
			if (place_meeting(x+32,y,obj_road)) || (place_meeting(x-32,y,obj_road)) || (place_meeting(x,y-32,obj_road)) || (place_meeting(x,y+32,obj_road)) || !instance_exists(obj_road) {
				var o = instance_create_layer(x,y,"Instances",object)
				global.money -= cost;
				o.image_index = dispindex
			}
		}
	}else if mouse_check_button(mb_right) and collider{
		var b = instance_nearest(x,y,obj_collider)
		instance_destroy(b)
		
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
if object == (obj_road){
if keyboard_check_pressed(vk_left){
			if dispindex > 0{
			dispindex -= 1	
			}else{
			dispindex = sprite_get_number(object_get_sprite(object))-1	
			}
}else if keyboard_check_pressed(vk_right){
			if dispindex < sprite_get_number(object_get_sprite(object))-1	{
			dispindex += 1	
			}else{
			dispindex = 0
			}
}
}else{
	dispindex = 0	
}