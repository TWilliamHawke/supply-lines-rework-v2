function Supply_lines_rework:apply_upkeep_penalty(faction)
  local effects_bundle_key = "SRW_upkeep_global"
  local effect_key = "wh_main_effect_force_all_campaign_upkeep";
  local effect_target = "force_to_force_own_factionwide";
  local faction_name = faction:name()


  if faction:has_effect_bundle(effects_bundle_key) then
    self:logDebug("remove old effect")
    cm:remove_effect_bundle(effects_bundle_key, faction_name);
  end;

  local upkeep_penalty

  if faction:is_human() then 
    upkeep_penalty = self:get_player_faction_supply(faction);
  else
    upkeep_penalty = self:get_ai_faction_supply(faction);
  end;

  if (upkeep_penalty == 0) then return end;

  local effect_bundle = cm:create_new_custom_effect_bundle(effects_bundle_key);
	effect_bundle:add_effect(effect_key, effect_target, upkeep_penalty);
  effect_bundle:set_duration(0);

  cm:apply_custom_effect_bundle_to_faction(effect_bundle, faction);

  if faction:is_human() then 
    self:log("apply upkeep effect for faction, effect power is "..tostring(upkeep_penalty))
    self:logDebug("CALCULATION SUPPLY FOR THIS fACTION IS FINISHED");
  else
    self:logAI("apply upkeep effect for faction, effect power is "..tostring(upkeep_penalty))
  end;


end; -- of function
