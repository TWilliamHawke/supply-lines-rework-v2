--calculate upkeep modificator
function Supply_lines_rework:get_player_upkeep_mult()
  if self.player_supply_custom_mult == -1 then
    self:set_player_upkeep_mult();
  end

  return self.player_supply_custom_mult
end;

function Supply_lines_rework:set_player_upkeep_mult()
  local difficulty = cm:model():combined_difficulty_level();
  self.player_supply_custom_mult = 2;				-- easy
  
  if difficulty == 0 then
    self.player_supply_custom_mult = 3;				-- normal
  elseif difficulty == -1 then
    self.player_supply_custom_mult = 5;					-- hard
  elseif difficulty == -2 then
    self.player_supply_custom_mult = 8;			-- very hard
  elseif difficulty == -3 then
    self.player_supply_custom_mult = 8;			-- legendary
  end;
end;


