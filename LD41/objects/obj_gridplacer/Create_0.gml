/// @desc Setup the Placer
object = (obj_building)

// Visual
rotval = 0
col = 0
grid_square_size = 32;
cost = global.house_cost;
//Enabled
enabled = true

enum buildS{
	house,
	road,
	
}
buildingS[buildS.house] = spr_building
buildingS[buildS.road] = spr_road

btype = 0