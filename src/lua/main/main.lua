function Supply_lines_rework:apply_upkeep_penalty(faction)
  if not faction:is_human() then return end;
  local effects_bundle_id = "SRW_upkeep_global"
  local effect_key = "wh_main_effect_force_all_campaign_upkeep";
  local faction_name = faction:name()
  local upkeep_mult = self:get_player_upkeep_mult();


  if faction:has_effect_bundle(effects_bundle_id) then
    self:logDebug("remove old effect")
    cm:remove_effect_bundle(effects_bundle_id, faction_name);
  end;

  if upkeep_mult == 0 then return end;

  local supply_points = self:get_faction_supply(faction);
  local upkeep_penalty = self:get_upkeep_from_supply(supply_points, upkeep_mult);

  local effect_bundle = cm:create_new_custom_effect_bundle(effects_bundle_id);
	effect_bundle:add_effect(effect_key, "force_to_force_own_factionwide", upkeep_penalty);
  effect_bundle:set_duration(0);

  cm:apply_custom_effect_bundle_to_faction(effect_bundle, faction);
  self:log("apply upkeep effect for faction, effect power is "..tostring(upkeep_penalty))


  self:logDebug("CALCULATION SUPPLY FOR THIS fACTION IS FINISHED");

end; -- of function
