local function supply_lines_rework_init()
    Supply_lines_rework:create_new_log();
    Supply_lines_rework:add_player_listeners();
    Supply_lines_rework:add_ui_listeners();
    Supply_lines_rework:add_ai_listeners();
    Supply_lines_rework:add_mct_listeners();
    Supply_lines_rework:add_api_listeners();
end;

supply_lines_rework_init();
