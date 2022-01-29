function Supply_lines_init()
    Supply_lines_rework:create_new_log();
    Supply_lines_rework:add_player_listeners();
    Supply_lines_rework:add_ui_listeners();
    Supply_lines_rework:add_ai_listeners();
end;

Supply_lines_init();
