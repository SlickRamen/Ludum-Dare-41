/// Variables, enums, etc the whole game needs

global.one_second = game_get_speed(gamespeed_fps);

//Section for establishing variables for the general state of things
enum catergory {
	roads,
	housing,
	services,
	employment,
	cultists,
	taxes
}

enum catergory_state {
	none,
	terrible,
	bad,
	ok,
	good,
	excellent
}

for (var i = 0; i <= catergory.taxes; i++) {
	global.state[i] = catergory_state.none;	
}

global.advisor_roads = instance_create_layer(x,y,"Instances",obj_advisor_roads);
global.advisor_housing = instance_create_layer(x,y,"Instances",obj_advisor_housing);
global.advisor_services = instance_create_layer(x,y,"Instances",obj_advisor_services);
global.advisor_employment = instance_create_layer(x,y,"Instances",obj_advisor_employment);
global.advisor_cultists = instance_create_layer(x,y,"Instances",obj_advisor_cultists);
global.advisor_taxes = instance_create_layer(x,y,"Instances",obj_advisor_taxes);

//Section for what the game upkeep events needs to manage

global.upkeep_time = global.one_second*30;

enum game_upkeep {
	income,
	costs,
	stat_changes
}

//Game stats
global.total_population = 1;
global.starting_money = 10000;
global.money = global.starting_money;

//UI stuff
draw_set_font(fnt_text);
global.base_UI_enabled = true;

//Costs
global.house_cost = 100;
global.road_cost = 10;

//Establish everything and goto the first room
room_goto_next();