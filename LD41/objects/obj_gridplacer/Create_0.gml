/// @desc Setup the Placer
object = (obj_building)

// Visual
rotval = 0
col = 0
grid_square_size = 32;
cost = global.house_cost;
//Enabled
enabled = true
sprite_scale_pause = display_get_gui_width()/view_wport[0]
sprite_pause = noone

enum buildS{
	house,
	road,
}
buildingS[buildS.house] = obj_building
buildingS[buildS.road] = obj_road

bdescS[buildS.house] = "A Standard Resedential Building."
bdescS[buildS.road] = "Takes you from one place to another."

enum buildE{
	water,
	electricity,
}
buildingE[buildE.water] = obj_water
buildingE[buildE.electricity] = obj_electricity

bdescE[buildE.water] = "Essentials for life!"
bdescE[buildE.electricity] = "Essentials for life!"

btype = 0