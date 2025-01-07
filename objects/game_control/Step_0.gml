state_lists();
var winner = check_win();
if(ds_list_size(global.available_panels) == 0 and winner == 0){
	room_goto(rm_game);
}
if (global.turn = 0){
	ai_turn();
}
