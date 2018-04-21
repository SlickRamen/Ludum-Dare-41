/// @desc Draw the rectangle for water
draw_set_alpha(0.5)
draw_set_color(c_blue)
draw_rectangle(x-80,y-80,x+80,y+80,false)
draw_set_alpha(1)
draw_set_color(c_white)
draw_self()