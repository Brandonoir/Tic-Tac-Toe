function ai_turn() {
    state_lists();

    // Randomly select an available panel
    if (ds_list_size(global.available_panels) > 0) {
        var rand_index = irandom(ds_list_size(global.available_panels) - 1);
        var chosen_panel = global.available_panels[| rand_index];

        // Change the state of the chosen panel to 2 (AI's move)
        with (chosen_panel) {
            state = 2;
			state_lists();
			array_push(global.state2_panels, chosen_panel.number);
        }
		global.turn = 1; //player's turn
    }
		var winner = check_win();
		
		if(winner == 1) {
			room = rm_game_over_w;
		} else if(winner == 2){
			room = rm_game_over_l;
		}
}