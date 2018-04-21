/// @desc Visual
if enabled{
if !place_meeting(x,y,obj_collider){
	col = c_blue	
}else{
	col = c_maroon
}
//Draw the box
draw_set_alpha(0.8)
draw_sprite_ext(spr_gridplacer,0,x,y,1,1,rotval,col,0.8)
draw_sprite(object_get_sprite(object),0,x,y)
sprite_index = object_get_sprite(object)
draw_set_alpha(1)
}