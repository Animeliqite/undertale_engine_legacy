/// @description Insert description here
// You can write your code in this editor
draw_set_font(Lang_GetFont("determination_sans"));
draw_set_color(c_white);

var borders = Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.BORDER_SEL);

draw_set_halign(fa_center)
draw_text_transformed(160, 10, "SETTINGS", 2, 2, 0);

draw_set_halign(fa_left)
for (var i = 0; i < main_length; ++i) {
	var x_pos = 40;
	var y_pos = 20;
	height_pos[i] = 40;
	var height_stack = 0;
	switch (i) {
		case 0:
			var x_pos = 20;
			var y_pos = 40;
			height_pos[i] = 0;
			break;
		default:
			var x_pos = 20;
			var y_pos = 40;
			height_pos[i] = 30;
			break;
	}
	
    var sel_col = main_sel = i ? c_yellow : c_white;
	for (var j = 0; j < i; j++;) {
		height_stack += height_pos[j];
	}
    draw_text_transformed_color(x_pos,y_pos+(height_stack+height_pos[i]),main_text[i],1,1,0,sel_col,sel_col,sel_col,sel_col,1)
	switch (i) {
		case 3:
			draw_text_transformed_color((x_pos + string_width(string_hash_to_newline(main_text[i]))) + 20,y_pos+(height_stack+height_pos[i]),string_upper(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.LANGUAGE)),1,1,0,sel_col,sel_col,sel_col,sel_col,1)
			break;
		case 4:
			draw_text_transformed_color((x_pos + string_width(string_hash_to_newline(main_text[i]))) + 20,y_pos+(height_stack+height_pos[i]),string_upper(global.borders[borders]),1,1,0,sel_col,sel_col,sel_col,sel_col,1)
			break;
	}
}