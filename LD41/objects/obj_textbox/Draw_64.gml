/// @desc Draw the Textbox
draw_set_alpha(0.8)
draw_set_color(c_black)
draw_roundrect(100,30,width,height,false)
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(fnt_title)
draw_text(105,35,"ALERT!")
draw_set_font(fnt_text)
if string_width(str) > width - padding*7{
	message = string_delete(message,lastspace,1)
	message = string_insert("\n",message,lastspace)
	ds_list_add(start,lastspace+1)
}

if count < string_length(message){
	if string_char_at(message,count) == " "{
		lastspace = count	
	}
	count++
}
if string_height(str) > height-padding{
	line++
}
str = string_copy(message,ds_list_find_value(start,line),count-ds_list_find_value(start,line))
draw_text(105,50+padding,str)
if option1 != ""{
draw_text(105,gui_h-105,"[1]: " + option1)
if keyboard_check_pressed(ord("1"))
	if type1 == 0{
		instance_destroy()
	}else{
		instance_destroy()
		var tb = instance_create_layer(0,0,"Instances",obj_textbox)
		tb.option1 = optset1
		tb.option2 = optset2
		tb.type1 = type1sec
		tb.message = messagesec
	}
}
if option2 != ""{
draw_text(105,gui_h-65,"[2]: " + option2)
if keyboard_check_pressed(ord("2")){
	instance_destroy(id) //2 is always exit
}
}