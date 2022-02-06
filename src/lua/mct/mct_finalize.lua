function Supply_lines_rework:mct_finalize()

  local faction = cm:model():world():whose_turn_is_it()
  if not self:factionChecker(faction) then
    self.player_supply_custom_mult = 0
  else
    self:apply_upkeep_penalty(faction);
    self:calculate_supply_balance(faction);
  end

  self:logDebug("Player supply now is "..tostring(self.player_supply_custom_mult));
end;