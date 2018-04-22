/// @desc Step
if global.current_population > global.total_population{
	global.current_population = global.total_population	
}


if global.current_population >= 100 and milestone = 100{
	milestone = 1000
	with (advisor_pm) {
    create_dialogue_window(id,0,0);
	}
	global.total_population	= 1000
}