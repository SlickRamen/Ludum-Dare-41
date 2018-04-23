///collect_taxes()
if taxrate == 0{
	global.taxmoney = (global.current_population-1)*20
	global.money += global.taxmoney
	global.costmoney = (instance_number(obj_electricity) - instance_number(obj_water))*10
	global.money -= global.costmoney
}else{
	global.taxmoney = (global.current_population-1)*10
	global.money += global.taxmoney
	global.costmoney = (instance_number(obj_electricity) - instance_number(obj_water))*5
	global.money -= global.costmoney
}