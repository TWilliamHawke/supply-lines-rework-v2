local loc_prefix = "mct_supply_lines_rw_"

local function player_callback(option)
  local val = option:get_selected_setting()

  local player_effect = option:get_mod():get_option_by_key("b_player_effect")
  local agents_supply = option:get_mod():get_option_by_key("c_agent_supply")
  if val then
    player_effect:set_uic_visibility(true)
    agents_supply:set_uic_visibility(true)
  else
    player_effect:set_uic_visibility(false)
    agents_supply:set_uic_visibility(false)
  end;
end;

local function ai_callback(option)
  local val = option:get_selected_setting()

  local ai_effect = option:get_mod():get_option_by_key("e_ai_effect")
  if val then
    ai_effect:set_uic_visibility(true)
  else
    ai_effect:set_uic_visibility(false)
  end;
end;

local function effectCallback(option)
  local val = option:get_selected_setting()

  local max_building = option:get_mod():get_option_by_key("balance_per_building")
  local max_army = option:get_mod():get_option_by_key("balance_per_army")
  local emp_penalty = option:get_mod():get_option_by_key("big_empire_penalty")
  local city_penalty = option:get_mod():get_option_by_key("big_city_penalty")

    max_building:set_uic_visibility(val)
    max_army:set_uic_visibility(val)
    emp_penalty:set_uic_visibility(val)
    city_penalty:set_uic_visibility(val)

end

if not mct then return end;

local supply_lines_rw = mct:register_mod("supply_lines_rw")
supply_lines_rw:set_title(loc_prefix.."mod_title", true)
supply_lines_rw:set_author("TWilliam")
supply_lines_rw:set_description(loc_prefix.."mod_desc", true)
supply_lines_rw:set_log_file_path("supply_rework_log.txt")



local enable_player = supply_lines_rw:add_new_option("a_player_enable", "checkbox")
enable_player:set_default_value(true)
enable_player:set_text("mct_supply_lines_rw_a_player_enable_text", true)
enable_player:set_tooltip_text("mct_supply_lines_rw_a_player_enable_tt", true)
enable_player:add_option_set_callback(player_callback)

local player_effect = supply_lines_rw:add_new_option("b_player_effect", "slider")
player_effect:set_text("mct_supply_lines_rw_b_player_effect_text", true)
player_effect:set_tooltip_text("mct_supply_lines_rw_b_player_effect_tt", true)
player_effect:slider_set_min_max(0, 15)
player_effect:set_default_value(5)
player_effect:slider_set_step_size(1)

local enable_bret= supply_lines_rw:add_new_option("c_bret_enable", "checkbox")
enable_bret:set_uic_visibility(false)

local enable_ai = supply_lines_rw:add_new_option("d_ai_enable", "checkbox")
enable_ai:set_default_value(false)
enable_ai:set_text("mct_supply_lines_rw_d_ai_enable_text", true)
enable_ai:set_tooltip_text("mct_supply_lines_rw_d_ai_enable_tt", true)
enable_ai:add_option_set_callback(ai_callback)

local ai_effect = supply_lines_rw:add_new_option("e_ai_effect", "slider")
ai_effect:set_text("mct_supply_lines_rw_e_ai_effect_text", true)
ai_effect:set_tooltip_text("mct_supply_lines_rw_e_ai_effect_tt", true)
ai_effect:slider_set_min_max(0, 15)
ai_effect:set_default_value(0)
ai_effect:slider_set_step_size(1)

local supply_balance_section = supply_lines_rw:add_new_section("o_balance_section")
supply_balance_section:set_localised_text("Militant Supply Reserves")

local enable_balance = supply_lines_rw:add_new_option("balance_enable", "checkbox")
enable_balance:set_default_value(false)
enable_balance:set_text("mct_supply_lines_rw_balance_enable_text", true)
enable_balance:set_tooltip_text("mct_supply_lines_rw_balance_enable_tt", true)
enable_balance:add_option_set_callback(effectCallback)

local max_balance_per_building = supply_lines_rw:add_new_option("balance_per_building", "slider")
max_balance_per_building:slider_set_min_max(0, 5)
max_balance_per_building:set_default_value(3)
max_balance_per_building:slider_set_step_size(1)
max_balance_per_building:set_text("mct_supply_lines_rw_balance_per_building_text", true)
max_balance_per_building:set_tooltip_text("mct_supply_lines_rw_balance_per_building_tt", true)

