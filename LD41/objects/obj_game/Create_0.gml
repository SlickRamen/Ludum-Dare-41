/// Variables, enums, etc the whole game needs
global.one_second = game_get_speed(gamespeed_fps);
taxrate = 0
alarm[1] = global.one_second
alarm[2] = global.one_second
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

enum disaster {
	none,
	earthquake,
	tsunami,
	drought,
	fire,
	meteorstrike,
	alienattack
}

enum weather{ //This will make events more likeley depending on weather
	subzero, //Highter chance for an alien attack?
	freezing,
	cold,
	moderate,
	warm,
	hot,
	boiling //Highter chance for a fire and drought ^^^
}

for (var i = 0; i <= catergory.taxes; i++) {
	global.state[i] = catergory_state.none;	
}

advisor_roads = instance_create_layer(x,y,"Instances",obj_advisor_roads);
advisor_housing = instance_create_layer(x,y,"Instances",obj_advisor_housing);
advisor_services = instance_create_layer(x,y,"Instances",obj_advisor_services);
advisor_employment = instance_create_layer(x,y,"Instances",obj_advisor_employment);
advisor_cultists = instance_create_layer(x,y,"Instances",obj_advisor_cultists);
advisor_taxes = instance_create_layer(x,y,"Instances",obj_advisor_taxes);

//Section for what the game upkeep events needs to manage

global.upkeep_time = global.one_second*30;

enum game_upkeep {
	income,
	costs,
	stat_changes
}

//Game stats
global.current_population = 1
global.total_population = 100;
global.starting_money = 10000;
global.money = global.starting_money;

//UI stuff
draw_set_font(fnt_text);
global.base_UI_enabled = true;

//Costs
global.house_cost = 100;
global.road_cost = 10;
global.electfaccost = 250
global.waterfaccost = 250
//Establish everything and goto the first room
room_goto_next();