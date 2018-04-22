/// @desc Draw the Textbox

draw_set_alpha(0.8)
draw_set_color(c_black)
draw_roundrect(100,30,width,height,false)
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_set_font(fnt_title)
draw_set_font(fnt_text)
draw_sprite(advisor_sprite,0,105,35);
if string_width(str) > width - sprite_get_width(advisor_sprite) - padding*7{
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

draw_text(110 + sprite_get_width(advisor_sprite),100+padding,str)

draw_set_halign(fa_center)
draw_text(110 + sprite_get_width(advisor_sprite) + (width-(110 + sprite_get_width(advisor_sprite)))/2, 32+padding, advisor.name);
draw_text(110 + sprite_get_width(advisor_sprite) + (width-(110 + sprite_get_width(advisor_sprite)))/2, 48+padding, advisor.title);
draw_set_halign(fa_left);

if !final {
    draw_text(105,gui_h-105,"[1]: Next");
    if keyboard_check_pressed(ord("1")) {
        instance_destroy();
        create_dialogue_window(advisor,advisor.scripted_dialogue_index,advisor.counter);
    }
} else {
    draw_text(105,gui_h-105,"[1]: Exit");
    if keyboard_check_pressed(ord("1")) {
        instance_destroy();
    }
}