function Supply_lines_rework:get_ai_faction_supply(faction)
  local force_list = faction:military_force_list();
  local faction_supply = 0;

  if (self.ai_supply_mult == 0) then
    return 0,0,0;
  end;

  for i = 0, force_list:num_items() - 1 do
    local force = force_list:item_at(i);

    if not force:is_armed_citizenry() and force:has_general() then
      self:logAI("--------");
      self:logAI("CHECK ARMY #"..tostring(i));
      faction_supply = faction_supply + self:get_ai_army_supply(force);
      self:logDebug("CALCULATION SUPPLY FOR THIS ARMY IS FINISHED");
    end; --of army check
  end; --of army call

  local faction_ukeep_penalty = self:get_upkeep_from_supply(faction_supply, self.ai_supply_mult);

  return faction_ukeep_penalty, faction_supply, 0;
end;