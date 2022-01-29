Supply_lines_rework = {
    log_level = 2; -- 0=none, 1=player, 2=player and ai, 3=debug
    --main
    selected_character = nil,
    max_supply_per_army = 38, --dont need anymore
    ai_supply_enabled = false,
    ai_supply_mult = 10,
    player_supply_custom_mult = -1,
    bretonnia_supply = false,
    basic_unit_supply = 0,
    basic_lord_supply = 0,
    basic_agent_supply = -1,
    --balance
    enable_supply_balance = false,
    max_balance_per_buildings = 3,
    max_balance_per_army = 30,
    big_empire_penalty_start = 999,
    big_city_penalty = 1,
    --Cached values
    ui_faction_check = nil,
    block_scripts = false,
    game_lang = nil,
    subculture_text = "",
}

