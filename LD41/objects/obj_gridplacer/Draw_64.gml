/// @desc Draw the GUI
draw_text(0,50,object)
if enabled{
	draw_text(10,display_get_gui_height()-20,"Press [SPACE] to open build menu.")	
}else{
	if sprite_exists(sprite_pause){
		draw_sprite_ext(sprite_pause,0,0,0,sprite_scale_pause,sprite_scale_pause,0,c_white,1)
	}
	draw_set_color(c_black)
	draw_set_alpha(0.8)
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false)
	draw_set_alpha(1)
	draw_roundrect(-1,display_get_gui_height()-120,display_get_gui_width()-1,display_get_gui_height()+30,false)
	draw_set_color(c_white)
	draw_text(10,display_get_gui_height()-100,"[Q]: Standard")
	draw_text(10,display_get_gui_height()-70,"[W]: Essentials")
	draw_text(10,display_get_gui_height()-40,"[E]: Other")
	draw_rectangle(10 + 108,display_get_gui_height()-100,120,display_get_gui_height()-10,false)
	if btype == 0{ //Standard
	for(var i = 0; i < 2; i ++){
		
		if object == buildingS[i]{
		draw_set_color(c_white)
		draw_roundrect(130+(80*i),display_get_gui_height()-60,180+(80*i),display_get_gui_height()-10,false)	
		
		draw_text(240,display_get_gui_height()-100,bdescS[i])
		}else{
		draw_set_color(c_dkgray)
		draw_roundrect(130+(80*i),display_get_gui_height()-60,180+(80*i),display_get_gui_height()-10,false)	
		}
		
		draw_sprite(object_get_sprite(buildingS[i]),0,156+(80*i),display_get_gui_height()-34)
		draw_text(130+(80*i),display_get_gui_height()-80,"[" + string((i+1)) + "]")
		if keyboard_check_pressed(ord(i+1)){
			object = buildingS[i]
		}
		draw_set_color(c_white)
		draw_text(130,display_get_gui_height()-100,"Standards")
	}
	}else if btype == 1{ //Essential
	for(var i = 0; i < 2; i ++){
		if object == buildingE[i]{
		draw_set_color(c_white)
		draw_roundrect(130+(80*i),display_get_gui_height()-60,180+(80*i),display_get_gui_height()-10,false)	
		
		draw_text(240,display_get_gui_height()-100,bdescE[i])
		}else{
		draw_set_color(c_dkgray)
		draw_roundrect(130+(80*i),display_get_gui_height()-60,180+(80*i),display_get_gui_height()-10,false)
		}
		draw_sprite(object_get_sprite(buildingE[i]),0,156+(80*i),display_get_gui_height()-34)
		draw_text(130+(80*i),display_get_gui_height()-80,"[" + string((i+1)) + "]")
		
		if keyboard_check_pressed(ord(i+1)){
			object = buildingE[i]
		}
		draw_set_color(c_white)
		draw_text(130,display_get_gui_height()-100,"Essentials")
	}
	}else if btype == 2{
		
	}
	
	if keyboard_check_pressed(ord("Q")){
		btype = 0	
	}else if keyboard_check_pressed(ord("W")){
		btype = 1	
	}else if keyboard_check_pressed(ord("E")){
		btype = 2	
	}
}

