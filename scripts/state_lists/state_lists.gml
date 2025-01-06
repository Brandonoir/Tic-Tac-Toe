function state_lists() {
    // Clear the lists
    ds_list_clear(global.available_panels);
    ds_list_clear(global.state_1);
    ds_list_clear(global.state_2);

    var panel_objects = [obj_panel1, obj_panel2, obj_panel3, obj_panel4, obj_panel5, obj_panel6, obj_panel7, obj_panel8, obj_panel9];

    // Iterate over all panel instances
    for (var i = 0; i < array_length(panel_objects); i++) {
        with (panel_objects[i]) {
            if (state == 0) {
                ds_list_add(global.available_panels, id);
            } else if (state == 1) {
                ds_list_add(global.state_1, id);
            } else if (state == 2) {
                ds_list_add(global.state_2, id);
            }
        }
    }
}
