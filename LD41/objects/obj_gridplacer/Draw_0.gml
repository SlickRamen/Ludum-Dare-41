/// @desc Visual
if enabled{
if !place_meeting(x,y,obj_collider){
	if (object == obj_road) {
		if (place_meeting(x+32,y,obj_road)) || (place_meeting(x-32,y,obj_road)) || (place_meeting(x,y-32,obj_road)) || (place_meeting(x,y+32,obj_road)) || !instance_exists(obj_road) {	
		col = c_blue
		} else {
		col = c_maroon
		}
	} else {
		col = c_blue
	}
}else{

	col = c_maroon
}
//Draw the box
draw_set_alpha(0.8)
draw_sprite_ext(spr_gridplacer,0,x,y,1,1,rotval,col,0.8)
draw_sprite(object_get_sprite(object),dispindex,x,y)
sprite_index = object_get_sprite(object)
image_index = dispindex
draw_set_alpha(1)
}