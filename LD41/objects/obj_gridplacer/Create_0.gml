/// @desc Setup the Placer
object = (obj_building)

// Visual
rotval = 0
col = 0
grid_square_size = 32;
cost = global.costS[buildS.house];
//Enabled
enabled = true
sprite_scale_pause = display_get_gui_width()/view_wport[0]
sprite_pause = noone

enum buildS{
	house,
	road,
	reshouse
}
buildingS[buildS.house] = obj_building
buildingS[buildS.road] = obj_road
buildingS[buildS.reshouse] = obj_house

bdescS[buildS.house] = "A Standard Resedential Building."
bdescS[buildS.road] = "Takes you from one place to another."
bdescS[buildS.reshouse] = "A cozy place to spend your life."

enum buildE{
	water,
	electricity,
	factory
}
buildingE[buildE.water] = obj_water
buildingE[buildE.electricity] = obj_electricity
buildingE[buildE.factory] = obj_factory

bdescE[buildE.water] = "Water is life!"
bdescE[buildE.electricity] = "Energy if life!"
bdescE[buildE.factory] = "Makes you money!"

btype = 0

dispindex = 0