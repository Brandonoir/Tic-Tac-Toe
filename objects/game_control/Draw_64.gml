///draw texts for debugging
draw_text(10,10, "turn: " + string(global.turn));
draw_text(10,20, "available: " + string(ds_list_size(global.available_panels)))
draw_text(130,20, "state 1: " + string(ds_list_size(global.state_1)))
draw_text(250,20, "state 2: " + string(ds_list_size(global.state_2)))
draw_text(10,30, "state 1 panels: " + string(global.state1_panels))
draw_text(10,50, "state 2 panels: " + string(global.state2_panels))
draw_set_color(c_red);