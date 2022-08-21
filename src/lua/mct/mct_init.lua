function Supply_lines_rework:mct_init(context)
  local mct = context:mct()
  local supply_lines_rw = mct:get_mod_by_key("supply_lines_rw")


  local a_player_enable = supply_lines_rw:get_option_by_key("a_player_enable")
  local is_player_enable =  a_player_enable:get_finalized_setting()

  local b_player_effect = supply_lines_rw:get_option_by_key("b_player_effect")
  self.player_supply_custom_mult =  b_player_effect:get_finalized_setting()
  b_player_effect:set_uic_visibility(is_player_enable)


  if not is_player_enable then
    self.player_supply_custom_mult = 0
  end;

  local d_ai_enable = supply_lines_rw:get_option_by_key("d_ai_enable")
  local is_ai_enable = d_ai_enable:get_finalized_setting()

  local e_ai_effect = supply_lines_rw:get_option_by_key("e_ai_effect")
  self.ai_supply_mult = e_ai_effect:get_finalized_setting()
  e_ai_effect:set_uic_visibility(is_ai_enable)

  local f_enable_logging = supply_lines_rw:get_option_by_key("f_enable_logging")
  self.log_level = f_enable_logging:get_finalized_setting()

  local c_c_unit_supply = supply_lines_rw:get_option_by_key("c_c_unit_supply")
  self.basic_unit_supply = c_c_unit_supply:get_finalized_setting()

  local c_d_lord_supply = supply_lines_rw:get_option_by_key("c_d_lord_supply")
  self.basic_lord_supply = c_d_lord_supply:get_finalized_setting()

  local enable_supply_balance_cfg = supply_lines_rw:get_option_by_key("balance_enable")
  self.enable_supply_balance = enable_supply_balance_cfg:get_finalized_setting()

  local max_balance_per_building_cfg = supply_lines_rw:get_option_by_key("balance_per_building")
  self.max_balance_per_buildings = max_balance_per_building_cfg:get_finalized_setting()
  max_balance_per_building_cfg:set_uic_visibility(self.enable_supply_balance)

  local max_balance_per_army_cfg = supply_lines_rw:get_option_by_key("balance_per_army")
  self.max_balance_per_army = tonumber(max_balance_per_army_cfg:get_finalized_setting())
  max_balance_per_army_cfg:set_uic_visibility(self.enable_supply_balance)

  local big_empire_penalty_cfg = supply_lines_rw:get_option_by_key("big_empire_penalty")
  self.big_empire_penalty_start = tonumber(big_empire_penalty_cfg:get_finalized_setting())
  big_empire_penalty_cfg:set_uic_visibility(self.enable_supply_balance)

  local big_city_penalty_cfg = supply_lines_rw:get_option_by_key("big_city_penalty")
  self.big_city_penalty = tonumber(big_city_penalty_cfg:get_finalized_setting())
  big_city_penalty_cfg:set_uic_visibility(self.enable_supply_balance)

  if not is_ai_enable then
    self.ai_supply_mult = 0
  end;
  self:logDebug("Ai supply now is "..tostring(self.ai_supply_mult));

end;