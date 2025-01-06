if(state == 1) { //Player's Move
	draw_sprite(spr_O, 1, x, y);
} else if (state == 2) { // AI's move
	draw_sprite(spr_X, 0, x, y);  
}