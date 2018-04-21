/// @desc
if distance_to_object(obj_electricity) <= 60{
	draw_set_color(c_white)
	draw_self()
}else{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_dkgray,image_alpha)
}