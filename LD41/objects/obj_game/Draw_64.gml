//Handling basic UI options and displays

var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

if (global.base_UI_enabled == true) {
	draw_set_halign(fa_right);
	draw_text_transformed(_gui_w - 16,_gui_h - 32,"Cash: " + string(global.money),2,2,0);
	draw_set_halign(fa_left);
}