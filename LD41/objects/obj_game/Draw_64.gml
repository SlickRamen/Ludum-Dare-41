//Handling basic UI options and displays

var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

if (global.base_UI_enabled == true) {
	draw_set_halign(fa_right);
	draw_sprite_ext(spr_tax,taxrate,_gui_w - 64, _gui_h - 128,2,2,0,c_white,1)
	draw_text_transformed(_gui_w - 16,_gui_h - 32,"Cash: " + string(global.money),2,2,0);
	draw_set_halign(fa_left);
}

if keyboard_check_pressed(ord("E")){
	if taxrate == 0{
		taxrate = 1	
	}else{
		taxrate = 0	
	}
}

draw_sprite(spr_population,0,0,0)
draw_set_color(c_white)
draw_text(0+16,0,": " + string(global.current_population))