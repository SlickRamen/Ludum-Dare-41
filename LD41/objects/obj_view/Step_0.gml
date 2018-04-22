/// @desc
if instance_exists(obj_gridplacer) and distance_to_object(obj_gridplacer) > 30{
	x += (obj_gridplacer.x -x )*.05	
	y += (obj_gridplacer.y -y )*.05
}