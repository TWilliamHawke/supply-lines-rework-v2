function Supply_lines_rework:create_negative_sb_effect(faction, supply_balance)
  local force_list = faction:military_force_list();
  local num_of_armies = Supply_lines_rework:get_army_count(force_list)
  local effect_strenght = math.ceil(-supply_balance * (num_of_armies^0.75))

  local additional_supply = Supply_lines_rework:calculate_supply_penalty(-supply_balance, num_of_armies);

  local supply_balance_bundle_name = "srw_bundle_supply_balance_negative";
  local supply_balance_effect_name = "srw_supply_balance_points";

  if Supply_lines_rework:get_game_language() == "RU" then
    supply_balance_effect_name = supply_balance_effect_name.."_ru";
  end;

  local supply_balance_effect_bundle = cm:create_new_custom_effect_bundle(supply_balance_bundle_name);
	supply_balance_effect_bundle:add_effect("wh_main_effect_force_army_campaign_recruitment_cost_land", "faction_to_force_own", effect_strenght);
	supply_balance_effect_bundle:add_effect(supply_balance_effect_name, "faction_to_region_own_unseen", additional_supply);
  supply_balance_effect_bundle:set_duration(0);

  cm:apply_custom_effect_bundle_to_faction(supply_balance_effect_bundle, faction);

end;
