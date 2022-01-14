--=============================
-- Main Supply balance scripts
--=============================


--return current supply_balance
function Supply_lines_rework:get_supply_balance(faction)
  local culture = faction:subculture();

  if not self.enable_supply_balance or culture == "wh_dlc05_sc_wef_wood_elves" then
    return 0
  end;

  local army_supply = self:get_armies_total_cost(faction)

  local region_supply = self:get_building_var(faction)
  
  return region_supply - army_supply
end

--main script used in listeners
function Supply_lines_rework:calculate_supply_balance(faction)
  self:remove_supply_balance_effect(faction)

  local supply_balance = self:get_supply_balance(faction)

  if supply_balance > 0 then
    self:apply_supply_balance_effect(faction, supply_balance)
  end

  if supply_balance < 0 then
    self:create_negative_sb_effect(faction, supply_balance)
  end;
end

--return additional supply for each army if balance is negative
function Supply_lines_rework:get_supply_penalty(faction, supply_balance)

  if supply_balance >= 0 then
    return 0
  end

  local force_list = faction:military_force_list();
  local num_of_armies = self:get_army_count(force_list)

  return self:calculate_supply_penalty(0 - supply_balance, num_of_armies)

end