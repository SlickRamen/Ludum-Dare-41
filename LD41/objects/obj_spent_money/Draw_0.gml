if (rand > 1) {
	draw_text(x,y+y_value,"- $" + string(money));
	y_value -= 0.5;
} else {
	var _sym1 = choose("$","#","%","&","@","*");
	var _sym2 = choose("$","#","%","&","@","*");	
	var _sym3 = choose("$","#","%","&","@","*");	
	var _sym4 = choose("$","#","%","&","@","*");
	draw_text(x,y+y_value,"- " + _sym1 + _sym2 + _sym3 + _sym4);
	y_value -= 0.5;
}