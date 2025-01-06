global.turn = 1;
global.win = false;
global.lose=false;

// Initialize state lists
global.available_panels = ds_list_create();
global.state_1 = ds_list_create();
global.state_2 = ds_list_create();

state_lists();

