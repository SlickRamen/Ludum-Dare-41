///collect_taxes()
if taxrate == 0{
	global.money += (global.current_population-1)*20	
}else{
	global.money += (global.current_population-1)*10	
}