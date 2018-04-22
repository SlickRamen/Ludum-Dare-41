/// @desc Draw the GUI
draw_text(0,50,object)
if enabled{
	draw_text(10,display_get_gui_height()-20,"Press [SPACE] to open build menu.")	
}else{
	draw_set_color(c_black)
	draw_set_alpha(0.8)
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false)
	draw_set_alpha(1)
	draw_roundrect(-1,display_get_gui_height()-120,display_get_gui_width()-1,display_get_gui_height()+30,false)
	draw_set_color(c_white)
	
	if btype == 0{ //Standard
	for(var i = 0; i < 2; i ++){
		draw_roundrect(130+(80*i),display_get_gui_height()-60,180+(80*i),display_get_gui_height()-10,false)	
		draw_sprite(object_get_sprite(buildingS[i]),0,156+(80*i),display_get_gui_height()-34)
		draw_text(130+(80*i),display_get_gui_height()-80,"[" + string((i+1)) + "]")
		
		if keyboard_check_pressed(ord(i+1)){
			object = buildingS[i]
		}
	}
	}else if btype == 1{ //Essential
		
	}else if btype == 2{
		
	}
}

