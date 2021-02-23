var _xs = width / 960;

for(i=0;i<health;i++){												// loop through the number of hearts we have
	draw_sprite_ext(sHeart,0,(50 * _xs)+((sprite_get_width(sHeart)*i) * _xs),50 * _xs, _xs, _xs, 0, c_white, 1);		// draw if we have them
}
draw_set_font(fTahoma24);											// set the font to draw text with
draw_set_valign(fa_middle);											// use the middle to position vertically
draw_set_halign(fa_right);											// use the right to position horizontally
draw_set_colour(c_black);											// set the colour to draw text
draw_sprite_ext(sPickupStar,0,view_wport[0]-(50 * _xs),50 * _xs, _xs, _xs, 0, c_white, 1);						// draw the star sprite
draw_text_transformed(view_wport[0]-(20 * _xs)-(sprite_get_width(sPickupStar) * _xs),57 * _xs,score, _xs, _xs, 0);	// draw the number of stars collected

// on screen controls
draw_set_colour(c_white);											// set the button colour
draw_set_alpha(button_a);											// set alpha
draw_circle(button_x_left,button_y,button_r,false);					// draw left button
draw_circle(button_x_right,button_y,button_r,false);				// draw right button
draw_roundrect(button_x1,button_y1_up,button_x2,button_y2_up,false);		// draw up button
draw_roundrect(button_x1,button_y1_down,button_x2,button_y2_down,false);	// draw down button
draw_circle(button_x_jump,button_y,button_r,false);					// draw jump button
draw_set_alpha(1);													// reset alpha