local max_balance_per_army = supply_lines_rw:add_new_option("balance_per_army", "dropdown")
max_balance_per_army:set_text("mct_supply_lines_rw_balance_per_army_text", true)
max_balance_per_army:set_tooltip_text("mct_supply_lines_rw_balance_per_army_tt", true)
max_balance_per_army:add_dropdown_values({
  {key = "99", text = "Unlimited", tt = "Supply Reserve reduction from one army is unlimited", is_default = true},
  {key = "0", text = "0 (Disable)", tt = "Your armies will not affect Supply Reserves", is_default = false},
  {key = "1", text = "1", tt = "Each your army will not decrease Supply Reserves by more than 1", is_default = false},
  {key = "2", text = "2", tt = "Each your army will not decrease Supply Reserves by more than 2", is_default = false},
  {key = "3", text = "3", tt = "Each your army will not decrease Supply Reserves by more than 3", is_default = false},
  {key = "5", text = "5", tt = "Each your army will not decrease Supply Reserves by more than 5", is_default = false},
  {key = "10", text = "10", tt = "Each your army will not decrease Supply Reserves by more than 10", is_default = false},
})

local big_city_penalty = supply_lines_rw:add_new_option("big_city_penalty", "slider")
big_city_penalty:slider_set_min_max(0, 3)
big_city_penalty:set_default_value(1)
big_city_penalty:slider_set_step_size(1)
big_city_penalty:set_text("mct_supply_lines_rw_big_city_penalty_text", true)
big_city_penalty:set_tooltip_text("mct_supply_lines_rw_big_city_penalty_tt", true)

-- max_balance_per_army:slider_set_min_max(0, 30)
-- max_balance_per_army:set_default_value(30)
-- max_balance_per_army:slider_set_step_size(1)

local big_empire_penalty = supply_lines_rw:add_new_option("big_empire_penalty", "dropdown")
big_empire_penalty:set_text("mct_supply_lines_rw_big_empire_penalty_text", true)
big_empire_penalty:set_tooltip_text("mct_supply_lines_rw_big_empire_penalty_tt", true)
big_empire_penalty:add_dropdown_values({
  {key = "999", text = "Disable", tt = "Big empire penalty disabled.", is_default = true},
  {key = "50", text = "50 cities", tt = "It will affect every city after the 50th", is_default = false},
  {key = "75", text = "75 cities", tt = "It will affect every city after the 75th", is_default = false},
  {key = "100", text = "100 cities", tt = "It will affect every city after the 100th", is_default = false},
  {key = "150", text = "150 cities", tt = "It will affect every city after the 150th", is_default = false},
})


local settings_section = supply_lines_rw:add_new_section("settings_sectiom")
settings_section:set_localised_text("Advanced settings")

local unit_base_supply = supply_lines_rw:add_new_option("c_c_unit_supply", "slider")
unit_base_supply:set_text("mct_supply_lines_rw_c_c_unit_supply_text", true)
unit_base_supply:set_tooltip_text("mct_supply_lines_rw_c_c_unit_supply_tt", true)
unit_base_supply:slider_set_min_max(-3, 3)
unit_base_supply:set_default_value(0)
unit_base_supply:slider_set_step_size(1)

local lord_base_supply = supply_lines_rw:add_new_option("c_d_lord_supply", "slider")
lord_base_supply:set_text("mct_supply_lines_rw_c_d_lord_supply_text", true)
lord_base_supply:set_tooltip_text("mct_supply_lines_rw_c_d_lord_supply_tt", true)
lord_base_supply:slider_set_min_max(0, 30)
lord_base_supply:set_default_value(0)
lord_base_supply:slider_set_step_size(1)

local technical = supply_lines_rw:add_new_section("technical_section")
technical:set_localised_text("Debug section")

local log_level = supply_lines_rw:add_new_option("f_enable_logging", "slider")
log_level:slider_set_min_max(0, 3)
log_level:set_default_value(0)
log_level:slider_set_step_size(1)
log_level:set_text("mct_supply_lines_rw_f_enable_logging_text", true)
log_level:set_tooltip_text("mct_supply_lines_rw_f_enable_logging_tt", true)
