function check_win() {
		var win_sequences = [ 
		[1, 2, 3], 
		[4, 5, 6], 
		[7, 8, 9], 
		[2, 5, 8], 
		[1, 4, 7], 
		[2, 5, 8], 
		[3, 6, 9], 
		[1, 5, 9],
		[3, 5, 7]	
	];
    // Loop through each win sequence
    for (var i = 0; i < array_length(win_sequences); i++) {
        var seq = win_sequences[i];

        // Check if the win sequence is in global.state1_panels (Player 1)
        if (array_contains_sequence(global.state1_panels, seq)) {
            return 1; // Player 1 wins
        }

        // Check if the win sequence is in global.state2_panels (Player 2)
        if (array_contains_sequence(global.state2_panels, seq)) {
            return 2; // Player 2 (AI) wins
        }
    }
    return 0; // No winner yet
}

// Helper function to check if an array contains a sequence
function array_contains_sequence(arr, seq) {
    // Check if each number in the sequence is present in the array
    for (var i = 0; i < array_length(seq); i++) {
        if (!array_contains_value(arr, seq[i])) {
            return false;
        }
    }
    return true;
}

// Helper function to check if an array contains a specific value
function array_contains_value(arr, value) {
    for (var i = 0; i < array_length(arr); i++) {
        if (arr[i] == value) {
            return true;
        }
    }
    return false;
}
 