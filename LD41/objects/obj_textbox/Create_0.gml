/// @desc Setup

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();
width = gui_w - 100
height = gui_h - 30

start = ds_list_create()
ds_list_add(start,0)

count = 0
lastspace = 0
line = 0

message = ""
str = ""

padding = 16

option1 = ""
option2 = ""
type1 = 0

messagesec = ""
type1sec = 0
optset1 = ""
optset2 = ""