if(mouse_check_button_pressed(mb_left) && state == 0){
	state = 1;
	state_lists();
	array_push(global.state1_panels, number);
	global.turn = 0;
}